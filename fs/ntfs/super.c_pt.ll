; ModuleID = '/llk/IR_all_yes/fs/ntfs/super.c_pt.bc'
source_filename = "../fs/ntfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.option_t = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.46 }
%union.anon.46 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
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
%struct.NTFS_BOOT_SECTOR = type <{ [3 x i8], i64, %struct.BIOS_PARAMETER_BLOCK, [4 x i8], i64, i64, i64, i8, [3 x i8], i8, [3 x i8], i64, i32, [426 x i8], i16 }>
%struct.BIOS_PARAMETER_BLOCK = type <{ i16, i8, i16, i8, i16, i16, i8, i16, i16, i16, i32, i32 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.75 = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.runlist_element = type { i64, i64, i64 }
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.86 }
%union.anon.86 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.87 = type { i32, i16, i8, i8 }
%struct.VOLUME_INFORMATION = type <{ i64, i8, i8, i16 }>
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.82, %struct.mutex, i32, %union.anon.85 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.82 = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i32, i8, i8 }
%union.anon.85 = type { ptr }
%struct.page = type { i32, %union.anon.24, %union.anon.37, %struct.atomic_t, i32 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.37 = type { %struct.atomic_t }
%struct.USN_HEADER = type { i64, i64, i64, i64 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remount-ro\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"continue\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recover\00", [24 x i8] zeroinitializer }, align 32
@on_errors_arr = dso_local constant { [5 x %struct.option_t], [56 x i8] } { [5 x %struct.option_t] [%struct.option_t { i32 1, ptr @.str }, %struct.option_t { i32 2, ptr @.str.1 }, %struct.option_t { i32 4, ptr @.str.2 }, %struct.option_t { i32 16, ptr @.str.3 }, %struct.option_t zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ntfs_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@ntfs_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ntfs_lock, i64 52), ptr getelementptr (i8, ptr @ntfs_lock, i64 52) }, ptr @ntfs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ntfs_lock\00", [22 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias287 = internal constant [19 x i8] c"ntfs.alias=fs-ntfs\00", section ".modinfo", align 1
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/super.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.exit_ntfs_fs = private unnamed_addr constant [13 x i8] c"exit_ntfs_fs\00", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unregistering NTFS driver.\00", [37 x i8] zeroinitializer }, align 32
@ntfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.9, i32 1, ptr null, ptr null, ptr @ntfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@ntfs_big_inode_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ntfs_inode_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ntfs_name_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ntfs_attr_ctx_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ntfs_index_ctx_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author288 = internal constant [50 x i8] c"ntfs.author=Anton Altaparmakov <anton@tuxera.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [98 x i8] c"ntfs.description=NTFS 1.2/3.x driver - Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_version290 = internal constant [20 x i8] c"ntfs.version=2.1.32\00", section ".modinfo", align 1
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ntfs\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.1.32\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.9, ptr @.str.10 }, section "__modver", align 4
@__UNIQUE_ID_file291 = internal constant [23 x i8] c"ntfs.file=fs/ntfs/ntfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [17 x i8] c"ntfs.license=GPL\00", section ".modinfo", align 1
@__param_str_debug_msgs = internal constant [16 x i8] c"ntfs.debug_msgs\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@debug_msgs = external dso_local global i32, align 4
@__param_debug_msgs = internal constant %struct.kernel_param { ptr @__param_str_debug_msgs, ptr null, ptr @param_ops_bint, i16 0, i8 -1, i8 0, %union.anon.45 { ptr @debug_msgs } }, section "__param", align 4
@__UNIQUE_ID_debug_msgstype293 = internal constant [30 x i8] c"ntfs.parmtype=debug_msgs:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_msgs294 = internal constant [44 x i8] c"ntfs.parm=debug_msgs:Enable debug messages.\00", section ".modinfo", align 1
@__initcall__kmod_ntfs__295_3192_init_ntfs_fs6 = internal global ptr @init_ntfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_ntfs_fs = internal global ptr @exit_ntfs_fs, section ".exitcall.exit", align 4
@__func__.ntfs_fill_super = private unnamed_addr constant [16 x i8] c"ntfs_fill_super\00", align 1
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Allocation of NTFS volume structure failed. Aborting mount...\00", [34 x i8] zeroinitializer }, align 32
@ntfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vol->mftbmp_lock\00", [46 x i8] zeroinitializer }, align 32
@ntfs_fill_super.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vol->lcnbmp_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Device has unsupported sector size (%i).  The maximum supported sector size on this architecture is %lu bytes.\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to set device block size.\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Set device block size to %i bytes (block size bits %i).\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to determine device size.\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Not an NTFS volume.\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported NTFS filesystem.\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to set device block size to sector size (%i).\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Changed device block size to %i bytes (block size bits %i) to match volume sector size.\00", [40 x i8] zeroinitializer }, align 32
@ntfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ntfs_alloc_big_inode, ptr null, ptr @ntfs_free_big_inode, ptr null, ptr @ntfs_write_inode, ptr null, ptr @ntfs_evict_big_inode, ptr @ntfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_statfs, ptr @ntfs_remount, ptr null, ptr @ntfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to load essential metadata.\00", [61 x i8] zeroinitializer }, align 32
@ntfs_nr_compression_users = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to allocate buffers for compression engine.\00", [45 x i8] zeroinitializer }, align 32
@default_upcase = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ntfs_nr_upcase_users = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load system files.\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Exiting, status successful.\00", [36 x i8] zeroinitializer }, align 32
@ntfs_export_ops = external dso_local constant %struct.export_operations, align 1
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate root directory.\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed, returning -EINVAL.\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@__func__.parse_options = private unnamed_addr constant [14 x i8] c"parse_options\00", align 1
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Entering with mount options string: %s\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"umask\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fmask\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmask\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mft_zone_multiplier\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sloppy\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"show_sys_files\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"case_sensitive\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disable_sparse\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"posix\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"show_inodes\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ignoring obsolete option %s.\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nls\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iocharset\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Option iocharset is deprecated. Please use option nls=<charsetname> in the future.\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NLS character set %s not found.\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"NLS character set %s not found. Using previous one %s.\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [170 x i8], [54 x i8] } { [170 x i8] c"Option utf8 is no longer supported, using option nls=utf8. Please use option nls=utf8 in the future and make sure utf8 is compiled either as a module or into the kernel.\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unrecognized mount option %s.\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Sloppy option given. Ignoring unrecognized mount option(s) and continuing.\00", [53 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Invalid errors option argument or bug in options parser.\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot change NLS character set on remount.\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using NLS character set %s.\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to load default NLS character set.\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Using default NLS character set (%s).\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot change mft_zone_multiplier on remount.\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid mft_zone_multiplier. Using default value, i.e. 1.\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Not enabling sparse support due to NTFS volume version %i.%i (need at least version 3.0).\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"The %s option requires an argument.\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"The %s option requires a boolean argument.\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid %s option argument: %s\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to read %s boot sector.\00", [33 x i8] zeroinitializer }, align 32
@__func__.read_ntfs_boot_sector = private unnamed_addr constant [22 x i8] c"read_ntfs_boot_sector\00", align 1
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Primary boot sector is invalid.\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Mount option errors=recover not used. Aborting without trying to recover.\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"backup\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not find a valid backup boot sector.\00", [53 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Hot-fix: Recovering invalid primary boot sector from backup copy.\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Hot-fix: Device write error while recovering primary boot sector.\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Hot-fix: Recovery of primary boot sector failed: Read-only mount.\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using backup boot sector.\00", [38 x i8] zeroinitializer }, align 32
@__func__.is_boot_sector_ntfs = private unnamed_addr constant [20 x i8] c"is_boot_sector_ntfs\00", align 1
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid boot sector checksum.\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid end of sector marker.\00", [34 x i8] zeroinitializer }, align 32
@__func__.parse_ntfs_boot_sector = private unnamed_addr constant [23 x i8] c"parse_ntfs_boot_sector\00", align 1
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vol->sector_size = %i (0x%x)\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vol->sector_size_bits = %i (0x%x)\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Sector size (%i) is smaller than the device block size (%lu).  This is not supported.  Sorry.\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sectors_per_cluster = 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sectors_per_cluster_bits = 0x%x\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"number of hidden sectors = 0x%x\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vol->cluster_size = %i (0x%x)\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vol->cluster_size_mask = 0x%x\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vol->cluster_size_bits = %i\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Cluster size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clusters_per_mft_record = %i (0x%x)\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vol->mft_record_size = %i (0x%x)\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vol->mft_record_size_mask = 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vol->mft_record_size_bits = %i (0x%x)\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Mft record size (%i) exceeds the PAGE_SIZE on your system (%lu).  This is not supported.  Sorry.\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Mft record size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clusters_per_index_record = %i (0x%x)\00", [58 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vol->index_record_size = %i (0x%x)\00", [61 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vol->index_record_size_mask = 0x%x\00", [61 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vol->index_record_size_bits = %i (0x%x)\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Index record size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", [35 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot handle 64-bit clusters.  Sorry.\00", [57 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vol->nr_clusters = 0x%llx\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Volume size (%lluTiB) is too large for this architecture.  Maximum supported is 2TiB.  Sorry.\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"MFT LCN (%lli, 0x%llx) is beyond end of volume.  Weird.\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vol->mft_lcn = 0x%llx\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"MFTMirr LCN (%lli, 0x%llx) is beyond end of volume.  Weird.\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vol->mftmirr_lcn = 0x%llx\00", [38 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vol->mftmirr_size = %i\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vol->serial_no = 0x%llx\00", [40 x i8] zeroinitializer }, align 32
@__func__.ntfs_setup_allocators = private unnamed_addr constant [22 x i8] c"ntfs_setup_allocators\00", align 1
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vol->mft_zone_multiplier = 0x%x\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vol->mft_zone_pos = 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vol->mft_zone_start = 0x%llx\00", [35 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vol->mft_zone_end = 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vol->data1_zone_pos = 0x%llx\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vol->data2_zone_pos = 0x%llx\00", [35 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vol->mft_data_pos = 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@__func__.ntfs_put_super = private unnamed_addr constant [15 x i8] c"ntfs_put_super\00", align 1
@.str.122 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to clear dirty bit in volume information flags.  Run chkdsk.\00", [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Volume has errors.  Leaving volume marked dirty.  Run chkdsk.\00", [34 x i8] zeroinitializer }, align 32
@__func__.ntfs_write_volume_flags = private unnamed_addr constant [24 x i8] c"ntfs_write_volume_flags\00", align 1
@.str.124 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Entering, old flags = 0x%x, new flags = 0x%x.\00", [50 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed with error code %i.\00", [37 x i8] zeroinitializer }, align 32
@__func__.ntfs_statfs = private unnamed_addr constant [12 x i8] c"ntfs_statfs\00", align 1
@__func__.get_nr_free_clusters = private unnamed_addr constant [21 x i8] c"get_nr_free_clusters\00", align 1
@.str.127 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Reading $Bitmap, max_index = 0x%lx, max_size = 0x%lx.\00", [42 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"read_mapping_page() error. Skipping page (index 0x%lx).\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Finished reading $Bitmap, last index = 0x%lx.\00", [50 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Exiting.\00", [23 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.__get_nr_free_mft_records = private unnamed_addr constant [26 x i8] c"__get_nr_free_mft_records\00", align 1
@.str.132 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Reading $MFT/$BITMAP, max_index = 0x%lx, max_size = 0x%lx.\00", [37 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Finished reading $MFT/$BITMAP, last index = 0x%lx.\00", [45 x i8] zeroinitializer }, align 32
@__func__.ntfs_remount = private unnamed_addr constant [13 x i8] c"ntfs_remount\00", align 1
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Entering with remount options string: %s\00", [55 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c".  Cannot remount read-write.\00", [34 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Volume has errors and is read-only%s\00", [59 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Volume is dirty and read-only%s\00", [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Volume has been modified by chkdsk and is read-only%s\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Volume has unsupported flags set (0x%x) and is read-only%s\00", [37 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to set dirty bit in volume information flags%s\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to empty journal $LogFile%s\00", [61 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to mark quotas out of date%s\00", [60 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to stamp transaction log ($UsnJrnl)%s\00", [51 x i8] zeroinitializer }, align 32
@__func__.load_system_files = private unnamed_addr constant [18 x i8] c"load_system_files\00", align 1
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $MFTMirr\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"$MFTMirr does not match $MFT\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c".  Run ntfsfix and/or chkdsk.\00", [34 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s and neither on_errors=continue nor on_errors=remount-ro was specified%s\00", [53 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s.  Mounting read-only%s\00", [38 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s.  Will not be able to remount read-write%s\00", [50 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to load $MFT/$BITMAP attribute.\00", [57 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&mftbmp_runlist_lock_key\00", [39 x i8] zeroinitializer }, align 32
@mftbmp_runlist_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mftbmp_mrec_lock_key\00", [42 x i8] zeroinitializer }, align 32
@mftbmp_mrec_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&lcnbmp_runlist_lock_key\00", [39 x i8] zeroinitializer }, align 32
@lcnbmp_runlist_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&lcnbmp_mrec_lock_key\00", [42 x i8] zeroinitializer }, align 32
@lcnbmp_mrec_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $Bitmap.\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $Volume.\00", [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get attribute search context.\00", [56 x i8] zeroinitializer }, align 32
@load_system_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @__func__.load_system_files, ptr @.str.6, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ntfs: volume version %i.%i.\0A\00", [33 x i8] zeroinitializer }, align 32
@load_system_files._entry_ptr = internal global ptr @load_system_files._entry, section ".printk_index", align 4
@.str.159 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Disabling sparse support due to NTFS volume version %i.%i (need at least version 3.0).\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Volume is dirty\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Volume has been modified by chkdsk\00", [61 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Volume has unsupported flags set\00", [63 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c".  Run chkdsk and mount in Windows.\00", [60 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c".  Mount in Windows.\00", [43 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unsupported volume flags 0x%x encountered.\00", [53 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $LogFile\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"$LogFile is not clean\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load root directory.\00", [33 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to determine if Windows is hibernated\00", [51 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Windows is hibernated\00", [42 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c".  Run chkdsk.\00", [17 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to set dirty bit in volume information flags\00", [44 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to empty $LogFile\00", [39 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $Secure.\00", [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $Extend.\00", [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to load $Quota\00", [42 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to mark quotas out of date\00", [62 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load $UsnJrnl\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to stamp transaction log ($UsnJrnl)\00", [53 x i8] zeroinitializer }, align 32
@__func__.load_and_init_mft_mirror = private unnamed_addr constant [25 x i8] c"load_and_init_mft_mirror\00", align 1
@ntfs_empty_inode_ops = external dso_local constant %struct.inode_operations, align 128
@ntfs_empty_file_ops = external dso_local constant %struct.file_operations, align 4
@ntfs_mst_aops = external dso_local constant %struct.address_space_operations, align 4
@__func__.check_mft_mirror = private unnamed_addr constant [17 x i8] c"check_mft_mirror\00", align 1
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to read $MFT.\00", [43 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read $MFTMirr.\00", [39 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Incomplete multi sector transfer detected in mft record %i.\00", [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Incomplete multi sector transfer detected in mft mirror record %i.\00", [61 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"$MFT and $MFTMirr (record %i) do not match.  Run ntfsfix or chkdsk.\00", [60 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"$MFTMirr location mismatch.  Run chkdsk.\00", [55 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.205 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__func__.load_and_init_upcase = private unnamed_addr constant [21 x i8] c"load_and_init_upcase\00", align 1
@.str.206 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Read %llu bytes from $UpCase (expected %zu bytes).\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Using volume specified $UpCase since default is not present.\00", [35 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Volume specified $UpCase matches default. Using default.\00", [39 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Using volume specified $UpCase since it does not match the default.\00", [60 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to load $UpCase from the volume. Using default.\00", [41 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize upcase table.\00", [61 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__func__.load_and_init_attrdef = private unnamed_addr constant [22 x i8] c"load_and_init_attrdef\00", align 1
@.str.212 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Read %llu bytes from $AttrDef.\00", [33 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to initialize attribute definition table.\00", [47 x i8] zeroinitializer }, align 32
@__func__.load_and_check_logfile = private unnamed_addr constant [23 x i8] c"load_and_check_logfile\00", align 1
@check_windows_hibernation_status.hiberfil = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 26624, i16 26880, i16 25088, i16 25856, i16 29184, i16 26112, i16 26880, i16 27648, i16 11776, i16 29440, i16 30976, i16 29440, i16 0], [38 x i8] zeroinitializer }, align 32
@__func__.check_windows_hibernation_status = private unnamed_addr constant [33 x i8] c"check_windows_hibernation_status\00", align 1
@.str.214 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"hiberfil.sys not present.  Windows is not hibernated on the volume.\00", [60 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to find inode number for hiberfil.sys.\00", [50 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load hiberfil.sys.\00", [35 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"hiberfil.sys is smaller than 4kiB (0x%llx).  Windows is hibernated on the volume.  This is not the system volume.\00", [46 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read from hiberfil.sys.\00", [62 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Magic \22hibr\22 found in hiberfil.sys.  Windows is hibernated on the volume.  This is the system volume.\00", [58 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [181 x i8], [43 x i8] } { [181 x i8] c"hiberfil.sys is larger than 4kiB (0x%llx), does not contain the \22hibr\22 magic, and does not have a zero header.  Windows is hibernated on the volume.  This is not the system volume.\00", [43 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"hiberfil.sys contains a zero header.  Windows is not hibernated on the volume.  This is the system volume.\00", [53 x i8] zeroinitializer }, align 32
@load_and_init_quota.Quota = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 9216, i16 20736, i16 29952, i16 28416, i16 29696, i16 24832, i16 0], [18 x i8] zeroinitializer }, align 32
@load_and_init_quota.Q = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 9216, i16 20736, i16 0], [26 x i8] zeroinitializer }, align 32
@__func__.load_and_init_quota = private unnamed_addr constant [20 x i8] c"load_and_init_quota\00", align 1
@.str.222 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"$Quota not present.  Volume does not have quotas enabled.\00", [38 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to find inode number for $Quota.\00", [56 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to load $Quota.\00", [41 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to load $Quota/$Q index.\00", [32 x i8] zeroinitializer }, align 32
@load_and_init_usnjrnl.UsnJrnl = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 9216, i16 21760, i16 29440, i16 28160, i16 18944, i16 29184, i16 28160, i16 27648, i16 0], [46 x i8] zeroinitializer }, align 32
@load_and_init_usnjrnl.Max = internal global { [5 x i16], [22 x i8] } { [5 x i16] [i16 9216, i16 19712, i16 24832, i16 30720, i16 0], [22 x i8] zeroinitializer }, align 32
@load_and_init_usnjrnl.J = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 9216, i16 18944, i16 0], [26 x i8] zeroinitializer }, align 32
@__func__.load_and_init_usnjrnl = private unnamed_addr constant [22 x i8] c"load_and_init_usnjrnl\00", align 1
@.str.226 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"$UsnJrnl not present.  Volume does not have transaction logging enabled.\00", [55 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to find inode number for $UsnJrnl.\00", [54 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to load $UsnJrnl.\00", [39 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"$UsnJrnl in the process of being disabled.  Volume does not have transaction logging enabled.\00", [34 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to load $UsnJrnl/$DATA/$Max attribute.\00", [50 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Found corrupt $UsnJrnl/$DATA/$Max attribute (size is 0x%llx but should be at least 0x%zx bytes).\00", [63 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to load $UsnJrnl/$DATA/$J attribute.\00", [52 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"$UsnJrnl/$DATA/$J attribute is resident and/or not sparse.\00", [37 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to read from $UsnJrnl/$DATA/$Max attribute.\00", [45 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Allocation delta (0x%llx) exceeds maximum size (0x%llx).  $UsnJrnl is corrupt.\00", [49 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"$UsnJrnl is enabled but nothing has been logged since it was last stamped.  Treating this as if the volume does not have transaction logging enabled.\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"$UsnJrnl has lowest valid usn (0x%llx) which is out of bounds (0x%llx).  $UsnJrnl is corrupt.\00", [34 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.6, i32 3084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ntfs: driver 2.1.32 [Flags: R/W DEBUG].\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_ntfs_fs\00", [19 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr = internal global ptr @init_ntfs_fs._entry, section ".printk_index", align 4
@.str.240 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Debug messages are enabled.\00", [36 x i8] zeroinitializer }, align 32
@ntfs_index_ctx_cache_name = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntfs_index_ctx_cache\00", [43 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.239, ptr @.str.6, i32 3092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\012ntfs: Failed to create %s!\0A\00", [34 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.243 = internal global ptr @init_ntfs_fs._entry.241, section ".printk_index", align 4
@ntfs_attr_ctx_cache_name = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ntfs_attr_ctx_cache\00", [44 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.239, ptr @.str.6, i32 3100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012ntfs: NTFS: Failed to create %s!\0A\00", [60 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.246 = internal global ptr @init_ntfs_fs._entry.244, section ".printk_index", align 4
@ntfs_name_cache_name = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ntfs_name_cache\00", [16 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.239, ptr @.str.6, i32 3108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.248 = internal global ptr @init_ntfs_fs._entry.247, section ".printk_index", align 4
@ntfs_inode_cache_name = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntfs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.239, ptr @.str.6, i32 3116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.250 = internal global ptr @init_ntfs_fs._entry.249, section ".printk_index", align 4
@ntfs_big_inode_cache_name = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntfs_big_inode_cache\00", [43 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.239, ptr @.str.6, i32 3125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.252 = internal global ptr @init_ntfs_fs._entry.251, section ".printk_index", align 4
@init_ntfs_fs._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.239, ptr @.str.6, i32 3132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012ntfs: Failed to register NTFS sysctls!\0A\00", [54 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.255 = internal global ptr @init_ntfs_fs._entry.253, section ".printk_index", align 4
@.str.256 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NTFS driver registered successfully.\00", [59 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.239, ptr @.str.6, i32 3141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012ntfs: Failed to register NTFS filesystem driver!\0A\00", [44 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.259 = internal global ptr @init_ntfs_fs._entry.257, section ".printk_index", align 4
@init_ntfs_fs._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.239, ptr @.str.6, i32 3157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\012ntfs: Aborting NTFS filesystem driver registration...\0A\00", [39 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.262 = internal global ptr @init_ntfs_fs._entry.260, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.266 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.267 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.268 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.269 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 53, i32 21 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 54, i32 26 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 55, i32 24 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 56, i32 23 }
@___asan_gen_.284 = private unnamed_addr constant [14 x i8] c"on_errors_arr\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 52, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant [10 x i8] c"ntfs_lock\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3043, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3165, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [13 x i8] c"ntfs_fs_type\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3051, i32 32 }
@___asan_gen_.305 = private unnamed_addr constant [21 x i8] c"ntfs_big_inode_cache\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3025, i32 20 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"ntfs_inode_cache\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3024, i32 20 }
@___asan_gen_.311 = private unnamed_addr constant [16 x i8] c"ntfs_name_cache\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3021, i32 20 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c"ntfs_attr_ctx_cache\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3039, i32 20 }
@___asan_gen_.317 = private unnamed_addr constant [21 x i8] c"ntfs_index_ctx_cache\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3040, i32 20 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3185, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2714, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2723, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2740, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2741, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2753, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2768, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2772, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2778, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2784, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2795, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2812, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2819, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [10 x i8] c"ntfs_sops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2662, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2849, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant [26 x i8] c"ntfs_nr_compression_users\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 36, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2867, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant [15 x i8] c"default_upcase\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 39, i32 18 }
@___asan_gen_.386 = private unnamed_addr constant [21 x i8] c"ntfs_nr_upcase_users\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 40, i32 22 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2892, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2899, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2911, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3011, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 90, i32 22 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 175, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 176, i32 27 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 179, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 180, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 181, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 182, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 183, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 184, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 185, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 186, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 187, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 188, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 189, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 191, i32 23 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 191, i32 46 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 192, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 194, i32 23 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 194, i32 44 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 196, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 207, i32 6 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 211, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 220, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 234, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 247, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 252, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 259, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 263, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 269, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 273, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 280, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 285, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 323, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 334, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 337, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 340, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 68, i32 18 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 68, i32 37 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 68, i32 58 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 70, i32 23 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 70, i32 42 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 71, i32 19 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 665, i32 29 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 675, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 677, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 682, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 693, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 700, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 722, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 732, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 735, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 740, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 586, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 637, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 760, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 762, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 765, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 771, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 773, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 776, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 780, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 782, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 783, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 785, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 791, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 805, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 807, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 809, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 816, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 824, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 831, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 846, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 848, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 850, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 855, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 868, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 872, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 880, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 890, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 896, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 899, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 905, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 920, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 923, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 940, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 963, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 980, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 992, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 999, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1002, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1007, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2303, i32 5 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2312, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 369, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 396, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 403, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2463, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2475, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2493, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2504, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 717, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2534, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2564, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 456, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 477, i32 27 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 481, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 486, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 490, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 495, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 502, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 520, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 526, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 532, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1773, i32 28 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1774, i32 28 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1775, i32 28 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1781, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1789, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1792, i32 4 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1802, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1805, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [24 x i8] c"mftbmp_runlist_lock_key\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1747, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1807, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c"mftbmp_mrec_lock_key\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1747, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1831, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [24 x i8] c"lcnbmp_runlist_lock_key\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1746, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1833, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant [21 x i8] c"lcnbmp_mrec_lock_key\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1746, i32 27 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1840, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1852, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1862, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1886, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1889, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1897, i32 29 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1898, i32 29 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1899, i32 29 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1900, i32 29 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1901, i32 29 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1912, i32 4 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1943, i32 29 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1944, i32 29 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1978, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1991, i32 29 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1993, i32 29 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1994, i32 28 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2018, i32 28 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2064, i32 28 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2089, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2098, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2104, i32 28 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2127, i32 28 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2147, i32 28 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 2170, i32 28 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1104, i32 5 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1112, i32 5 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1122, i32 5 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1135, i32 5 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1154, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1185, i32 4 }
@___asan_gen_.882 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 55, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 416, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1691, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1696, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1713, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1718, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1732, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1737, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1622, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1631, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant [9 x i8] c"hiberfil\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1260, i32 24 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1281, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1286, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1297, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1301, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1308, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1314, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1322, i32 4 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1331, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant [6 x i8] c"Quota\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1354, i32 24 }
@___asan_gen_.941 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1358, i32 18 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1376, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1386, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1396, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1403, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant [8 x i8] c"UsnJrnl\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1433, i32 24 }
@___asan_gen_.959 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1438, i32 18 }
@___asan_gen_.962 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1441, i32 18 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1459, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1470, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1481, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1490, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1498, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1504, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1513, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1521, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1528, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1536, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1552, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 1559, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3072, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3086, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant [26 x i8] c"ntfs_index_ctx_cache_name\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3061, i32 19 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3092, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant [25 x i8] c"ntfs_attr_ctx_cache_name\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3062, i32 19 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3099, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant [21 x i8] c"ntfs_name_cache_name\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3063, i32 19 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3108, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant [22 x i8] c"ntfs_inode_cache_name\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3064, i32 19 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3116, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant [26 x i8] c"ntfs_big_inode_cache_name\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3065, i32 19 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3125, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3132, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3138, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3141, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1068 = private constant [19 x i8] c"../fs/ntfs/super.c\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1068, i32 3157, i32 3 }
@llvm.compiler.used = appending global [289 x ptr] [ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_debug_msgs294, ptr @__UNIQUE_ID_debug_msgstype293, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_version290, ptr @__exitcall_exit_ntfs_fs, ptr @__initcall__kmod_ntfs__295_3192_init_ntfs_fs6, ptr @__modver_attr, ptr @__param_debug_msgs, ptr @exit_ntfs_fs, ptr @init_ntfs_fs._entry, ptr @init_ntfs_fs._entry.241, ptr @init_ntfs_fs._entry.244, ptr @init_ntfs_fs._entry.247, ptr @init_ntfs_fs._entry.249, ptr @init_ntfs_fs._entry.251, ptr @init_ntfs_fs._entry.253, ptr @init_ntfs_fs._entry.257, ptr @init_ntfs_fs._entry.260, ptr @init_ntfs_fs._entry_ptr, ptr @init_ntfs_fs._entry_ptr.243, ptr @init_ntfs_fs._entry_ptr.246, ptr @init_ntfs_fs._entry_ptr.248, ptr @init_ntfs_fs._entry_ptr.250, ptr @init_ntfs_fs._entry_ptr.252, ptr @init_ntfs_fs._entry_ptr.255, ptr @init_ntfs_fs._entry_ptr.259, ptr @init_ntfs_fs._entry_ptr.262, ptr @load_system_files._entry, ptr @load_system_files._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @on_errors_arr, ptr @.str.4, ptr @ntfs_lock, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ntfs_fs_type, ptr @ntfs_big_inode_cache, ptr @ntfs_inode_cache, ptr @ntfs_name_cache, ptr @ntfs_attr_ctx_cache, ptr @ntfs_index_ctx_cache, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ntfs_fill_super.__key, ptr @.str.13, ptr @ntfs_fill_super.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ntfs_sops, ptr @.str.24, ptr @ntfs_nr_compression_users, ptr @.str.25, ptr @default_upcase, ptr @ntfs_nr_upcase_users, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @mftbmp_runlist_lock_key, ptr @.str.152, ptr @mftbmp_mrec_lock_key, ptr @.str.153, ptr @lcnbmp_runlist_lock_key, ptr @.str.154, ptr @lcnbmp_mrec_lock_key, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @check_windows_hibernation_status.hiberfil, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @load_and_init_quota.Quota, ptr @load_and_init_quota.Q, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @load_and_init_usnjrnl.UsnJrnl, ptr @load_and_init_usnjrnl.Max, ptr @load_and_init_usnjrnl.J, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @ntfs_index_ctx_cache_name, ptr @.str.242, ptr @ntfs_attr_ctx_cache_name, ptr @.str.245, ptr @ntfs_name_cache_name, ptr @ntfs_inode_cache_name, ptr @ntfs_big_inode_cache_name, ptr @.str.254, ptr @.str.256, ptr @.str.258, ptr @.str.261], section "llvm.metadata"
@0 = internal global [266 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on_errors_arr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_big_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_name_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_index_ctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_fill_super.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_nr_compression_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_upcase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_nr_upcase_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mftbmp_runlist_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mftbmp_mrec_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnbmp_runlist_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcnbmp_mrec_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_system_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_windows_hibernation_status.hiberfil to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 181, i32 224, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_and_init_quota.Quota to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_and_init_quota.Q to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_and_init_usnjrnl.UsnJrnl to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_and_init_usnjrnl.Max to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_and_init_usnjrnl.J to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_index_ctx_cache_name to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_attr_ctx_cache_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_name_cache_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_inode_cache_name to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_big_inode_cache_name to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ntfs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 3165, ptr noundef nonnull @__func__.exit_ntfs_fs, ptr noundef nonnull @.str.7) #15
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @ntfs_fs_type) #15
  tail call void @rcu_barrier() #15
  %0 = load ptr, ptr @ntfs_big_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  %1 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  %2 = load ptr, ptr @ntfs_name_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #15
  %3 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #15
  %4 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #15
  %call1 = tail call i32 @ntfs_sysctl(i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sysctl(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ntfs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #18
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 3086, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240) #15
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_index_ctx_cache_name, i32 noundef 36, i32 noundef 0, i32 noundef 8192, ptr noundef null) #15
  store ptr %call1, ptr @ntfs_index_ctx_cache, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %ictx_err_out.thread, label %if.end

ictx_err_out.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @ntfs_index_ctx_cache_name) #18
  br label %do.end66

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_attr_ctx_cache_name, i32 noundef 32, i32 noundef 0, i32 noundef 8192, ptr noundef null) #15
  store ptr %call7, ptr @ntfs_attr_ctx_cache, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %ictx_err_out.thread75, label %if.end15

ictx_err_out.thread75:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @ntfs_attr_ctx_cache_name) #18
  %0 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  br label %do.end66

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_name_cache_name, i32 noundef 512, i32 noundef 0, i32 noundef 8192, ptr noundef null) #15
  store ptr %call16, ptr @ntfs_name_cache, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @ntfs_name_cache_name) #18
  br label %ictx_err_out

if.end24:                                         ; preds = %if.end15
  %call25 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_inode_cache_name, i32 noundef 528, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #15
  store ptr %call25, ptr @ntfs_inode_cache, align 4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @ntfs_inode_cache_name) #18
  br label %inode_err_out

if.end33:                                         ; preds = %if.end24
  %call34 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_big_inode_cache_name, i32 noundef 1312, i32 noundef 0, i32 noundef 68296704, ptr noundef nonnull @ntfs_big_inode_init_once) #15
  store ptr %call34, ptr @ntfs_big_inode_cache, align 4
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @ntfs_big_inode_cache_name) #18
  br label %big_inode_err_out

if.end42:                                         ; preds = %if.end33
  %call43 = tail call i32 @ntfs_sysctl(i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end51, label %do.end48

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #18
  br label %sysctl_err_out

if.end51:                                         ; preds = %if.end42
  %call52 = tail call i32 @register_filesystem(ptr noundef nonnull @ntfs_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %do.end58

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 3138, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.256) #15
  br label %cleanup

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258) #18
  %call61 = tail call i32 @ntfs_sysctl(i32 noundef 0) #15
  br label %sysctl_err_out

sysctl_err_out:                                   ; preds = %do.end58, %do.end48
  %err.0 = phi i32 [ %call43, %do.end48 ], [ %call52, %do.end58 ]
  %1 = load ptr, ptr @ntfs_big_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  br label %big_inode_err_out

big_inode_err_out:                                ; preds = %sysctl_err_out, %do.end39
  %err.1 = phi i32 [ %err.0, %sysctl_err_out ], [ 0, %do.end39 ]
  %2 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #15
  br label %inode_err_out

inode_err_out:                                    ; preds = %big_inode_err_out, %do.end30
  %err.2 = phi i32 [ %err.1, %big_inode_err_out ], [ 0, %do.end30 ]
  %3 = load ptr, ptr @ntfs_name_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #15
  br label %ictx_err_out

ictx_err_out:                                     ; preds = %inode_err_out, %do.end21
  %err.3 = phi i32 [ %err.2, %inode_err_out ], [ 0, %do.end21 ]
  %4 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #15
  %5 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool62.not = icmp eq i32 %err.3, 0
  br i1 %tobool62.not, label %ictx_err_out.do.end66_crit_edge, label %ictx_err_out.cleanup_crit_edge

ictx_err_out.cleanup_crit_edge:                   ; preds = %ictx_err_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ictx_err_out.do.end66_crit_edge:                  ; preds = %ictx_err_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

do.end66:                                         ; preds = %ictx_err_out.do.end66_crit_edge, %ictx_err_out.thread75, %ictx_err_out.thread
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %ictx_err_out.cleanup_crit_edge, %if.then54
  %retval.0 = phi i32 [ 0, %if.then54 ], [ %err.3, %ictx_err_out.cleanup_crit_edge ], [ -12, %do.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @ntfs_fill_super) #15
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_fill_super(ptr noundef %sb, ptr noundef %opt, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %lockdep_recursion = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 143
  %4 = ptrtoint ptr %lockdep_recursion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockdep_recursion, align 4
  %add = add i32 %5, 65536
  store i32 %add, ptr %lockdep_recursion, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2714, ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef nonnull @.str.11) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3136, i32 noundef 440) #19
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool3.not = icmp eq i32 %silent, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.12) #15
  br label %cleanup

if.end11:                                         ; preds = %entry
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sb, ptr %call7.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 4
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.3.0..sroa_idx, i32 0, i32 24)
  %.compoundliteral.sroa.3279.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 28
  %10 = ptrtoint ptr %.compoundliteral.sroa.3279.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 127, ptr %.compoundliteral.sroa.3279.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 30
  %11 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 63, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 2
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 32
  %12 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx, i32 0, i32 408)
  %mftbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 36
  tail call void @__init_rwsem(ptr noundef %mftbmp_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ntfs_fill_super.__key) #15
  %lcnbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 41
  tail call void @__init_rwsem(ptr noundef %lcnbmp_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ntfs_fill_super.__key.14) #15
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #15
  %call19 = tail call fastcc zeroext i1 @parse_options(ptr noundef nonnull %call7.i, ptr noundef %opt)
  br i1 %call19, label %if.end21, label %if.end11.err_out_now_crit_edge

if.end11.err_out_now_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.end21:                                         ; preds = %if.end11
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %13 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end21.if.end29_crit_edge, label %land.lhs.true.i.i

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true.i.i:                                ; preds = %if.end21
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 9
  %17 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %18)
  %cmp = icmp ugt i32 %18, 4096
  br i1 %cmp, label %if.then23, label %land.lhs.true.i.i.if.end29_crit_edge

land.lhs.true.i.i.if.end29_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool24.not = icmp eq i32 %silent, 0
  br i1 %tobool24.not, label %bdev_logical_block_size.exit428, label %if.then23.err_out_now_crit_edge

if.then23.err_out_now_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

bdev_logical_block_size.exit428:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i.i424 = icmp eq i32 %20, 0
  %spec.select.i.i425 = select i1 %tobool2.not.i.i424, i32 512, i32 %20
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.16, i32 noundef %spec.select.i.i425, i32 noundef 4096) #15
  br label %err_out_now

if.end29:                                         ; preds = %land.lhs.true.i.i.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %call30 = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 512
  br i1 %cmp31, label %if.then32, label %do.body37

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool33.not = icmp eq i32 %silent, 0
  br i1 %tobool33.not, label %if.then34, label %if.then32.err_out_now_crit_edge

if.then32.err_out_now_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.17) #15
  br label %err_out_now

do.body37:                                        ; preds = %if.end29
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %22)
  %cmp38.not = icmp eq i32 %call30, %22
  br i1 %cmp38.not, label %do.end50, label %do.body42, !prof !651

do.body42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2771, 0\0A.popsection", ""() #15, !srcloc !652
  unreachable

do.end50:                                         ; preds = %do.body37
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %24 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2773, ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef nonnull @.str.18, i32 noundef %call30, i32 noundef %conv) #15
  %25 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %29 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_blocksize_bits, align 4
  %conv.i = zext i8 %30 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %28, %sh_prom.i
  %nr_blocks = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 1
  %31 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shr.i, ptr %nr_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool53.not = icmp eq i64 %shr.i, 0
  br i1 %tobool53.not, label %if.then54, label %if.end58

if.then54:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool55.not = icmp eq i32 %silent, 0
  br i1 %tobool55.not, label %if.then56, label %if.then54.err_out_now_crit_edge

if.then54.err_out_now_crit_edge:                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.19) #15
  br label %err_out_now

if.end58:                                         ; preds = %do.end50
  %32 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info, align 16
  %nr_blocks1.i = getelementptr inbounds %struct.ntfs_volume, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %nr_blocks1.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %nr_blocks1.i, align 8
  %36 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %26, i64 noundef 0, i32 noundef %37, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end58
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool3.i = icmp ne i32 %silent, 0
  %call4.i = tail call fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %sb, ptr noundef %39, i1 noundef zeroext %tobool3.i) #15
  br i1 %call4.i, label %if.then.i.if.end65_crit_edge, label %if.end.i

if.then.i.if.end65_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.end.i:                                         ; preds = %if.then.i
  br i1 %tobool3.i, label %if.end.i.if.end12.i_crit_edge, label %if.then7.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.74) #15
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool9.not.i = icmp eq i32 %silent, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.75) #15
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.else.i.if.end12.i_crit_edge, %if.then7.i, %if.end.i.if.end12.i_crit_edge
  %40 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info, align 16
  %on_errors.i = getelementptr inbounds %struct.ntfs_volume, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %on_errors.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %on_errors.i, align 1
  %44 = and i8 %43, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool14.not.i = icmp eq i8 %44, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end22.i

if.then15.i:                                      ; preds = %if.end12.i
  br i1 %tobool.not.i, label %if.then15.i.if.end18.i_crit_edge, label %brelse.exit.i

if.then15.i.if.end18.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

brelse.exit.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %brelse.exit.i, %if.then15.i.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool19.not.i = icmp eq i32 %silent, 0
  br i1 %tobool19.not.i, label %if.then61.thread, label %if.end18.i.err_out_now_crit_edge

if.end18.i.err_out_now_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then61.thread:                                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.76) #15
  br label %if.then63

if.end22.i:                                       ; preds = %if.end12.i
  %sub.i429 = add i64 %35, -1
  %45 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_bdev, align 4
  %47 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize, align 16
  %call.i122.i = tail call ptr @__bread_gfp(ptr noundef %46, i64 noundef %sub.i429, i32 noundef %48, i32 noundef 8) #15
  %tobool24.not.i = icmp eq ptr %call.i122.i, null
  br i1 %tobool24.not.i, label %if.else31.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  %b_data26.i = getelementptr inbounds %struct.buffer_head, ptr %call.i122.i, i32 0, i32 5
  %49 = ptrtoint ptr %b_data26.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_data26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool27.i = icmp ne i32 %silent, 0
  %call28.i = tail call fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %sb, ptr noundef %50, i1 noundef zeroext %tobool27.i) #15
  br i1 %call28.i, label %if.then25.i.hotfix_primary_boot_sector.i_crit_edge, label %brelse.exit125.i

if.then25.i.hotfix_primary_boot_sector.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hotfix_primary_boot_sector.i

brelse.exit125.i:                                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__brelse(ptr noundef nonnull %call.i122.i) #15
  br label %if.end35.i

if.else31.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool32.not.i = icmp eq i32 %silent, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.else31.i.if.end35.i_crit_edge

if.else31.i.if.end35.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.77) #15
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.else31.i.if.end35.i_crit_edge, %brelse.exit125.i
  %shr.i430 = lshr i64 %35, 1
  %51 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_bdev, align 4
  %53 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_blocksize, align 16
  %call.i128.i = tail call ptr @__bread_gfp(ptr noundef %52, i64 noundef %shr.i430, i32 noundef %54, i32 noundef 8) #15
  %tobool37.not.i = icmp eq ptr %call.i128.i, null
  br i1 %tobool37.not.i, label %if.else47.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  %b_data39.i = getelementptr inbounds %struct.buffer_head, ptr %call.i128.i, i32 0, i32 5
  %55 = ptrtoint ptr %b_data39.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool40.i = icmp ne i32 %silent, 0
  %call41.i = tail call fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %sb, ptr noundef %56, i1 noundef zeroext %tobool40.i) #15
  br i1 %call41.i, label %if.then38.i.hotfix_primary_boot_sector.i_crit_edge, label %if.end43.i

if.then38.i.hotfix_primary_boot_sector.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hotfix_primary_boot_sector.i

if.end43.i:                                       ; preds = %if.then38.i
  br i1 %tobool40.i, label %if.end43.i.brelse.exit131.i_crit_edge, label %if.then45.i

if.end43.i.brelse.exit131.i_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %brelse.exit131.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.78) #15
  br label %brelse.exit131.i

brelse.exit131.i:                                 ; preds = %if.then45.i, %if.end43.i.brelse.exit131.i_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i128.i) #15
  br label %if.end51.i

if.else47.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool48.not.i = icmp eq i32 %silent, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.else47.i.if.end51.i_crit_edge

if.else47.i.if.end51.i_crit_edge:                 ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.77) #15
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.else47.i.if.end51.i_crit_edge, %brelse.exit131.i
  br i1 %tobool.not.i, label %if.end51.i.if.then61_crit_edge, label %brelse.exit134.i

if.end51.i.if.then61_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then61

brelse.exit134.i:                                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #15
  br label %if.then61

hotfix_primary_boot_sector.i:                     ; preds = %if.then38.i.hotfix_primary_boot_sector.i_crit_edge, %if.then25.i.hotfix_primary_boot_sector.i_crit_edge
  %bh_backup.0.i = phi ptr [ %call.i122.i, %if.then25.i.hotfix_primary_boot_sector.i_crit_edge ], [ %call.i128.i, %if.then38.i.hotfix_primary_boot_sector.i_crit_edge ]
  br i1 %tobool.not.i, label %hotfix_primary_boot_sector.i.if.end68.i_crit_edge, label %if.then56.i

hotfix_primary_boot_sector.i.if.end68.i_crit_edge: ; preds = %hotfix_primary_boot_sector.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68.i

if.then56.i:                                      ; preds = %hotfix_primary_boot_sector.i
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %57 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then58.i, label %if.else66.i

if.then58.i:                                      ; preds = %if.then56.i
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.79) #15
  %b_data59.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %b_data59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data59.i, align 4
  %b_data60.i = getelementptr inbounds %struct.buffer_head, ptr %bh_backup.0.i, i32 0, i32 5
  %61 = ptrtoint ptr %b_data60.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data60.i, align 4
  %63 = call ptr @memcpy(ptr %60, ptr %62, i32 512)
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #15
  %call61.i = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i) #15
  %64 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool63.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %brelse.exit137.i

brelse.exit137.i:                                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__brelse(ptr noundef nonnull %bh_backup.0.i) #15
  br label %if.end65

if.end65.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.80) #15
  br label %brelse.exit140.i

if.else66.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.81) #15
  br label %brelse.exit140.i

brelse.exit140.i:                                 ; preds = %if.else66.i, %if.end65.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #15
  br label %if.end68.i

if.end68.i:                                       ; preds = %brelse.exit140.i, %hotfix_primary_boot_sector.i.if.end68.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %sb, ptr noundef nonnull @.str.82) #15
  br label %if.end65

if.then61:                                        ; preds = %brelse.exit134.i, %if.end51.i.if.then61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool62.not = icmp eq i32 %silent, 0
  br i1 %tobool62.not, label %if.then61.if.then63_crit_edge, label %if.then61.err_out_now_crit_edge

if.then61.err_out_now_crit_edge:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then61.if.then63_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then63

if.then63:                                        ; preds = %if.then61.if.then63_crit_edge, %if.then61.thread
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.20) #15
  br label %err_out_now

if.end65:                                         ; preds = %if.end68.i, %brelse.exit137.i, %if.then.i.if.end65_crit_edge
  %retval.0.i = phi ptr [ %bh_backup.0.i, %if.end68.i ], [ %call.i.i, %brelse.exit137.i ], [ %call.i.i, %if.then.i.if.end65_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i, i32 0, i32 5
  %66 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data, align 4
  %bpb.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %bpb.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %bpb.i, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #15
  %sector_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 9
  %71 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %sector_size.i, align 2
  %72 = tail call i16 @llvm.cttz.i16(i16 %70, i1 true) #15, !range !653
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %iszero.i = icmp eq i16 %69, 0
  %73 = trunc i16 %72 to i8
  %conv2.i = select i1 %iszero.i, i8 -1, i8 %73
  %sector_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 10
  %74 = ptrtoint ptr %sector_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv2.i, ptr %sector_size_bits.i, align 4
  %conv4.i = zext i16 %70 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 761, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.85, i32 noundef %conv4.i, i32 noundef %conv4.i) #15
  %75 = ptrtoint ptr %sector_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sector_size_bits.i, align 4
  %conv8.i = zext i8 %76 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 763, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.86, i32 noundef %conv8.i, i32 noundef %conv8.i) #15
  %77 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sector_size.i, align 2
  %conv12.i = zext i16 %78 to i32
  %79 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call7.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv12.i)
  %cmp.i = icmp ugt i32 %82, %conv12.i
  br i1 %cmp.i, label %if.then.i431, label %if.end.i432

if.then.i431:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %80, ptr noundef nonnull @.str.87, i32 noundef %conv12.i, i32 noundef %82) #15
  br label %if.then69

if.end.i432:                                      ; preds = %if.end65
  %sectors_per_cluster.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %sectors_per_cluster.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %sectors_per_cluster.i, align 1
  %conv20.i = zext i8 %84 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 771, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.88, i32 noundef %conv20.i) #15
  %85 = ptrtoint ptr %sectors_per_cluster.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sectors_per_cluster.i, align 1
  %87 = tail call i8 @llvm.cttz.i8(i8 %86, i1 true) #15, !range !654
  %88 = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %iszero24.i = icmp eq i8 %86, 0
  %sub26.i = select i1 %iszero24.i, i32 -1, i32 %88
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 774, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.89, i32 noundef %sub26.i) #15
  %hidden_sectors.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 2, i32 10
  %89 = ptrtoint ptr %hidden_sectors.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %hidden_sectors.i, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 776, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.90, i32 noundef %91) #15
  %92 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %sector_size.i, align 2
  %conv29.i = zext i16 %93 to i32
  %shl.i = shl nuw nsw i32 %conv29.i, %sub26.i
  %cluster_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 11
  %94 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %shl.i, ptr %cluster_size.i, align 8
  %sub31.i = add i32 %shl.i, -1
  %cluster_size_mask.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 12
  %95 = ptrtoint ptr %cluster_size_mask.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub31.i, ptr %cluster_size_mask.i, align 4
  %96 = tail call i32 @llvm.cttz.i32(i32 %shl.i, i1 true) #15, !range !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %iszero33.i = icmp eq i32 %shl.i, 0
  %97 = trunc i32 %96 to i8
  %conv36.i = select i1 %iszero33.i, i8 -1, i8 %97
  %cluster_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 13
  %98 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv36.i, ptr %cluster_size_bits.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 781, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.91, i32 noundef %shl.i, i32 noundef %shl.i) #15
  %99 = ptrtoint ptr %cluster_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cluster_size_mask.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 782, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.92, i32 noundef %100) #15
  %101 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cluster_size_bits.i, align 8
  %conv41.i = zext i8 %102 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 783, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.93, i32 noundef %conv41.i) #15
  %103 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cluster_size.i, align 8
  %105 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sector_size.i, align 2
  %conv44.i = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv44.i)
  %cmp45.i = icmp ult i32 %104, %conv44.i
  br i1 %cmp45.i, label %if.then47.i, label %if.end52.i

if.then47.i:                                      ; preds = %if.end.i432
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %108, ptr noundef nonnull @.str.94, i32 noundef %104, i32 noundef %conv44.i) #15
  br label %if.then69

if.end52.i:                                       ; preds = %if.end.i432
  %clusters_per_mft_record53.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 7
  %109 = ptrtoint ptr %clusters_per_mft_record53.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %clusters_per_mft_record53.i, align 1
  %conv54.i = sext i8 %110 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 792, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.95, i32 noundef %conv54.i, i32 noundef %conv54.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp55.i = icmp sgt i8 %110, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.else.i433

if.then57.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cluster_size.i, align 8
  %113 = tail call i32 @llvm.cttz.i32(i32 %conv54.i, i1 true) #15, !range !655
  %shl62.i = shl i32 %112, %113
  br label %if.end66.i

if.else.i433:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub63.i = sub nsw i32 0, %conv54.i
  %shl64.i = shl nuw i32 1, %sub63.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.else.i433, %if.then57.i
  %shl64.sink.i = phi i32 [ %shl62.i, %if.then57.i ], [ %shl64.i, %if.else.i433 ]
  %114 = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 14
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shl64.sink.i, ptr %114, align 4
  %sub68.i = add i32 %shl64.sink.i, -1
  %mft_record_size_mask.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 15
  %116 = ptrtoint ptr %mft_record_size_mask.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub68.i, ptr %mft_record_size_mask.i, align 8
  %117 = tail call i32 @llvm.cttz.i32(i32 %shl64.sink.i, i1 true) #15, !range !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl64.sink.i)
  %iszero70.i = icmp eq i32 %shl64.sink.i, 0
  %118 = trunc i32 %117 to i8
  %conv73.i = select i1 %iszero70.i, i8 -1, i8 %118
  %mft_record_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 16
  %119 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv73.i, ptr %mft_record_size_bits.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 806, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.96, i32 noundef %shl64.sink.i, i32 noundef %shl64.sink.i) #15
  %120 = ptrtoint ptr %mft_record_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mft_record_size_mask.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 808, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.97, i32 noundef %121) #15
  %122 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %mft_record_size_bits.i, align 4
  %conv78.i = zext i8 %123 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 810, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.98, i32 noundef %conv78.i, i32 noundef %conv78.i) #15
  %124 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %125)
  %cmp82.i = icmp ugt i32 %125, 4096
  br i1 %cmp82.i, label %if.then84.i, label %if.end87.i

if.then84.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %127, ptr noundef nonnull @.str.99, i32 noundef %125, i32 noundef 4096) #15
  br label %if.then69

if.end87.i:                                       ; preds = %if.end66.i
  %128 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %sector_size.i, align 2
  %conv90.i = zext i16 %129 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %conv90.i)
  %cmp91.i = icmp ult i32 %125, %conv90.i
  br i1 %cmp91.i, label %if.then93.i, label %if.end98.i

if.then93.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %131, ptr noundef nonnull @.str.100, i32 noundef %125, i32 noundef %conv90.i) #15
  br label %if.then69

if.end98.i:                                       ; preds = %if.end87.i
  %clusters_per_index_record99.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 9
  %132 = ptrtoint ptr %clusters_per_index_record99.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %clusters_per_index_record99.i, align 1
  %conv100.i = sext i8 %133 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 832, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.101, i32 noundef %conv100.i, i32 noundef %conv100.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp101.i = icmp sgt i8 %133, 0
  br i1 %cmp101.i, label %if.then103.i, label %if.else109.i

if.then103.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cluster_size.i, align 8
  %136 = tail call i32 @llvm.cttz.i32(i32 %conv100.i, i1 true) #15, !range !655
  %shl108.i = shl i32 %135, %136
  br label %if.end113.i

if.else109.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub110.i = sub nsw i32 0, %conv100.i
  %shl111.i = shl nuw i32 1, %sub110.i
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else109.i, %if.then103.i
  %shl111.sink.i = phi i32 [ %shl108.i, %if.then103.i ], [ %shl111.i, %if.else109.i ]
  %137 = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 17
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %shl111.sink.i, ptr %137, align 8
  %sub115.i = add i32 %shl111.sink.i, -1
  %index_record_size_mask.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 18
  %139 = ptrtoint ptr %index_record_size_mask.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub115.i, ptr %index_record_size_mask.i, align 4
  %140 = tail call i32 @llvm.cttz.i32(i32 %shl111.sink.i, i1 true) #15, !range !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl111.sink.i)
  %iszero117.i = icmp eq i32 %shl111.sink.i, 0
  %141 = trunc i32 %140 to i8
  %conv120.i = select i1 %iszero117.i, i8 -1, i8 %141
  %index_record_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 19
  %142 = ptrtoint ptr %index_record_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv120.i, ptr %index_record_size_bits.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 847, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.102, i32 noundef %shl111.sink.i, i32 noundef %shl111.sink.i) #15
  %143 = ptrtoint ptr %index_record_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %index_record_size_mask.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 849, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.103, i32 noundef %144) #15
  %145 = ptrtoint ptr %index_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %index_record_size_bits.i, align 8
  %conv125.i = zext i8 %146 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 852, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.104, i32 noundef %conv125.i, i32 noundef %conv125.i) #15
  %147 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %137, align 8
  %149 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %sector_size.i, align 2
  %conv130.i = zext i16 %150 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %conv130.i)
  %cmp131.i = icmp ult i32 %148, %conv130.i
  br i1 %cmp131.i, label %if.then133.i, label %if.end138.i

if.then133.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  %151 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %152, ptr noundef nonnull @.str.105, i32 noundef %148, i32 noundef %conv130.i) #15
  br label %if.then69

if.end138.i:                                      ; preds = %if.end113.i
  %number_of_sectors.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 4
  %153 = ptrtoint ptr %number_of_sectors.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 8)
  %154 = load i64, ptr %number_of_sectors.i, align 1
  %155 = tail call i64 @llvm.bswap.i64(i64 %154) #15
  %sh_prom.i434 = zext i32 %sub26.i to i64
  %shr.i435 = ashr i64 %155, %sh_prom.i434
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr.i435)
  %cmp139.i = icmp ugt i64 %shr.i435, 4294967295
  br i1 %cmp139.i, label %if.then141.i, label %if.end143.i

if.then141.i:                                     ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #17
  %156 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %157, ptr noundef nonnull @.str.106) #15
  br label %if.then69

if.end143.i:                                      ; preds = %if.end138.i
  %nr_clusters.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 20
  %158 = ptrtoint ptr %nr_clusters.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %shr.i435, ptr %nr_clusters.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 872, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.107, i64 noundef %shr.i435) #15
  %159 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom147.i = zext i8 %160 to i64
  %shl148.i = shl i64 %shr.i435, %sh_prom147.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2199023255551, i64 %shl148.i)
  %cmp149.i = icmp ugt i64 %shl148.i, 2199023255551
  br i1 %cmp149.i, label %if.then151.i, label %if.end158.i

if.then151.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv146.i = zext i8 %160 to i32
  %161 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call7.i, align 8
  %sub155.i = sub nsw i32 40, %conv146.i
  %sh_prom156.i = zext i32 %sub155.i to i64
  %shr157.i = lshr i64 %shr.i435, %sh_prom156.i
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %162, ptr noundef nonnull @.str.108, i64 noundef %shr157.i) #15
  br label %if.then69

if.end158.i:                                      ; preds = %if.end143.i
  %mft_lcn.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 5
  %163 = ptrtoint ptr %mft_lcn.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %mft_lcn.i, align 1
  %165 = tail call i64 @llvm.bswap.i64(i64 %164) #15
  %166 = ptrtoint ptr %nr_clusters.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %nr_clusters.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %165, i64 %167)
  %cmp161.not.i = icmp slt i64 %165, %167
  br i1 %cmp161.not.i, label %if.end165.i, label %if.then163.i

if.then163.i:                                     ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #17
  %168 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %169, ptr noundef nonnull @.str.109, i64 noundef %165, i64 noundef %165) #15
  br label %if.then69

if.end165.i:                                      ; preds = %if.end158.i
  %mft_lcn166.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 21
  %170 = ptrtoint ptr %mft_lcn166.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %165, ptr %mft_lcn166.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 896, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.110, i64 noundef %165) #15
  %mftmirr_lcn.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 6
  %171 = ptrtoint ptr %mftmirr_lcn.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %mftmirr_lcn.i, align 1
  %173 = tail call i64 @llvm.bswap.i64(i64 %172) #15
  %174 = ptrtoint ptr %nr_clusters.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %nr_clusters.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %173, i64 %175)
  %cmp170.not.i = icmp slt i64 %173, %175
  br i1 %cmp170.not.i, label %if.end73, label %if.then172.i

if.then172.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #17
  %176 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %call7.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %177, ptr noundef nonnull @.str.111, i64 noundef %173, i64 noundef %173) #15
  br label %if.then69

if.then69:                                        ; preds = %if.then172.i, %if.then163.i, %if.then151.i, %if.then141.i, %if.then133.i, %if.then93.i, %if.then84.i, %if.then47.i, %if.then.i431
  tail call void @__brelse(ptr noundef nonnull %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool70.not = icmp eq i32 %silent, 0
  br i1 %tobool70.not, label %if.then71, label %if.then69.err_out_now_crit_edge

if.then69.err_out_now_crit_edge:                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.21) #15
  br label %err_out_now

if.end73:                                         ; preds = %if.end165.i
  %mftmirr_lcn175.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 22
  %178 = ptrtoint ptr %mftmirr_lcn175.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %173, ptr %mftmirr_lcn175.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 905, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.112, i64 noundef %173) #15
  %179 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cluster_size.i, align 8
  %181 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %mft_record_size_bits.i, align 4
  %conv179.i = zext i8 %182 to i32
  %shl180.i = shl i32 4, %conv179.i
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %shl180.i)
  %cmp181.not.i = icmp ugt i32 %180, %shl180.i
  %shr188.i = lshr i32 %180, %conv179.i
  %spec.select.i = select i1 %cmp181.not.i, i32 %shr188.i, i32 4
  %183 = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 38
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %spec.select.i, ptr %183, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 920, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.113, i32 noundef %spec.select.i) #15
  %volume_serial_number.i = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %67, i32 0, i32 11
  %185 = ptrtoint ptr %volume_serial_number.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 8)
  %186 = load i64, ptr %volume_serial_number.i, align 1
  %187 = tail call i64 @llvm.bswap.i64(i64 %186) #15
  %serial_no.i = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 23
  %188 = ptrtoint ptr %serial_no.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %serial_no.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 924, ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef nonnull @.str.114, i64 noundef %187) #15
  tail call void @__brelse(ptr noundef nonnull %retval.0.i) #15
  %189 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %sector_size.i, align 2
  %conv74 = zext i16 %190 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %conv74)
  %cmp75 = icmp ult i32 %call30, %conv74
  br i1 %cmp75, label %if.then77, label %if.end73.if.end116_crit_edge

if.end73.if.end116_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116

if.then77:                                        ; preds = %if.end73
  %call80 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %conv74) #15
  %191 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %sector_size.i, align 2
  %conv82 = zext i16 %192 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %conv82)
  %cmp83.not = icmp eq i32 %call80, %conv82
  br i1 %cmp83.not, label %do.body92, label %if.then85

if.then85:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool86.not = icmp eq i32 %silent, 0
  br i1 %tobool86.not, label %if.then87, label %if.then85.err_out_now_crit_edge

if.then85.err_out_now_crit_edge:                  ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then87:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.22, i32 noundef %conv82) #15
  br label %err_out_now

do.body92:                                        ; preds = %if.then77
  %193 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %194)
  %cmp94.not = icmp eq i32 %call80, %194
  br i1 %cmp94.not, label %do.end111, label %do.body103, !prof !651

do.body103:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2817, 0\0A.popsection", ""() #15, !srcloc !656
  unreachable

do.end111:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #17
  %195 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_bdev, align 4
  %bd_nr_sectors.i.i441 = getelementptr inbounds %struct.block_device, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %bd_nr_sectors.i.i441 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %bd_nr_sectors.i.i441, align 8
  %199 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %s_blocksize_bits, align 4
  %conv.i443 = zext i8 %200 to i32
  %sub.i444 = add nsw i32 %conv.i443, -9
  %sh_prom.i445 = zext i32 %sub.i444 to i64
  %shr.i446 = lshr i64 %198, %sh_prom.i445
  %201 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %shr.i446, ptr %nr_blocks, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2821, ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef nonnull @.str.23, i32 noundef %call80, i32 noundef %conv.i443) #15
  br label %if.end116

if.end116:                                        ; preds = %do.end111, %if.end73.if.end116_crit_edge
  tail call fastcc void @ntfs_setup_allocators(ptr noundef nonnull %call7.i)
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %202 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1397118030, ptr %s_magic, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %203 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %204 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 100, ptr %s_time_gran, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %205 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @ntfs_sops, ptr %s_op, align 4
  %call117 = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool120.not = icmp eq i32 %silent, 0
  br i1 %tobool120.not, label %if.then121, label %if.then119.err_out_now_crit_edge

if.then119.err_out_now_crit_edge:                 ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_now

if.then121:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.24) #15
  br label %err_out_now

if.end123:                                        ; preds = %if.end116
  %i_ino = getelementptr inbounds %struct.inode, ptr %call117, i32 0, i32 11
  %206 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %i_ino, align 8
  tail call void @__insert_inode_hash(ptr noundef nonnull %call117, i32 noundef 0) #15
  %call124 = tail call i32 @ntfs_read_inode_mount(ptr noundef nonnull %call117) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end131

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool128.not = icmp eq i32 %silent, 0
  br i1 %tobool128.not, label %if.then129, label %if.then127.iput_tmp_ino_err_out_now_crit_edge

if.then127.iput_tmp_ino_err_out_now_crit_edge:    ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_tmp_ino_err_out_now

if.then129:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.24) #15
  br label %iput_tmp_ino_err_out_now

if.end131:                                        ; preds = %if.end123
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %207 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cluster_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %208)
  %cmp132 = icmp ult i32 %208, 4097
  br i1 %cmp132, label %land.lhs.true, label %if.end131.if.end140_crit_edge

if.end131.if.end140_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

land.lhs.true:                                    ; preds = %if.end131
  %209 = load i32, ptr @ntfs_nr_compression_users, align 4
  %inc = add i32 %209, 1
  store i32 %inc, ptr @ntfs_nr_compression_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool134.not = icmp eq i32 %209, 0
  br i1 %tobool134.not, label %if.then135, label %land.lhs.true.if.end140_crit_edge

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then135:                                       ; preds = %land.lhs.true
  %call136 = tail call i32 @allocate_compression_buffers() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then135.if.end140_crit_edge, label %if.then138

if.then135.if.end140_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then138:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef null, ptr noundef nonnull @.str.25) #15
  %210 = load i32, ptr @ntfs_nr_compression_users, align 4
  %dec = add i32 %210, -1
  store i32 %dec, ptr @ntfs_nr_compression_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  br label %iput_tmp_ino_err_out_now

if.end140:                                        ; preds = %if.then135.if.end140_crit_edge, %land.lhs.true.if.end140_crit_edge, %if.end131.if.end140_crit_edge
  %211 = load ptr, ptr @default_upcase, align 4
  %tobool141.not = icmp eq ptr %211, null
  br i1 %tobool141.not, label %if.then142, label %if.end140.if.end144_crit_edge

if.end140.if.end144_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

if.then142:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %call143 = tail call ptr @generate_default_upcase() #15
  store ptr %call143, ptr @default_upcase, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.end140.if.end144_crit_edge
  %212 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %inc145 = add i32 %212, 1
  store i32 %inc145, ptr @ntfs_nr_upcase_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  %call146 = tail call fastcc zeroext i1 @load_system_files(ptr noundef nonnull %call7.i)
  br i1 %call146, label %if.end148, label %if.then147

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.26) #15
  br label %unl_upcase_iput_tmp_ino_err_out_now

if.end148:                                        ; preds = %if.end144
  %root_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 46
  %213 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %root_ino, align 8
  tail call void @ihold(ptr noundef %214) #15
  %215 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %root_ino, align 8
  %call150 = tail call ptr @d_make_root(ptr noundef %216) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %217 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call150, ptr %s_root, align 64
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %if.end166, label %if.then152

if.then152:                                       ; preds = %if.end148
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2899, ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef nonnull @.str.27) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %218 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %dec153 = add i32 %218, -1
  store i32 %dec153, ptr @ntfs_nr_upcase_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec153)
  %tobool154.not = icmp eq i32 %dec153, 0
  br i1 %tobool154.not, label %land.lhs.true155, label %if.then152.if.end158_crit_edge

if.then152.if.end158_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

land.lhs.true155:                                 ; preds = %if.then152
  %219 = load ptr, ptr @default_upcase, align 4
  %tobool156.not = icmp eq ptr %219, null
  br i1 %tobool156.not, label %land.lhs.true155.if.end158_crit_edge, label %if.then157

land.lhs.true155.if.end158_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

if.then157:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %219) #15
  store ptr null, ptr @default_upcase, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %land.lhs.true155.if.end158_crit_edge, %if.then152.if.end158_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %220 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @ntfs_export_ops, ptr %s_export_op, align 16
  br label %cleanup

if.end166:                                        ; preds = %if.end148
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %sb, ptr noundef nonnull @.str.28) #15
  %vol_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 42
  %221 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %vol_ino, align 8
  tail call void @iput(ptr noundef %222) #15
  %223 = ptrtoint ptr %vol_ino to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %vol_ino, align 8
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 44
  %224 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %225)
  %cmp169 = icmp ugt i8 %225, 2
  br i1 %cmp169, label %if.then171, label %if.end166.if.end207_crit_edge

if.end166.if.end207_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end207

if.then171:                                       ; preds = %if.end166
  %usnjrnl_j_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 53
  %226 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %usnjrnl_j_ino, align 4
  %tobool172.not = icmp eq ptr %227, null
  br i1 %tobool172.not, label %if.then171.if.end176_crit_edge, label %if.then173

if.then171.if.end176_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end176

if.then173:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %227) #15
  %228 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %usnjrnl_j_ino, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.then171.if.end176_crit_edge
  %usnjrnl_max_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 52
  %229 = ptrtoint ptr %usnjrnl_max_ino to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %usnjrnl_max_ino, align 8
  %tobool177.not = icmp eq ptr %230, null
  br i1 %tobool177.not, label %if.end176.if.end181_crit_edge, label %if.then178

if.end176.if.end181_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end181

if.then178:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %230) #15
  %231 = ptrtoint ptr %usnjrnl_max_ino to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %usnjrnl_max_ino, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.then178, %if.end176.if.end181_crit_edge
  %usnjrnl_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 51
  %232 = ptrtoint ptr %usnjrnl_ino to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %usnjrnl_ino, align 4
  %tobool182.not = icmp eq ptr %233, null
  br i1 %tobool182.not, label %if.end181.if.end186_crit_edge, label %if.then183

if.end181.if.end186_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %233) #15
  %234 = ptrtoint ptr %usnjrnl_ino to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %usnjrnl_ino, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end181.if.end186_crit_edge
  %quota_q_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 50
  %235 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %quota_q_ino, align 8
  %tobool187.not = icmp eq ptr %236, null
  br i1 %tobool187.not, label %if.end186.if.end191_crit_edge, label %if.then188

if.end186.if.end191_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

if.then188:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %236) #15
  %237 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %quota_q_ino, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.end186.if.end191_crit_edge
  %quota_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 49
  %238 = ptrtoint ptr %quota_ino to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %quota_ino, align 4
  %tobool192.not = icmp eq ptr %239, null
  br i1 %tobool192.not, label %if.end191.if.end196_crit_edge, label %if.then193

if.end191.if.end196_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.then193:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %239) #15
  %240 = ptrtoint ptr %quota_ino to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %quota_ino, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.end191.if.end196_crit_edge
  %extend_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 48
  %241 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %extend_ino, align 8
  %tobool197.not = icmp eq ptr %242, null
  br i1 %tobool197.not, label %if.end196.if.end201_crit_edge, label %if.then198

if.end196.if.end201_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.then198:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %242) #15
  %243 = ptrtoint ptr %extend_ino to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %extend_ino, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end196.if.end201_crit_edge
  %secure_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 47
  %244 = ptrtoint ptr %secure_ino to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %secure_ino, align 4
  %tobool202.not = icmp eq ptr %245, null
  br i1 %tobool202.not, label %if.end201.if.end207_crit_edge, label %if.then203

if.end201.if.end207_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end207

if.then203:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %245) #15
  %246 = ptrtoint ptr %secure_ino to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %secure_ino, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.end201.if.end207_crit_edge, %if.end166.if.end207_crit_edge
  %247 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %root_ino, align 8
  tail call void @iput(ptr noundef %248) #15
  %249 = ptrtoint ptr %root_ino to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %root_ino, align 8
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 40
  %250 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %lcnbmp_ino, align 4
  tail call void @iput(ptr noundef %251) #15
  %252 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr null, ptr %lcnbmp_ino, align 4
  %mftbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 35
  %253 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mftbmp_ino, align 4
  tail call void @iput(ptr noundef %254) #15
  %255 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %mftbmp_ino, align 4
  %logfile_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 39
  %256 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %logfile_ino, align 8
  %tobool212.not = icmp eq ptr %257, null
  br i1 %tobool212.not, label %if.end207.if.end216_crit_edge, label %if.then213

if.end207.if.end216_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end216

if.then213:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %257) #15
  %258 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %logfile_ino, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %if.end207.if.end216_crit_edge
  %mftmirr_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 37
  %259 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mftmirr_ino, align 8
  %tobool217.not = icmp eq ptr %260, null
  br i1 %tobool217.not, label %if.end216.if.end221_crit_edge, label %if.then218

if.end216.if.end221_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end221

if.then218:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %260) #15
  %261 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %mftmirr_ino, align 8
  br label %if.end221

if.end221:                                        ; preds = %if.then218, %if.end216.if.end221_crit_edge
  %attrdef_size = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 26
  %262 = ptrtoint ptr %attrdef_size to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %attrdef_size, align 8
  %attrdef = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 27
  %263 = ptrtoint ptr %attrdef to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %attrdef, align 4
  %tobool222.not = icmp eq ptr %264, null
  br i1 %tobool222.not, label %if.end221.if.end226_crit_edge, label %if.then223

if.end221.if.end226_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226

if.then223:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %264) #15
  %265 = ptrtoint ptr %attrdef to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %attrdef, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %if.end221.if.end226_crit_edge
  %upcase_len = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 24
  %266 = ptrtoint ptr %upcase_len to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %upcase_len, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %upcase = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 25
  %267 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %upcase, align 4
  %269 = load ptr, ptr @default_upcase, align 4
  %cmp227 = icmp eq ptr %268, %269
  br i1 %cmp227, label %if.then229, label %if.end226.if.end232_crit_edge

if.end226.if.end232_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end232

if.then229:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  %270 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %dec230 = add i32 %270, -1
  store i32 %dec230, ptr @ntfs_nr_upcase_users, align 4
  %271 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %upcase, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then229, %if.end226.if.end232_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  %272 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %upcase, align 4
  %tobool234.not = icmp eq ptr %273, null
  br i1 %tobool234.not, label %if.end232.if.end238_crit_edge, label %if.then235

if.end232.if.end238_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end238

if.then235:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %273) #15
  %274 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %upcase, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.then235, %if.end232.if.end238_crit_edge
  %nls_map = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 54
  %275 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %nls_map, align 8
  %tobool239.not = icmp eq ptr %276, null
  br i1 %tobool239.not, label %if.end238.unl_upcase_iput_tmp_ino_err_out_now_crit_edge, label %if.then240

if.end238.unl_upcase_iput_tmp_ino_err_out_now_crit_edge: ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #17
  br label %unl_upcase_iput_tmp_ino_err_out_now

if.then240:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unload_nls(ptr noundef nonnull %276) #15
  %277 = ptrtoint ptr %nls_map to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr null, ptr %nls_map, align 8
  br label %unl_upcase_iput_tmp_ino_err_out_now

unl_upcase_iput_tmp_ino_err_out_now:              ; preds = %if.then240, %if.end238.unl_upcase_iput_tmp_ino_err_out_now_crit_edge, %if.then147
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %278 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %dec244 = add i32 %278, -1
  store i32 %dec244, ptr @ntfs_nr_upcase_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec244)
  %tobool245.not = icmp eq i32 %dec244, 0
  br i1 %tobool245.not, label %land.lhs.true246, label %unl_upcase_iput_tmp_ino_err_out_now.if.end249_crit_edge

unl_upcase_iput_tmp_ino_err_out_now.if.end249_crit_edge: ; preds = %unl_upcase_iput_tmp_ino_err_out_now
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end249

land.lhs.true246:                                 ; preds = %unl_upcase_iput_tmp_ino_err_out_now
  %279 = load ptr, ptr @default_upcase, align 4
  %tobool247.not = icmp eq ptr %279, null
  br i1 %tobool247.not, label %land.lhs.true246.if.end249_crit_edge, label %if.then248

land.lhs.true246.if.end249_crit_edge:             ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end249

if.then248:                                       ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %279) #15
  store ptr null, ptr @default_upcase, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %land.lhs.true246.if.end249_crit_edge, %unl_upcase_iput_tmp_ino_err_out_now.if.end249_crit_edge
  %280 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %cluster_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %281)
  %cmp251 = icmp ult i32 %281, 4097
  br i1 %cmp251, label %land.lhs.true253, label %if.end249.if.end257_crit_edge

if.end249.if.end257_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end257

land.lhs.true253:                                 ; preds = %if.end249
  %282 = load i32, ptr @ntfs_nr_compression_users, align 4
  %dec254 = add i32 %282, -1
  store i32 %dec254, ptr @ntfs_nr_compression_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec254)
  %tobool255.not = icmp eq i32 %dec254, 0
  br i1 %tobool255.not, label %if.then256, label %land.lhs.true253.if.end257_crit_edge

land.lhs.true253.if.end257_crit_edge:             ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end257

if.then256:                                       ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_compression_buffers() #15
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %land.lhs.true253.if.end257_crit_edge, %if.end249.if.end257_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  br label %iput_tmp_ino_err_out_now

iput_tmp_ino_err_out_now:                         ; preds = %if.end257, %if.then138, %if.then129, %if.then127.iput_tmp_ino_err_out_now_crit_edge
  tail call void @iput(ptr noundef nonnull %call117) #15
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %call7.i, i32 0, i32 34
  %283 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mft_ino, align 8
  %tobool258.not = icmp eq ptr %284, null
  %cmp261.not = icmp eq ptr %284, %call117
  %or.cond = select i1 %tobool258.not, i1 true, i1 %cmp261.not
  br i1 %or.cond, label %iput_tmp_ino_err_out_now.if.end265_crit_edge, label %if.then263

iput_tmp_ino_err_out_now.if.end265_crit_edge:     ; preds = %iput_tmp_ino_err_out_now
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end265

if.then263:                                       ; preds = %iput_tmp_ino_err_out_now
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %284) #15
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %iput_tmp_ino_err_out_now.if.end265_crit_edge
  %285 = ptrtoint ptr %mft_ino to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %mft_ino, align 8
  br label %err_out_now

err_out_now:                                      ; preds = %if.end265, %if.then121, %if.then119.err_out_now_crit_edge, %if.then87, %if.then85.err_out_now_crit_edge, %if.then71, %if.then69.err_out_now_crit_edge, %if.then63, %if.then61.err_out_now_crit_edge, %if.end18.i.err_out_now_crit_edge, %if.then56, %if.then54.err_out_now_crit_edge, %if.then34, %if.then32.err_out_now_crit_edge, %bdev_logical_block_size.exit428, %if.then23.err_out_now_crit_edge, %if.end11.err_out_now_crit_edge
  %286 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %s_fs_info, align 16
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 3011, ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef nonnull @.str.29) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out_now, %if.end158, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err_out_now ], [ 0, %if.end158 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then4 ]
  %287 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %task, align 8
  %lockdep_recursion271 = getelementptr inbounds %struct.task_struct, ptr %288, i32 0, i32 143
  %289 = ptrtoint ptr %lockdep_recursion271 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %lockdep_recursion271, align 4
  %sub272 = add i32 %290, -65536
  store i32 %sub272, ptr %lockdep_recursion271, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @parse_options(ptr noundef %vol, ptr noundef %opt) unnamed_addr #2 align 64 {
entry:
  %opt.addr = alloca ptr, align 4
  %v = alloca ptr, align 4
  %val = alloca i8, align 1
  %val143 = alloca i8, align 1
  %val157 = alloca i8, align 1
  %val242 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %opt, ptr %opt.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #15
  %1 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %v, align 4, !annotation !657
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.else310_crit_edge, label %lor.lhs.false

entry.if.else310_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else310

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.else310_crit_edge, label %if.end

lor.lhs.false.if.else310_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else310

if.end:                                           ; preds = %lor.lhs.false
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 175, ptr noundef nonnull @__func__.parse_options, ptr noundef nonnull @.str.31, ptr noundef nonnull %opt) #15
  %call857 = call ptr @strsep(ptr noundef nonnull %opt.addr, ptr noundef nonnull @.str.32) #15
  %tobool2.not858 = icmp eq ptr %call857, null
  br i1 %tobool2.not858, label %if.end.if.else310_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.else310_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else310

while.body:                                       ; preds = %if.end280.while.body_crit_edge, %if.end.while.body_crit_edge
  %call937 = phi ptr [ %call, %if.end280.while.body_crit_edge ], [ %call857, %if.end.while.body_crit_edge ]
  %errors.0925 = phi i32 [ %errors.1, %if.end280.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %sloppy.0919 = phi i32 [ %sloppy.1, %if.end280.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %uid.sroa.0.0913 = phi i32 [ %uid.sroa.0.2, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %nls_map.0907 = phi ptr [ %nls_map.1, %if.end280.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %disable_sparse.0901 = phi i32 [ %disable_sparse.2, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %case_sensitive.0895 = phi i32 [ %case_sensitive.2, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %show_sys_files.0889 = phi i32 [ %show_sys_files.2, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %on_errors.0883 = phi i32 [ %on_errors.3, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %mft_zone_multiplier.0877 = phi i32 [ %mft_zone_multiplier.1, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %dmask.0871 = phi i16 [ %dmask.1, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %fmask.0865 = phi i16 [ %fmask.1, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %gid.sroa.0.0859 = phi i32 [ %gid.sroa.0.2, %if.end280.while.body_crit_edge ], [ -1, %if.end.while.body_crit_edge ]
  %call3 = call ptr @strchr(ptr noundef nonnull %call937, i32 noundef 61)
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %v, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.body.if.end6_crit_edge, label %if.then5

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  %5 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incdec.ptr, ptr %v, align 4
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call3, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body.if.end6_crit_edge
  %call7 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(4) @.str.33) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.then9.needs_arg_crit_edge, label %lor.lhs.false11

if.then9.needs_arg_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false11:                                  ; preds = %if.then9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %lor.lhs.false11.needs_arg_crit_edge, label %if.end14

lor.lhs.false11.needs_arg_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

if.end14:                                         ; preds = %lor.lhs.false11
  %call15 = call i32 @simple_strtoul(ptr noundef nonnull %8, ptr noundef nonnull %v, i32 noundef 0) #15
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.needs_val_crit_edge

if.end14.needs_val_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.end18:                                         ; preds = %if.end14
  %15 = call i32 @llvm.read_register.i32(metadata !641) #15
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
  %user_ns = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns, align 4
  %call22 = call i32 @make_kuid(ptr noundef %22, i32 noundef %call15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp.i.not = icmp eq i32 %call22, -1
  br i1 %cmp.i.not, label %if.end18.needs_val_crit_edge, label %if.end18.if.end280_crit_edge

if.end18.if.end280_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.end18.needs_val_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.else:                                          ; preds = %if.end6
  %call27 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(4) @.str.34) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else58

if.then29:                                        ; preds = %if.else
  %23 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %if.then29.needs_arg_crit_edge, label %lor.lhs.false31

if.then29.needs_arg_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false31:                                  ; preds = %if.then29
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool32.not = icmp eq i8 %26, 0
  br i1 %tobool32.not, label %lor.lhs.false31.needs_arg_crit_edge, label %if.end34

lor.lhs.false31.needs_arg_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

if.end34:                                         ; preds = %lor.lhs.false31
  %call35 = call i32 @simple_strtoul(ptr noundef nonnull %24, ptr noundef nonnull %v, i32 noundef 0) #15
  %27 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool36.not = icmp eq i8 %30, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.needs_val_crit_edge

if.end34.needs_val_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.end38:                                         ; preds = %if.end34
  %31 = call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i593 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i593 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task46, align 8
  %cred47 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 99
  %35 = ptrtoint ptr %cred47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cred47, align 16
  %user_ns48 = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 25
  %37 = ptrtoint ptr %user_ns48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user_ns48, align 4
  %call49 = call i32 @make_kgid(ptr noundef %38, i32 noundef %call35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call49)
  %cmp.i594.not = icmp eq i32 %call49, -1
  br i1 %cmp.i594.not, label %if.end38.needs_val_crit_edge, label %if.end38.if.end280_crit_edge

if.end38.if.end280_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.end38.needs_val_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.else58:                                        ; preds = %if.else
  %call59 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(6) @.str.36) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.else71

if.then61:                                        ; preds = %if.else58
  %39 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v, align 4
  %tobool62.not = icmp eq ptr %40, null
  br i1 %tobool62.not, label %if.then61.needs_arg_crit_edge, label %lor.lhs.false63

if.then61.needs_arg_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false63:                                  ; preds = %if.then61
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool64.not = icmp eq i8 %42, 0
  br i1 %tobool64.not, label %lor.lhs.false63.needs_arg_crit_edge, label %if.end66

lor.lhs.false63.needs_arg_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

if.end66:                                         ; preds = %lor.lhs.false63
  %call67 = call i32 @simple_strtoul(ptr noundef nonnull %40, ptr noundef nonnull %v, i32 noundef 8) #15
  %conv = trunc i32 %call67 to i16
  %43 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %v, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool68.not = icmp eq i8 %46, 0
  br i1 %tobool68.not, label %if.end66.if.end280_crit_edge, label %if.end66.needs_val_crit_edge

if.end66.needs_val_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.end66.if.end280_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.else71:                                        ; preds = %if.else58
  %call72 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(6) @.str.37) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.else85

if.then74:                                        ; preds = %if.else71
  %47 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %v, align 4
  %tobool75.not = icmp eq ptr %48, null
  br i1 %tobool75.not, label %if.then74.needs_arg_crit_edge, label %lor.lhs.false76

if.then74.needs_arg_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false76:                                  ; preds = %if.then74
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool77.not = icmp eq i8 %50, 0
  br i1 %tobool77.not, label %lor.lhs.false76.needs_arg_crit_edge, label %if.end79

lor.lhs.false76.needs_arg_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

if.end79:                                         ; preds = %lor.lhs.false76
  %call80 = call i32 @simple_strtoul(ptr noundef nonnull %48, ptr noundef nonnull %v, i32 noundef 8) #15
  %conv81 = trunc i32 %call80 to i16
  %51 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %v, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool82.not = icmp eq i8 %54, 0
  br i1 %tobool82.not, label %if.end79.if.end280_crit_edge, label %if.end79.needs_val_crit_edge

if.end79.needs_val_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.end79.if.end280_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.else85:                                        ; preds = %if.else71
  %call86 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(6) @.str.38) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.else99

if.then88:                                        ; preds = %if.else85
  %55 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %v, align 4
  %tobool89.not = icmp eq ptr %56, null
  br i1 %tobool89.not, label %if.then88.needs_arg_crit_edge, label %lor.lhs.false90

if.then88.needs_arg_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false90:                                  ; preds = %if.then88
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool91.not = icmp eq i8 %58, 0
  br i1 %tobool91.not, label %lor.lhs.false90.needs_arg_crit_edge, label %if.end93

lor.lhs.false90.needs_arg_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

if.end93:                                         ; preds = %lor.lhs.false90
  %call94 = call i32 @simple_strtoul(ptr noundef nonnull %56, ptr noundef nonnull %v, i32 noundef 8) #15
  %conv95 = trunc i32 %call94 to i16
  %59 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %v, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool96.not = icmp eq i8 %62, 0
  br i1 %tobool96.not, label %if.end93.if.end280_crit_edge, label %if.end93.needs_val_crit_edge

if.end93.needs_val_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.end93.if.end280_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.else99:                                        ; preds = %if.else85
  %call100 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(20) @.str.39) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then102, label %if.else112

if.then102:                                       ; preds = %if.else99
  %63 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %v, align 4
  %tobool103.not = icmp eq ptr %64, null
  br i1 %tobool103.not, label %if.then102.needs_arg_crit_edge, label %lor.lhs.false104

if.then102.needs_arg_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false104:                                 ; preds = %if.then102
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool105.not = icmp eq i8 %66, 0
  br i1 %tobool105.not, label %lor.lhs.false104.needs_arg_crit_edge, label %if.end107

lor.lhs.false104.needs_arg_crit_edge:             ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

if.end107:                                        ; preds = %lor.lhs.false104
  %call108 = call i32 @simple_strtoul(ptr noundef nonnull %64, ptr noundef nonnull %v, i32 noundef 0) #15
  %67 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %v, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool109.not = icmp eq i8 %70, 0
  br i1 %tobool109.not, label %if.end107.if.end280_crit_edge, label %if.end107.needs_val_crit_edge

if.end107.needs_val_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.end107.if.end280_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.else112:                                       ; preds = %if.else99
  %call113 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(7) @.str.40) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %if.else126

if.then115:                                       ; preds = %if.else112
  %71 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %v, align 4
  %tobool116.not = icmp eq ptr %72, null
  br i1 %tobool116.not, label %if.then115.if.end280_crit_edge, label %lor.lhs.false117

if.then115.if.end280_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

lor.lhs.false117:                                 ; preds = %if.then115
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool118.not = icmp eq i8 %74, 0
  br i1 %tobool118.not, label %lor.lhs.false117.if.end280_crit_edge, label %if.else120

lor.lhs.false117.if.end280_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.else120:                                       ; preds = %lor.lhs.false117
  %call121 = call i32 @simple_strtoul(ptr noundef nonnull %72, ptr noundef nonnull %v, i32 noundef 0) #15
  %75 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %v, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool122.not = icmp eq i8 %78, 0
  br i1 %tobool122.not, label %if.else120.if.end280_crit_edge, label %if.else120.needs_val_crit_edge

if.else120.needs_val_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.else120.if.end280_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.else126:                                       ; preds = %if.else112
  %call127 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(15) @.str.41) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %if.else139

if.then129:                                       ; preds = %if.else126
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #15
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %val, align 1, !annotation !657
  %80 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %v, align 4
  %call130 = call fastcc i32 @simple_getbool(ptr noundef %81, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %cleanup136, label %cleanup136.thread

cleanup136.thread:                                ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %val, align 1, !range !658
  %84 = zext i8 %83 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #15
  br label %if.end280

cleanup136:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #15
  br label %needs_bool

if.else139:                                       ; preds = %if.else126
  %call140 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(15) @.str.42) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then142, label %if.else153

if.then142:                                       ; preds = %if.else139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val143) #15
  %85 = ptrtoint ptr %val143 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %val143, align 1, !annotation !657
  %86 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %v, align 4
  %call144 = call fastcc i32 @simple_getbool(ptr noundef %87, ptr noundef nonnull %val143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %cleanup150, label %cleanup150.thread

cleanup150.thread:                                ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %val143 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %val143, align 1, !range !658
  %90 = zext i8 %89 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val143) #15
  br label %if.end280

cleanup150:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val143) #15
  br label %needs_bool

if.else153:                                       ; preds = %if.else139
  %call154 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(15) @.str.43) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then156, label %if.else167

if.then156:                                       ; preds = %if.else153
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val157) #15
  %91 = ptrtoint ptr %val157 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %val157, align 1, !annotation !657
  %92 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %v, align 4
  %call158 = call fastcc i32 @simple_getbool(ptr noundef %93, ptr noundef nonnull %val157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %cleanup164, label %cleanup164.thread

cleanup164.thread:                                ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %val157 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %val157, align 1, !range !658
  %96 = zext i8 %95 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val157) #15
  br label %if.end280

cleanup164:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val157) #15
  br label %needs_bool

if.else167:                                       ; preds = %if.else153
  %call168 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(7) @.str.44) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %if.else204

if.then170:                                       ; preds = %if.else167
  %97 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %v, align 4
  %tobool171.not = icmp eq ptr %98, null
  br i1 %tobool171.not, label %if.then170.needs_arg_crit_edge, label %lor.lhs.false172

if.then170.needs_arg_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false172:                                 ; preds = %if.then170
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool173.not = icmp eq i8 %100, 0
  br i1 %tobool173.not, label %lor.lhs.false172.needs_arg_crit_edge, label %for.body

lor.lhs.false172.needs_arg_crit_edge:             ; preds = %lor.lhs.false172
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

for.body:                                         ; preds = %lor.lhs.false172
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %on_errors.0883)
  %cmp = icmp eq i32 %on_errors.0883, -1
  %spec.store.select = select i1 %cmp, i32 0, i32 %on_errors.0883
  %call186 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef nonnull %98) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %for.body.lor.lhs.false195_crit_edge, label %for.body.1

for.body.lor.lhs.false195_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false195

for.body.1:                                       ; preds = %for.body
  %call186.1 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.1, ptr noundef nonnull %98) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.1)
  %tobool187.not.1 = icmp eq i32 %call186.1, 0
  br i1 %tobool187.not.1, label %for.body.1.lor.lhs.false195_crit_edge, label %for.body.2

for.body.1.lor.lhs.false195_crit_edge:            ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false195

for.body.2:                                       ; preds = %for.body.1
  %call186.2 = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.2, ptr noundef nonnull %98) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.2)
  %tobool187.not.2 = icmp eq i32 %call186.2, 0
  br i1 %tobool187.not.2, label %for.body.2.lor.lhs.false195_crit_edge, label %for.body.3

for.body.2.lor.lhs.false195_crit_edge:            ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false195

for.body.3:                                       ; preds = %for.body.2
  %call186.3 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.3, ptr noundef nonnull %98) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.3)
  %tobool187.not.3 = icmp eq i32 %call186.3, 0
  br i1 %tobool187.not.3, label %for.body.3.lor.lhs.false195_crit_edge, label %for.body.3.needs_val_crit_edge

for.body.3.needs_val_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

for.body.3.lor.lhs.false195_crit_edge:            ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %for.body.3.lor.lhs.false195_crit_edge, %for.body.2.lor.lhs.false195_crit_edge, %for.body.1.lor.lhs.false195_crit_edge, %for.body.lor.lhs.false195_crit_edge
  %.lcssa952 = phi ptr [ @.str, %for.body.lor.lhs.false195_crit_edge ], [ @.str.1, %for.body.1.lor.lhs.false195_crit_edge ], [ @.str.2, %for.body.2.lor.lhs.false195_crit_edge ], [ @.str.3, %for.body.3.lor.lhs.false195_crit_edge ]
  %_i.0856.lcssa951 = phi i32 [ 0, %for.body.lor.lhs.false195_crit_edge ], [ 1, %for.body.1.lor.lhs.false195_crit_edge ], [ 2, %for.body.2.lor.lhs.false195_crit_edge ], [ 3, %for.body.3.lor.lhs.false195_crit_edge ]
  %arrayidx.le = getelementptr [5 x %struct.option_t], ptr @on_errors_arr, i32 0, i32 %_i.0856.lcssa951
  %101 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.le, align 4
  %or = or i32 %102, %spec.store.select
  %103 = ptrtoint ptr %.lcssa952 to i32
  call void @__asan_load1_noabort(i32 %103)
  %.pr744 = load i8, ptr %.lcssa952, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr744)
  %tobool198.not = icmp eq i8 %.pr744, 0
  br i1 %tobool198.not, label %lor.lhs.false195.needs_val_crit_edge, label %lor.lhs.false195.if.end280_crit_edge

lor.lhs.false195.if.end280_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

lor.lhs.false195.needs_val_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_val

if.else204:                                       ; preds = %if.else167
  %call205 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(6) @.str.45) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.else204.if.then210_crit_edge, label %lor.lhs.false207

if.else204.if.then210_crit_edge:                  ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then210

lor.lhs.false207:                                 ; preds = %if.else204
  %call208 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(12) @.str.46) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %lor.lhs.false207.if.then210_crit_edge, label %if.else211

lor.lhs.false207.if.then210_crit_edge:            ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then210

if.then210:                                       ; preds = %lor.lhs.false207.if.then210_crit_edge, %if.else204.if.then210_crit_edge
  %104 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %105, ptr noundef nonnull @.str.47, ptr noundef nonnull %call937) #15
  br label %if.end280

if.else211:                                       ; preds = %lor.lhs.false207
  %call212 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(4) @.str.48) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.else211.if.then217_crit_edge, label %lor.lhs.false214

if.else211.if.then217_crit_edge:                  ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then217

lor.lhs.false214:                                 ; preds = %if.else211
  %call215 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(10) @.str.49) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %lor.lhs.false214.if.then217_crit_edge, label %if.else238

lor.lhs.false214.if.then217_crit_edge:            ; preds = %lor.lhs.false214
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then217

if.then217:                                       ; preds = %lor.lhs.false214.if.then217_crit_edge, %if.else211.if.then217_crit_edge
  %call218 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(10) @.str.49) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.then220, label %if.then217.if.end222_crit_edge

if.then217.if.end222_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end222

if.then220:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %107, ptr noundef nonnull @.str.50) #15
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %if.then217.if.end222_crit_edge
  %108 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %v, align 4
  %tobool223.not = icmp eq ptr %109, null
  br i1 %tobool223.not, label %if.end222.needs_arg_crit_edge, label %lor.lhs.false224

if.end222.needs_arg_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

lor.lhs.false224:                                 ; preds = %if.end222
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool225.not = icmp eq i8 %111, 0
  br i1 %tobool225.not, label %lor.lhs.false224.needs_arg_crit_edge, label %lor.lhs.false224.use_utf8_crit_edge

lor.lhs.false224.use_utf8_crit_edge:              ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #17
  br label %use_utf8

lor.lhs.false224.needs_arg_crit_edge:             ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #17
  br label %needs_arg

use_utf8:                                         ; preds = %cleanup257.thread639, %lor.lhs.false224.use_utf8_crit_edge
  %112 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %v, align 4
  %call228 = call ptr @load_nls(ptr noundef %113) #15
  %tobool229.not = icmp eq ptr %call228, null
  br i1 %tobool229.not, label %if.then230, label %if.else236

if.then230:                                       ; preds = %use_utf8
  %tobool231.not = icmp eq ptr %nls_map.0907, null
  %114 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vol, align 8
  %116 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %v, align 4
  br i1 %tobool231.not, label %if.then232, label %if.end234

if.then232:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %115, ptr noundef nonnull @.str.51, ptr noundef %117) #15
  br label %cleanup440

if.end234:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #17
  %118 = ptrtoint ptr %nls_map.0907 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nls_map.0907, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %115, ptr noundef nonnull @.str.52, ptr noundef %117, ptr noundef %119) #15
  br label %if.end280

if.else236:                                       ; preds = %use_utf8
  call void @__sanitizer_cov_trace_pc() #17
  call void @unload_nls(ptr noundef %nls_map.0907) #15
  br label %if.end280

if.else238:                                       ; preds = %lor.lhs.false214
  %call239 = call i32 @strcmp(ptr noundef nonnull %call937, ptr noundef nonnull dereferenceable(5) @.str.30) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.then241, label %if.else260

if.then241:                                       ; preds = %if.else238
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val242) #15
  %120 = ptrtoint ptr %val242 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %val242, align 1
  %121 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %122, ptr noundef nonnull @.str.53) #15
  %123 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %v, align 4
  %tobool244.not = icmp eq ptr %124, null
  br i1 %tobool244.not, label %if.then241.cleanup257.thread639_crit_edge, label %lor.lhs.false245

if.then241.cleanup257.thread639_crit_edge:        ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup257.thread639

lor.lhs.false245:                                 ; preds = %if.then241
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool246.not = icmp eq i8 %126, 0
  br i1 %tobool246.not, label %lor.lhs.false245.cleanup257.thread639_crit_edge, label %if.else248

lor.lhs.false245.cleanup257.thread639_crit_edge:  ; preds = %lor.lhs.false245
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup257.thread639

if.else248:                                       ; preds = %lor.lhs.false245
  %call249 = call fastcc i32 @simple_getbool(ptr noundef nonnull %124, ptr noundef nonnull %val242)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %cleanup257, label %if.end253

if.end253:                                        ; preds = %if.else248
  %127 = ptrtoint ptr %val242 to i32
  call void @__asan_load1_noabort(i32 %127)
  %.pr = load i8, ptr %val242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool254.not = icmp eq i8 %.pr, 0
  br i1 %tobool254.not, label %cleanup257.thread, label %if.end253.cleanup257.thread639_crit_edge

if.end253.cleanup257.thread639_crit_edge:         ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup257.thread639

cleanup257.thread:                                ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val242) #15
  br label %if.end280

cleanup257.thread639:                             ; preds = %if.end253.cleanup257.thread639_crit_edge, %lor.lhs.false245.cleanup257.thread639_crit_edge, %if.then241.cleanup257.thread639_crit_edge
  %128 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.30, ptr %v, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val242) #15
  br label %use_utf8

cleanup257:                                       ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val242) #15
  br label %needs_bool

if.else260:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #17
  %129 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %130, ptr noundef nonnull @.str.54, ptr noundef nonnull %call937) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %errors.0925)
  %cmp262.not = icmp eq i32 %errors.0925, 2147483647
  %inc265 = add i32 %errors.0925, 1
  %spec.select = select i1 %cmp262.not, i32 2147483647, i32 %inc265
  br label %if.end280

if.end280:                                        ; preds = %if.else260, %cleanup257.thread, %if.else236, %if.end234, %if.then210, %lor.lhs.false195.if.end280_crit_edge, %cleanup164.thread, %cleanup150.thread, %cleanup136.thread, %if.else120.if.end280_crit_edge, %lor.lhs.false117.if.end280_crit_edge, %if.then115.if.end280_crit_edge, %if.end107.if.end280_crit_edge, %if.end93.if.end280_crit_edge, %if.end79.if.end280_crit_edge, %if.end66.if.end280_crit_edge, %if.end38.if.end280_crit_edge, %if.end18.if.end280_crit_edge
  %gid.sroa.0.2 = phi i32 [ %gid.sroa.0.0859, %if.else236 ], [ %gid.sroa.0.0859, %if.end234 ], [ %gid.sroa.0.0859, %if.then210 ], [ %gid.sroa.0.0859, %if.else120.if.end280_crit_edge ], [ %gid.sroa.0.0859, %if.end107.if.end280_crit_edge ], [ %gid.sroa.0.0859, %if.end93.if.end280_crit_edge ], [ %gid.sroa.0.0859, %if.end79.if.end280_crit_edge ], [ %gid.sroa.0.0859, %if.end66.if.end280_crit_edge ], [ %gid.sroa.0.0859, %lor.lhs.false117.if.end280_crit_edge ], [ %gid.sroa.0.0859, %if.then115.if.end280_crit_edge ], [ %gid.sroa.0.0859, %if.else260 ], [ %gid.sroa.0.0859, %if.end18.if.end280_crit_edge ], [ %call49, %if.end38.if.end280_crit_edge ], [ %gid.sroa.0.0859, %cleanup136.thread ], [ %gid.sroa.0.0859, %cleanup150.thread ], [ %gid.sroa.0.0859, %cleanup164.thread ], [ %gid.sroa.0.0859, %lor.lhs.false195.if.end280_crit_edge ], [ %gid.sroa.0.0859, %cleanup257.thread ]
  %fmask.1 = phi i16 [ %fmask.0865, %if.else236 ], [ %fmask.0865, %if.end234 ], [ %fmask.0865, %if.then210 ], [ %fmask.0865, %if.else120.if.end280_crit_edge ], [ %fmask.0865, %if.end107.if.end280_crit_edge ], [ %fmask.0865, %if.end93.if.end280_crit_edge ], [ %conv81, %if.end79.if.end280_crit_edge ], [ %conv, %if.end66.if.end280_crit_edge ], [ %fmask.0865, %lor.lhs.false117.if.end280_crit_edge ], [ %fmask.0865, %if.then115.if.end280_crit_edge ], [ %fmask.0865, %if.else260 ], [ %fmask.0865, %if.end18.if.end280_crit_edge ], [ %fmask.0865, %if.end38.if.end280_crit_edge ], [ %fmask.0865, %cleanup136.thread ], [ %fmask.0865, %cleanup150.thread ], [ %fmask.0865, %cleanup164.thread ], [ %fmask.0865, %lor.lhs.false195.if.end280_crit_edge ], [ %fmask.0865, %cleanup257.thread ]
  %dmask.1 = phi i16 [ %dmask.0871, %if.else236 ], [ %dmask.0871, %if.end234 ], [ %dmask.0871, %if.then210 ], [ %dmask.0871, %if.else120.if.end280_crit_edge ], [ %dmask.0871, %if.end107.if.end280_crit_edge ], [ %conv95, %if.end93.if.end280_crit_edge ], [ %dmask.0871, %if.end79.if.end280_crit_edge ], [ %conv, %if.end66.if.end280_crit_edge ], [ %dmask.0871, %lor.lhs.false117.if.end280_crit_edge ], [ %dmask.0871, %if.then115.if.end280_crit_edge ], [ %dmask.0871, %if.else260 ], [ %dmask.0871, %if.end18.if.end280_crit_edge ], [ %dmask.0871, %if.end38.if.end280_crit_edge ], [ %dmask.0871, %cleanup136.thread ], [ %dmask.0871, %cleanup150.thread ], [ %dmask.0871, %cleanup164.thread ], [ %dmask.0871, %lor.lhs.false195.if.end280_crit_edge ], [ %dmask.0871, %cleanup257.thread ]
  %mft_zone_multiplier.1 = phi i32 [ %mft_zone_multiplier.0877, %if.else236 ], [ %mft_zone_multiplier.0877, %if.end234 ], [ %mft_zone_multiplier.0877, %if.then210 ], [ %mft_zone_multiplier.0877, %if.else120.if.end280_crit_edge ], [ %call108, %if.end107.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %if.end93.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %if.end79.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %if.end66.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %lor.lhs.false117.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %if.then115.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %if.else260 ], [ %mft_zone_multiplier.0877, %if.end18.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %if.end38.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %cleanup136.thread ], [ %mft_zone_multiplier.0877, %cleanup150.thread ], [ %mft_zone_multiplier.0877, %cleanup164.thread ], [ %mft_zone_multiplier.0877, %lor.lhs.false195.if.end280_crit_edge ], [ %mft_zone_multiplier.0877, %cleanup257.thread ]
  %on_errors.3 = phi i32 [ %on_errors.0883, %if.else236 ], [ %on_errors.0883, %if.end234 ], [ %on_errors.0883, %if.then210 ], [ %on_errors.0883, %if.else120.if.end280_crit_edge ], [ %on_errors.0883, %if.end107.if.end280_crit_edge ], [ %on_errors.0883, %if.end93.if.end280_crit_edge ], [ %on_errors.0883, %if.end79.if.end280_crit_edge ], [ %on_errors.0883, %if.end66.if.end280_crit_edge ], [ %on_errors.0883, %lor.lhs.false117.if.end280_crit_edge ], [ %on_errors.0883, %if.then115.if.end280_crit_edge ], [ %on_errors.0883, %if.else260 ], [ %on_errors.0883, %if.end18.if.end280_crit_edge ], [ %on_errors.0883, %if.end38.if.end280_crit_edge ], [ %on_errors.0883, %cleanup136.thread ], [ %on_errors.0883, %cleanup150.thread ], [ %on_errors.0883, %cleanup164.thread ], [ %or, %lor.lhs.false195.if.end280_crit_edge ], [ %on_errors.0883, %cleanup257.thread ]
  %show_sys_files.2 = phi i32 [ %show_sys_files.0889, %if.else236 ], [ %show_sys_files.0889, %if.end234 ], [ %show_sys_files.0889, %if.then210 ], [ %show_sys_files.0889, %if.else120.if.end280_crit_edge ], [ %show_sys_files.0889, %if.end107.if.end280_crit_edge ], [ %show_sys_files.0889, %if.end93.if.end280_crit_edge ], [ %show_sys_files.0889, %if.end79.if.end280_crit_edge ], [ %show_sys_files.0889, %if.end66.if.end280_crit_edge ], [ %show_sys_files.0889, %lor.lhs.false117.if.end280_crit_edge ], [ %show_sys_files.0889, %if.then115.if.end280_crit_edge ], [ %show_sys_files.0889, %if.else260 ], [ %show_sys_files.0889, %if.end18.if.end280_crit_edge ], [ %show_sys_files.0889, %if.end38.if.end280_crit_edge ], [ %84, %cleanup136.thread ], [ %show_sys_files.0889, %cleanup150.thread ], [ %show_sys_files.0889, %cleanup164.thread ], [ %show_sys_files.0889, %lor.lhs.false195.if.end280_crit_edge ], [ %show_sys_files.0889, %cleanup257.thread ]
  %case_sensitive.2 = phi i32 [ %case_sensitive.0895, %if.else236 ], [ %case_sensitive.0895, %if.end234 ], [ %case_sensitive.0895, %if.then210 ], [ %case_sensitive.0895, %if.else120.if.end280_crit_edge ], [ %case_sensitive.0895, %if.end107.if.end280_crit_edge ], [ %case_sensitive.0895, %if.end93.if.end280_crit_edge ], [ %case_sensitive.0895, %if.end79.if.end280_crit_edge ], [ %case_sensitive.0895, %if.end66.if.end280_crit_edge ], [ %case_sensitive.0895, %lor.lhs.false117.if.end280_crit_edge ], [ %case_sensitive.0895, %if.then115.if.end280_crit_edge ], [ %case_sensitive.0895, %if.else260 ], [ %case_sensitive.0895, %if.end18.if.end280_crit_edge ], [ %case_sensitive.0895, %if.end38.if.end280_crit_edge ], [ %case_sensitive.0895, %cleanup136.thread ], [ %90, %cleanup150.thread ], [ %case_sensitive.0895, %cleanup164.thread ], [ %case_sensitive.0895, %lor.lhs.false195.if.end280_crit_edge ], [ %case_sensitive.0895, %cleanup257.thread ]
  %disable_sparse.2 = phi i32 [ %disable_sparse.0901, %if.else236 ], [ %disable_sparse.0901, %if.end234 ], [ %disable_sparse.0901, %if.then210 ], [ %disable_sparse.0901, %if.else120.if.end280_crit_edge ], [ %disable_sparse.0901, %if.end107.if.end280_crit_edge ], [ %disable_sparse.0901, %if.end93.if.end280_crit_edge ], [ %disable_sparse.0901, %if.end79.if.end280_crit_edge ], [ %disable_sparse.0901, %if.end66.if.end280_crit_edge ], [ %disable_sparse.0901, %lor.lhs.false117.if.end280_crit_edge ], [ %disable_sparse.0901, %if.then115.if.end280_crit_edge ], [ %disable_sparse.0901, %if.else260 ], [ %disable_sparse.0901, %if.end18.if.end280_crit_edge ], [ %disable_sparse.0901, %if.end38.if.end280_crit_edge ], [ %disable_sparse.0901, %cleanup136.thread ], [ %disable_sparse.0901, %cleanup150.thread ], [ %96, %cleanup164.thread ], [ %disable_sparse.0901, %lor.lhs.false195.if.end280_crit_edge ], [ %disable_sparse.0901, %cleanup257.thread ]
  %nls_map.1 = phi ptr [ %call228, %if.else236 ], [ %nls_map.0907, %if.end234 ], [ %nls_map.0907, %if.then210 ], [ %nls_map.0907, %if.else120.if.end280_crit_edge ], [ %nls_map.0907, %if.end107.if.end280_crit_edge ], [ %nls_map.0907, %if.end93.if.end280_crit_edge ], [ %nls_map.0907, %if.end79.if.end280_crit_edge ], [ %nls_map.0907, %if.end66.if.end280_crit_edge ], [ %nls_map.0907, %lor.lhs.false117.if.end280_crit_edge ], [ %nls_map.0907, %if.then115.if.end280_crit_edge ], [ %nls_map.0907, %if.else260 ], [ %nls_map.0907, %if.end18.if.end280_crit_edge ], [ %nls_map.0907, %if.end38.if.end280_crit_edge ], [ %nls_map.0907, %cleanup136.thread ], [ %nls_map.0907, %cleanup150.thread ], [ %nls_map.0907, %cleanup164.thread ], [ %nls_map.0907, %lor.lhs.false195.if.end280_crit_edge ], [ %nls_map.0907, %cleanup257.thread ]
  %uid.sroa.0.2 = phi i32 [ %uid.sroa.0.0913, %if.else236 ], [ %uid.sroa.0.0913, %if.end234 ], [ %uid.sroa.0.0913, %if.then210 ], [ %uid.sroa.0.0913, %if.else120.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.end107.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.end93.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.end79.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.end66.if.end280_crit_edge ], [ %uid.sroa.0.0913, %lor.lhs.false117.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.then115.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.else260 ], [ %call22, %if.end18.if.end280_crit_edge ], [ %uid.sroa.0.0913, %if.end38.if.end280_crit_edge ], [ %uid.sroa.0.0913, %cleanup136.thread ], [ %uid.sroa.0.0913, %cleanup150.thread ], [ %uid.sroa.0.0913, %cleanup164.thread ], [ %uid.sroa.0.0913, %lor.lhs.false195.if.end280_crit_edge ], [ %uid.sroa.0.0913, %cleanup257.thread ]
  %sloppy.1 = phi i32 [ %sloppy.0919, %if.else236 ], [ %sloppy.0919, %if.end234 ], [ %sloppy.0919, %if.then210 ], [ %call121, %if.else120.if.end280_crit_edge ], [ %sloppy.0919, %if.end107.if.end280_crit_edge ], [ %sloppy.0919, %if.end93.if.end280_crit_edge ], [ %sloppy.0919, %if.end79.if.end280_crit_edge ], [ %sloppy.0919, %if.end66.if.end280_crit_edge ], [ 1, %lor.lhs.false117.if.end280_crit_edge ], [ 1, %if.then115.if.end280_crit_edge ], [ %sloppy.0919, %if.else260 ], [ %sloppy.0919, %if.end18.if.end280_crit_edge ], [ %sloppy.0919, %if.end38.if.end280_crit_edge ], [ %sloppy.0919, %cleanup136.thread ], [ %sloppy.0919, %cleanup150.thread ], [ %sloppy.0919, %cleanup164.thread ], [ %sloppy.0919, %lor.lhs.false195.if.end280_crit_edge ], [ %sloppy.0919, %cleanup257.thread ]
  %errors.1 = phi i32 [ %errors.0925, %if.else236 ], [ %errors.0925, %if.end234 ], [ %errors.0925, %if.then210 ], [ %errors.0925, %if.else120.if.end280_crit_edge ], [ %errors.0925, %if.end107.if.end280_crit_edge ], [ %errors.0925, %if.end93.if.end280_crit_edge ], [ %errors.0925, %if.end79.if.end280_crit_edge ], [ %errors.0925, %if.end66.if.end280_crit_edge ], [ %errors.0925, %lor.lhs.false117.if.end280_crit_edge ], [ %errors.0925, %if.then115.if.end280_crit_edge ], [ %spec.select, %if.else260 ], [ %errors.0925, %if.end18.if.end280_crit_edge ], [ %errors.0925, %if.end38.if.end280_crit_edge ], [ %errors.0925, %cleanup136.thread ], [ %errors.0925, %cleanup150.thread ], [ %errors.0925, %cleanup164.thread ], [ %errors.0925, %lor.lhs.false195.if.end280_crit_edge ], [ %errors.0925, %cleanup257.thread ]
  %call = call ptr @strsep(ptr noundef nonnull %opt.addr, ptr noundef nonnull @.str.32) #15
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %no_mount_options, label %if.end280.while.body_crit_edge

if.end280.while.body_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

no_mount_options:                                 ; preds = %if.end280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.1)
  %tobool281.not = icmp ne i32 %errors.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sloppy.1)
  %tobool282.not = icmp eq i32 %sloppy.1, 0
  %or.cond = select i1 %tobool281.not, i1 %tobool282.not, i1 false
  br i1 %or.cond, label %no_mount_options.cleanup440_crit_edge, label %if.end284

no_mount_options.cleanup440_crit_edge:            ; preds = %no_mount_options
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup440

if.end284:                                        ; preds = %no_mount_options
  br i1 %tobool282.not, label %if.end284.if.end288_crit_edge, label %if.then286

if.end284.if.end288_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end288

if.then286:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #17
  %131 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %132, ptr noundef nonnull @.str.55) #15
  br label %if.end288

if.end288:                                        ; preds = %if.then286, %if.end284.if.end288_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %on_errors.3)
  %cmp289.not = icmp eq i32 %on_errors.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on_errors.3)
  %tobool292.not = icmp eq i32 %on_errors.3, 0
  br i1 %tobool292.not, label %if.then293, label %if.end296

if.then293:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %134, ptr noundef nonnull @.str.56) #15
  br label %cleanup440

if.end296:                                        ; preds = %if.end288
  %tobool297.not = icmp eq ptr %nls_map.1, null
  br i1 %tobool297.not, label %if.end296.if.else310_crit_edge, label %if.then298

if.end296.if.else310_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else310

if.then298:                                       ; preds = %if.end296
  %nls_map299 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 54
  %135 = ptrtoint ptr %nls_map299 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %nls_map299, align 8
  %tobool300.not = icmp eq ptr %136, null
  %cmp303.not = icmp eq ptr %136, %nls_map.1
  %or.cond588 = select i1 %tobool300.not, i1 true, i1 %cmp303.not
  br i1 %or.cond588, label %if.end307, label %if.then305

if.then305:                                       ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #17
  %137 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %138, ptr noundef nonnull @.str.57) #15
  br label %cleanup440

if.end307:                                        ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %nls_map.1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %nls_map.1, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 263, ptr noundef nonnull @__func__.parse_options, ptr noundef nonnull @.str.58, ptr noundef %140) #15
  %141 = ptrtoint ptr %nls_map299 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %nls_map.1, ptr %nls_map299, align 8
  br label %if.end324

if.else310:                                       ; preds = %if.end296.if.else310_crit_edge, %if.end.if.else310_crit_edge, %lor.lhs.false.if.else310_crit_edge, %entry.if.else310_crit_edge
  %gid.sroa.0.3656687701743 = phi i32 [ %gid.sroa.0.2, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %fmask.2657686702741 = phi i16 [ %fmask.1, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %dmask.2658685703739 = phi i16 [ %dmask.1, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %mft_zone_multiplier.2659684704737 = phi i32 [ %mft_zone_multiplier.1, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %on_errors.4660683705735 = phi i32 [ %on_errors.3, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %show_sys_files.3661682706733 = phi i32 [ %show_sys_files.2, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %case_sensitive.3662681707731 = phi i32 [ %case_sensitive.2, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %disable_sparse.3663680708729 = phi i32 [ %disable_sparse.2, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %uid.sroa.0.3665678710727 = phi i32 [ %uid.sroa.0.2, %if.end296.if.else310_crit_edge ], [ -1, %entry.if.else310_crit_edge ], [ -1, %lor.lhs.false.if.else310_crit_edge ], [ -1, %if.end.if.else310_crit_edge ]
  %cmp289.not711725 = phi i1 [ %cmp289.not, %if.end296.if.else310_crit_edge ], [ true, %entry.if.else310_crit_edge ], [ true, %lor.lhs.false.if.else310_crit_edge ], [ true, %if.end.if.else310_crit_edge ]
  %nls_map311 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 54
  %142 = ptrtoint ptr %nls_map311 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %nls_map311, align 8
  %tobool312.not = icmp eq ptr %143, null
  br i1 %tobool312.not, label %if.then313, label %if.else310.if.end324_crit_edge

if.else310.if.end324_crit_edge:                   ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end324

if.then313:                                       ; preds = %if.else310
  %call314 = call ptr @load_nls_default() #15
  %144 = ptrtoint ptr %nls_map311 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call314, ptr %nls_map311, align 8
  %tobool317.not = icmp eq ptr %call314, null
  br i1 %tobool317.not, label %if.then318, label %if.end320

if.then318:                                       ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #17
  %145 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %146, ptr noundef nonnull @.str.59) #15
  br label %cleanup440

if.end320:                                        ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #17
  %147 = ptrtoint ptr %call314 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call314, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 274, ptr noundef nonnull @__func__.parse_options, ptr noundef nonnull @.str.60, ptr noundef %148) #15
  br label %if.end324

if.end324:                                        ; preds = %if.end320, %if.else310.if.end324_crit_edge, %if.end307
  %gid.sroa.0.3656687701742 = phi i32 [ %gid.sroa.0.3656687701743, %if.else310.if.end324_crit_edge ], [ %gid.sroa.0.3656687701743, %if.end320 ], [ %gid.sroa.0.2, %if.end307 ]
  %fmask.2657686702740 = phi i16 [ %fmask.2657686702741, %if.else310.if.end324_crit_edge ], [ %fmask.2657686702741, %if.end320 ], [ %fmask.1, %if.end307 ]
  %dmask.2658685703738 = phi i16 [ %dmask.2658685703739, %if.else310.if.end324_crit_edge ], [ %dmask.2658685703739, %if.end320 ], [ %dmask.1, %if.end307 ]
  %mft_zone_multiplier.2659684704736 = phi i32 [ %mft_zone_multiplier.2659684704737, %if.else310.if.end324_crit_edge ], [ %mft_zone_multiplier.2659684704737, %if.end320 ], [ %mft_zone_multiplier.1, %if.end307 ]
  %on_errors.4660683705734 = phi i32 [ %on_errors.4660683705735, %if.else310.if.end324_crit_edge ], [ %on_errors.4660683705735, %if.end320 ], [ %on_errors.3, %if.end307 ]
  %show_sys_files.3661682706732 = phi i32 [ %show_sys_files.3661682706733, %if.else310.if.end324_crit_edge ], [ %show_sys_files.3661682706733, %if.end320 ], [ %show_sys_files.2, %if.end307 ]
  %case_sensitive.3662681707730 = phi i32 [ %case_sensitive.3662681707731, %if.else310.if.end324_crit_edge ], [ %case_sensitive.3662681707731, %if.end320 ], [ %case_sensitive.2, %if.end307 ]
  %disable_sparse.3663680708728 = phi i32 [ %disable_sparse.3663680708729, %if.else310.if.end324_crit_edge ], [ %disable_sparse.3663680708729, %if.end320 ], [ %disable_sparse.2, %if.end307 ]
  %uid.sroa.0.3665678710726 = phi i32 [ %uid.sroa.0.3665678710727, %if.else310.if.end324_crit_edge ], [ %uid.sroa.0.3665678710727, %if.end320 ], [ %uid.sroa.0.2, %if.end307 ]
  %cmp289.not711724 = phi i1 [ %cmp289.not711725, %if.else310.if.end324_crit_edge ], [ %cmp289.not711725, %if.end320 ], [ %cmp289.not, %if.end307 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mft_zone_multiplier.2659684704736)
  %cmp325.not = icmp eq i32 %mft_zone_multiplier.2659684704736, -1
  br i1 %cmp325.not, label %if.end324.if.end349_crit_edge, label %if.then327

if.end324.if.end349_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end349

if.then327:                                       ; preds = %if.end324
  %mft_zone_multiplier328 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 7
  %149 = ptrtoint ptr %mft_zone_multiplier328 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %mft_zone_multiplier328, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool330.not = icmp eq i8 %150, 0
  %conv329 = zext i8 %150 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mft_zone_multiplier.2659684704736, i32 %conv329)
  %cmp334.not = icmp eq i32 %mft_zone_multiplier.2659684704736, %conv329
  %or.cond589 = select i1 %tobool330.not, i1 true, i1 %cmp334.not
  br i1 %or.cond589, label %if.end338, label %if.then336

if.then336:                                       ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #17
  %151 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %152, ptr noundef nonnull @.str.61) #15
  br label %cleanup440

if.end338:                                        ; preds = %if.then327
  %153 = add i32 %mft_zone_multiplier.2659684704736, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %153)
  %154 = icmp ult i32 %153, -4
  br i1 %154, label %if.then344, label %if.end338.if.end346_crit_edge

if.end338.if.end346_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end346

if.then344:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %156, ptr noundef nonnull @.str.62) #15
  br label %if.end346

if.end346:                                        ; preds = %if.then344, %if.end338.if.end346_crit_edge
  %mft_zone_multiplier.3 = phi i32 [ 1, %if.then344 ], [ %mft_zone_multiplier.2659684704736, %if.end338.if.end346_crit_edge ]
  %conv347 = trunc i32 %mft_zone_multiplier.3 to i8
  %157 = ptrtoint ptr %mft_zone_multiplier328 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv347, ptr %mft_zone_multiplier328, align 8
  br label %if.end349

if.end349:                                        ; preds = %if.end346, %if.end324.if.end349_crit_edge
  %mft_zone_multiplier350 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 7
  %158 = ptrtoint ptr %mft_zone_multiplier350 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %mft_zone_multiplier350, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool351.not = icmp eq i8 %159, 0
  br i1 %tobool351.not, label %if.then352, label %if.end349.if.end354_crit_edge

if.end349.if.end354_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end354

if.then352:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #17
  %160 = ptrtoint ptr %mft_zone_multiplier350 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %mft_zone_multiplier350, align 8
  br label %if.end354

if.end354:                                        ; preds = %if.then352, %if.end349.if.end354_crit_edge
  br i1 %cmp289.not711724, label %if.end354.if.end360_crit_edge, label %if.then357

if.end354.if.end360_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end360

if.then357:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #17
  %conv358 = trunc i32 %on_errors.4660683705734 to i8
  %on_errors359 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %161 = ptrtoint ptr %on_errors359 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv358, ptr %on_errors359, align 1
  br label %if.end360

if.end360:                                        ; preds = %if.then357, %if.end354.if.end360_crit_edge
  %on_errors361 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %162 = ptrtoint ptr %on_errors361 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %on_errors361, align 1
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values)
  switch i8 %163, label %if.end360.if.end373_crit_edge [
    i8 0, label %if.end360.if.then368_crit_edge
    i8 16, label %if.end360.if.then368_crit_edge1092
  ]

if.end360.if.then368_crit_edge1092:               ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then368

if.end360.if.then368_crit_edge:                   ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then368

if.end360.if.end373_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end373

if.then368:                                       ; preds = %if.end360.if.then368_crit_edge, %if.end360.if.then368_crit_edge1092
  %165 = or i8 %163, 4
  %166 = ptrtoint ptr %on_errors361 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %on_errors361, align 1
  br label %if.end373

if.end373:                                        ; preds = %if.then368, %if.end360.if.end373_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.sroa.0.3665678710726)
  %cmp.i595.not = icmp eq i32 %uid.sroa.0.3665678710726, -1
  br i1 %cmp.i595.not, label %if.end373.if.end378_crit_edge, label %if.then376

if.end373.if.end378_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end378

if.then376:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #17
  %uid377 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 3
  %167 = ptrtoint ptr %uid377 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %uid.sroa.0.3665678710726, ptr %uid377, align 4
  br label %if.end378

if.end378:                                        ; preds = %if.then376, %if.end373.if.end378_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.sroa.0.3656687701742)
  %cmp.i596.not = icmp eq i32 %gid.sroa.0.3656687701742, -1
  br i1 %cmp.i596.not, label %if.end378.if.end383_crit_edge, label %if.then381

if.end378.if.end383_crit_edge:                    ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end383

if.then381:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #17
  %gid382 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 4
  %168 = ptrtoint ptr %gid382 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %gid.sroa.0.3656687701742, ptr %gid382, align 8
  br label %if.end383

if.end383:                                        ; preds = %if.then381, %if.end378.if.end383_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %fmask.2657686702740)
  %cmp385.not = icmp eq i16 %fmask.2657686702740, -1
  br i1 %cmp385.not, label %if.end383.if.end389_crit_edge, label %if.then387

if.end383.if.end389_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end389

if.then387:                                       ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #17
  %fmask388 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 5
  %169 = ptrtoint ptr %fmask388 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %fmask.2657686702740, ptr %fmask388, align 4
  br label %if.end389

if.end389:                                        ; preds = %if.then387, %if.end383.if.end389_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %dmask.2658685703738)
  %cmp391.not = icmp eq i16 %dmask.2658685703738, -1
  br i1 %cmp391.not, label %if.end389.if.end395_crit_edge, label %if.then393

if.end389.if.end395_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end395

if.then393:                                       ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #17
  %dmask394 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 6
  %170 = ptrtoint ptr %dmask394 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %dmask.2658685703738, ptr %dmask394, align 2
  br label %if.end395

if.end395:                                        ; preds = %if.then393, %if.end389.if.end395_crit_edge
  %171 = zext i32 %show_sys_files.3661682706732 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %show_sys_files.3661682706732, label %if.then400 [
    i32 -1, label %if.end395.if.end403_crit_edge
    i32 0, label %if.else401
  ]

if.end395.if.end403_crit_edge:                    ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end403

if.then400:                                       ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #15
  br label %if.end403

if.else401:                                       ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i597 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i597) #15
  br label %if.end403

if.end403:                                        ; preds = %if.else401, %if.then400, %if.end395.if.end403_crit_edge
  %172 = zext i32 %case_sensitive.3662681707730 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %case_sensitive.3662681707730, label %if.then408 [
    i32 -1, label %if.end403.if.end411_crit_edge
    i32 0, label %if.else409
  ]

if.end403.if.end411_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end411

if.then408:                                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i598 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i598) #15
  br label %if.end411

if.else409:                                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i599 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i599) #15
  br label %if.end411

if.end411:                                        ; preds = %if.else409, %if.then408, %if.end403.if.end411_crit_edge
  %173 = zext i32 %disable_sparse.3663680708728 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %disable_sparse.3663680708728, label %if.then416 [
    i32 -1, label %if.end411.cleanup440_crit_edge
    i32 0, label %if.else417
  ]

if.end411.cleanup440_crit_edge:                   ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup440

if.then416:                                       ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i600 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i600) #15
  br label %cleanup440

if.else417:                                       ; preds = %if.end411
  %flags.i601 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  %174 = ptrtoint ptr %flags.i601 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %flags.i601, align 4
  %176 = and i32 %175, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool419.not = icmp eq i32 %176, 0
  br i1 %tobool419.not, label %land.lhs.true420, label %if.else417.if.else433_crit_edge

if.else417.if.else433_crit_edge:                  ; preds = %if.else417
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else433

land.lhs.true420:                                 ; preds = %if.else417
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  %177 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %major_ver, align 2
  %179 = add i8 %178, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %179)
  %180 = icmp ult i8 %179, 2
  br i1 %180, label %if.then428, label %land.lhs.true420.if.else433_crit_edge

land.lhs.true420.if.else433_crit_edge:            ; preds = %land.lhs.true420
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else433

if.then428:                                       ; preds = %land.lhs.true420
  call void @__sanitizer_cov_trace_pc() #17
  %conv421 = zext i8 %178 to i32
  %181 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vol, align 8
  %minor_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 45
  %183 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %minor_ver, align 1
  %conv432 = zext i8 %184 to i32
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %182, ptr noundef nonnull @.str.63, i32 noundef %conv421, i32 noundef %conv432) #15
  br label %cleanup440

if.else433:                                       ; preds = %land.lhs.true420.if.else433_crit_edge, %if.else417.if.else433_crit_edge
  call void @_set_bit(i32 noundef 6, ptr noundef %flags.i601) #15
  br label %cleanup440

needs_arg:                                        ; preds = %lor.lhs.false224.needs_arg_crit_edge, %if.end222.needs_arg_crit_edge, %lor.lhs.false172.needs_arg_crit_edge, %if.then170.needs_arg_crit_edge, %lor.lhs.false104.needs_arg_crit_edge, %if.then102.needs_arg_crit_edge, %lor.lhs.false90.needs_arg_crit_edge, %if.then88.needs_arg_crit_edge, %lor.lhs.false76.needs_arg_crit_edge, %if.then74.needs_arg_crit_edge, %lor.lhs.false63.needs_arg_crit_edge, %if.then61.needs_arg_crit_edge, %lor.lhs.false31.needs_arg_crit_edge, %if.then29.needs_arg_crit_edge, %lor.lhs.false11.needs_arg_crit_edge, %if.then9.needs_arg_crit_edge
  %185 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %186, ptr noundef nonnull @.str.64, ptr noundef nonnull %call937) #15
  br label %cleanup440

needs_bool:                                       ; preds = %cleanup257, %cleanup164, %cleanup150, %cleanup136
  %187 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %188, ptr noundef nonnull @.str.65, ptr noundef nonnull %call937) #15
  br label %cleanup440

needs_val:                                        ; preds = %lor.lhs.false195.needs_val_crit_edge, %for.body.3.needs_val_crit_edge, %if.else120.needs_val_crit_edge, %if.end107.needs_val_crit_edge, %if.end93.needs_val_crit_edge, %if.end79.needs_val_crit_edge, %if.end66.needs_val_crit_edge, %if.end38.needs_val_crit_edge, %if.end34.needs_val_crit_edge, %if.end18.needs_val_crit_edge, %if.end14.needs_val_crit_edge
  %ov.5 = phi ptr [ %98, %for.body.3.needs_val_crit_edge ], [ %72, %if.else120.needs_val_crit_edge ], [ %64, %if.end107.needs_val_crit_edge ], [ %56, %if.end93.needs_val_crit_edge ], [ %48, %if.end79.needs_val_crit_edge ], [ %40, %if.end66.needs_val_crit_edge ], [ %8, %if.end14.needs_val_crit_edge ], [ %8, %if.end18.needs_val_crit_edge ], [ %24, %if.end34.needs_val_crit_edge ], [ %24, %if.end38.needs_val_crit_edge ], [ %98, %lor.lhs.false195.needs_val_crit_edge ]
  %189 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %190, ptr noundef nonnull @.str.66, ptr noundef nonnull %call937, ptr noundef nonnull %ov.5) #15
  br label %cleanup440

cleanup440:                                       ; preds = %needs_val, %needs_bool, %needs_arg, %if.else433, %if.then428, %if.then416, %if.end411.cleanup440_crit_edge, %if.then336, %if.then318, %if.then305, %if.then293, %no_mount_options.cleanup440_crit_edge, %if.then232
  %retval.0 = phi i1 [ false, %needs_bool ], [ false, %if.then232 ], [ false, %needs_arg ], [ false, %needs_val ], [ false, %if.then305 ], [ false, %if.then336 ], [ false, %if.then318 ], [ false, %if.then293 ], [ false, %no_mount_options.cleanup440_crit_edge ], [ true, %if.end411.cleanup440_crit_edge ], [ true, %if.then416 ], [ true, %if.else433 ], [ true, %if.then428 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #15
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_setup_allocators(ptr nocapture noundef %vol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mft_zone_multiplier = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 7
  %0 = ptrtoint ptr %mft_zone_multiplier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mft_zone_multiplier, align 8
  %conv = zext i8 %1 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 941, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.115, i32 noundef %conv) #15
  %nr_clusters = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 20
  %2 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_clusters, align 8
  %4 = ptrtoint ptr %mft_zone_multiplier to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mft_zone_multiplier, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %5, label %sw.default [
    i8 4, label %sw.bb
    i8 3, label %sw.bb3
    i8 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr = ashr i64 %3, 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr4 = ashr i64 %3, 1
  %add = add i64 %shr4, %3
  %shr5 = ashr i64 %add, 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr7 = ashr i64 %3, 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr8 = ashr i64 %3, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb3, %sw.bb
  %mft_zone_size.0 = phi i64 [ %shr8, %sw.default ], [ %shr7, %sw.bb6 ], [ %shr5, %sw.bb3 ], [ %shr, %sw.bb ]
  %mft_lcn9 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 21
  %7 = ptrtoint ptr %mft_lcn9 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mft_lcn9, align 8
  %mft_zone_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 31
  %9 = ptrtoint ptr %mft_zone_pos to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %mft_zone_pos, align 8
  %mft_zone_start = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 29
  %10 = ptrtoint ptr %mft_zone_start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %8, ptr %mft_zone_start, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 964, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.116, i64 noundef %8) #15
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 11
  %11 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cluster_size, align 8
  %mul = shl i32 %12, 1
  %sub = add i32 %mul, 8191
  %div = udiv i32 %sub, %12
  %conv13 = zext i32 %div to i64
  %conv15 = zext i32 %12 to i64
  %mul16 = mul nuw i64 %conv13, %conv15
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %mul16)
  %cmp = icmp slt i64 %mul16, 16384
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %sub20 = add i32 %12, 16383
  %div22 = udiv i32 %sub20, %12
  %conv23 = zext i32 %div22 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %mft_lcn.0 = phi i64 [ %conv23, %if.then ], [ %conv13, %sw.epilog.if.end_crit_edge ]
  %13 = ptrtoint ptr %mft_zone_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mft_zone_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %mft_lcn.0)
  %cmp25.not = icmp sgt i64 %14, %mft_lcn.0
  br i1 %cmp25.not, label %if.end.if.end29_crit_edge, label %if.then27

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %mft_zone_start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %mft_zone_start, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end.if.end29_crit_edge
  %16 = ptrtoint ptr %mft_zone_start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mft_zone_start, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 981, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.117, i64 noundef %17) #15
  %18 = ptrtoint ptr %mft_lcn9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mft_lcn9, align 8
  %20 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nr_clusters, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end29
  %mft_zone_size.1 = phi i64 [ %mft_zone_size.0, %if.end29 ], [ %shr37, %while.cond.while.cond_crit_edge ]
  %storemerge = add i64 %mft_zone_size.1, %19
  %cmp35.not = icmp slt i64 %storemerge, %21
  %shr37 = ashr i64 %mft_zone_size.1, 1
  br i1 %cmp35.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %mft_zone_end = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  %22 = ptrtoint ptr %mft_zone_end to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %storemerge, ptr %mft_zone_end, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 993, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.118, i64 noundef %storemerge) #15
  %23 = ptrtoint ptr %mft_zone_end to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mft_zone_end, align 8
  %data1_zone_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 32
  %25 = ptrtoint ptr %data1_zone_pos to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %data1_zone_pos, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1000, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.119, i64 noundef %24) #15
  %data2_zone_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 33
  %26 = ptrtoint ptr %data2_zone_pos to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %data2_zone_pos, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1003, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.120, i64 noundef 0) #15
  %mft_data_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 28
  %27 = ptrtoint ptr %mft_data_pos to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 24, ptr %mft_data_pos, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1008, ptr noundef nonnull @__func__.ntfs_setup_allocators, ptr noundef nonnull @.str.121, i64 noundef 24) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_inode_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_compression_buffers() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generate_default_upcase() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @load_system_files(ptr noundef %vol) unnamed_addr #2 align 64 {
entry:
  %rl2.i = alloca [2 x %struct.runlist_element], align 8
  %rp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rp) #15
  %2 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rp, align 4, !annotation !657
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1769, ptr noundef nonnull @__func__.load_system_files, ptr noundef nonnull @.str.11) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1025, ptr noundef nonnull @__func__.load_and_init_mft_mirror, ptr noundef nonnull @.str.11) #15
  %3 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vol, align 8
  %call.i = tail call ptr @ntfs_iget(ptr noundef %4, i32 noundef 1) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call zeroext i1 @is_bad_inode(ptr noundef %call.i) #15
  br i1 %call2.i, label %if.then4.i, label %lor.lhs.false

if.then4.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef %call.i) #15
  br label %if.then

lor.lhs.false:                                    ; preds = %lor.lhs.false.i
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i_gid.i, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -32768, ptr %call.i, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ntfs_empty_inode_ops, ptr %i_op.i, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ntfs_empty_file_ops, ptr %9, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ntfs_mst_aops, ptr %a_ops.i, align 4
  %state.i.i = getelementptr i8, ptr %call.i, i32 -464
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i.i) #15
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state.i.i) #15
  %mft_record_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 14
  %14 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mft_record_size.i, align 4
  %itype.i = getelementptr i8, ptr %call.i, i32 -120
  %16 = ptrtoint ptr %itype.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %itype.i, align 8
  %mft_record_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 16
  %17 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mft_record_size_bits.i, align 4
  %block_size_bits.i = getelementptr i8, ptr %call.i, i32 -108
  %19 = ptrtoint ptr %block_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %block_size_bits.i, align 4
  %mftmirr_ino.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 37
  %20 = ptrtoint ptr %mftmirr_ino.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %mftmirr_ino.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1059, ptr noundef nonnull @__func__.load_and_init_mft_mirror, ptr noundef nonnull @.str.125) #15
  %21 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vol, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rl2.i) #15
  %23 = getelementptr inbounds %struct.runlist_element, ptr %rl2.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.runlist_element, ptr %rl2.i, i32 0, i32 2
  %25 = getelementptr inbounds [2 x %struct.runlist_element], ptr %rl2.i, i32 0, i32 1
  %26 = getelementptr inbounds [2 x %struct.runlist_element], ptr %rl2.i, i32 0, i32 1, i32 1
  %27 = getelementptr inbounds [2 x %struct.runlist_element], ptr %rl2.i, i32 0, i32 1, i32 2
  %28 = call ptr @memset(ptr %rl2.i, i32 255, i32 48)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1083, ptr noundef nonnull @__func__.check_mft_mirror, ptr noundef nonnull @.str.11) #15
  %29 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mft_record_size.i, align 4
  %div.i = udiv i32 4096, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %30)
  %tobool.not.i = icmp ugt i32 %30, 4096
  br i1 %tobool.not.i, label %do.body5.i, label %do.body11.i, !prof !659

do.body5.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #15, !srcloc !660
  unreachable

do.body11.i:                                      ; preds = %lor.lhs.false
  %mftmirr_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 38
  %31 = ptrtoint ptr %mftmirr_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mftmirr_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not.i = icmp eq i32 %32, 0
  br i1 %tobool12.not.i, label %do.body22.i, label %do.body31.preheader.i, !prof !659

do.body31.preheader.i:                            ; preds = %do.body11.i
  %mft_ino.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 34
  br label %do.body31.i

do.body22.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1087, 0\0A.popsection", ""() #15, !srcloc !661
  unreachable

do.body31.i:                                      ; preds = %do.cond92.i.do.body31.i_crit_edge, %do.body31.preheader.i
  %mft_page.0.i = phi ptr [ %mft_page.1.i, %do.cond92.i.do.body31.i_crit_edge ], [ null, %do.body31.preheader.i ]
  %mirr_page.0.i = phi ptr [ %mirr_page.1.i, %do.cond92.i.do.body31.i_crit_edge ], [ null, %do.body31.preheader.i ]
  %kmft.0.i = phi ptr [ %add.ptr.i, %do.cond92.i.do.body31.i_crit_edge ], [ null, %do.body31.preheader.i ]
  %kmirr.0.i = phi ptr [ %add.ptr91.i, %do.cond92.i.do.body31.i_crit_edge ], [ null, %do.body31.preheader.i ]
  %index.0.i = phi i32 [ %index.1.i, %do.cond92.i.do.body31.i_crit_edge ], [ 0, %do.body31.preheader.i ]
  %i.0.i = phi i32 [ %inc93.i, %do.cond92.i.do.body31.i_crit_edge ], [ 0, %do.body31.preheader.i ]
  %rem.i = urem i32 %i.0.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool32.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %do.body31.i.if.end47.i_crit_edge

do.body31.i.if.end47.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

if.then33.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0.i)
  %tobool34.not.i = icmp eq i32 %index.0.i, 0
  br i1 %tobool34.not.i, label %if.then33.i.if.end36.i_crit_edge, label %if.then35.i

if.then33.i.if.end36.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ntfs_unmap_page(ptr noundef %mft_page.0.i) #15
  tail call fastcc void @ntfs_unmap_page(ptr noundef %mirr_page.0.i) #15
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.then33.i.if.end36.i_crit_edge
  %33 = ptrtoint ptr %mft_ino.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mft_ino.i, align 8
  %i_mapping.i690 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %i_mapping.i690 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping.i690, align 8
  %call.i691 = tail call fastcc ptr @ntfs_map_page(ptr noundef %36, i32 noundef %index.0.i) #15
  %cmp.i.i692 = icmp ugt ptr %call.i691, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i692, label %if.then38.i, label %if.end39.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_mft_mirror, ptr noundef %22, ptr noundef nonnull @.str.198) #15
  br label %check_mft_mirror.exit.thread

if.end39.i:                                       ; preds = %if.end36.i
  %call40.i = tail call ptr @page_address(ptr noundef %call.i691) #15
  %37 = ptrtoint ptr %mftmirr_ino.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mftmirr_ino.i, align 8
  %i_mapping41.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %i_mapping41.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping41.i, align 8
  %call42.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %40, i32 noundef %index.0.i) #15
  %cmp.i226.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226.i, label %if.then44.i, label %if.end45.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_mft_mirror, ptr noundef %22, ptr noundef nonnull @.str.199) #15
  br label %mft_unmap_out.i

if.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  %call46.i = tail call ptr @page_address(ptr noundef %call42.i) #15
  %inc.i = add i32 %index.0.i, 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end45.i, %do.body31.i.if.end47.i_crit_edge
  %mft_page.1.i = phi ptr [ %mft_page.0.i, %do.body31.i.if.end47.i_crit_edge ], [ %call.i691, %if.end45.i ]
  %mirr_page.1.i = phi ptr [ %mirr_page.0.i, %do.body31.i.if.end47.i_crit_edge ], [ %call42.i, %if.end45.i ]
  %kmft.1.i = phi ptr [ %kmft.0.i, %do.body31.i.if.end47.i_crit_edge ], [ %call40.i, %if.end45.i ]
  %kmirr.1.i = phi ptr [ %kmirr.0.i, %do.body31.i.if.end47.i_crit_edge ], [ %call46.i, %if.end45.i ]
  %index.1.i = phi i32 [ %index.0.i, %do.body31.i.if.end47.i_crit_edge ], [ %inc.i, %if.end45.i ]
  %flags.i = getelementptr inbounds %struct.MFT_RECORD, ptr %kmft.1.i, i32 0, i32 7
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %flags.i, align 1
  %43 = and i16 %42, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool48.not.i = icmp eq i16 %43, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.end53.i_crit_edge, label %if.then49.i

if.end47.i.if.end53.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end47.i
  %44 = ptrtoint ptr %kmft.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %kmft.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %45)
  %cmp.i227.i = icmp eq i32 %45, 1111572804
  br i1 %cmp.i227.i, label %if.then49.i.mm_unmap_out.i_crit_edge, label %if.then49.i.if.end53.i_crit_edge

if.then49.i.if.end53.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.then49.i.mm_unmap_out.i_crit_edge:             ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mm_unmap_out.i

mm_unmap_out.i:                                   ; preds = %if.end84.i.mm_unmap_out.i_crit_edge, %if.then58.i.mm_unmap_out.i_crit_edge, %if.then49.i.mm_unmap_out.i_crit_edge
  %.str.202.sink = phi ptr [ @.str.201, %if.then58.i.mm_unmap_out.i_crit_edge ], [ @.str.202, %if.end84.i.mm_unmap_out.i_crit_edge ], [ @.str.200, %if.then49.i.mm_unmap_out.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_mft_mirror, ptr noundef %22, ptr noundef nonnull %.str.202.sink, i32 noundef %i.0.i) #15
  tail call fastcc void @ntfs_unmap_page(ptr noundef %mirr_page.1.i) #15
  br label %mft_unmap_out.i

mft_unmap_out.i:                                  ; preds = %mm_unmap_out.i, %if.then44.i
  %mft_page.2.i = phi ptr [ %mft_page.1.i, %mm_unmap_out.i ], [ %call.i691, %if.then44.i ]
  tail call fastcc void @ntfs_unmap_page(ptr noundef %mft_page.2.i) #15
  br label %check_mft_mirror.exit.thread

if.end53.i:                                       ; preds = %if.then49.i.if.end53.i_crit_edge, %if.end47.i.if.end53.i_crit_edge
  %flags54.i = getelementptr inbounds %struct.MFT_RECORD, ptr %kmirr.1.i, i32 0, i32 7
  %46 = ptrtoint ptr %flags54.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %flags54.i, align 1
  %48 = and i16 %47, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool57.not.i = icmp eq i16 %48, 0
  br i1 %tobool57.not.i, label %if.end53.i.if.end62.i_crit_edge, label %if.then58.i

if.end53.i.if.end62.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end53.i
  %49 = ptrtoint ptr %kmirr.1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %kmirr.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %50)
  %cmp.i228.i = icmp eq i32 %50, 1111572804
  br i1 %cmp.i228.i, label %if.then58.i.mm_unmap_out.i_crit_edge, label %if.then58.i.if.end62.i_crit_edge

if.then58.i.if.end62.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.then58.i.mm_unmap_out.i_crit_edge:             ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mm_unmap_out.i

if.end62.i:                                       ; preds = %if.then58.i.if.end62.i_crit_edge, %if.end53.i.if.end62.i_crit_edge
  %bytes_in_use.i = getelementptr inbounds %struct.MFT_RECORD, ptr %kmft.1.i, i32 0, i32 8
  %51 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %bytes_in_use.i, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %53)
  %cmp.i = icmp ult i32 %53, 42
  br i1 %cmp.i, label %if.end62.i.if.then70.i_crit_edge, label %lor.lhs.false.i693

if.end62.i.if.then70.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70.i

lor.lhs.false.i693:                               ; preds = %if.end62.i
  %54 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mft_record_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp65.i = icmp ugt i32 %53, %55
  br i1 %cmp65.i, label %lor.lhs.false.i693.if.then70.i_crit_edge, label %lor.lhs.false67.i

lor.lhs.false.i693.if.then70.i_crit_edge:         ; preds = %lor.lhs.false.i693
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70.i

lor.lhs.false67.i:                                ; preds = %lor.lhs.false.i693
  %56 = ptrtoint ptr %kmft.1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %kmft.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %57)
  %cmp.i229.i = icmp eq i32 %57, 1111572804
  br i1 %cmp.i229.i, label %lor.lhs.false67.i.if.then70.i_crit_edge, label %lor.lhs.false67.i.if.end84.i_crit_edge

lor.lhs.false67.i.if.end84.i_crit_edge:           ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84.i

lor.lhs.false67.i.if.then70.i_crit_edge:          ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then70.i

if.then70.i:                                      ; preds = %lor.lhs.false67.i.if.then70.i_crit_edge, %lor.lhs.false.i693.if.then70.i_crit_edge, %if.end62.i.if.then70.i_crit_edge
  %bytes_in_use71.i = getelementptr inbounds %struct.MFT_RECORD, ptr %kmirr.1.i, i32 0, i32 8
  %58 = ptrtoint ptr %bytes_in_use71.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %bytes_in_use71.i, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %60)
  %cmp72.i = icmp ult i32 %60, 42
  br i1 %cmp72.i, label %if.then70.i.if.then81.i_crit_edge, label %lor.lhs.false74.i

if.then70.i.if.then81.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then81.i

lor.lhs.false74.i:                                ; preds = %if.then70.i
  %61 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mft_record_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp76.i = icmp ugt i32 %60, %62
  br i1 %cmp76.i, label %lor.lhs.false74.i.if.then81.i_crit_edge, label %lor.lhs.false78.i

lor.lhs.false74.i.if.then81.i_crit_edge:          ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then81.i

lor.lhs.false78.i:                                ; preds = %lor.lhs.false74.i
  %63 = ptrtoint ptr %kmirr.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %kmirr.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %64)
  %cmp.i230.i = icmp eq i32 %64, 1111572804
  br i1 %cmp.i230.i, label %lor.lhs.false78.i.if.then81.i_crit_edge, label %lor.lhs.false78.i.if.end84.i_crit_edge

lor.lhs.false78.i.if.end84.i_crit_edge:           ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84.i

lor.lhs.false78.i.if.then81.i_crit_edge:          ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then81.i

if.then81.i:                                      ; preds = %lor.lhs.false78.i.if.then81.i_crit_edge, %lor.lhs.false74.i.if.then81.i_crit_edge, %if.then70.i.if.then81.i_crit_edge
  %65 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mft_record_size.i, align 4
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then81.i, %lor.lhs.false78.i.if.end84.i_crit_edge, %lor.lhs.false67.i.if.end84.i_crit_edge
  %bytes.0.i = phi i32 [ %66, %if.then81.i ], [ %60, %lor.lhs.false78.i.if.end84.i_crit_edge ], [ %53, %lor.lhs.false67.i.if.end84.i_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr %kmft.1.i, ptr %kmirr.1.i, i32 %bytes.0.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool86.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool86.not.i, label %do.cond92.i, label %if.end84.i.mm_unmap_out.i_crit_edge

if.end84.i.mm_unmap_out.i_crit_edge:              ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mm_unmap_out.i

do.cond92.i:                                      ; preds = %if.end84.i
  %67 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mft_record_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %kmft.1.i, i32 %68
  %add.ptr91.i = getelementptr i8, ptr %kmirr.1.i, i32 %68
  %inc93.i = add nuw nsw i32 %i.0.i, 1
  %69 = ptrtoint ptr %mftmirr_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mftmirr_size.i, align 4
  %cmp95.i = icmp slt i32 %inc93.i, %70
  br i1 %cmp95.i, label %do.cond92.i.do.body31.i_crit_edge, label %do.end97.i

do.cond92.i.do.body31.i_crit_edge:                ; preds = %do.cond92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body31.i

do.end97.i:                                       ; preds = %do.cond92.i
  tail call fastcc void @ntfs_unmap_page(ptr noundef %mft_page.1.i) #15
  tail call fastcc void @ntfs_unmap_page(ptr noundef %mirr_page.1.i) #15
  %71 = ptrtoint ptr %rl2.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %rl2.i, align 8
  %mftmirr_lcn.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 22
  %72 = ptrtoint ptr %mftmirr_lcn.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %mftmirr_lcn.i, align 8
  %74 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %23, align 8
  %75 = ptrtoint ptr %mftmirr_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mftmirr_size.i, align 4
  %77 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mft_record_size.i, align 4
  %mul.i = mul i32 %78, %76
  %cluster_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 11
  %79 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cluster_size.i, align 8
  %add.i = add i32 %80, -1
  %sub.i = add i32 %add.i, %mul.i
  %div102.i = udiv i32 %sub.i, %80
  %conv103.i = zext i32 %div102.i to i64
  %81 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv103.i, ptr %24, align 8
  %82 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv103.i, ptr %25, align 8
  %83 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 -3, ptr %26, align 8
  %84 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %27, align 8
  %85 = ptrtoint ptr %mftmirr_ino.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mftmirr_ino.i, align 8
  %runlist.i = getelementptr i8, ptr %86, i32 -432
  %lock.i = getelementptr i8, ptr %86, i32 -428
  tail call void @down_read(ptr noundef %lock.i) #15
  %87 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %runlist.i, align 8
  br label %do.body117.i

do.body117.i:                                     ; preds = %do.cond142.i.do.body117.i_crit_edge, %do.end97.i
  %i.1.i = phi i32 [ 0, %do.end97.i ], [ %inc143.i, %do.cond142.i.do.body117.i_crit_edge ]
  %arrayidx118.i = getelementptr [2 x %struct.runlist_element], ptr %rl2.i, i32 0, i32 %i.1.i
  %89 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx118.i, align 8
  %arrayidx120.i = getelementptr %struct.runlist_element, ptr %88, i32 %i.1.i
  %91 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx120.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %92)
  %cmp122.not.i = icmp eq i64 %90, %92
  br i1 %cmp122.not.i, label %lor.lhs.false124.i, label %do.body117.i.if.then138.i_crit_edge

do.body117.i.if.then138.i_crit_edge:              ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then138.i

lor.lhs.false124.i:                               ; preds = %do.body117.i
  %lcn126.i = getelementptr [2 x %struct.runlist_element], ptr %rl2.i, i32 0, i32 %i.1.i, i32 1
  %93 = ptrtoint ptr %lcn126.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %lcn126.i, align 8
  %lcn128.i = getelementptr %struct.runlist_element, ptr %88, i32 %i.1.i, i32 1
  %95 = ptrtoint ptr %lcn128.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %lcn128.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %96)
  %cmp129.not.i = icmp eq i64 %94, %96
  br i1 %cmp129.not.i, label %lor.lhs.false131.i, label %lor.lhs.false124.i.if.then138.i_crit_edge

lor.lhs.false124.i.if.then138.i_crit_edge:        ; preds = %lor.lhs.false124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then138.i

lor.lhs.false131.i:                               ; preds = %lor.lhs.false124.i
  %length133.i = getelementptr [2 x %struct.runlist_element], ptr %rl2.i, i32 0, i32 %i.1.i, i32 2
  %97 = ptrtoint ptr %length133.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %length133.i, align 8
  %length135.i = getelementptr %struct.runlist_element, ptr %88, i32 %i.1.i, i32 2
  %99 = ptrtoint ptr %length135.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %length135.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %100)
  %cmp136.not.i = icmp eq i64 %98, %100
  br i1 %cmp136.not.i, label %do.cond142.i, label %lor.lhs.false131.i.if.then138.i_crit_edge

lor.lhs.false131.i.if.then138.i_crit_edge:        ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then138.i

if.then138.i:                                     ; preds = %lor.lhs.false131.i.if.then138.i_crit_edge, %lor.lhs.false124.i.if.then138.i_crit_edge, %do.body117.i.if.then138.i_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_mft_mirror, ptr noundef %22, ptr noundef nonnull @.str.203) #15
  tail call void @up_read(ptr noundef %lock.i) #15
  br label %check_mft_mirror.exit.thread

do.cond142.i:                                     ; preds = %lor.lhs.false131.i
  %inc143.i = add i32 %i.1.i, 1
  %tobool146.not.i = icmp eq i64 %98, 0
  br i1 %tobool146.not.i, label %check_mft_mirror.exit, label %do.cond142.i.do.body117.i_crit_edge

do.cond142.i.do.body117.i_crit_edge:              ; preds = %do.cond142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body117.i

check_mft_mirror.exit.thread:                     ; preds = %if.then138.i, %mft_unmap_out.i, %if.then38.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rl2.i) #15
  br label %if.then

check_mft_mirror.exit:                            ; preds = %do.cond142.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @up_read(ptr noundef %lock.i) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1192, ptr noundef nonnull @__func__.check_mft_mirror, ptr noundef nonnull @.str.125) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rl2.i) #15
  br label %if.end20

if.then:                                          ; preds = %check_mft_mirror.exit.thread, %if.then4.i, %entry.if.then_crit_edge
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %101 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %on_errors = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %103 = ptrtoint ptr %on_errors to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %on_errors, align 1
  %105 = and i8 %104, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not = icmp eq i8 %105, 0
  br i1 %tobool.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %mftmirr_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 37
  %106 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mftmirr_ino, align 8
  %tobool6.not = icmp eq ptr %107, null
  %.str.144..str.145 = select i1 %tobool6.not, ptr @.str.144, ptr @.str.145
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull %.str.144..str.145, ptr noundef nonnull @.str.146) #15
  br label %iput_mirr_err_out

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %102, 1
  %108 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or, ptr %s_flags.i, align 4
  %mftmirr_ino7 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 37
  %109 = ptrtoint ptr %mftmirr_ino7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mftmirr_ino7, align 8
  %tobool8.not = icmp eq ptr %110, null
  %.str.144..str.145686 = select i1 %tobool8.not, ptr @.str.144, ptr @.str.145
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull %.str.144..str.145686, ptr noundef nonnull @.str.146) #15
  br label %if.end19

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %mftmirr_ino13 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 37
  %111 = ptrtoint ptr %mftmirr_ino13 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mftmirr_ino13, align 8
  %tobool14.not = icmp eq ptr %112, null
  %.str.144..str.145687 = select i1 %tobool14.not, ptr @.str.144, ptr @.str.145
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull %.str.144..str.145687, ptr noundef nonnull @.str.146) #15
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  %flags.i694 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i694) #15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %check_mft_mirror.exit
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 34
  %113 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mft_ino, align 8
  %call21 = tail call ptr @ntfs_attr_iget(ptr noundef %114, i32 noundef -1342177280, ptr noundef null, i32 noundef 0) #15
  %mftbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 35
  %115 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call21, ptr %mftbmp_ino, align 4
  %cmp.i695 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i695, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.150) #15
  br label %iput_mirr_err_out

if.end25:                                         ; preds = %if.end20
  %dep_map = getelementptr i8, ptr %call21, i32 -360
  %wait_type_inner = getelementptr i8, ptr %call21, i32 -343
  %116 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.151, ptr noundef nonnull @mftbmp_runlist_lock_key, i32 noundef 0, i8 noundef zeroext %117, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %118 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mftbmp_ino, align 4
  %dep_map40 = getelementptr i8, ptr %119, i32 -268
  %wait_type_inner45 = getelementptr i8, ptr %119, i32 -251
  %120 = ptrtoint ptr %wait_type_inner45 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %wait_type_inner45, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map40, ptr noundef nonnull @.str.152, ptr noundef nonnull @mftbmp_mrec_lock_key, i32 noundef 0, i8 noundef zeroext %121, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %122 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vol, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1653, ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef nonnull @.str.11) #15
  %call.i702 = tail call ptr @ntfs_iget(ptr noundef %123, i32 noundef 10) #15
  %cmp.i.i703 = icmp ugt ptr %call.i702, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i703, label %if.end25.upcase_failed.i_crit_edge, label %lor.lhs.false.i704

if.end25.upcase_failed.i_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %upcase_failed.i

lor.lhs.false.i704:                               ; preds = %if.end25
  %call3.i = tail call zeroext i1 @is_bad_inode(ptr noundef %call.i702) #15
  br i1 %call3.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %lor.lhs.false.i704
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef %call.i702) #15
  br label %upcase_failed.i

if.end6.i:                                        ; preds = %lor.lhs.false.i704
  %call7.i = tail call fastcc i64 @i_size_read(ptr noundef %call.i702) #15
  %and.i705 = and i64 %call7.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i705)
  %tobool9.not.i = icmp ne i64 %and.i705, 0
  %124 = add i64 %call7.i, -131073
  call void @__sanitizer_cov_trace_const_cmp8(i64 -131072, i64 %124)
  %125 = icmp ult i64 %124, -131072
  %126 = or i1 %125, %tobool9.not.i
  br i1 %126, label %if.end6.i.iput_upcase_failed.i_crit_edge, label %if.end12.i

if.end6.i.iput_upcase_failed.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_upcase_failed.i

if.end12.i:                                       ; preds = %if.end6.i
  %conv.i = trunc i64 %call7.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %conv.i)
  %cmp.i.i.i = icmp ult i32 %conv.i, 4097
  br i1 %cmp.i.i.i, label %do.end15.i.i.i, label %if.end16.i.i.i, !prof !651

do.end15.i.i.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3136, i32 noundef 4096) #19
  br label %ntfs_malloc_nofs.exit.i

if.end16.i.i.i:                                   ; preds = %if.end12.i
  %shr.i.i.i = lshr i32 %conv.i, 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %128 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %128)
  %cmp18.i.i.i = icmp ult i32 %shr.i.i.i, %128
  br i1 %cmp18.i.i.i, label %if.then25.i.i.i, label %ntfs_malloc_nofs.exit.thread.i, !prof !651

ntfs_malloc_nofs.exit.thread.i:                   ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %upcase131.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 25
  %129 = ptrtoint ptr %upcase131.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %upcase131.i, align 4
  br label %iput_upcase_failed.i

if.then25.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call26.i.i.i = tail call noalias ptr @__vmalloc(i32 noundef %conv.i, i32 noundef 3138) #22
  br label %ntfs_malloc_nofs.exit.i

ntfs_malloc_nofs.exit.i:                          ; preds = %if.then25.i.i.i, %do.end15.i.i.i
  %retval.0.i.i.i = phi ptr [ %call7.i.i.i.i, %do.end15.i.i.i ], [ %call26.i.i.i, %if.then25.i.i.i ]
  %upcase.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 25
  %130 = ptrtoint ptr %upcase.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %retval.0.i.i.i, ptr %upcase.i, align 4
  %tobool15.not.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool15.not.i, label %ntfs_malloc_nofs.exit.i.iput_upcase_failed.i_crit_edge, label %if.end17.i

ntfs_malloc_nofs.exit.i.iput_upcase_failed.i_crit_edge: ; preds = %ntfs_malloc_nofs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_upcase_failed.i

if.end17.i:                                       ; preds = %ntfs_malloc_nofs.exit.i
  %131 = lshr i64 %call7.i, 12
  %conv18.i = trunc i64 %131 to i32
  %conv31.i = and i32 %conv.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31.i)
  %tobool32.not.i706 = icmp eq i32 %conv31.i, 0
  %i_mapping.i707 = getelementptr inbounds %struct.inode, ptr %call.i702, i32 0, i32 9
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end24.i, %if.end17.i
  %index.0.i708 = phi i32 [ 0, %if.end17.i ], [ %inc.i709, %if.end24.i ]
  %size.0.i = phi i32 [ 4096, %if.end17.i ], [ %size.1.i, %if.end24.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i708, i32 %conv18.i)
  %cmp19.i = icmp ult i32 %index.0.i708, %conv18.i
  br i1 %cmp19.i, label %while.cond.i.read_partial_upcase_page.i_crit_edge, label %while.end.i

while.cond.i.read_partial_upcase_page.i_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_partial_upcase_page.i

read_partial_upcase_page.i:                       ; preds = %while.end.i.read_partial_upcase_page.i_crit_edge, %while.cond.i.read_partial_upcase_page.i_crit_edge
  %size.1.i = phi i32 [ %size.0.i, %while.cond.i.read_partial_upcase_page.i_crit_edge ], [ %conv31.i, %while.end.i.read_partial_upcase_page.i_crit_edge ]
  %132 = ptrtoint ptr %i_mapping.i707 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i_mapping.i707, align 8
  %call21.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %133, i32 noundef %index.0.i708) #15
  %cmp.i129.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129.i, label %read_partial_upcase_page.i.iput_upcase_failed.i_crit_edge, label %if.end24.i

read_partial_upcase_page.i.iput_upcase_failed.i_crit_edge: ; preds = %read_partial_upcase_page.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_upcase_failed.i

if.end24.i:                                       ; preds = %read_partial_upcase_page.i
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %upcase.i, align 4
  %inc.i709 = add i32 %index.0.i708, 1
  %shl.i = shl i32 %index.0.i708, 12
  %add.ptr.i710 = getelementptr i8, ptr %135, i32 %shl.i
  %call26.i = tail call ptr @page_address(ptr noundef %call21.i) #15
  %136 = call ptr @memcpy(ptr %add.ptr.i710, ptr %call26.i, i32 %size.1.i)
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call21.i) #15
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size.0.i)
  %cmp27.i = icmp ne i32 %size.0.i, 4096
  %or.cond127.i = select i1 %cmp27.i, i1 true, i1 %tobool32.not.i706
  br i1 %or.cond127.i, label %if.end35.i, label %while.end.i.read_partial_upcase_page.i_crit_edge

while.end.i.read_partial_upcase_page.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_partial_upcase_page.i

if.end35.i:                                       ; preds = %while.end.i
  %137 = lshr i64 %call7.i, 1
  %conv37.i = trunc i64 %137 to i32
  %upcase_len.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 24
  %138 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv37.i, ptr %upcase_len.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1692, ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef nonnull @.str.206, i64 noundef %call7.i, i32 noundef 131072) #15
  tail call void @iput(ptr noundef %call.i702) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %139 = load ptr, ptr @default_upcase, align 4
  %tobool38.not.i = icmp eq ptr %139, null
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end40.i

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1697, ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef nonnull @.str.207) #15
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  br label %if.end53

if.end40.i:                                       ; preds = %if.end35.i
  %140 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %upcase_len.i, align 8
  %142 = tail call i32 @llvm.umin.i32(i32 %141, i32 65536) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp47134.not.i = icmp eq i32 %142, 0
  br i1 %cmp47134.not.i, label %if.end40.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end40.i.for.end.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end40.i
  %143 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %upcase.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0135.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc57.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %144, i32 %i.0135.i
  %145 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx.i, align 2
  %arrayidx51.i = getelementptr i16, ptr %139, i32 %i.0135.i
  %147 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx51.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %148)
  %cmp53.not.i = icmp eq i16 %146, %148
  br i1 %cmp53.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc57.i = add nuw nsw i32 %i.0135.i, 1
  %exitcond.not.i = icmp eq i32 %inc57.i, %142
  br i1 %exitcond.not.i, label %for.inc.i.if.then60.i711_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.then60.i711_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i711

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end40.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end40.i.for.end.i_crit_edge ], [ %i.0135.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %142)
  %cmp58.i = icmp eq i32 %i.0.lcssa.i, %142
  br i1 %cmp58.i, label %for.end.i.if.then60.i711_crit_edge, label %if.end65.i

for.end.i.if.then60.i711_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i711

if.then60.i711:                                   ; preds = %for.end.i.if.then60.i711_crit_edge, %for.inc.i.if.then60.i711_crit_edge
  %149 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %upcase.i, align 4
  tail call void @kvfree(ptr noundef %150) #15
  %151 = load ptr, ptr @default_upcase, align 4
  %152 = ptrtoint ptr %upcase.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %upcase.i, align 4
  %153 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %142, ptr %upcase_len.i, align 8
  %154 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %inc64.i = add i32 %154, 1
  store i32 %inc64.i, ptr @ntfs_nr_upcase_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1714, ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef nonnull @.str.208) #15
  br label %if.end53

if.end65.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1719, ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef nonnull @.str.209) #15
  br label %if.end53

iput_upcase_failed.i:                             ; preds = %read_partial_upcase_page.i.iput_upcase_failed.i_crit_edge, %ntfs_malloc_nofs.exit.i.iput_upcase_failed.i_crit_edge, %ntfs_malloc_nofs.exit.thread.i, %if.end6.i.iput_upcase_failed.i_crit_edge
  tail call void @iput(ptr noundef %call.i702) #15
  %upcase66.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 25
  %155 = ptrtoint ptr %upcase66.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %upcase66.i, align 4
  tail call void @kvfree(ptr noundef %156) #15
  %157 = ptrtoint ptr %upcase66.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %upcase66.i, align 4
  br label %upcase_failed.i

upcase_failed.i:                                  ; preds = %iput_upcase_failed.i, %if.then5.i, %if.end25.upcase_failed.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %158 = load ptr, ptr @default_upcase, align 4
  %tobool68.not.i = icmp eq ptr %158, null
  br i1 %tobool68.not.i, label %load_and_init_upcase.exit, label %if.then69.i

if.then69.i:                                      ; preds = %upcase_failed.i
  call void @__sanitizer_cov_trace_pc() #17
  %upcase70.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 25
  %159 = ptrtoint ptr %upcase70.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %upcase70.i, align 4
  %upcase_len71.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 24
  %160 = ptrtoint ptr %upcase_len71.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 65536, ptr %upcase_len71.i, align 8
  %161 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %inc72.i = add i32 %161, 1
  store i32 %inc72.i, ptr @ntfs_nr_upcase_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef %123, ptr noundef nonnull @.str.210) #15
  br label %if.end53

load_and_init_upcase.exit:                        ; preds = %upcase_failed.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef %123, ptr noundef nonnull @.str.211) #15
  br label %iput_mftbmp_err_out

if.end53:                                         ; preds = %if.then69.i, %if.end65.i, %if.then60.i711, %if.then39.i
  %162 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %vol, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1587, ptr noundef nonnull @__func__.load_and_init_attrdef, ptr noundef nonnull @.str.11) #15
  %call.i713 = tail call ptr @ntfs_iget(ptr noundef %163, i32 noundef 4) #15
  %cmp.i.i714 = icmp ugt ptr %call.i713, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i714, label %if.end53.load_and_init_attrdef.exit_crit_edge, label %lor.lhs.false.i716

if.end53.load_and_init_attrdef.exit_crit_edge:    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %load_and_init_attrdef.exit

lor.lhs.false.i716:                               ; preds = %if.end53
  %call3.i715 = tail call zeroext i1 @is_bad_inode(ptr noundef %call.i713) #15
  br i1 %call3.i715, label %lor.lhs.false.i716.failed.sink.split.i_crit_edge, label %if.end6.i718

lor.lhs.false.i716.failed.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i716
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.sink.split.i

if.end6.i718:                                     ; preds = %lor.lhs.false.i716
  %state.i.i717 = getelementptr i8, ptr %call.i713, i32 -464
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state.i.i717) #15
  %call8.i = tail call fastcc i64 @i_size_read(ptr noundef %call.i713) #15
  %164 = add i64 %call8.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2147483647, i64 %164)
  %165 = icmp ult i64 %164, -2147483647
  br i1 %165, label %if.end6.i718.failed.sink.split.i_crit_edge, label %if.end12.i721

if.end6.i718.failed.sink.split.i_crit_edge:       ; preds = %if.end6.i718
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.sink.split.i

if.end12.i721:                                    ; preds = %if.end6.i718
  %conv.i719 = trunc i64 %call8.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %conv.i719)
  %cmp.i.i.i720 = icmp ult i32 %conv.i719, 4097
  br i1 %cmp.i.i.i720, label %do.end15.i.i.i723, label %if.end16.i.i.i727, !prof !651

do.end15.i.i.i723:                                ; preds = %if.end12.i721
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %166 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i722 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %166, i32 noundef 3136, i32 noundef 4096) #19
  br label %ntfs_malloc_nofs.exit.i733

if.end16.i.i.i727:                                ; preds = %if.end12.i721
  %shr.i.i.i724 = lshr i32 %conv.i719, 12
  %call.i.i.i.i.i.i725 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %167 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i724, i32 %167)
  %cmp18.i.i.i726 = icmp ult i32 %shr.i.i.i724, %167
  br i1 %cmp18.i.i.i726, label %if.then25.i.i.i730, label %ntfs_malloc_nofs.exit.thread.i728, !prof !651

ntfs_malloc_nofs.exit.thread.i728:                ; preds = %if.end16.i.i.i727
  call void @__sanitizer_cov_trace_pc() #17
  %attrdef74.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 27
  br label %iput_failed.sink.split.i

if.then25.i.i.i730:                               ; preds = %if.end16.i.i.i727
  call void @__sanitizer_cov_trace_pc() #17
  %call26.i.i.i729 = tail call noalias ptr @__vmalloc(i32 noundef %conv.i719, i32 noundef 3138) #22
  br label %ntfs_malloc_nofs.exit.i733

ntfs_malloc_nofs.exit.i733:                       ; preds = %if.then25.i.i.i730, %do.end15.i.i.i723
  %retval.0.i.i.i731 = phi ptr [ %call7.i.i.i.i722, %do.end15.i.i.i723 ], [ %call26.i.i.i729, %if.then25.i.i.i730 ]
  %attrdef.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 27
  %168 = ptrtoint ptr %attrdef.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %retval.0.i.i.i731, ptr %attrdef.i, align 4
  %tobool.not.i732 = icmp eq ptr %retval.0.i.i.i731, null
  br i1 %tobool.not.i732, label %ntfs_malloc_nofs.exit.i733.failed.sink.split.i_crit_edge, label %if.end16.i

ntfs_malloc_nofs.exit.i733.failed.sink.split.i_crit_edge: ; preds = %ntfs_malloc_nofs.exit.i733
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.sink.split.i

if.end16.i:                                       ; preds = %ntfs_malloc_nofs.exit.i733
  %169 = lshr i64 %call8.i, 12
  %conv17.i = trunc i64 %169 to i32
  %conv29.i = and i32 %conv.i719, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv29.i)
  %tobool30.not.i = icmp eq i32 %conv29.i, 0
  %i_mapping.i734 = getelementptr inbounds %struct.inode, ptr %call.i713, i32 0, i32 9
  br label %while.cond.i737

while.cond.i737:                                  ; preds = %if.end23.i, %if.end16.i
  %index.0.i735 = phi i32 [ 0, %if.end16.i ], [ %inc.i739, %if.end23.i ]
  %size.0.i736 = phi i32 [ 4096, %if.end16.i ], [ %size.1.i738, %if.end23.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i735, i32 %conv17.i)
  %cmp18.i = icmp ult i32 %index.0.i735, %conv17.i
  br i1 %cmp18.i, label %while.cond.i737.read_partial_attrdef_page.i_crit_edge, label %while.end.i742

while.cond.i737.read_partial_attrdef_page.i_crit_edge: ; preds = %while.cond.i737
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_partial_attrdef_page.i

read_partial_attrdef_page.i:                      ; preds = %while.end.i742.read_partial_attrdef_page.i_crit_edge, %while.cond.i737.read_partial_attrdef_page.i_crit_edge
  %size.1.i738 = phi i32 [ %size.0.i736, %while.cond.i737.read_partial_attrdef_page.i_crit_edge ], [ %conv29.i, %while.end.i742.read_partial_attrdef_page.i_crit_edge ]
  %170 = ptrtoint ptr %i_mapping.i734 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i_mapping.i734, align 8
  %call20.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %171, i32 noundef %index.0.i735) #15
  %cmp.i72.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  %172 = ptrtoint ptr %attrdef.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %attrdef.i, align 4
  br i1 %cmp.i72.i, label %free_iput_failed.i, label %if.end23.i

if.end23.i:                                       ; preds = %read_partial_attrdef_page.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i739 = add i32 %index.0.i735, 1
  %shl.i740 = shl i32 %index.0.i735, 12
  %add.ptr.i741 = getelementptr i8, ptr %173, i32 %shl.i740
  %call25.i = tail call ptr @page_address(ptr noundef %call20.i) #15
  %174 = call ptr @memcpy(ptr %add.ptr.i741, ptr %call25.i, i32 %size.1.i738)
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call20.i) #15
  br label %while.cond.i737

while.end.i742:                                   ; preds = %while.cond.i737
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size.0.i736)
  %cmp26.i = icmp ne i32 %size.0.i736, 4096
  %or.cond70.i = select i1 %cmp26.i, i1 true, i1 %tobool30.not.i
  br i1 %or.cond70.i, label %if.end56, label %while.end.i742.read_partial_attrdef_page.i_crit_edge

while.end.i742.read_partial_attrdef_page.i_crit_edge: ; preds = %while.end.i742
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_partial_attrdef_page.i

free_iput_failed.i:                               ; preds = %read_partial_attrdef_page.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef %173) #15
  br label %iput_failed.sink.split.i

iput_failed.sink.split.i:                         ; preds = %free_iput_failed.i, %ntfs_malloc_nofs.exit.thread.i728
  %attrdef74.sink.i = phi ptr [ %attrdef74.i, %ntfs_malloc_nofs.exit.thread.i728 ], [ %attrdef.i, %free_iput_failed.i ]
  %175 = ptrtoint ptr %attrdef74.sink.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %attrdef74.sink.i, align 4
  br label %failed.sink.split.i

failed.sink.split.i:                              ; preds = %iput_failed.sink.split.i, %ntfs_malloc_nofs.exit.i733.failed.sink.split.i_crit_edge, %if.end6.i718.failed.sink.split.i_crit_edge, %lor.lhs.false.i716.failed.sink.split.i_crit_edge
  tail call void @iput(ptr noundef %call.i713) #15
  br label %load_and_init_attrdef.exit

load_and_init_attrdef.exit:                       ; preds = %failed.sink.split.i, %if.end53.load_and_init_attrdef.exit_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_attrdef, ptr noundef %163, ptr noundef nonnull @.str.213) #15
  br label %iput_upcase_err_out

if.end56:                                         ; preds = %while.end.i742
  %attrdef_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 26
  %176 = ptrtoint ptr %attrdef_size.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv.i719, ptr %attrdef_size.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @__func__.load_and_init_attrdef, ptr noundef nonnull @.str.212, i64 noundef %call8.i) #15
  tail call void @iput(ptr noundef %call.i713) #15
  %call57 = tail call ptr @ntfs_iget(ptr noundef %1, i32 noundef 6) #15
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 40
  %177 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call57, ptr %lcnbmp_ino, align 4
  %cmp.i744 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i744, label %if.end56.if.then65_crit_edge, label %lor.lhs.false61

if.end56.if.then65_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65

lor.lhs.false61:                                  ; preds = %if.end56
  %call63 = tail call zeroext i1 @is_bad_inode(ptr noundef %call57) #15
  %178 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %178)
  %.pr = load ptr, ptr %lcnbmp_ino, align 4
  br i1 %call63, label %lor.lhs.false61.if.then65_crit_edge, label %if.end71

lor.lhs.false61.if.then65_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false61.if.then65_crit_edge, %if.end56.if.then65_crit_edge
  %179 = phi ptr [ %call57, %if.end56.if.then65_crit_edge ], [ %.pr, %lor.lhs.false61.if.then65_crit_edge ]
  %cmp.i745 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i745, label %if.then65.bitmap_failed_crit_edge, label %if.then65.bitmap_failed.sink.split_crit_edge

if.then65.bitmap_failed.sink.split_crit_edge:     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %bitmap_failed.sink.split

if.then65.bitmap_failed_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %bitmap_failed

if.end71:                                         ; preds = %lor.lhs.false61
  %dep_map76 = getelementptr i8, ptr %.pr, i32 -360
  %wait_type_inner82 = getelementptr i8, ptr %.pr, i32 -343
  %180 = ptrtoint ptr %wait_type_inner82 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %wait_type_inner82, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map76, ptr noundef nonnull @.str.153, ptr noundef nonnull @lcnbmp_runlist_lock_key, i32 noundef 0, i8 noundef zeroext %181, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %182 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %lcnbmp_ino, align 4
  %dep_map92 = getelementptr i8, ptr %183, i32 -268
  %wait_type_inner97 = getelementptr i8, ptr %183, i32 -251
  %184 = ptrtoint ptr %wait_type_inner97 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %wait_type_inner97, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map92, ptr noundef nonnull @.str.154, ptr noundef nonnull @lcnbmp_mrec_lock_key, i32 noundef 0, i8 noundef zeroext %185, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %186 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lcnbmp_ino, align 4
  %state.i = getelementptr i8, ptr %187, i32 -464
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state.i) #15
  %nr_clusters = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 20
  %188 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %nr_clusters, align 8
  %add = add i64 %189, 7
  %shr = ashr i64 %add, 3
  %190 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %lcnbmp_ino, align 4
  %call106 = tail call fastcc i64 @i_size_read(ptr noundef %191)
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %call106)
  %cmp = icmp sgt i64 %shr, %call106
  br i1 %cmp, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %192 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lcnbmp_ino, align 4
  br label %bitmap_failed.sink.split

bitmap_failed.sink.split:                         ; preds = %if.then108, %if.then65.bitmap_failed.sink.split_crit_edge
  %.sink = phi ptr [ %193, %if.then108 ], [ %179, %if.then65.bitmap_failed.sink.split_crit_edge ]
  tail call void @iput(ptr noundef %.sink) #15
  br label %bitmap_failed

bitmap_failed:                                    ; preds = %bitmap_failed.sink.split, %if.then65.bitmap_failed_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.155) #15
  br label %iput_attrdef_err_out

if.end110:                                        ; preds = %if.end71
  %call111 = tail call ptr @ntfs_iget(ptr noundef %1, i32 noundef 3) #15
  %vol_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 42
  %194 = ptrtoint ptr %vol_ino to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call111, ptr %vol_ino, align 8
  %cmp.i753 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i753, label %if.end110.if.then119_crit_edge, label %lor.lhs.false115

if.end110.if.then119_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then119

lor.lhs.false115:                                 ; preds = %if.end110
  %call117 = tail call zeroext i1 @is_bad_inode(ptr noundef %call111) #15
  %195 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pr807 = load ptr, ptr %vol_ino, align 8
  br i1 %call117, label %lor.lhs.false115.if.then119_crit_edge, label %if.end125

lor.lhs.false115.if.then119_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then119

if.then119:                                       ; preds = %lor.lhs.false115.if.then119_crit_edge, %if.end110.if.then119_crit_edge
  %196 = phi ptr [ %call111, %if.end110.if.then119_crit_edge ], [ %.pr807, %lor.lhs.false115.if.then119_crit_edge ]
  %cmp.i754 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i754, label %if.then119.volume_failed_crit_edge, label %if.then119.volume_failed.sink.split_crit_edge

if.then119.volume_failed.sink.split_crit_edge:    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #17
  br label %volume_failed.sink.split

if.then119.volume_failed_crit_edge:               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #17
  br label %volume_failed

volume_failed.sink.split:                         ; preds = %iput_volume_failed, %if.then119.volume_failed.sink.split_crit_edge
  %.sink859 = phi ptr [ %198, %iput_volume_failed ], [ %196, %if.then119.volume_failed.sink.split_crit_edge ]
  tail call void @iput(ptr noundef %.sink859) #15
  br label %volume_failed

volume_failed:                                    ; preds = %volume_failed.sink.split, %if.then119.volume_failed_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.156) #15
  br label %iput_lcnbmp_err_out

if.end125:                                        ; preds = %lor.lhs.false115
  %add.ptr.i755 = getelementptr i8, ptr %.pr807, i32 -528
  %call128 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i755) #15
  %cmp.i756 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i756, label %if.end125.iput_volume_failed_crit_edge, label %if.end132

if.end125.iput_volume_failed_crit_edge:           ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_volume_failed

iput_volume_failed:                               ; preds = %get_ctx_vol_failed, %if.end125.iput_volume_failed_crit_edge
  %197 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %vol_ino, align 8
  br label %volume_failed.sink.split

if.end132:                                        ; preds = %if.end125
  %199 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %vol_ino, align 8
  %add.ptr.i757 = getelementptr i8, ptr %200, i32 -528
  %call135 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i757, ptr noundef %call128) #15
  %tobool136.not = icmp eq ptr %call135, null
  br i1 %tobool136.not, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.157) #15
  br label %get_ctx_vol_failed

if.end138:                                        ; preds = %if.end132
  %call139 = tail call i32 @ntfs_attr_lookup(i32 noundef 1879048192, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call135) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %lor.lhs.false141, label %if.end138.err_put_vol_crit_edge

if.end138.err_put_vol_crit_edge:                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_put_vol

lor.lhs.false141:                                 ; preds = %if.end138
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call135, i32 0, i32 1
  %201 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %attr, align 4
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool143.not = icmp eq i8 %204, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %lor.lhs.false141.err_put_vol_crit_edge

lor.lhs.false141.err_put_vol_crit_edge:           ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_put_vol

lor.lhs.false144:                                 ; preds = %lor.lhs.false141
  %flags = getelementptr inbounds %struct.ATTR_RECORD, ptr %202, i32 0, i32 5
  %205 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %206 = load i16, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %tobool147.not = icmp eq i16 %206, 0
  br i1 %tobool147.not, label %if.end151, label %lor.lhs.false144.err_put_vol_crit_edge

lor.lhs.false144.err_put_vol_crit_edge:           ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_put_vol

err_put_vol:                                      ; preds = %lor.lhs.false158.err_put_vol_crit_edge, %if.end151.err_put_vol_crit_edge, %lor.lhs.false144.err_put_vol_crit_edge, %lor.lhs.false141.err_put_vol_crit_edge, %if.end138.err_put_vol_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call135) #15
  br label %get_ctx_vol_failed

get_ctx_vol_failed:                               ; preds = %err_put_vol, %if.then137
  %207 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %vol_ino, align 8
  %add.ptr.i758 = getelementptr i8, ptr %208, i32 -528
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i758) #15
  br label %iput_volume_failed

if.end151:                                        ; preds = %lor.lhs.false144
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %202, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.87, ptr %data, i32 0, i32 1
  %209 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %209, i32 2)
  %210 = load i16, ptr %value_offset, align 1
  %211 = tail call i16 @llvm.bswap.i16(i16 %210)
  %conv154 = zext i16 %211 to i32
  %add.ptr = getelementptr i8, ptr %202, i32 %conv154
  %cmp156 = icmp ult ptr %add.ptr, %202
  br i1 %cmp156, label %if.end151.err_put_vol_crit_edge, label %lor.lhs.false158

if.end151.err_put_vol_crit_edge:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_put_vol

lor.lhs.false158:                                 ; preds = %if.end151
  %212 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %data, align 1
  %214 = tail call i32 @llvm.bswap.i32(i32 %213)
  %add.ptr161 = getelementptr i8, ptr %add.ptr, i32 %214
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %202, i32 0, i32 1
  %215 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %length, align 1
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  %add.ptr164 = getelementptr i8, ptr %202, i32 %217
  %cmp165 = icmp ugt ptr %add.ptr161, %add.ptr164
  br i1 %cmp165, label %lor.lhs.false158.err_put_vol_crit_edge, label %if.end168

lor.lhs.false158.err_put_vol_crit_edge:           ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_put_vol

if.end168:                                        ; preds = %lor.lhs.false158
  %flags169 = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %add.ptr, i32 0, i32 3
  %218 = ptrtoint ptr %flags169 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %219 = load i16, ptr %flags169, align 1
  %vol_flags = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 43
  %220 = ptrtoint ptr %vol_flags to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %vol_flags, align 4
  %major_ver = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %add.ptr, i32 0, i32 1
  %221 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %major_ver, align 1
  %major_ver170 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  %223 = ptrtoint ptr %major_ver170 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %major_ver170, align 2
  %minor_ver = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %add.ptr, i32 0, i32 2
  %224 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %minor_ver, align 1
  %minor_ver171 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 45
  %226 = ptrtoint ptr %minor_ver171 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %minor_ver171, align 1
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call135) #15
  %227 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vol_ino, align 8
  %add.ptr.i759 = getelementptr i8, ptr %228, i32 -528
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i759) #15
  %229 = ptrtoint ptr %major_ver170 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %major_ver170, align 2
  %conv175 = zext i8 %230 to i32
  %231 = ptrtoint ptr %minor_ver171 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %minor_ver171, align 1
  %conv177 = zext i8 %232 to i32
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %conv175, i32 noundef %conv177) #18
  %233 = ptrtoint ptr %major_ver170 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %major_ver170, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %234)
  %cmp181 = icmp ult i8 %234, 3
  br i1 %cmp181, label %land.lhs.true, label %if.end168.if.end191_crit_edge

if.end168.if.end191_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

land.lhs.true:                                    ; preds = %if.end168
  %flags.i760 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  %235 = ptrtoint ptr %flags.i760 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %flags.i760, align 4
  %237 = and i32 %236, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool184.not = icmp eq i32 %237, 0
  br i1 %tobool184.not, label %land.lhs.true.if.end191_crit_edge, label %if.then185

land.lhs.true.if.end191_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

if.then185:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %238 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %vol, align 8
  %conv188 = zext i8 %234 to i32
  %240 = ptrtoint ptr %minor_ver171 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %minor_ver171, align 1
  %conv190 = zext i8 %241 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %239, ptr noundef nonnull @.str.159, i32 noundef %conv188, i32 noundef %conv190) #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i760) #15
  br label %if.end191

if.end191:                                        ; preds = %if.then185, %land.lhs.true.if.end191_crit_edge, %if.end168.if.end191_crit_edge
  %242 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %vol_flags, align 4
  %conv193 = zext i16 %243 to i32
  %and194 = and i32 %conv193, 10176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end191.if.end226_crit_edge, label %if.then196

if.end191.if.end226_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226

if.then196:                                       ; preds = %if.end191
  %and199 = and i32 %conv193, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.else202, label %if.then196.if.end212_crit_edge

if.then196.if.end212_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end212

if.else202:                                       ; preds = %if.then196
  %and205 = and i32 %conv193, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.else208, label %if.else202.if.end212_crit_edge

if.else202.if.end212_crit_edge:                   ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end212

if.else208:                                       ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #17
  %244 = tail call i16 @llvm.bswap.i16(i16 %243)
  %conv210 = zext i16 %244 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.165, i32 noundef %conv210) #15
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.else202.if.end212_crit_edge, %if.then196.if.end212_crit_edge
  %es1.0 = phi ptr [ @.str.162, %if.else208 ], [ @.str.160, %if.then196.if.end212_crit_edge ], [ @.str.161, %if.else202.if.end212_crit_edge ]
  %es2.0 = phi ptr [ @.str.163, %if.else208 ], [ @.str.163, %if.then196.if.end212_crit_edge ], [ @.str.164, %if.else202.if.end212_crit_edge ]
  %s_flags.i762 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %245 = ptrtoint ptr %s_flags.i762 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %s_flags.i762, align 4
  %and.i763 = and i32 %246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i763)
  %tobool.i764.not = icmp eq i32 %and.i763, 0
  br i1 %tobool.i764.not, label %if.then214, label %if.else223

if.then214:                                       ; preds = %if.end212
  %on_errors215 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %247 = ptrtoint ptr %on_errors215 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %on_errors215, align 1
  %249 = and i8 %248, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool218.not = icmp eq i8 %249, 0
  br i1 %tobool218.not, label %cleanup, label %if.end220

if.end220:                                        ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #17
  %or222 = or i32 %246, 1
  %250 = ptrtoint ptr %s_flags.i762 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %or222, ptr %s_flags.i762, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull %es1.0, ptr noundef nonnull %es2.0) #15
  br label %if.end226

if.else223:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull %es1.0, ptr noundef nonnull %es2.0) #15
  br label %if.end226

cleanup:                                          ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull %es1.0, ptr noundef nonnull %es2.0) #15
  br label %iput_vol_err_out

if.end226:                                        ; preds = %if.else223, %if.end220, %if.end191.if.end226_crit_edge
  %251 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %rp, align 4
  %call227 = call fastcc zeroext i1 @load_and_check_logfile(ptr noundef %vol, ptr noundef nonnull %rp)
  br i1 %call227, label %lor.lhs.false228, label %if.end226.if.then230_crit_edge

if.end226.if.then230_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then230

lor.lhs.false228:                                 ; preds = %if.end226
  %logfile_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 39
  %252 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %logfile_ino, align 8
  %254 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rp, align 4
  %call229 = call zeroext i1 @ntfs_is_logfile_clean(ptr noundef %253, ptr noundef %255) #15
  br i1 %call229, label %lor.lhs.false228.if.end272_crit_edge, label %lor.lhs.false228.if.then230_crit_edge

lor.lhs.false228.if.then230_crit_edge:            ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then230

lor.lhs.false228.if.end272_crit_edge:             ; preds = %lor.lhs.false228
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end272

if.then230:                                       ; preds = %lor.lhs.false228.if.then230_crit_edge, %if.end226.if.then230_crit_edge
  %logfile_ino232 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 39
  %256 = ptrtoint ptr %logfile_ino232 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %logfile_ino232, align 8
  %tobool233.not = icmp eq ptr %257, null
  %.str.167..str.169 = select i1 %tobool233.not, ptr @.str.167, ptr @.str.169
  %s_flags.i765 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %258 = ptrtoint ptr %s_flags.i765 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %s_flags.i765, align 4
  %and.i766 = and i32 %259, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i766)
  %tobool.i767.not = icmp eq i32 %and.i766, 0
  br i1 %tobool.i767.not, label %if.then239, label %if.else267

if.then239:                                       ; preds = %if.then230
  %on_errors240 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %260 = ptrtoint ptr %on_errors240 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %on_errors240, align 1
  %262 = and i8 %261, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool243.not = icmp eq i8 %262, 0
  br i1 %tobool243.not, label %if.then244, label %if.end264

if.then244:                                       ; preds = %if.then239
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull %.str.167..str.169, ptr noundef nonnull @.str.164) #15
  %263 = ptrtoint ptr %logfile_ino232 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %logfile_ino232, align 8
  %tobool246.not = icmp eq ptr %264, null
  br i1 %tobool246.not, label %if.then244.iput_logfile_err_out_crit_edge, label %do.body248

if.then244.iput_logfile_err_out_crit_edge:        ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_logfile_err_out

do.body248:                                       ; preds = %if.then244
  %265 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rp, align 4
  %tobool249.not = icmp eq ptr %266, null
  br i1 %tobool249.not, label %do.body254, label %do.end262, !prof !659

do.body254:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1958, 0\0A.popsection", ""() #15, !srcloc !662
  unreachable

do.end262:                                        ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #17
  call void @kvfree(ptr noundef nonnull %266) #15
  br label %iput_logfile_err_out

if.end264:                                        ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #17
  %or266 = or i32 %259, 1
  %267 = ptrtoint ptr %s_flags.i765 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %or266, ptr %s_flags.i765, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull %.str.167..str.169, ptr noundef nonnull @.str.164) #15
  br label %cleanup269

if.else267:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull %.str.167..str.169, ptr noundef nonnull @.str.164) #15
  br label %cleanup269

cleanup269:                                       ; preds = %if.else267, %if.end264
  %flags.i768 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i768) #15
  br label %if.end272

if.end272:                                        ; preds = %cleanup269, %lor.lhs.false228.if.end272_crit_edge
  %268 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rp, align 4
  call void @kvfree(ptr noundef %269) #15
  %call273 = call ptr @ntfs_iget(ptr noundef %1, i32 noundef 5) #15
  %root_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 46
  %270 = ptrtoint ptr %root_ino to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %call273, ptr %root_ino, align 8
  %cmp.i769 = icmp ugt ptr %call273, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i769, label %if.end272.if.then281_crit_edge, label %lor.lhs.false277

if.end272.if.then281_crit_edge:                   ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then281

lor.lhs.false277:                                 ; preds = %if.end272
  %call279 = call zeroext i1 @is_bad_inode(ptr noundef %call273) #15
  br i1 %call279, label %if.then281thread-pre-split, label %if.end287

if.then281thread-pre-split:                       ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #17
  %271 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %271)
  %.pr810 = load ptr, ptr %root_ino, align 8
  br label %if.then281

if.then281:                                       ; preds = %if.then281thread-pre-split, %if.end272.if.then281_crit_edge
  %272 = phi ptr [ %.pr810, %if.then281thread-pre-split ], [ %call273, %if.end272.if.then281_crit_edge ]
  %cmp.i770 = icmp ugt ptr %272, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i770, label %if.then281.if.end286_crit_edge, label %if.then284

if.then281.if.end286_crit_edge:                   ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end286

if.then284:                                       ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %272) #15
  br label %if.end286

if.end286:                                        ; preds = %if.then284, %if.then281.if.end286_crit_edge
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.171) #15
  br label %iput_logfile_err_out

if.end287:                                        ; preds = %lor.lhs.false277
  %call288 = call fastcc i32 @check_windows_hibernation_status(ptr noundef %vol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.end287.if.end319_crit_edge, label %if.then296, !prof !651

if.end287.if.end319_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end319

if.then296:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %cmp298 = icmp slt i32 %call288, 0
  %.str.173..str.175 = select i1 %cmp298, ptr @.str.173, ptr @.str.175
  %s_flags.i771 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %273 = ptrtoint ptr %s_flags.i771 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %s_flags.i771, align 4
  %and.i772 = and i32 %274, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i772)
  %tobool.i773.not = icmp eq i32 %and.i772, 0
  br i1 %tobool.i773.not, label %if.then305, label %if.else314

if.then305:                                       ; preds = %if.then296
  %on_errors306 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %275 = ptrtoint ptr %on_errors306 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %on_errors306, align 1
  %277 = and i8 %276, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool309.not = icmp eq i8 %277, 0
  br i1 %tobool309.not, label %cleanup316, label %if.end311

if.end311:                                        ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #17
  %or313 = or i32 %274, 1
  %278 = ptrtoint ptr %s_flags.i771 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %or313, ptr %s_flags.i771, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull %.str.173..str.175, ptr noundef nonnull @.str.177) #15
  br label %cleanup316.thread

if.else314:                                       ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull %.str.173..str.175, ptr noundef nonnull @.str.177) #15
  br label %cleanup316.thread

cleanup316.thread:                                ; preds = %if.else314, %if.end311
  %flags.i774 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i774) #15
  br label %if.end319

cleanup316:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull %.str.173..str.175, ptr noundef nonnull @.str.177) #15
  br label %iput_root_err_out

if.end319:                                        ; preds = %cleanup316.thread, %if.end287.if.end319_crit_edge
  %s_flags.i775 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %279 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %s_flags.i775, align 4
  %and.i776 = and i32 %280, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i776)
  %tobool.i777.not = icmp eq i32 %and.i776, 0
  br i1 %tobool.i777.not, label %land.lhs.true321, label %if.end319.if.end333_crit_edge

if.end319.if.end333_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end333

land.lhs.true321:                                 ; preds = %if.end319
  %281 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %vol_flags, align 4
  %283 = or i16 %282, 256
  %call.i778 = call fastcc i32 @ntfs_write_volume_flags(ptr noundef %vol, i16 noundef zeroext %283) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i778)
  %tobool323.not = icmp eq i32 %call.i778, 0
  br i1 %tobool323.not, label %land.lhs.true321.if.end333_crit_edge, label %if.then324

land.lhs.true321.if.end333_crit_edge:             ; preds = %land.lhs.true321
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end333

if.then324:                                       ; preds = %land.lhs.true321
  %on_errors325 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %284 = ptrtoint ptr %on_errors325 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %on_errors325, align 1
  %286 = and i8 %285, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool328.not = icmp eq i8 %286, 0
  br i1 %tobool328.not, label %if.then329, label %if.end330

if.then329:                                       ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177) #15
  br label %iput_root_err_out

if.end330:                                        ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177) #15
  %287 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %s_flags.i775, align 4
  %or332 = or i32 %288, 1
  store i32 %or332, ptr %s_flags.i775, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.end330, %land.lhs.true321.if.end333_crit_edge, %if.end319.if.end333_crit_edge
  %289 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %s_flags.i775, align 4
  %and.i780 = and i32 %290, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i780)
  %tobool.i781.not = icmp eq i32 %and.i780, 0
  br i1 %tobool.i781.not, label %land.lhs.true335, label %if.end333.if.end347_crit_edge

if.end333.if.end347_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end347

land.lhs.true335:                                 ; preds = %if.end333
  %logfile_ino336 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 39
  %291 = ptrtoint ptr %logfile_ino336 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %logfile_ino336, align 8
  %call337 = call zeroext i1 @ntfs_empty_logfile(ptr noundef %292) #15
  br i1 %call337, label %land.lhs.true335.if.end347_crit_edge, label %if.then338

land.lhs.true335.if.end347_crit_edge:             ; preds = %land.lhs.true335
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end347

if.then338:                                       ; preds = %land.lhs.true335
  %on_errors339 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %293 = ptrtoint ptr %on_errors339 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %on_errors339, align 1
  %295 = and i8 %294, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool342.not = icmp eq i8 %295, 0
  br i1 %tobool342.not, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.164) #15
  br label %iput_root_err_out

if.end344:                                        ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.164) #15
  %296 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %s_flags.i775, align 4
  %or346 = or i32 %297, 1
  store i32 %or346, ptr %s_flags.i775, align 4
  %flags.i782 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i782) #15
  br label %if.end347

if.end347:                                        ; preds = %if.end344, %land.lhs.true335.if.end347_crit_edge, %if.end333.if.end347_crit_edge
  %298 = ptrtoint ptr %major_ver170 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %major_ver170, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %299)
  %cmp350 = icmp ult i8 %299, 3
  br i1 %cmp350, label %if.end347.cleanup470_crit_edge, label %if.end359, !prof !659

if.end347.cleanup470_crit_edge:                   ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup470

if.end359:                                        ; preds = %if.end347
  %call360 = call ptr @ntfs_iget(ptr noundef %1, i32 noundef 9) #15
  %secure_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 47
  %300 = ptrtoint ptr %secure_ino to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %call360, ptr %secure_ino, align 4
  %cmp.i783 = icmp ugt ptr %call360, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i783, label %if.end359.if.then368_crit_edge, label %lor.lhs.false364

if.end359.if.then368_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then368

lor.lhs.false364:                                 ; preds = %if.end359
  %call366 = call zeroext i1 @is_bad_inode(ptr noundef %call360) #15
  br i1 %call366, label %if.then368thread-pre-split, label %if.end374

if.then368thread-pre-split:                       ; preds = %lor.lhs.false364
  call void @__sanitizer_cov_trace_pc() #17
  %301 = ptrtoint ptr %secure_ino to i32
  call void @__asan_load4_noabort(i32 %301)
  %.pr812 = load ptr, ptr %secure_ino, align 4
  br label %if.then368

if.then368:                                       ; preds = %if.then368thread-pre-split, %if.end359.if.then368_crit_edge
  %302 = phi ptr [ %.pr812, %if.then368thread-pre-split ], [ %call360, %if.end359.if.then368_crit_edge ]
  %cmp.i784 = icmp ugt ptr %302, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i784, label %if.then368.if.end373_crit_edge, label %if.then371

if.then368.if.end373_crit_edge:                   ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end373

if.then371:                                       ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %302) #15
  br label %if.end373

if.end373:                                        ; preds = %if.then371, %if.then368.if.end373_crit_edge
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.184) #15
  br label %iput_root_err_out

if.end374:                                        ; preds = %lor.lhs.false364
  %call375 = call ptr @ntfs_iget(ptr noundef %1, i32 noundef 11) #15
  %extend_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 48
  %303 = ptrtoint ptr %extend_ino to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call375, ptr %extend_ino, align 8
  %cmp.i785 = icmp ugt ptr %call375, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i785, label %if.end374.if.then383_crit_edge, label %lor.lhs.false379

if.end374.if.then383_crit_edge:                   ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then383

lor.lhs.false379:                                 ; preds = %if.end374
  %call381 = call zeroext i1 @is_bad_inode(ptr noundef %call375) #15
  br i1 %call381, label %if.then383thread-pre-split, label %if.end389

if.then383thread-pre-split:                       ; preds = %lor.lhs.false379
  call void @__sanitizer_cov_trace_pc() #17
  %304 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %304)
  %.pr813 = load ptr, ptr %extend_ino, align 8
  br label %if.then383

if.then383:                                       ; preds = %if.then383thread-pre-split, %if.end374.if.then383_crit_edge
  %305 = phi ptr [ %.pr813, %if.then383thread-pre-split ], [ %call375, %if.end374.if.then383_crit_edge ]
  %cmp.i786 = icmp ugt ptr %305, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i786, label %if.then383.if.end388_crit_edge, label %if.then386

if.then383.if.end388_crit_edge:                   ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end388

if.then386:                                       ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %305) #15
  br label %if.end388

if.end388:                                        ; preds = %if.then386, %if.then383.if.end388_crit_edge
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.185) #15
  br label %iput_sec_err_out

if.end389:                                        ; preds = %lor.lhs.false379
  %call390 = call fastcc zeroext i1 @load_and_init_quota(ptr noundef %vol)
  br i1 %call390, label %if.end389.if.end404_crit_edge, label %if.then391

if.end389.if.end404_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end404

if.then391:                                       ; preds = %if.end389
  %306 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %s_flags.i775, align 4
  %and.i788 = and i32 %307, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i788)
  %tobool.i789.not = icmp eq i32 %and.i788, 0
  br i1 %tobool.i789.not, label %if.then393, label %if.else402

if.then393:                                       ; preds = %if.then391
  %on_errors394 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %308 = ptrtoint ptr %on_errors394 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %on_errors394, align 1
  %310 = and i8 %309, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool397.not = icmp eq i8 %310, 0
  br i1 %tobool397.not, label %if.then398, label %if.end399

if.then398:                                       ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.177) #15
  br label %iput_quota_err_out

if.end399:                                        ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #17
  %or401 = or i32 %307, 1
  %311 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %or401, ptr %s_flags.i775, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.177) #15
  br label %if.end403

if.else402:                                       ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.177) #15
  br label %if.end403

if.end403:                                        ; preds = %if.else402, %if.end399
  %flags.i790 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i790) #15
  br label %if.end404

if.end404:                                        ; preds = %if.end403, %if.end389.if.end404_crit_edge
  %312 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %s_flags.i775, align 4
  %and.i792 = and i32 %313, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792)
  %tobool.i793.not = icmp eq i32 %and.i792, 0
  br i1 %tobool.i793.not, label %land.lhs.true406, label %if.end404.if.end417_crit_edge

if.end404.if.end417_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

land.lhs.true406:                                 ; preds = %if.end404
  %call407 = call zeroext i1 @ntfs_mark_quotas_out_of_date(ptr noundef %vol) #15
  br i1 %call407, label %land.lhs.true406.if.end417_crit_edge, label %if.then408

land.lhs.true406.if.end417_crit_edge:             ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

if.then408:                                       ; preds = %land.lhs.true406
  %on_errors409 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %314 = ptrtoint ptr %on_errors409 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %on_errors409, align 1
  %316 = and i8 %315, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool412.not = icmp eq i8 %316, 0
  br i1 %tobool412.not, label %if.then413, label %if.end414

if.then413:                                       ; preds = %if.then408
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.177) #15
  br label %iput_quota_err_out

if.end414:                                        ; preds = %if.then408
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.177) #15
  %317 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %s_flags.i775, align 4
  %or416 = or i32 %318, 1
  store i32 %or416, ptr %s_flags.i775, align 4
  %flags.i794 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i794) #15
  br label %if.end417

if.end417:                                        ; preds = %if.end414, %land.lhs.true406.if.end417_crit_edge, %if.end404.if.end417_crit_edge
  %call418 = call fastcc zeroext i1 @load_and_init_usnjrnl(ptr noundef %vol)
  br i1 %call418, label %if.end417.if.end432_crit_edge, label %if.then419

if.end417.if.end432_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end432

if.then419:                                       ; preds = %if.end417
  %319 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %s_flags.i775, align 4
  %and.i796 = and i32 %320, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i796)
  %tobool.i797.not = icmp eq i32 %and.i796, 0
  br i1 %tobool.i797.not, label %if.then421, label %if.else430

if.then421:                                       ; preds = %if.then419
  %on_errors422 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %321 = ptrtoint ptr %on_errors422 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %on_errors422, align 1
  %323 = and i8 %322, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool425.not = icmp eq i8 %323, 0
  br i1 %tobool425.not, label %if.then421.iput_usnjrnl_err_out_crit_edge, label %if.end427

if.then421.iput_usnjrnl_err_out_crit_edge:        ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_usnjrnl_err_out

if.end427:                                        ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #17
  %or429 = or i32 %320, 1
  %324 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %or429, ptr %s_flags.i775, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.177) #15
  br label %if.end431

if.else430:                                       ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.177) #15
  br label %if.end431

if.end431:                                        ; preds = %if.else430, %if.end427
  %flags.i798 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i798) #15
  br label %if.end432

if.end432:                                        ; preds = %if.end431, %if.end417.if.end432_crit_edge
  %325 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %s_flags.i775, align 4
  %and.i800 = and i32 %326, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i800)
  %tobool.i801.not = icmp eq i32 %and.i800, 0
  br i1 %tobool.i801.not, label %land.lhs.true434, label %if.end432.cleanup470_crit_edge

if.end432.cleanup470_crit_edge:                   ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup470

land.lhs.true434:                                 ; preds = %if.end432
  %call435 = call zeroext i1 @ntfs_stamp_usnjrnl(ptr noundef %vol) #15
  br i1 %call435, label %land.lhs.true434.cleanup470_crit_edge, label %if.then436

land.lhs.true434.cleanup470_crit_edge:            ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup470

if.then436:                                       ; preds = %land.lhs.true434
  %on_errors437 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 8
  %327 = ptrtoint ptr %on_errors437 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %on_errors437, align 1
  %329 = and i8 %328, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool440.not = icmp eq i8 %329, 0
  br i1 %tobool440.not, label %if.then436.iput_usnjrnl_err_out_crit_edge, label %if.end442

if.then436.iput_usnjrnl_err_out_crit_edge:        ; preds = %if.then436
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_usnjrnl_err_out

if.end442:                                        ; preds = %if.then436
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.177) #15
  %330 = ptrtoint ptr %s_flags.i775 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %s_flags.i775, align 4
  %or444 = or i32 %331, 1
  store i32 %or444, ptr %s_flags.i775, align 4
  %flags.i802 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i802) #15
  br label %cleanup470

iput_usnjrnl_err_out:                             ; preds = %if.then436.iput_usnjrnl_err_out_crit_edge, %if.then421.iput_usnjrnl_err_out_crit_edge
  %.str.196.sink = phi ptr [ @.str.193, %if.then421.iput_usnjrnl_err_out_crit_edge ], [ @.str.196, %if.then436.iput_usnjrnl_err_out_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %1, ptr noundef nonnull @.str.147, ptr noundef nonnull %.str.196.sink, ptr noundef nonnull @.str.177) #15
  %usnjrnl_j_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 53
  %332 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %usnjrnl_j_ino, align 4
  call void @iput(ptr noundef %333) #15
  %usnjrnl_max_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 52
  %334 = ptrtoint ptr %usnjrnl_max_ino to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %usnjrnl_max_ino, align 8
  call void @iput(ptr noundef %335) #15
  %usnjrnl_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 51
  %336 = ptrtoint ptr %usnjrnl_ino to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %usnjrnl_ino, align 4
  call void @iput(ptr noundef %337) #15
  br label %iput_quota_err_out

iput_quota_err_out:                               ; preds = %iput_usnjrnl_err_out, %if.then413, %if.then398
  %quota_q_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 50
  %338 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %quota_q_ino, align 8
  call void @iput(ptr noundef %339) #15
  %quota_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 49
  %340 = ptrtoint ptr %quota_ino to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %quota_ino, align 4
  call void @iput(ptr noundef %341) #15
  %342 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %extend_ino, align 8
  call void @iput(ptr noundef %343) #15
  br label %iput_sec_err_out

iput_sec_err_out:                                 ; preds = %iput_quota_err_out, %if.end388
  %344 = ptrtoint ptr %secure_ino to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %secure_ino, align 4
  call void @iput(ptr noundef %345) #15
  br label %iput_root_err_out

iput_root_err_out:                                ; preds = %iput_sec_err_out, %if.end373, %if.then343, %if.then329, %cleanup316
  %346 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %root_ino, align 8
  call void @iput(ptr noundef %347) #15
  br label %iput_logfile_err_out

iput_logfile_err_out:                             ; preds = %iput_root_err_out, %if.end286, %do.end262, %if.then244.iput_logfile_err_out_crit_edge
  %logfile_ino449 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 39
  %348 = ptrtoint ptr %logfile_ino449 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %logfile_ino449, align 8
  call void @iput(ptr noundef %349) #15
  br label %iput_vol_err_out

iput_vol_err_out:                                 ; preds = %iput_logfile_err_out, %cleanup
  %350 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %vol_ino, align 8
  call void @iput(ptr noundef %351) #15
  br label %iput_lcnbmp_err_out

iput_lcnbmp_err_out:                              ; preds = %iput_vol_err_out, %volume_failed
  %352 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %lcnbmp_ino, align 4
  call void @iput(ptr noundef %353) #15
  br label %iput_attrdef_err_out

iput_attrdef_err_out:                             ; preds = %iput_lcnbmp_err_out, %bitmap_failed
  %354 = ptrtoint ptr %attrdef_size.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 0, ptr %attrdef_size.i, align 8
  %355 = ptrtoint ptr %attrdef.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %attrdef.i, align 4
  %tobool452.not = icmp eq ptr %356, null
  br i1 %tobool452.not, label %iput_attrdef_err_out.iput_upcase_err_out_crit_edge, label %if.then453

iput_attrdef_err_out.iput_upcase_err_out_crit_edge: ; preds = %iput_attrdef_err_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_upcase_err_out

if.then453:                                       ; preds = %iput_attrdef_err_out
  call void @__sanitizer_cov_trace_pc() #17
  call void @kvfree(ptr noundef nonnull %356) #15
  %357 = ptrtoint ptr %attrdef.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr null, ptr %attrdef.i, align 4
  br label %iput_upcase_err_out

iput_upcase_err_out:                              ; preds = %if.then453, %iput_attrdef_err_out.iput_upcase_err_out_crit_edge, %load_and_init_attrdef.exit
  %upcase_len = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 24
  %358 = ptrtoint ptr %upcase_len to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 0, ptr %upcase_len, align 8
  call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %upcase = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 25
  %359 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %upcase, align 4
  %361 = load ptr, ptr @default_upcase, align 4
  %cmp457 = icmp eq ptr %360, %361
  br i1 %cmp457, label %if.then459, label %iput_upcase_err_out.if.end461_crit_edge

iput_upcase_err_out.if.end461_crit_edge:          ; preds = %iput_upcase_err_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end461

if.then459:                                       ; preds = %iput_upcase_err_out
  call void @__sanitizer_cov_trace_pc() #17
  %362 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %dec = add i32 %362, -1
  store i32 %dec, ptr @ntfs_nr_upcase_users, align 4
  %363 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr null, ptr %upcase, align 4
  br label %if.end461

if.end461:                                        ; preds = %if.then459, %iput_upcase_err_out.if.end461_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  %364 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %upcase, align 4
  %tobool463.not = icmp eq ptr %365, null
  br i1 %tobool463.not, label %if.end461.iput_mftbmp_err_out_crit_edge, label %if.then464

if.end461.iput_mftbmp_err_out_crit_edge:          ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #17
  br label %iput_mftbmp_err_out

if.then464:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #17
  call void @kvfree(ptr noundef nonnull %365) #15
  %366 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr null, ptr %upcase, align 4
  br label %iput_mftbmp_err_out

iput_mftbmp_err_out:                              ; preds = %if.then464, %if.end461.iput_mftbmp_err_out_crit_edge, %load_and_init_upcase.exit
  %367 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %mftbmp_ino, align 4
  call void @iput(ptr noundef %368) #15
  br label %iput_mirr_err_out

iput_mirr_err_out:                                ; preds = %iput_mftbmp_err_out, %if.then24, %if.then5
  %mftmirr_ino469 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 37
  %369 = ptrtoint ptr %mftmirr_ino469 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %mftmirr_ino469, align 8
  call void @iput(ptr noundef %370) #15
  br label %cleanup470

cleanup470:                                       ; preds = %iput_mirr_err_out, %if.end442, %land.lhs.true434.cleanup470_crit_edge, %if.end432.cleanup470_crit_edge, %if.end347.cleanup470_crit_edge
  %retval.0 = phi i1 [ false, %iput_mirr_err_out ], [ true, %if.end347.cleanup470_crit_edge ], [ true, %if.end442 ], [ true, %land.lhs.true434.cleanup470_crit_edge ], [ true, %if.end432.cleanup470_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rp) #15
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_compression_buffers() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @simple_getbool(ptr noundef readonly %s, ptr nocapture noundef writeonly %setval) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return.sink.split_crit_edge, label %if.then

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(2) @.str.67) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.return.sink.split_crit_edge, label %lor.lhs.false

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(4) @.str.68) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.return.sink.split_crit_edge, label %lor.lhs.false4

lor.lhs.false.return.sink.split_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(5) @.str.69) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false4.return.sink.split_crit_edge, label %if.else

lor.lhs.false4.return.sink.split_crit_edge:       ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

if.else:                                          ; preds = %lor.lhs.false4
  %call8 = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(2) @.str.70) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.return.sink.split_crit_edge, label %lor.lhs.false10

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

lor.lhs.false10:                                  ; preds = %if.else
  %call11 = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(3) @.str.71) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false10.return.sink.split_crit_edge, label %lor.lhs.false13

lor.lhs.false10.return.sink.split_crit_edge:      ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(6) @.str.72) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false13.return.sink.split_crit_edge, label %lor.lhs.false13.return_crit_edge

lor.lhs.false13.return_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false13.return.sink.split_crit_edge:      ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

return.sink.split:                                ; preds = %lor.lhs.false13.return.sink.split_crit_edge, %lor.lhs.false10.return.sink.split_crit_edge, %if.else.return.sink.split_crit_edge, %lor.lhs.false4.return.sink.split_crit_edge, %lor.lhs.false.return.sink.split_crit_edge, %if.then.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i8 [ 1, %lor.lhs.false4.return.sink.split_crit_edge ], [ 1, %lor.lhs.false.return.sink.split_crit_edge ], [ 1, %if.then.return.sink.split_crit_edge ], [ 0, %lor.lhs.false13.return.sink.split_crit_edge ], [ 0, %lor.lhs.false10.return.sink.split_crit_edge ], [ 0, %if.else.return.sink.split_crit_edge ], [ 1, %entry.return.sink.split_crit_edge ]
  %0 = ptrtoint ptr %setval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %.sink, ptr %setval, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false13.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false13.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %sb, ptr noundef readonly %b, i1 noundef zeroext %silent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %checksum = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 12
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %checksum, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %brmerge = or i1 %tobool.not, %silent
  br i1 %brmerge, label %entry.if.end9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0127 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %u.0126 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %b, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %u.0126 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u.0126, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %add = add i32 %4, %i.0127
  %incdec.ptr = getelementptr i32, ptr %u.0126, i32 1
  %cmp5 = icmp ult ptr %incdec.ptr, %checksum
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %5 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp7.not = icmp eq i32 %5, %add
  br i1 %cmp7.not, label %for.end.if.end9_crit_edge, label %if.then8

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.is_boot_sector_ntfs, ptr noundef %sb, ptr noundef nonnull @.str.83) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %oem_id = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 1
  %6 = ptrtoint ptr %oem_id to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %oem_id, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 5644213555837280288, i64 %7)
  %cmp10.not = icmp eq i64 %7, 5644213555837280288
  br i1 %cmp10.not, label %if.end12, label %if.end9.return_crit_edge

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end12:                                         ; preds = %if.end9
  %bpb = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2
  %8 = ptrtoint ptr %bpb to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %bpb, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = add i16 %10, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3841, i16 %11)
  %12 = icmp ult i16 %11, -3841
  br i1 %12, label %if.end12.return_crit_edge, label %if.end21

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end21:                                         ; preds = %if.end12
  %sectors_per_cluster = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %sectors_per_cluster to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sectors_per_cluster, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.267)
  switch i8 %14, label %if.end21.return_crit_edge [
    i8 1, label %if.end21.sw.epilog_crit_edge
    i8 2, label %if.end21.sw.epilog_crit_edge128
    i8 4, label %if.end21.sw.epilog_crit_edge129
    i8 8, label %if.end21.sw.epilog_crit_edge130
    i8 16, label %if.end21.sw.epilog_crit_edge131
    i8 32, label %if.end21.sw.epilog_crit_edge132
    i8 64, label %if.end21.sw.epilog_crit_edge133
    i8 -128, label %if.end21.sw.epilog_crit_edge134
  ]

if.end21.sw.epilog_crit_edge134:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge133:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge132:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge131:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge130:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge129:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge128:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.epilog:                                        ; preds = %if.end21.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge128, %if.end21.sw.epilog_crit_edge129, %if.end21.sw.epilog_crit_edge130, %if.end21.sw.epilog_crit_edge131, %if.end21.sw.epilog_crit_edge132, %if.end21.sw.epilog_crit_edge133, %if.end21.sw.epilog_crit_edge134
  %conv26 = zext i16 %10 to i32
  %conv29 = zext i8 %14 to i32
  %mul = mul nuw nsw i32 %conv29, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul)
  %cmp30 = icmp ugt i32 %mul, 65536
  br i1 %cmp30, label %sw.epilog.return_crit_edge, label %if.end33

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end33:                                         ; preds = %sw.epilog
  %reserved_sectors = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %reserved_sectors to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %reserved_sectors, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool36.not = icmp eq i16 %17, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end33.return_crit_edge

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false37:                                  ; preds = %if.end33
  %root_entries = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %root_entries to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %root_entries, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool40.not = icmp eq i16 %19, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false37.return_crit_edge

lor.lhs.false37.return_crit_edge:                 ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %sectors = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 5
  %20 = ptrtoint ptr %sectors to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %sectors, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool44.not = icmp eq i16 %21, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false41.return_crit_edge

lor.lhs.false41.return_crit_edge:                 ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %sectors_per_fat = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %sectors_per_fat to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %sectors_per_fat, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool48.not = icmp eq i16 %23, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false45.return_crit_edge

lor.lhs.false45.return_crit_edge:                 ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %large_sectors = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 11
  %24 = ptrtoint ptr %large_sectors to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %large_sectors, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool51.not = icmp eq i32 %25, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false49.return_crit_edge

lor.lhs.false49.return_crit_edge:                 ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %fats = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %fats to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fats, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool55.not = icmp eq i8 %27, 0
  br i1 %tobool55.not, label %if.end57, label %lor.lhs.false52.return_crit_edge

lor.lhs.false52.return_crit_edge:                 ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end57:                                         ; preds = %lor.lhs.false52
  %clusters_per_mft_record = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 7
  %28 = ptrtoint ptr %clusters_per_mft_record to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %clusters_per_mft_record, align 1
  %30 = add i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %30)
  %31 = icmp ult i8 %30, -23
  br i1 %31, label %if.then66, label %if.end57.if.end72_crit_edge

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66:                                        ; preds = %if.end57
  %conv68 = sext i8 %29 to i32
  %32 = zext i32 %conv68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %conv68, label %if.then66.return_crit_edge [
    i32 1, label %if.then66.if.end72_crit_edge
    i32 2, label %if.then66.if.end72_crit_edge135
    i32 4, label %if.then66.if.end72_crit_edge136
    i32 8, label %if.then66.if.end72_crit_edge137
    i32 16, label %if.then66.if.end72_crit_edge138
    i32 32, label %if.then66.if.end72_crit_edge139
    i32 64, label %if.then66.if.end72_crit_edge140
  ]

if.then66.if.end72_crit_edge140:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.if.end72_crit_edge139:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.if.end72_crit_edge138:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.if.end72_crit_edge137:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.if.end72_crit_edge136:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.if.end72_crit_edge135:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then66.return_crit_edge:                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end72:                                         ; preds = %if.then66.if.end72_crit_edge, %if.then66.if.end72_crit_edge135, %if.then66.if.end72_crit_edge136, %if.then66.if.end72_crit_edge137, %if.then66.if.end72_crit_edge138, %if.then66.if.end72_crit_edge139, %if.then66.if.end72_crit_edge140, %if.end57.if.end72_crit_edge
  %clusters_per_index_record = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 9
  %33 = ptrtoint ptr %clusters_per_index_record to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %clusters_per_index_record, align 1
  %35 = add i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %35)
  %36 = icmp ult i8 %35, -23
  br i1 %36, label %if.then81, label %if.end72.if.end87_crit_edge

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81:                                        ; preds = %if.end72
  %conv83 = sext i8 %34 to i32
  %37 = zext i32 %conv83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %conv83, label %if.then81.return_crit_edge [
    i32 1, label %if.then81.if.end87_crit_edge
    i32 2, label %if.then81.if.end87_crit_edge141
    i32 4, label %if.then81.if.end87_crit_edge142
    i32 8, label %if.then81.if.end87_crit_edge143
    i32 16, label %if.then81.if.end87_crit_edge144
    i32 32, label %if.then81.if.end87_crit_edge145
    i32 64, label %if.then81.if.end87_crit_edge146
  ]

if.then81.if.end87_crit_edge146:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.if.end87_crit_edge145:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.if.end87_crit_edge144:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.if.end87_crit_edge143:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.if.end87_crit_edge142:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.if.end87_crit_edge141:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then81.return_crit_edge:                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end87:                                         ; preds = %if.then81.if.end87_crit_edge, %if.then81.if.end87_crit_edge141, %if.then81.if.end87_crit_edge142, %if.then81.if.end87_crit_edge143, %if.then81.if.end87_crit_edge144, %if.then81.if.end87_crit_edge145, %if.then81.if.end87_crit_edge146, %if.end72.if.end87_crit_edge
  br i1 %silent, label %if.end87.return_crit_edge, label %land.lhs.true89

if.end87.return_crit_edge:                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true89:                                  ; preds = %if.end87
  %end_of_sector_marker = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %b, i32 0, i32 14
  %38 = ptrtoint ptr %end_of_sector_marker to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %end_of_sector_marker, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %39)
  %cmp91.not = icmp eq i16 %39, 21930
  br i1 %cmp91.not, label %land.lhs.true89.return_crit_edge, label %if.then93

land.lhs.true89.return_crit_edge:                 ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then93:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.is_boot_sector_ntfs, ptr noundef %sb, ptr noundef nonnull @.str.84) #15
  br label %return

return:                                           ; preds = %if.then93, %land.lhs.true89.return_crit_edge, %if.end87.return_crit_edge, %if.then81.return_crit_edge, %if.then66.return_crit_edge, %lor.lhs.false52.return_crit_edge, %lor.lhs.false49.return_crit_edge, %lor.lhs.false45.return_crit_edge, %lor.lhs.false41.return_crit_edge, %lor.lhs.false37.return_crit_edge, %if.end33.return_crit_edge, %sw.epilog.return_crit_edge, %if.end21.return_crit_edge, %if.end12.return_crit_edge, %if.end9.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then93 ], [ true, %land.lhs.true89.return_crit_edge ], [ true, %if.end87.return_crit_edge ], [ false, %if.then81.return_crit_edge ], [ false, %if.then66.return_crit_edge ], [ false, %if.end33.return_crit_edge ], [ false, %lor.lhs.false37.return_crit_edge ], [ false, %lor.lhs.false41.return_crit_edge ], [ false, %lor.lhs.false45.return_crit_edge ], [ false, %lor.lhs.false49.return_crit_edge ], [ false, %lor.lhs.false52.return_crit_edge ], [ false, %sw.epilog.return_crit_edge ], [ false, %if.end21.return_crit_edge ], [ false, %if.end12.return_crit_edge ], [ false, %if.end9.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_alloc_big_inode(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_free_big_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_write_inode(ptr noundef %vi, ptr nocapture noundef readonly %wbc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call i32 @__ntfs_write_inode(ptr noundef %vi, i32 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_evict_big_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_put_super(ptr noundef %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2252, ptr noundef nonnull @__func__.ntfs_put_super, ptr noundef nonnull @.str.11) #15
  %vol_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol_ino, align 8
  %call.i = tail call zeroext i1 @is_bad_inode(ptr noundef %3) #15
  br i1 %call.i, label %entry.ntfs_commit_inode.exit_crit_edge, label %if.then.i

entry.ntfs_commit_inode.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @__ntfs_write_inode(ptr noundef %3, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit

ntfs_commit_inode.exit:                           ; preds = %if.then.i, %entry.ntfs_commit_inode.exit_crit_edge
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.then, label %ntfs_commit_inode.exit.if.end28_crit_edge

ntfs_commit_inode.exit.if.end28_crit_edge:        ; preds = %ntfs_commit_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then:                                          ; preds = %ntfs_commit_inode.exit
  %usnjrnl_j_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 53
  %6 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usnjrnl_j_ino, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  %call.i282 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %7) #15
  br i1 %call.i282, label %if.then2.if.end_crit_edge, label %if.then.i284

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i284:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i283 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %7, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i284, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %usnjrnl_max_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 52
  %8 = ptrtoint ptr %usnjrnl_max_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usnjrnl_max_ino, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %call.i286 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %9) #15
  br i1 %call.i286, label %if.then5.if.end7_crit_edge, label %if.then.i288

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then.i288:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i287 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %9, i32 noundef 1) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then.i288, %if.then5.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %usnjrnl_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 51
  %10 = ptrtoint ptr %usnjrnl_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usnjrnl_ino, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  %call.i290 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %11) #15
  br i1 %call.i290, label %if.then9.if.end11_crit_edge, label %if.then.i292

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then.i292:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i291 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %11, i32 noundef 1) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then.i292, %if.then9.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %quota_q_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 50
  %12 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %quota_q_ino, align 8
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  %call.i294 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %13) #15
  br i1 %call.i294, label %if.then13.if.end15_crit_edge, label %if.then.i296

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then.i296:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i295 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %13, i32 noundef 1) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then.i296, %if.then13.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %quota_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 49
  %14 = ptrtoint ptr %quota_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %quota_ino, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  %call.i298 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %15) #15
  br i1 %call.i298, label %if.then17.if.end19_crit_edge, label %if.then.i300

if.then17.if.end19_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then.i300:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i299 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %15, i32 noundef 1) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then.i300, %if.then17.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %extend_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 48
  %16 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extend_ino, align 8
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  %call.i302 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %17) #15
  br i1 %call.i302, label %if.then21.if.end23_crit_edge, label %if.then.i304

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i304:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i303 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %17, i32 noundef 1) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then.i304, %if.then21.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %secure_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 47
  %18 = ptrtoint ptr %secure_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %secure_ino, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  %call.i306 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %19) #15
  br i1 %call.i306, label %if.then25.if.end28_crit_edge, label %if.then.i308

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then.i308:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i307 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %19, i32 noundef 1) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then.i308, %if.then25.if.end28_crit_edge, %if.end23.if.end28_crit_edge, %ntfs_commit_inode.exit.if.end28_crit_edge
  %root_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 46
  %20 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root_ino, align 8
  %call.i310 = tail call zeroext i1 @is_bad_inode(ptr noundef %21) #15
  br i1 %call.i310, label %if.end28.ntfs_commit_inode.exit313_crit_edge, label %if.then.i312

if.end28.ntfs_commit_inode.exit313_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit313

if.then.i312:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i311 = tail call i32 @__ntfs_write_inode(ptr noundef %21, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit313

ntfs_commit_inode.exit313:                        ; preds = %if.then.i312, %if.end28.ntfs_commit_inode.exit313_crit_edge
  %lcnbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock) #15
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 40
  %22 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lcnbmp_ino, align 4
  %call.i314 = tail call zeroext i1 @is_bad_inode(ptr noundef %23) #15
  br i1 %call.i314, label %ntfs_commit_inode.exit313.ntfs_commit_inode.exit317_crit_edge, label %if.then.i316

ntfs_commit_inode.exit313.ntfs_commit_inode.exit317_crit_edge: ; preds = %ntfs_commit_inode.exit313
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit317

if.then.i316:                                     ; preds = %ntfs_commit_inode.exit313
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i315 = tail call i32 @__ntfs_write_inode(ptr noundef %23, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit317

ntfs_commit_inode.exit317:                        ; preds = %if.then.i316, %ntfs_commit_inode.exit313.ntfs_commit_inode.exit317_crit_edge
  tail call void @up_write(ptr noundef %lcnbmp_lock) #15
  %mftbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 36
  tail call void @down_write(ptr noundef %mftbmp_lock) #15
  %mftbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mftbmp_ino, align 4
  %call.i318 = tail call zeroext i1 @is_bad_inode(ptr noundef %25) #15
  br i1 %call.i318, label %ntfs_commit_inode.exit317.ntfs_commit_inode.exit321_crit_edge, label %if.then.i320

ntfs_commit_inode.exit317.ntfs_commit_inode.exit321_crit_edge: ; preds = %ntfs_commit_inode.exit317
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit321

if.then.i320:                                     ; preds = %ntfs_commit_inode.exit317
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i319 = tail call i32 @__ntfs_write_inode(ptr noundef %25, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit321

ntfs_commit_inode.exit321:                        ; preds = %if.then.i320, %ntfs_commit_inode.exit317.ntfs_commit_inode.exit321_crit_edge
  tail call void @up_write(ptr noundef %mftbmp_lock) #15
  %logfile_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 39
  %26 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %logfile_ino, align 8
  %tobool31.not = icmp eq ptr %27, null
  br i1 %tobool31.not, label %ntfs_commit_inode.exit321.if.end34_crit_edge, label %if.then32

ntfs_commit_inode.exit321.if.end34_crit_edge:     ; preds = %ntfs_commit_inode.exit321
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then32:                                        ; preds = %ntfs_commit_inode.exit321
  %call.i322 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %27) #15
  br i1 %call.i322, label %if.then32.if.end34_crit_edge, label %if.then.i324

if.then32.if.end34_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then.i324:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i323 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %27, i32 noundef 1) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then.i324, %if.then32.if.end34_crit_edge, %ntfs_commit_inode.exit321.if.end34_crit_edge
  %mftmirr_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 37
  %28 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mftmirr_ino, align 8
  %tobool35.not = icmp eq ptr %29, null
  br i1 %tobool35.not, label %if.end34.if.end38_crit_edge, label %if.then36

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  %call.i326 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %29) #15
  br i1 %call.i326, label %if.then36.if.end38_crit_edge, label %if.then.i328

if.then36.if.end38_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then.i328:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i327 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %29, i32 noundef 1) #15
  br label %if.end38

if.end38:                                         ; preds = %if.then.i328, %if.then36.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 34
  %30 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mft_ino, align 8
  %call.i330 = tail call zeroext i1 @is_bad_inode(ptr noundef %31) #15
  br i1 %call.i330, label %if.end38.ntfs_commit_inode.exit333_crit_edge, label %if.then.i332

if.end38.ntfs_commit_inode.exit333_crit_edge:     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit333

if.then.i332:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i331 = tail call i32 @__ntfs_write_inode(ptr noundef %31, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit333

ntfs_commit_inode.exit333:                        ; preds = %if.then.i332, %if.end38.ntfs_commit_inode.exit333_crit_edge
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %32 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then40, label %ntfs_commit_inode.exit333.if.end57_crit_edge

ntfs_commit_inode.exit333.if.end57_crit_edge:     ; preds = %ntfs_commit_inode.exit333
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then40:                                        ; preds = %ntfs_commit_inode.exit333
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool42.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool42.not, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then40
  %vol_flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 43
  %36 = ptrtoint ptr %vol_flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vol_flags.i, align 4
  %38 = and i16 %37, -257
  %call.i334 = tail call fastcc i32 @ntfs_write_volume_flags(ptr noundef %1, i16 noundef zeroext %38) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool45.not = icmp eq i32 %call.i334, 0
  br i1 %tobool45.not, label %if.then43.if.end47_crit_edge, label %if.then46

if.then43.if.end47_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_put_super, ptr noundef %sb, ptr noundef nonnull @.str.122) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then43.if.end47_crit_edge
  %39 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vol_ino, align 8
  %call.i335 = tail call zeroext i1 @is_bad_inode(ptr noundef %40) #15
  br i1 %call.i335, label %if.end47.ntfs_commit_inode.exit338_crit_edge, label %if.then.i337

if.end47.ntfs_commit_inode.exit338_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit338

if.then.i337:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i336 = tail call i32 @__ntfs_write_inode(ptr noundef %40, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit338

ntfs_commit_inode.exit338:                        ; preds = %if.then.i337, %if.end47.ntfs_commit_inode.exit338_crit_edge
  %41 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %root_ino, align 8
  %call.i339 = tail call zeroext i1 @is_bad_inode(ptr noundef %42) #15
  br i1 %call.i339, label %ntfs_commit_inode.exit338.ntfs_commit_inode.exit342_crit_edge, label %if.then.i341

ntfs_commit_inode.exit338.ntfs_commit_inode.exit342_crit_edge: ; preds = %ntfs_commit_inode.exit338
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit342

if.then.i341:                                     ; preds = %ntfs_commit_inode.exit338
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i340 = tail call i32 @__ntfs_write_inode(ptr noundef %42, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit342

ntfs_commit_inode.exit342:                        ; preds = %if.then.i341, %ntfs_commit_inode.exit338.ntfs_commit_inode.exit342_crit_edge
  %43 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mftmirr_ino, align 8
  %tobool51.not = icmp eq ptr %44, null
  br i1 %tobool51.not, label %ntfs_commit_inode.exit342.if.end54_crit_edge, label %if.then52

ntfs_commit_inode.exit342.if.end54_crit_edge:     ; preds = %ntfs_commit_inode.exit342
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then52:                                        ; preds = %ntfs_commit_inode.exit342
  %call.i343 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %44) #15
  br i1 %call.i343, label %if.then52.if.end54_crit_edge, label %if.then.i345

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then.i345:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i344 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %44, i32 noundef 1) #15
  br label %if.end54

if.end54:                                         ; preds = %if.then.i345, %if.then52.if.end54_crit_edge, %ntfs_commit_inode.exit342.if.end54_crit_edge
  %45 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mft_ino, align 8
  %call.i347 = tail call zeroext i1 @is_bad_inode(ptr noundef %46) #15
  br i1 %call.i347, label %if.end54.if.end57_crit_edge, label %if.then.i349

if.end54.if.end57_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then.i349:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i348 = tail call i32 @__ntfs_write_inode(ptr noundef %46, i32 noundef 1) #15
  br label %if.end57

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_put_super, ptr noundef %sb, ptr noundef nonnull @.str.123) #15
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then.i349, %if.end54.if.end57_crit_edge, %ntfs_commit_inode.exit333.if.end57_crit_edge
  %47 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vol_ino, align 8
  tail call void @iput(ptr noundef %48) #15
  %49 = ptrtoint ptr %vol_ino to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %vol_ino, align 8
  %50 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp62 = icmp ugt i8 %51, 2
  br i1 %cmp62, label %if.then64, label %if.end57.if.end107_crit_edge

if.end57.if.end107_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then64:                                        ; preds = %if.end57
  %usnjrnl_j_ino65 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 53
  %52 = ptrtoint ptr %usnjrnl_j_ino65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usnjrnl_j_ino65, align 4
  %tobool66.not = icmp eq ptr %53, null
  br i1 %tobool66.not, label %if.then64.if.end70_crit_edge, label %if.then67

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %53) #15
  %54 = ptrtoint ptr %usnjrnl_j_ino65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %usnjrnl_j_ino65, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then64.if.end70_crit_edge
  %usnjrnl_max_ino71 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 52
  %55 = ptrtoint ptr %usnjrnl_max_ino71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usnjrnl_max_ino71, align 8
  %tobool72.not = icmp eq ptr %56, null
  br i1 %tobool72.not, label %if.end70.if.end76_crit_edge, label %if.then73

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %56) #15
  %57 = ptrtoint ptr %usnjrnl_max_ino71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %usnjrnl_max_ino71, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end70.if.end76_crit_edge
  %usnjrnl_ino77 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 51
  %58 = ptrtoint ptr %usnjrnl_ino77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usnjrnl_ino77, align 4
  %tobool78.not = icmp eq ptr %59, null
  br i1 %tobool78.not, label %if.end76.if.end82_crit_edge, label %if.then79

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %59) #15
  %60 = ptrtoint ptr %usnjrnl_ino77 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %usnjrnl_ino77, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end76.if.end82_crit_edge
  %quota_q_ino83 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 50
  %61 = ptrtoint ptr %quota_q_ino83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %quota_q_ino83, align 8
  %tobool84.not = icmp eq ptr %62, null
  br i1 %tobool84.not, label %if.end82.if.end88_crit_edge, label %if.then85

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %62) #15
  %63 = ptrtoint ptr %quota_q_ino83 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %quota_q_ino83, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end82.if.end88_crit_edge
  %quota_ino89 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 49
  %64 = ptrtoint ptr %quota_ino89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %quota_ino89, align 4
  %tobool90.not = icmp eq ptr %65, null
  br i1 %tobool90.not, label %if.end88.if.end94_crit_edge, label %if.then91

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %65) #15
  %66 = ptrtoint ptr %quota_ino89 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %quota_ino89, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end88.if.end94_crit_edge
  %extend_ino95 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 48
  %67 = ptrtoint ptr %extend_ino95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extend_ino95, align 8
  %tobool96.not = icmp eq ptr %68, null
  br i1 %tobool96.not, label %if.end94.if.end100_crit_edge, label %if.then97

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %68) #15
  %69 = ptrtoint ptr %extend_ino95 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %extend_ino95, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end94.if.end100_crit_edge
  %secure_ino101 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 47
  %70 = ptrtoint ptr %secure_ino101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %secure_ino101, align 4
  %tobool102.not = icmp eq ptr %71, null
  br i1 %tobool102.not, label %if.end100.if.end107_crit_edge, label %if.then103

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %71) #15
  %72 = ptrtoint ptr %secure_ino101 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %secure_ino101, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end100.if.end107_crit_edge, %if.end57.if.end107_crit_edge
  %73 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %root_ino, align 8
  tail call void @iput(ptr noundef %74) #15
  %75 = ptrtoint ptr %root_ino to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %root_ino, align 8
  tail call void @down_write(ptr noundef %lcnbmp_lock) #15
  %76 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lcnbmp_ino, align 4
  tail call void @iput(ptr noundef %77) #15
  %78 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %lcnbmp_ino, align 4
  tail call void @up_write(ptr noundef %lcnbmp_lock) #15
  tail call void @down_write(ptr noundef %mftbmp_lock) #15
  %79 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mftbmp_ino, align 4
  tail call void @iput(ptr noundef %80) #15
  %81 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %mftbmp_ino, align 4
  tail call void @up_write(ptr noundef %mftbmp_lock) #15
  %82 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %logfile_ino, align 8
  %tobool119.not = icmp eq ptr %83, null
  br i1 %tobool119.not, label %if.end107.if.end123_crit_edge, label %if.then120

if.end107.if.end123_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end123

if.then120:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %83) #15
  %84 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %logfile_ino, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.end107.if.end123_crit_edge
  %85 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mftmirr_ino, align 8
  %tobool125.not = icmp eq ptr %86, null
  br i1 %tobool125.not, label %if.end123.if.end131_crit_edge, label %if.then126

if.end123.if.end131_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end131

if.then126:                                       ; preds = %if.end123
  %call.i351 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %86) #15
  br i1 %call.i351, label %if.then126.ntfs_commit_inode.exit354_crit_edge, label %if.then.i353

if.then126.ntfs_commit_inode.exit354_crit_edge:   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit354

if.then.i353:                                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i352 = tail call i32 @__ntfs_write_inode(ptr noundef nonnull %86, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit354

ntfs_commit_inode.exit354:                        ; preds = %if.then.i353, %if.then126.ntfs_commit_inode.exit354_crit_edge
  %87 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mft_ino, align 8
  %call.i355 = tail call zeroext i1 @is_bad_inode(ptr noundef %88) #15
  br i1 %call.i355, label %ntfs_commit_inode.exit354.ntfs_commit_inode.exit358_crit_edge, label %if.then.i357

ntfs_commit_inode.exit354.ntfs_commit_inode.exit358_crit_edge: ; preds = %ntfs_commit_inode.exit354
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit358

if.then.i357:                                     ; preds = %ntfs_commit_inode.exit354
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i356 = tail call i32 @__ntfs_write_inode(ptr noundef %88, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit358

ntfs_commit_inode.exit358:                        ; preds = %if.then.i357, %ntfs_commit_inode.exit354.ntfs_commit_inode.exit358_crit_edge
  %89 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mftmirr_ino, align 8
  tail call void @iput(ptr noundef %90) #15
  %91 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %mftmirr_ino, align 8
  br label %if.end131

if.end131:                                        ; preds = %ntfs_commit_inode.exit358, %if.end123.if.end131_crit_edge
  %92 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mft_ino, align 8
  %call.i359 = tail call zeroext i1 @is_bad_inode(ptr noundef %93) #15
  br i1 %call.i359, label %if.end131.ntfs_commit_inode.exit362_crit_edge, label %if.then.i361

if.end131.ntfs_commit_inode.exit362_crit_edge:    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  br label %ntfs_commit_inode.exit362

if.then.i361:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i360 = tail call i32 @__ntfs_write_inode(ptr noundef %93, i32 noundef 1) #15
  br label %ntfs_commit_inode.exit362

ntfs_commit_inode.exit362:                        ; preds = %if.then.i361, %if.end131.ntfs_commit_inode.exit362_crit_edge
  %94 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mft_ino, align 8
  %call134 = tail call i32 @write_inode_now(ptr noundef %95, i32 noundef 1) #15
  %96 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mft_ino, align 8
  tail call void @iput(ptr noundef %97) #15
  %98 = ptrtoint ptr %mft_ino to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %mft_ino, align 8
  %attrdef_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 26
  %99 = ptrtoint ptr %attrdef_size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %attrdef_size, align 8
  %attrdef = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 27
  %100 = ptrtoint ptr %attrdef to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %attrdef, align 4
  %tobool137.not = icmp eq ptr %101, null
  br i1 %tobool137.not, label %ntfs_commit_inode.exit362.if.end141_crit_edge, label %if.then138

ntfs_commit_inode.exit362.if.end141_crit_edge:    ; preds = %ntfs_commit_inode.exit362
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end141

if.then138:                                       ; preds = %ntfs_commit_inode.exit362
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %101) #15
  %102 = ptrtoint ptr %attrdef to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %attrdef, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %ntfs_commit_inode.exit362.if.end141_crit_edge
  %upcase_len = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 24
  %103 = ptrtoint ptr %upcase_len to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %upcase_len, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ntfs_lock, i32 noundef 0) #15
  %upcase = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 25
  %104 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %upcase, align 4
  %106 = load ptr, ptr @default_upcase, align 4
  %cmp142 = icmp eq ptr %105, %106
  %107 = load i32, ptr @ntfs_nr_upcase_users, align 4
  br i1 %cmp142, label %if.then144, label %if.end141.if.end146_crit_edge

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end146

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %107, -1
  store i32 %dec, ptr @ntfs_nr_upcase_users, align 4
  %108 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %upcase, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end141.if.end146_crit_edge
  %109 = phi i32 [ %dec, %if.then144 ], [ %107, %if.end141.if.end146_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool147.not = icmp ne i32 %109, 0
  %tobool148.not = icmp eq ptr %106, null
  %or.cond = select i1 %tobool147.not, i1 true, i1 %tobool148.not
  br i1 %or.cond, label %if.end146.if.end150_crit_edge, label %if.then149

if.end146.if.end150_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %106) #15
  store ptr null, ptr @default_upcase, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end146.if.end150_crit_edge
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 11
  %110 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %111)
  %cmp151 = icmp ult i32 %111, 4097
  br i1 %cmp151, label %land.lhs.true153, label %if.end150.if.end157_crit_edge

if.end150.if.end157_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

land.lhs.true153:                                 ; preds = %if.end150
  %112 = load i32, ptr @ntfs_nr_compression_users, align 4
  %dec154 = add i32 %112, -1
  store i32 %dec154, ptr @ntfs_nr_compression_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec154)
  %tobool155.not = icmp eq i32 %dec154, 0
  br i1 %tobool155.not, label %if.then156, label %land.lhs.true153.if.end157_crit_edge

land.lhs.true153.if.end157_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then156:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_compression_buffers() #15
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %land.lhs.true153.if.end157_crit_edge, %if.end150.if.end157_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #15
  %113 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %upcase, align 4
  %tobool159.not = icmp eq ptr %114, null
  br i1 %tobool159.not, label %if.end157.if.end163_crit_edge, label %if.then160

if.end157.if.end163_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end163

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %114) #15
  %115 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %upcase, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end157.if.end163_crit_edge
  %nls_map = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 54
  %116 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %nls_map, align 8
  tail call void @unload_nls(ptr noundef %117) #15
  %118 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %sfs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -528
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2600, ptr noundef nonnull @__func__.ntfs_statfs, ptr noundef nonnull @.str.11) #15
  %6 = ptrtoint ptr %sfs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1397118030, ptr %sfs, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 1
  %7 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %f_bsize, align 4
  %nr_clusters = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %nr_clusters, align 8
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %11 to i64
  %shl = shl i64 %9, %sh_prom
  %shr = ashr i64 %shl, 12
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 2
  %12 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shr, ptr %f_blocks, align 8
  %call2 = tail call fastcc i64 @get_nr_free_clusters(ptr noundef %3)
  %13 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom5 = zext i8 %14 to i64
  %shl6 = shl i64 %call2, %sh_prom5
  %shr7 = ashr i64 %shl6, 12
  %15 = tail call i64 @llvm.smax.i64(i64 %shr7, i64 0)
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 3
  %16 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 4
  %17 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %f_bavail, align 8
  %mftbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 36
  tail call void @down_read(ptr noundef %mftbmp_lock) #15
  %call11 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #15
  %18 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mft_ino, align 8
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %19)
  %mft_record_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 16
  %20 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mft_record_size_bits, align 4
  %sh_prom15 = zext i8 %21 to i64
  %shr16 = ashr i64 %call13, %sh_prom15
  %initialized_size = getelementptr i8, ptr %5, i32 -480
  %22 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %initialized_size, align 8
  %shr20 = ashr i64 %23, %sh_prom15
  %add = add i64 %shr20, 7
  %24 = lshr i64 %add, 3
  %sub = add nuw nsw i64 %24, 4095
  %25 = lshr i64 %sub, 12
  %conv24 = trunc i64 %25 to i32
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call11) #15
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 5
  %26 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shr16, ptr %f_files, align 8
  %call34 = tail call fastcc i32 @__get_nr_free_mft_records(ptr noundef %3, i64 noundef %shr16, i32 noundef %conv24)
  %conv35 = zext i32 %call34 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 6
  %27 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv35, ptr %f_ffree, align 8
  tail call void @up_read(ptr noundef %mftbmp_lock) #15
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 7
  %serial_no = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 23
  %28 = ptrtoint ptr %serial_no to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %serial_no, align 8
  %tmp37.sroa.0.0.insert.insert = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 32)
  %30 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %tmp37.sroa.0.0.insert.insert, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 8
  %31 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr noundef %opt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 456, ptr noundef nonnull @__func__.ntfs_remount, ptr noundef nonnull @.str.134, ptr noundef %opt) #15
  %call1 = tail call i32 @sync_filesystem(ptr noundef %sb) #15
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and39 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool.i.not, label %land.lhs.true38, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool40.not, label %if.then, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then:                                          ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.135) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %vol_flags = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 43
  %8 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vol_flags, align 4
  %conv = zext i16 %9 to i32
  %and6 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and12 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.135) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %and18 = and i32 %conv, 10176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv22 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.139, i32 noundef %conv22, ptr noundef nonnull @.str.135) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %11 = or i16 %9, 256
  %call.i = tail call fastcc i32 @ntfs_write_volume_flags(ptr noundef %1, i16 noundef zeroext %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.135) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %logfile_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 39
  %12 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %logfile_ino, align 8
  %call28 = tail call zeroext i1 @ntfs_empty_logfile(ptr noundef %13) #15
  br i1 %call28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.135) #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #15
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %call31 = tail call zeroext i1 @ntfs_mark_quotas_out_of_date(ptr noundef %1) #15
  br i1 %call31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.135) #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %call34 = tail call zeroext i1 @ntfs_stamp_usnjrnl(ptr noundef %1) #15
  br i1 %call34, label %if.end33.if.end51_crit_edge, label %if.then35

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.135) #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #15
  br label %cleanup

land.lhs.true38:                                  ; preds = %entry
  br i1 %tobool40.not, label %land.lhs.true38.if.end51_crit_edge, label %if.then41

land.lhs.true38.if.end51_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then41:                                        ; preds = %land.lhs.true38
  %flags.i89 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i89, align 4
  %and1.i.i90 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i90)
  %tobool43.not = icmp eq i32 %and1.i.i90, 0
  br i1 %tobool43.not, label %if.then44, label %if.then41.if.end51_crit_edge

if.then41.if.end51_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then44:                                        ; preds = %if.then41
  %vol_flags.i91 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 43
  %16 = ptrtoint ptr %vol_flags.i91 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vol_flags.i91, align 4
  %18 = and i16 %17, -257
  %call.i92 = tail call fastcc i32 @ntfs_write_volume_flags(ptr noundef %1, i16 noundef zeroext %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool46.not = icmp eq i32 %call.i92, 0
  br i1 %tobool46.not, label %if.then44.if.end51_crit_edge, label %if.then47

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_remount, ptr noundef %sb, ptr noundef nonnull @.str.122) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then44.if.end51_crit_edge, %if.then41.if.end51_crit_edge, %land.lhs.true38.if.end51_crit_edge, %if.end33.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge
  %call52 = tail call fastcc zeroext i1 @parse_options(ptr noundef %1, ptr noundef %opt)
  br i1 %call52, label %if.end54, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end54:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 553, ptr noundef nonnull @__func__.ntfs_remount, ptr noundef nonnull @.str.125) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end51.cleanup_crit_edge, %if.then35, %if.then32, %if.then29, %if.then26, %if.then20, %if.then14, %if.then8, %if.then5
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -30, %if.then5 ], [ -30, %if.then8 ], [ -30, %if.then14 ], [ -30, %if.then20 ], [ -30, %if.then26 ], [ -30, %if.then35 ], [ -30, %if.then32 ], [ -30, %if.then29 ], [ -22, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_show_options(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntfs_write_inode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_write_volume_flags(ptr nocapture noundef %vol, i16 noundef zeroext %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 42
  %0 = ptrtoint ptr %vol_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -528
  %vol_flags = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 43
  %2 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vol_flags, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %5 = tail call i16 @llvm.bswap.i16(i16 %flags)
  %conv1 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 370, ptr noundef nonnull @__func__.ntfs_write_volume_flags, ptr noundef nonnull @.str.124, i32 noundef %conv, i32 noundef %conv1) #15
  %6 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vol_flags, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %flags)
  %cmp = icmp eq i16 %7, %flags
  br i1 %cmp, label %entry.done_crit_edge, label %do.body

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

do.body:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %do.body10, label %do.end16, !prof !659

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 373, 0\0A.popsection", ""() #15, !srcloc !663
  unreachable

do.end16:                                         ; preds = %do.body
  %call17 = tail call ptr @map_mft_record(ptr noundef nonnull %add.ptr.i) #15
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call17 to i32
  br label %err_out

if.end21:                                         ; preds = %do.end16
  %call22 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef nonnull %add.ptr.i, ptr noundef %call17) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.if.end37_crit_edge, label %if.end25

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @ntfs_attr_lookup(i32 noundef 1879048192, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then36

if.end29:                                         ; preds = %if.end25
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call22, i32 0, i32 1
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %10, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.87, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %value_offset, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv31 = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv31
  %flags32 = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %add.ptr, i32 0, i32 3
  %14 = ptrtoint ptr %flags32 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %flags, ptr %flags32, align 1
  %15 = ptrtoint ptr %vol_flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %flags, ptr %vol_flags, align 4
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call22, i32 0, i32 3
  %16 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ntfs_ino, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %19) #15
  %20 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ntfs_ino, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %21, i32 0, i32 3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end29.mark_mft_record_dirty.exit_crit_edge

if.end29.mark_mft_record_dirty.exit_crit_edge:    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %mark_mft_record_dirty.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mark_mft_record_dirty(ptr noundef %21) #15
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i, %if.end29.mark_mft_record_dirty.exit_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call22) #15
  tail call void @unmap_mft_record(ptr noundef nonnull %add.ptr.i) #15
  br label %done

done:                                             ; preds = %mark_mft_record_dirty.exit, %entry.done_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 396, ptr noundef nonnull @__func__.ntfs_write_volume_flags, ptr noundef nonnull @.str.125) #15
  br label %cleanup

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call22) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end21.if.end37_crit_edge
  %err.065 = phi i32 [ %call26, %if.then36 ], [ -12, %if.end21.if.end37_crit_edge ]
  tail call void @unmap_mft_record(ptr noundef nonnull %add.ptr.i) #15
  br label %err_out

err_out:                                          ; preds = %if.end37, %if.then19
  %err.1 = phi i32 [ %8, %if.then19 ], [ %err.065, %if.end37 ]
  %22 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vol, align 8
  %sub = sub i32 0, %err.1
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_volume_flags, ptr noundef %23, ptr noundef nonnull @.str.126, i32 noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out, %done
  %retval.0 = phi i32 [ 0, %done ], [ %err.1, %err_out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_mft_record_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_nr_free_clusters(ptr noundef %vol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_clusters = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 20
  %0 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_clusters, align 8
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 40
  %2 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcnbmp_ino, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2452, ptr noundef nonnull @__func__.get_nr_free_clusters, ptr noundef nonnull @.str.11) #15
  %lcnbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 41
  tail call void @down_read(ptr noundef %lcnbmp_lock) #15
  %6 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nr_clusters, align 8
  %add = add i64 %7, 7
  %8 = lshr i64 %add, 3
  %sub = add nuw nsw i64 %8, 4095
  %9 = lshr i64 %sub, 12
  %conv = trunc i64 %9 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2464, ptr noundef nonnull @__func__.get_nr_free_clusters, ptr noundef nonnull @.str.127, i32 noundef %conv, i32 noundef 1024) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp53.not = icmp eq i32 %conv, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %index.055 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nr_free.054 = phi i64 [ %nr_free.1, %cleanup.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %index.055, ptr noundef null, ptr noundef null) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2476, ptr noundef nonnull @__func__.get_nr_free_clusters, ptr noundef nonnull @.str.128, i32 noundef %index.055) #15
  %sub6 = add i64 %nr_free.054, -32768
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !664
  %15 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !665
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #15
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %call.i.i, i32 noundef 32768) #15
  %conv9 = sext i32 %call4.i to i64
  %sub10 = sub i64 %nr_free.054, %conv9
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !666
  %21 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i1.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %26, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !667
  %27 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %31 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !651

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i50 = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i50, %if.then.i.i ], [ %34, %if.end.i.i ]
  %35 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !659

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.131) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !668
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !669
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !670
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_nr_free_clusters, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !672

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %35) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then
  %nr_free.1 = phi i64 [ %sub6, %if.then ], [ %sub10, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %sub10, %if.then.i4.i ]
  %inc = add nuw i32 %index.055, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo = add i32 %conv, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %nr_free.0.lcssa = phi i64 [ %1, %entry.for.end_crit_edge ], [ %nr_free.1, %for.end.loopexit ]
  %index.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2493, ptr noundef nonnull @__func__.get_nr_free_clusters, ptr noundef nonnull @.str.129, i32 noundef %index.0.lcssa) #15
  %40 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %nr_clusters, align 8
  %and = and i64 %41, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %sub19 = sub nuw nsw i64 64, %and
  %add20 = select i1 %tobool.not, i64 0, i64 %sub19
  %nr_free.2 = add i64 %add20, %nr_free.0.lcssa
  tail call void @up_read(ptr noundef %lcnbmp_lock) #15
  %42 = tail call i64 @llvm.smax.i64(i64 %nr_free.2, i64 0)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2504, ptr noundef nonnull @__func__.get_nr_free_clusters, ptr noundef nonnull @.str.130) #15
  ret i64 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !673
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !674
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !659

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !675
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !676
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !677
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !678
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !679
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
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_nr_free_mft_records(ptr nocapture noundef readonly %vol, i64 noundef %nr_free, i32 noundef %max_index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mftbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 35
  %0 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mftbmp_ino, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2532, ptr noundef nonnull @__func__.__get_nr_free_mft_records, ptr noundef nonnull @.str.11) #15
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2535, ptr noundef nonnull @__func__.__get_nr_free_mft_records, ptr noundef nonnull @.str.132, i32 noundef %max_index, i32 noundef 1024) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_index)
  %cmp31.not = icmp eq i32 %max_index, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %index.033 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nr_free.addr.032 = phi i64 [ %nr_free.addr.1, %cleanup.for.body_crit_edge ], [ %nr_free, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @read_cache_page(ptr noundef %3, i32 noundef %index.033, ptr noundef null, ptr noundef null) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2547, ptr noundef nonnull @__func__.__get_nr_free_mft_records, ptr noundef nonnull @.str.128, i32 noundef %index.033) #15
  %sub = add i64 %nr_free.addr.032, -32768
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !664
  %9 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !665
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #15
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %call.i.i, i32 noundef 32768) #15
  %conv = sext i32 %call4.i to i64
  %sub4 = sub i64 %nr_free.addr.032, %conv
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !666
  %15 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i1.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %20, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !667
  %21 = tail call i32 @llvm.read_register.i32(metadata !641) #15
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %25 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !651

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i28 = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i28, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !659

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.131) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !668
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !669
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !670
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__get_nr_free_mft_records, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !672

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %29) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then
  %nr_free.addr.1 = phi i64 [ %sub, %if.then ], [ %sub4, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %sub4, %if.then.i4.i ]
  %inc = add nuw i32 %index.033, 1
  %exitcond.not = icmp eq i32 %inc, %max_index
  br i1 %exitcond.not, label %for.end.loopexit, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo = add i32 %max_index, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %nr_free.addr.0.lcssa = phi i64 [ %nr_free, %entry.for.end_crit_edge ], [ %nr_free.addr.1, %for.end.loopexit ]
  %index.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2565, ptr noundef nonnull @__func__.__get_nr_free_mft_records, ptr noundef nonnull @.str.133, i32 noundef %index.0.lcssa) #15
  %34 = tail call i64 @llvm.smax.i64(i64 %nr_free.addr.0.lcssa, i64 0)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 2569, ptr noundef nonnull @__func__.__get_nr_free_mft_records, ptr noundef nonnull @.str.130) #15
  %conv13 = trunc i64 %34 to i32
  ret i32 %conv13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_empty_logfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_mark_quotas_out_of_date(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_stamp_usnjrnl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_iget(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @load_and_check_logfile(ptr nocapture noundef %vol, ptr noundef %rp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1207, ptr noundef nonnull @__func__.load_and_check_logfile, ptr noundef nonnull @.str.11) #15
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol, align 8
  %call = tail call ptr @ntfs_iget(ptr noundef %1, i32 noundef 2) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @is_bad_inode(ptr noundef %call) #15
  br i1 %call2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef %call) #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call zeroext i1 @ntfs_check_logfile(ptr noundef %call, ptr noundef %rp) #15
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef %call) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %state.i = getelementptr i8, ptr %call, i32 -464
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state.i) #15
  %logfile_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 39
  %2 = ptrtoint ptr %logfile_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %logfile_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1222, ptr noundef nonnull @__func__.load_and_check_logfile, ptr noundef nonnull @.str.125) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %if.then7 ], [ false, %if.then4 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_is_logfile_clean(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_windows_hibernation_status(ptr nocapture noundef readonly %vol) unnamed_addr #2 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %name, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1268, ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef nonnull @.str.11) #15
  %root_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 46
  %1 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %root_ino, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %3 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -528
  %call2 = call i64 @ntfs_lookup_inode_by_name(ptr noundef %add.ptr.i, ptr noundef nonnull @check_windows_hibernation_status.hiberfil, i32 noundef 12, ptr noundef nonnull %name) #15
  %5 = ptrtoint ptr %root_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_ino, align 8
  %i_rwsem.i89 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i89) #15
  %and = and i64 %call2, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %conv)
  %cmp = icmp eq i32 %conv, -2
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1282, ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef nonnull @.str.214) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef %8, ptr noundef nonnull @.str.215) #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %10) #15
  %11 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vol, align 8
  %conv9 = trunc i64 %call2 to i32
  %call10 = call ptr @ntfs_iget(ptr noundef %12, i32 noundef %conv9) #15
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cond.true22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call13 = call zeroext i1 @is_bad_inode(ptr noundef %call10) #15
  br i1 %call13, label %if.end18, label %if.end25

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %call10) #15
  %13 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef %14, ptr noundef nonnull @.str.216) #15
  br label %cleanup

cond.true22:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef %16, ptr noundef nonnull @.str.216) #15
  %17 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %call26 = call fastcc i64 @i_size_read(ptr noundef %call10)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call26)
  %cmp27 = icmp slt i64 %call26, 4096
  br i1 %cmp27, label %if.then31, label %if.end33, !prof !659

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = call fastcc i64 @i_size_read(ptr noundef %call10)
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1303, ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef nonnull @.str.217, i64 noundef %call32) #15
  br label %iput_out

if.end33:                                         ; preds = %if.end25
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %call34 = call fastcc ptr @ntfs_map_page(ptr noundef %19, i32 noundef 0)
  %cmp.i92 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef %21, ptr noundef nonnull @.str.218) #15
  %22 = ptrtoint ptr %call34 to i32
  br label %iput_out

if.end39:                                         ; preds = %if.end33
  %call40 = call ptr @page_address(ptr noundef %call34) #15
  %23 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1751736946, i32 %24)
  %cmp41 = icmp eq i32 %24, 1751736946
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1316, ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef nonnull @.str.219) #15
  br label %unm_iput_out

if.end44:                                         ; preds = %if.end39
  %add.ptr = getelementptr i32, ptr %call40, i32 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool45.not93 = icmp eq i32 %24, 0
  br i1 %tobool45.not93, label %if.end44.do.cond_crit_edge, label %if.end44.if.then52_crit_edge, !prof !651

if.end44.if.then52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

if.end44.do.cond_crit_edge:                       ; preds = %if.end44
  br label %do.cond

do.bodythread-pre-split:                          ; preds = %do.cond
  %25 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %incdec.ptr, align 4
  %tobool45.not = icmp eq i32 %.pr, 0
  br i1 %tobool45.not, label %do.bodythread-pre-split.do.cond_crit_edge, label %do.bodythread-pre-split.if.then52_crit_edge, !prof !651

do.bodythread-pre-split.if.then52_crit_edge:      ; preds = %do.bodythread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

do.bodythread-pre-split.do.cond_crit_edge:        ; preds = %do.bodythread-pre-split
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.then52:                                        ; preds = %do.bodythread-pre-split.if.then52_crit_edge, %if.end44.if.then52_crit_edge
  %call53 = call fastcc i64 @i_size_read(ptr noundef %call10)
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1327, ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef nonnull @.str.220, i64 noundef %call53) #15
  br label %unm_iput_out

do.cond:                                          ; preds = %do.bodythread-pre-split.do.cond_crit_edge, %if.end44.do.cond_crit_edge
  %kaddr.094 = phi ptr [ %incdec.ptr, %do.bodythread-pre-split.do.cond_crit_edge ], [ %call40, %if.end44.do.cond_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %kaddr.094, i32 1
  %cmp55 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp55, label %do.bodythread-pre-split, label %do.end

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1333, ptr noundef nonnull @__func__.check_windows_hibernation_status, ptr noundef nonnull @.str.221) #15
  br label %unm_iput_out

unm_iput_out:                                     ; preds = %do.end, %if.then52, %if.then43
  %ret.0 = phi i32 [ 1, %if.then43 ], [ 1, %if.then52 ], [ 0, %do.end ]
  call fastcc void @ntfs_unmap_page(ptr noundef %call34)
  br label %iput_out

iput_out:                                         ; preds = %unm_iput_out, %if.then36, %if.then31
  %ret.1 = phi i32 [ 1, %if.then31 ], [ %22, %if.then36 ], [ %ret.0, %unm_iput_out ]
  call void @iput(ptr noundef %call10) #15
  br label %cleanup

cleanup:                                          ; preds = %iput_out, %cond.true22, %if.end18, %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %conv, %if.end ], [ %ret.1, %iput_out ], [ %17, %cond.true22 ], [ -5, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @load_and_init_quota(ptr noundef %vol) unnamed_addr #2 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %name, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1361, ptr noundef nonnull @__func__.load_and_init_quota, ptr noundef nonnull @.str.11) #15
  %extend_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 48
  %1 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %extend_ino, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %3 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extend_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -528
  %call2 = call i64 @ntfs_lookup_inode_by_name(ptr noundef %add.ptr.i, ptr noundef nonnull @load_and_init_quota.Quota, i32 noundef 6, ptr noundef nonnull %name) #15
  %5 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extend_ino, align 8
  %i_rwsem.i47 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i47) #15
  %and = and i64 %call2, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %conv)
  %cmp = icmp eq i32 %conv, -2
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1377, ptr noundef nonnull @__func__.load_and_init_quota, ptr noundef nonnull @.str.222) #15
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_quota, ptr noundef %8, ptr noundef nonnull @.str.223) #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %10) #15
  %11 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vol, align 8
  %conv9 = trunc i64 %call2 to i32
  %call10 = call ptr @ntfs_iget(ptr noundef %12, i32 noundef %conv9) #15
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.if.end18_crit_edge, label %lor.lhs.false

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

lor.lhs.false:                                    ; preds = %if.end6
  %call13 = call zeroext i1 @is_bad_inode(ptr noundef %call10) #15
  br i1 %call13, label %if.then17, label %if.end20

if.then17:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %call10) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end6.if.end18_crit_edge
  %13 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_quota, ptr noundef %14, ptr noundef nonnull @.str.224) #15
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %quota_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 49
  %15 = ptrtoint ptr %quota_ino to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %quota_ino, align 4
  %call22 = call ptr @ntfs_index_iget(ptr noundef %call10, ptr noundef nonnull @load_and_init_quota.Q, i32 noundef 2) #15
  %cmp.i49 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_quota, ptr noundef %17, ptr noundef nonnull @.str.225) #15
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %quota_q_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 50
  %18 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %quota_q_ino, align 8
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1407, ptr noundef nonnull @__func__.load_and_init_quota, ptr noundef nonnull @.str.125) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %if.end18, %if.end, %if.then5
  %retval.0 = phi i1 [ true, %if.then5 ], [ false, %if.end ], [ false, %if.end18 ], [ false, %if.then24 ], [ true, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @load_and_init_usnjrnl(ptr noundef %vol) unnamed_addr #2 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %name, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1444, ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef nonnull @.str.11) #15
  %extend_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 48
  %1 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %extend_ino, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %3 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extend_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -528
  %call2 = call i64 @ntfs_lookup_inode_by_name(ptr noundef %add.ptr.i, ptr noundef nonnull @load_and_init_usnjrnl.UsnJrnl, i32 noundef 8, ptr noundef nonnull %name) #15
  %5 = ptrtoint ptr %extend_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extend_ino, align 8
  %i_rwsem.i184 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i184) #15
  %and = and i64 %call2, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %conv)
  %cmp = icmp eq i32 %conv, -2
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1460, ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef nonnull @.str.226) #15
  br label %not_enabled

not_enabled:                                      ; preds = %if.then123, %if.then31, %if.then5
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %8, ptr noundef nonnull @.str.227) #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %10) #15
  %11 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vol, align 8
  %conv9 = trunc i64 %call2 to i32
  %call10 = call ptr @ntfs_iget(ptr noundef %12, i32 noundef %conv9) #15
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.if.end19_crit_edge, label %lor.lhs.false

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

lor.lhs.false:                                    ; preds = %if.end6
  %call13 = call zeroext i1 @is_bad_inode(ptr noundef %call10) #15
  br i1 %call13, label %if.then18, label %if.end21, !prof !659

if.then18:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %call10) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end6.if.end19_crit_edge
  %13 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %14, ptr noundef nonnull @.str.228) #15
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %usnjrnl_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 51
  %15 = ptrtoint ptr %usnjrnl_ino to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %usnjrnl_ino, align 4
  %vol_flags = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 43
  %16 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vol_flags, align 4
  %18 = and i16 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool24.not = icmp eq i16 %18, 0
  br i1 %tobool24.not, label %if.end32, label %if.then31, !prof !651

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1492, ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef nonnull @.str.229) #15
  br label %not_enabled

if.end32:                                         ; preds = %if.end21
  %call34 = call ptr @ntfs_attr_iget(ptr noundef %call10, i32 noundef -2147483648, ptr noundef nonnull @load_and_init_usnjrnl.Max, i32 noundef 4) #15
  %cmp.i186 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %20, ptr noundef nonnull @.str.230) #15
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %usnjrnl_max_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 52
  %21 = ptrtoint ptr %usnjrnl_max_ino to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %usnjrnl_max_ino, align 8
  %call39 = call fastcc i64 @i_size_read(ptr noundef %call34)
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %call39)
  %cmp40 = icmp slt i64 %call39, 32
  br i1 %cmp40, label %if.then48, label %if.end51, !prof !659

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vol, align 8
  %call50 = call fastcc i64 @i_size_read(ptr noundef %call34)
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %23, ptr noundef nonnull @.str.231, i64 noundef %call50, i32 noundef 32) #15
  br label %cleanup

if.end51:                                         ; preds = %if.end38
  %24 = ptrtoint ptr %usnjrnl_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usnjrnl_ino, align 4
  %call53 = call ptr @ntfs_attr_iget(ptr noundef %25, i32 noundef -2147483648, ptr noundef nonnull @load_and_init_usnjrnl.J, i32 noundef 2) #15
  %cmp.i187 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %27, ptr noundef nonnull @.str.232) #15
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %usnjrnl_j_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 53
  %28 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call53, ptr %usnjrnl_j_ino, align 4
  %state.i = getelementptr i8, ptr %call53, i32 -464
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool61.not = icmp eq i32 %31, 0
  br i1 %tobool61.not, label %if.end57.if.then72_crit_edge, label %lor.rhs, !prof !659

if.end57.if.then72_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then72

lor.rhs:                                          ; preds = %if.end57
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool63.not = icmp eq i32 %34, 0
  br i1 %tobool63.not, label %lor.rhs.if.then72_crit_edge, label %if.end74, !prof !659

lor.rhs.if.then72_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then72

if.then72:                                        ; preds = %lor.rhs.if.then72_crit_edge, %if.end57.if.then72_crit_edge
  %35 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %36, ptr noundef nonnull @.str.233) #15
  br label %cleanup

if.end74:                                         ; preds = %lor.rhs
  %37 = ptrtoint ptr %usnjrnl_max_ino to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usnjrnl_max_ino, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping, align 8
  %call76 = call fastcc ptr @ntfs_map_page(ptr noundef %40, i32 noundef 0)
  %cmp.i192 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %42, ptr noundef nonnull @.str.234) #15
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  %call81 = call ptr @page_address(ptr noundef %call76) #15
  %allocation_delta = getelementptr inbounds %struct.USN_HEADER, ptr %call81, i32 0, i32 1
  %43 = ptrtoint ptr %allocation_delta to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %allocation_delta, align 1
  %45 = call i64 @llvm.bswap.i64(i64 %44) #15
  %46 = ptrtoint ptr %call81 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %call81, align 1
  %48 = call i64 @llvm.bswap.i64(i64 %47) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %48)
  %cmp84 = icmp sgt i64 %45, %48
  br i1 %cmp84, label %if.then92, label %if.end98, !prof !659

if.then92:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %50, ptr noundef nonnull @.str.235, i64 noundef %45, i64 noundef %48) #15
  call fastcc void @ntfs_unmap_page(ptr noundef %call76)
  br label %cleanup

if.end98:                                         ; preds = %if.end80
  %lowest_valid_usn = getelementptr inbounds %struct.USN_HEADER, ptr %call81, i32 0, i32 3
  %51 = ptrtoint ptr %lowest_valid_usn to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %lowest_valid_usn, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52) #15
  %54 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usnjrnl_j_ino, align 4
  %call101 = call fastcc i64 @i_size_read(ptr noundef %55)
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %call101)
  %cmp102.not = icmp slt i64 %53, %call101
  br i1 %cmp102.not, label %if.end130, label %if.then110, !prof !651

if.then110:                                       ; preds = %if.end98
  %56 = ptrtoint ptr %lowest_valid_usn to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %lowest_valid_usn, align 1
  %58 = call i64 @llvm.bswap.i64(i64 %57) #15
  %59 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usnjrnl_j_ino, align 4
  %call114 = call fastcc i64 @i_size_read(ptr noundef %60)
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %call114)
  %cmp115 = icmp eq i64 %58, %call114
  br i1 %cmp115, label %if.then123, label %if.end124, !prof !651

if.then123:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ntfs_unmap_page(ptr noundef %call76)
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1556, ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef nonnull @.str.236) #15
  br label %not_enabled

if.end124:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vol, align 8
  %63 = ptrtoint ptr %lowest_valid_usn to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %lowest_valid_usn, align 1
  %65 = call i64 @llvm.bswap.i64(i64 %64) #15
  %66 = ptrtoint ptr %usnjrnl_j_ino to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usnjrnl_j_ino, align 4
  %call129 = call fastcc i64 @i_size_read(ptr noundef %67)
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef %62, ptr noundef nonnull @.str.237, i64 noundef %65, i64 noundef %call129) #15
  call fastcc void @ntfs_unmap_page(ptr noundef %call76)
  br label %cleanup

if.end130:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ntfs_unmap_page(ptr noundef %call76)
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.6, i32 noundef 1568, ptr noundef nonnull @__func__.load_and_init_usnjrnl, ptr noundef nonnull @.str.125) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.end124, %if.then92, %if.then78, %if.then72, %if.then55, %if.then48, %if.then36, %if.end19, %if.end, %not_enabled
  %retval.0 = phi i1 [ true, %not_enabled ], [ false, %if.end ], [ false, %if.end19 ], [ false, %if.then36 ], [ false, %if.then48 ], [ false, %if.then55 ], [ false, %if.then72 ], [ false, %if.then78 ], [ false, %if.then92 ], [ false, %if.end124 ], [ true, %if.end130 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #15
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.204, i32 noundef 55) #15
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #15
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !651

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %page to i32
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
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !659

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.131) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !668
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !669
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !670
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !672

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %8) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.204, i32 noundef 44) #15
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %shr.i.i12 = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %shr.i.i12, label %if.then.if.then.i13_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.if.then.i13_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i13

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i13_crit_edge

is_highmem_idx.exit.i.if.then.i13_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i13

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i13:                                      ; preds = %is_highmem_idx.exit.i.if.then.i13_crit_edge, %if.then.if.then.i13_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #15
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #15
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i13
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !651

if.then.i.i:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !659

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !651

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.205) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #15, !srcloc !680
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !651

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %12, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %PageError.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end ], [ %call.i, %PageError.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_check_logfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_lookup_inode_by_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_index_iget(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_big_inode_init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %foo, i32 0, i32 1
  tail call void @inode_init_once(ptr noundef %vfs_inode.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !208, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !387, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !593, !595, !596, !597, !598, !600, !602, !603, !604, !606, !607, !608, !610, !611, !613, !614, !616, !617, !619, !620, !621, !623, !625, !626, !627, !629, !630, !631, !633, !635, !637, !639}
!llvm.named.register.sp = !{!641}
!llvm.module.flags = !{!642, !643, !644, !645, !646, !647, !648, !649}
!llvm.ident = !{!650}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/super.c", i32 53, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs/super.c", i32 54, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/super.c", i32 55, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/super.c", i32 56, i32 23}
!8 = !{ptr @on_errors_arr, !9, !"on_errors_arr", i1 false, i1 false}
!9 = !{!"../fs/ntfs/super.c", i32 52, i32 16}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/super.c", i32 3043, i32 1}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ntfs_lock, !11, !"ntfs_lock", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias287, !15, !"__UNIQUE_ID_alias287", i1 false, i1 false}
!15 = !{!"../fs/ntfs/super.c", i32 3058, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/super.c", i32 3165, i32 2}
!18 = !{ptr @__func__.exit_ntfs_fs, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author288, !21, !"__UNIQUE_ID_author288", i1 false, i1 false}
!21 = !{!"../fs/ntfs/super.c", i32 3183, i32 1}
!22 = !{ptr @__UNIQUE_ID_description289, !23, !"__UNIQUE_ID_description289", i1 false, i1 false}
!23 = !{!"../fs/ntfs/super.c", i32 3184, i32 1}
!24 = !{ptr @__UNIQUE_ID_version290, !25, !"__UNIQUE_ID_version290", i1 false, i1 false}
!25 = !{!"../fs/ntfs/super.c", i32 3185, i32 1}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__modver_attr, !25, !"__modver_attr", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_file291, !31, !"__UNIQUE_ID_file291", i1 false, i1 false}
!31 = !{!"../fs/ntfs/super.c", i32 3186, i32 1}
!32 = !{ptr @__UNIQUE_ID_license292, !31, !"__UNIQUE_ID_license292", i1 false, i1 false}
!33 = !{ptr @__param_debug_msgs, !34, !"__param_debug_msgs", i1 false, i1 false}
!34 = !{!"../fs/ntfs/super.c", i32 3188, i32 1}
!35 = !{ptr @__UNIQUE_ID_debug_msgstype293, !34, !"__UNIQUE_ID_debug_msgstype293", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_debug_msgs294, !37, !"__UNIQUE_ID_debug_msgs294", i1 false, i1 false}
!37 = !{!"../fs/ntfs/super.c", i32 3189, i32 1}
!38 = !{ptr @__initcall__kmod_ntfs__295_3192_init_ntfs_fs6, !39, !"__initcall__kmod_ntfs__295_3192_init_ntfs_fs6", i1 false, i1 false}
!39 = !{!"../fs/ntfs/super.c", i32 3192, i32 1}
!40 = !{ptr @__exitcall_exit_ntfs_fs, !41, !"__exitcall_exit_ntfs_fs", i1 false, i1 false}
!41 = !{!"../fs/ntfs/super.c", i32 3193, i32 1}
!42 = !{ptr @ntfs_name_cache, !43, !"ntfs_name_cache", i1 false, i1 false}
!43 = !{!"../fs/ntfs/super.c", i32 3021, i32 20}
!44 = !{ptr @ntfs_inode_cache, !45, !"ntfs_inode_cache", i1 false, i1 false}
!45 = !{!"../fs/ntfs/super.c", i32 3024, i32 20}
!46 = !{ptr @ntfs_big_inode_cache, !47, !"ntfs_big_inode_cache", i1 false, i1 false}
!47 = !{!"../fs/ntfs/super.c", i32 3025, i32 20}
!48 = !{ptr @ntfs_attr_ctx_cache, !49, !"ntfs_attr_ctx_cache", i1 false, i1 false}
!49 = !{!"../fs/ntfs/super.c", i32 3039, i32 20}
!50 = !{ptr @ntfs_index_ctx_cache, !51, !"ntfs_index_ctx_cache", i1 false, i1 false}
!51 = !{!"../fs/ntfs/super.c", i32 3040, i32 20}
!52 = !{ptr @ntfs_fs_type, !53, !"ntfs_fs_type", i1 false, i1 false}
!53 = !{!"../fs/ntfs/super.c", i32 3051, i32 32}
!54 = !{ptr @__func__.ntfs_fill_super, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ntfs/super.c", i32 2714, i32 2}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ntfs/super.c", i32 2723, i32 4}
!59 = !{ptr @ntfs_fill_super.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../fs/ntfs/super.c", i32 2740, i32 2}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ntfs_fill_super.__key.14, !63, !"__key", i1 false, i1 false}
!63 = !{!"../fs/ntfs/super.c", i32 2741, i32 2}
!64 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ntfs/super.c", i32 2753, i32 4}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ntfs/super.c", i32 2768, i32 4}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/super.c", i32 2772, i32 2}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ntfs/super.c", i32 2778, i32 4}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ntfs/super.c", i32 2784, i32 4}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ntfs/super.c", i32 2795, i32 4}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ntfs/super.c", i32 2812, i32 5}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ntfs/super.c", i32 2819, i32 3}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ntfs/super.c", i32 2849, i32 4}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ntfs/super.c", i32 2867, i32 4}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ntfs/super.c", i32 2892, i32 3}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ntfs/super.c", i32 2899, i32 3}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ntfs/super.c", i32 2911, i32 2}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ntfs/super.c", i32 3011, i32 2}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ntfs/super.c", i32 90, i32 22}
!95 = distinct !{null, !96, !"utf8", i1 false, i1 false}
!96 = !{!"../fs/ntfs/super.c", i32 90, i32 15}
!97 = !{ptr @__func__.parse_options, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ntfs/super.c", i32 175, i32 2}
!99 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ntfs/super.c", i32 176, i32 27}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ntfs/super.c", i32 179, i32 3}
!104 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ntfs/super.c", i32 180, i32 8}
!107 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ntfs/super.c", i32 181, i32 8}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ntfs/super.c", i32 182, i32 8}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ntfs/super.c", i32 183, i32 8}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ntfs/super.c", i32 184, i32 8}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ntfs/super.c", i32 185, i32 8}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ntfs/super.c", i32 186, i32 8}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ntfs/super.c", i32 187, i32 8}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ntfs/super.c", i32 188, i32 8}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ntfs/super.c", i32 189, i32 8}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ntfs/super.c", i32 191, i32 23}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ntfs/super.c", i32 191, i32 46}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ntfs/super.c", i32 192, i32 4}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ntfs/super.c", i32 194, i32 23}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ntfs/super.c", i32 194, i32 44}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ntfs/super.c", i32 196, i32 5}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ntfs/super.c", i32 207, i32 6}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ntfs/super.c", i32 211, i32 5}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ntfs/super.c", i32 220, i32 4}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ntfs/super.c", i32 234, i32 4}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ntfs/super.c", i32 247, i32 3}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ntfs/super.c", i32 252, i32 4}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ntfs/super.c", i32 259, i32 4}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ntfs/super.c", i32 263, i32 3}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ntfs/super.c", i32 269, i32 5}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ntfs/super.c", i32 273, i32 4}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ntfs/super.c", i32 280, i32 4}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ntfs/super.c", i32 285, i32 4}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ntfs/super.c", i32 323, i32 5}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ntfs/super.c", i32 334, i32 2}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ntfs/super.c", i32 337, i32 2}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ntfs/super.c", i32 340, i32 2}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ntfs/super.c", i32 68, i32 18}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ntfs/super.c", i32 68, i32 37}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ntfs/super.c", i32 68, i32 58}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ntfs/super.c", i32 70, i32 23}
!178 = !{ptr @.str.71, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ntfs/super.c", i32 70, i32 42}
!180 = !{ptr @.str.72, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ntfs/super.c", i32 71, i32 19}
!182 = !{ptr @.str.73, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ntfs/super.c", i32 665, i32 29}
!184 = !{ptr @__func__.read_ntfs_boot_sector, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ntfs/super.c", i32 675, i32 4}
!186 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.75, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ntfs/super.c", i32 677, i32 3}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ntfs/super.c", i32 682, i32 4}
!191 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ntfs/super.c", i32 693, i32 3}
!193 = !{ptr @.str.78, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ntfs/super.c", i32 700, i32 4}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ntfs/super.c", i32 722, i32 4}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ntfs/super.c", i32 732, i32 4}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ntfs/super.c", i32 735, i32 4}
!201 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ntfs/super.c", i32 740, i32 2}
!203 = !{ptr @__func__.is_boot_sector_ntfs, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ntfs/super.c", i32 586, i32 4}
!205 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ntfs/super.c", i32 637, i32 3}
!208 = !{ptr @__func__.parse_ntfs_boot_sector, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ntfs/super.c", i32 760, i32 2}
!210 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ntfs/super.c", i32 762, i32 2}
!213 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ntfs/super.c", i32 765, i32 3}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ntfs/super.c", i32 771, i32 2}
!217 = !{ptr @.str.89, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ntfs/super.c", i32 773, i32 2}
!219 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ntfs/super.c", i32 776, i32 2}
!221 = !{ptr @.str.91, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/ntfs/super.c", i32 780, i32 2}
!223 = !{ptr @.str.92, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ntfs/super.c", i32 782, i32 2}
!225 = !{ptr @.str.93, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ntfs/super.c", i32 783, i32 2}
!227 = !{ptr @.str.94, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ntfs/super.c", i32 785, i32 3}
!229 = !{ptr @.str.95, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ntfs/super.c", i32 791, i32 2}
!231 = !{ptr @.str.96, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ntfs/super.c", i32 805, i32 2}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ntfs/super.c", i32 807, i32 2}
!235 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ntfs/super.c", i32 809, i32 2}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ntfs/super.c", i32 816, i32 3}
!239 = !{ptr @.str.100, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ntfs/super.c", i32 824, i32 3}
!241 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ntfs/super.c", i32 831, i32 2}
!243 = !{ptr @.str.102, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ntfs/super.c", i32 846, i32 2}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ntfs/super.c", i32 848, i32 2}
!247 = !{ptr @.str.104, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ntfs/super.c", i32 850, i32 2}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ntfs/super.c", i32 855, i32 3}
!251 = !{ptr @.str.106, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ntfs/super.c", i32 868, i32 3}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/ntfs/super.c", i32 872, i32 2}
!255 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ntfs/super.c", i32 880, i32 4}
!257 = !{ptr @.str.109, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ntfs/super.c", i32 890, i32 3}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ntfs/super.c", i32 896, i32 2}
!261 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ntfs/super.c", i32 899, i32 3}
!263 = !{ptr @.str.112, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/ntfs/super.c", i32 905, i32 2}
!265 = !{ptr @.str.113, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ntfs/super.c", i32 920, i32 2}
!267 = !{ptr @.str.114, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ntfs/super.c", i32 923, i32 2}
!269 = !{ptr @__func__.ntfs_setup_allocators, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ntfs/super.c", i32 940, i32 2}
!271 = !{ptr @.str.115, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.116, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ntfs/super.c", i32 963, i32 2}
!274 = !{ptr @.str.117, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ntfs/super.c", i32 980, i32 2}
!276 = !{ptr @.str.118, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ntfs/super.c", i32 992, i32 2}
!278 = !{ptr @.str.119, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ntfs/super.c", i32 999, i32 2}
!280 = !{ptr @.str.120, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/ntfs/super.c", i32 1002, i32 2}
!282 = !{ptr @.str.121, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ntfs/super.c", i32 1007, i32 2}
!284 = !{ptr @ntfs_sops, !285, !"ntfs_sops", i1 false, i1 false}
!285 = !{!"../fs/ntfs/super.c", i32 2662, i32 38}
!286 = !{ptr @__func__.ntfs_put_super, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ntfs/super.c", i32 2252, i32 2}
!288 = !{ptr @.str.122, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ntfs/super.c", i32 2303, i32 5}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/ntfs/super.c", i32 2312, i32 4}
!292 = !{ptr @__func__.ntfs_write_volume_flags, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ntfs/super.c", i32 369, i32 2}
!294 = !{ptr @.str.124, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.125, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ntfs/super.c", i32 396, i32 2}
!297 = !{ptr @.str.126, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/ntfs/super.c", i32 403, i32 2}
!299 = !{ptr @__func__.ntfs_statfs, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/ntfs/super.c", i32 2600, i32 2}
!301 = !{ptr @__func__.get_nr_free_clusters, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/ntfs/super.c", i32 2452, i32 2}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/ntfs/super.c", i32 2463, i32 2}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/ntfs/super.c", i32 2475, i32 4}
!307 = !{ptr @.str.129, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/ntfs/super.c", i32 2493, i32 2}
!309 = !{ptr @.str.130, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/ntfs/super.c", i32 2504, i32 2}
!311 = !{ptr @.str.131, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../include/linux/mm.h", i32 717, i32 2}
!313 = !{ptr @__func__.__get_nr_free_mft_records, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/ntfs/super.c", i32 2532, i32 2}
!315 = !{ptr @.str.132, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/ntfs/super.c", i32 2534, i32 2}
!317 = !{ptr @.str.133, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ntfs/super.c", i32 2564, i32 2}
!319 = !{ptr @__func__.ntfs_remount, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/ntfs/super.c", i32 456, i32 2}
!321 = !{ptr @.str.134, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.135, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ntfs/super.c", i32 477, i32 27}
!324 = distinct !{null, !325, !"es", i1 false, i1 false}
!325 = !{!"../fs/ntfs/super.c", i32 477, i32 22}
!326 = !{ptr @.str.136, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/ntfs/super.c", i32 481, i32 4}
!328 = !{ptr @.str.137, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/ntfs/super.c", i32 486, i32 4}
!330 = !{ptr @.str.138, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/ntfs/super.c", i32 490, i32 4}
!332 = !{ptr @.str.139, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/ntfs/super.c", i32 495, i32 4}
!334 = !{ptr @.str.140, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/ntfs/super.c", i32 502, i32 4}
!336 = !{ptr @.str.141, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/ntfs/super.c", i32 520, i32 4}
!338 = !{ptr @.str.142, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/ntfs/super.c", i32 526, i32 4}
!340 = !{ptr @.str.143, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../fs/ntfs/super.c", i32 532, i32 4}
!342 = !{ptr @ntfs_nr_compression_users, !343, !"ntfs_nr_compression_users", i1 false, i1 false}
!343 = !{!"../fs/ntfs/super.c", i32 36, i32 22}
!344 = !{ptr @default_upcase, !345, !"default_upcase", i1 false, i1 false}
!345 = !{!"../fs/ntfs/super.c", i32 39, i32 18}
!346 = !{ptr @ntfs_nr_upcase_users, !347, !"ntfs_nr_upcase_users", i1 false, i1 false}
!347 = !{!"../fs/ntfs/super.c", i32 40, i32 22}
!348 = !{ptr @__func__.load_system_files, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/ntfs/super.c", i32 1769, i32 2}
!350 = !{ptr @.str.144, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/ntfs/super.c", i32 1773, i32 28}
!352 = distinct !{null, !353, !"es1", i1 false, i1 false}
!353 = !{!"../fs/ntfs/super.c", i32 1773, i32 22}
!354 = !{ptr @.str.145, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ntfs/super.c", i32 1774, i32 28}
!356 = distinct !{null, !357, !"es2", i1 false, i1 false}
!357 = !{!"../fs/ntfs/super.c", i32 1774, i32 22}
!358 = !{ptr @.str.146, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/ntfs/super.c", i32 1775, i32 28}
!360 = distinct !{null, !361, !"es3", i1 false, i1 false}
!361 = !{!"../fs/ntfs/super.c", i32 1775, i32 22}
!362 = !{ptr @.str.147, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/ntfs/super.c", i32 1781, i32 5}
!364 = !{ptr @.str.148, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/ntfs/super.c", i32 1789, i32 4}
!366 = !{ptr @.str.149, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../fs/ntfs/super.c", i32 1792, i32 4}
!368 = !{ptr @.str.150, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/ntfs/super.c", i32 1802, i32 3}
!370 = !{ptr @.str.151, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../fs/ntfs/super.c", i32 1805, i32 2}
!372 = !{ptr @.str.152, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/ntfs/super.c", i32 1807, i32 2}
!374 = !{ptr @.str.153, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../fs/ntfs/super.c", i32 1831, i32 2}
!376 = !{ptr @.str.154, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../fs/ntfs/super.c", i32 1833, i32 2}
!378 = !{ptr @.str.155, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/ntfs/super.c", i32 1840, i32 3}
!380 = !{ptr @.str.156, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/ntfs/super.c", i32 1852, i32 3}
!382 = !{ptr @.str.157, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/ntfs/super.c", i32 1862, i32 3}
!384 = !{ptr @.str.158, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/ntfs/super.c", i32 1886, i32 2}
!386 = !{ptr @load_system_files._entry, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @load_system_files._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.159, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/ntfs/super.c", i32 1889, i32 3}
!390 = !{ptr @.str.160, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../fs/ntfs/super.c", i32 1897, i32 29}
!392 = distinct !{null, !393, !"es1a", i1 false, i1 false}
!393 = !{!"../fs/ntfs/super.c", i32 1897, i32 22}
!394 = !{ptr @.str.161, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/ntfs/super.c", i32 1898, i32 29}
!396 = distinct !{null, !397, !"es1b", i1 false, i1 false}
!397 = !{!"../fs/ntfs/super.c", i32 1898, i32 22}
!398 = !{ptr @.str.162, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/ntfs/super.c", i32 1899, i32 29}
!400 = distinct !{null, !401, !"es1c", i1 false, i1 false}
!401 = !{!"../fs/ntfs/super.c", i32 1899, i32 22}
!402 = !{ptr @.str.163, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/ntfs/super.c", i32 1900, i32 29}
!404 = distinct !{null, !405, !"es2a", i1 false, i1 false}
!405 = !{!"../fs/ntfs/super.c", i32 1900, i32 22}
!406 = !{ptr @.str.164, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/ntfs/super.c", i32 1901, i32 29}
!408 = distinct !{null, !409, !"es2b", i1 false, i1 false}
!409 = !{!"../fs/ntfs/super.c", i32 1901, i32 22}
!410 = !{ptr @.str.165, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../fs/ntfs/super.c", i32 1912, i32 4}
!412 = !{ptr @.str.167, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../fs/ntfs/super.c", i32 1943, i32 29}
!414 = distinct !{null, !415, !"es1a", i1 false, i1 false}
!415 = !{!"../fs/ntfs/super.c", i32 1943, i32 22}
!416 = !{ptr @.str.169, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../fs/ntfs/super.c", i32 1944, i32 29}
!418 = distinct !{null, !419, !"es1b", i1 false, i1 false}
!419 = !{!"../fs/ntfs/super.c", i32 1944, i32 22}
!420 = distinct !{null, !421, !"es2", i1 false, i1 false}
!421 = !{!"../fs/ntfs/super.c", i32 1945, i32 22}
!422 = !{ptr @.str.171, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/ntfs/super.c", i32 1978, i32 3}
!424 = !{ptr @.str.173, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../fs/ntfs/super.c", i32 1991, i32 29}
!426 = distinct !{null, !427, !"es1a", i1 false, i1 false}
!427 = !{!"../fs/ntfs/super.c", i32 1991, i32 22}
!428 = !{ptr @.str.175, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../fs/ntfs/super.c", i32 1993, i32 29}
!430 = distinct !{null, !431, !"es1b", i1 false, i1 false}
!431 = !{!"../fs/ntfs/super.c", i32 1993, i32 22}
!432 = !{ptr @.str.177, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../fs/ntfs/super.c", i32 1994, i32 28}
!434 = distinct !{null, !435, !"es2", i1 false, i1 false}
!435 = !{!"../fs/ntfs/super.c", i32 1994, i32 22}
!436 = !{ptr @.str.179, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../fs/ntfs/super.c", i32 2018, i32 28}
!438 = distinct !{null, !439, !"es1", i1 false, i1 false}
!439 = !{!"../fs/ntfs/super.c", i32 2018, i32 22}
!440 = distinct !{null, !441, !"es2", i1 false, i1 false}
!441 = !{!"../fs/ntfs/super.c", i32 2020, i32 22}
!442 = !{ptr @.str.182, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../fs/ntfs/super.c", i32 2064, i32 28}
!444 = distinct !{null, !445, !"es1", i1 false, i1 false}
!445 = !{!"../fs/ntfs/super.c", i32 2064, i32 22}
!446 = distinct !{null, !447, !"es2", i1 false, i1 false}
!447 = !{!"../fs/ntfs/super.c", i32 2065, i32 22}
!448 = !{ptr @.str.184, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../fs/ntfs/super.c", i32 2089, i32 3}
!450 = !{ptr @.str.185, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../fs/ntfs/super.c", i32 2098, i32 3}
!452 = !{ptr @.str.187, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../fs/ntfs/super.c", i32 2104, i32 28}
!454 = distinct !{null, !455, !"es1", i1 false, i1 false}
!455 = !{!"../fs/ntfs/super.c", i32 2104, i32 22}
!456 = distinct !{null, !457, !"es2", i1 false, i1 false}
!457 = !{!"../fs/ntfs/super.c", i32 2105, i32 22}
!458 = !{ptr @.str.190, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../fs/ntfs/super.c", i32 2127, i32 28}
!460 = distinct !{null, !461, !"es1", i1 false, i1 false}
!461 = !{!"../fs/ntfs/super.c", i32 2127, i32 22}
!462 = distinct !{null, !463, !"es2", i1 false, i1 false}
!463 = !{!"../fs/ntfs/super.c", i32 2128, i32 22}
!464 = !{ptr @.str.193, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../fs/ntfs/super.c", i32 2147, i32 28}
!466 = distinct !{null, !467, !"es1", i1 false, i1 false}
!467 = !{!"../fs/ntfs/super.c", i32 2147, i32 22}
!468 = distinct !{null, !469, !"es2", i1 false, i1 false}
!469 = !{!"../fs/ntfs/super.c", i32 2148, i32 22}
!470 = !{ptr @.str.196, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../fs/ntfs/super.c", i32 2170, i32 28}
!472 = distinct !{null, !473, !"es1", i1 false, i1 false}
!473 = !{!"../fs/ntfs/super.c", i32 2170, i32 22}
!474 = distinct !{null, !475, !"es2", i1 false, i1 false}
!475 = !{!"../fs/ntfs/super.c", i32 2172, i32 22}
!476 = !{ptr @__func__.load_and_init_mft_mirror, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../fs/ntfs/super.c", i32 1025, i32 2}
!478 = !{ptr @__func__.check_mft_mirror, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../fs/ntfs/super.c", i32 1083, i32 2}
!480 = !{ptr @.str.198, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../fs/ntfs/super.c", i32 1104, i32 5}
!482 = !{ptr @.str.199, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../fs/ntfs/super.c", i32 1112, i32 5}
!484 = !{ptr @.str.200, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../fs/ntfs/super.c", i32 1122, i32 5}
!486 = !{ptr @.str.201, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../fs/ntfs/super.c", i32 1135, i32 5}
!488 = !{ptr @.str.202, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../fs/ntfs/super.c", i32 1154, i32 4}
!490 = !{ptr @.str.203, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../fs/ntfs/super.c", i32 1185, i32 4}
!492 = !{ptr @.str.204, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!494 = !{ptr @.str.205, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!496 = !{ptr @mftbmp_runlist_lock_key, !497, !"mftbmp_runlist_lock_key", i1 false, i1 false}
!497 = !{!"../fs/ntfs/super.c", i32 1747, i32 2}
!498 = !{ptr @mftbmp_mrec_lock_key, !499, !"mftbmp_mrec_lock_key", i1 false, i1 false}
!499 = !{!"../fs/ntfs/super.c", i32 1747, i32 27}
!500 = !{ptr @__func__.load_and_init_upcase, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../fs/ntfs/super.c", i32 1653, i32 2}
!502 = !{ptr @.str.206, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../fs/ntfs/super.c", i32 1691, i32 2}
!504 = !{ptr @.str.207, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../fs/ntfs/super.c", i32 1696, i32 3}
!506 = !{ptr @.str.208, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../fs/ntfs/super.c", i32 1713, i32 3}
!508 = !{ptr @.str.209, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../fs/ntfs/super.c", i32 1718, i32 2}
!510 = !{ptr @.str.210, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../fs/ntfs/super.c", i32 1732, i32 3}
!512 = !{ptr @.str.211, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../fs/ntfs/super.c", i32 1737, i32 2}
!514 = !{ptr @__func__.load_and_init_attrdef, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../fs/ntfs/super.c", i32 1587, i32 2}
!516 = !{ptr @.str.212, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../fs/ntfs/super.c", i32 1622, i32 2}
!518 = !{ptr @.str.213, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../fs/ntfs/super.c", i32 1631, i32 2}
!520 = !{ptr @lcnbmp_runlist_lock_key, !521, !"lcnbmp_runlist_lock_key", i1 false, i1 false}
!521 = !{!"../fs/ntfs/super.c", i32 1746, i32 2}
!522 = !{ptr @lcnbmp_mrec_lock_key, !523, !"lcnbmp_mrec_lock_key", i1 false, i1 false}
!523 = !{!"../fs/ntfs/super.c", i32 1746, i32 27}
!524 = !{ptr @__func__.load_and_check_logfile, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../fs/ntfs/super.c", i32 1207, i32 2}
!526 = !{ptr @check_windows_hibernation_status.hiberfil, !527, !"hiberfil", i1 false, i1 false}
!527 = !{!"../fs/ntfs/super.c", i32 1260, i32 24}
!528 = !{ptr @__func__.check_windows_hibernation_status, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../fs/ntfs/super.c", i32 1268, i32 2}
!530 = !{ptr @.str.214, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../fs/ntfs/super.c", i32 1281, i32 4}
!532 = !{ptr @.str.215, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../fs/ntfs/super.c", i32 1286, i32 3}
!534 = !{ptr @.str.216, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../fs/ntfs/super.c", i32 1297, i32 3}
!536 = !{ptr @.str.217, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../fs/ntfs/super.c", i32 1301, i32 3}
!538 = !{ptr @.str.218, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../fs/ntfs/super.c", i32 1308, i32 3}
!540 = !{ptr @.str.219, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../fs/ntfs/super.c", i32 1314, i32 3}
!542 = !{ptr @.str.220, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../fs/ntfs/super.c", i32 1322, i32 4}
!544 = !{ptr @.str.221, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../fs/ntfs/super.c", i32 1331, i32 2}
!546 = !{ptr @load_and_init_quota.Quota, !547, !"Quota", i1 false, i1 false}
!547 = !{!"../fs/ntfs/super.c", i32 1354, i32 24}
!548 = !{ptr @load_and_init_quota.Q, !549, !"Q", i1 false, i1 false}
!549 = !{!"../fs/ntfs/super.c", i32 1358, i32 18}
!550 = !{ptr @__func__.load_and_init_quota, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../fs/ntfs/super.c", i32 1361, i32 2}
!552 = !{ptr @.str.222, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../fs/ntfs/super.c", i32 1376, i32 4}
!554 = !{ptr @.str.223, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../fs/ntfs/super.c", i32 1386, i32 3}
!556 = !{ptr @.str.224, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../fs/ntfs/super.c", i32 1396, i32 3}
!558 = !{ptr @.str.225, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../fs/ntfs/super.c", i32 1403, i32 3}
!560 = !{ptr @load_and_init_usnjrnl.UsnJrnl, !561, !"UsnJrnl", i1 false, i1 false}
!561 = !{!"../fs/ntfs/super.c", i32 1433, i32 24}
!562 = !{ptr @load_and_init_usnjrnl.Max, !563, !"Max", i1 false, i1 false}
!563 = !{!"../fs/ntfs/super.c", i32 1438, i32 18}
!564 = !{ptr @load_and_init_usnjrnl.J, !565, !"J", i1 false, i1 false}
!565 = !{!"../fs/ntfs/super.c", i32 1441, i32 18}
!566 = !{ptr @__func__.load_and_init_usnjrnl, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../fs/ntfs/super.c", i32 1444, i32 2}
!568 = !{ptr @.str.226, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../fs/ntfs/super.c", i32 1459, i32 4}
!570 = !{ptr @.str.227, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../fs/ntfs/super.c", i32 1470, i32 3}
!572 = !{ptr @.str.228, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../fs/ntfs/super.c", i32 1481, i32 3}
!574 = !{ptr @.str.229, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../fs/ntfs/super.c", i32 1490, i32 3}
!576 = !{ptr @.str.230, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../fs/ntfs/super.c", i32 1498, i32 3}
!578 = !{ptr @.str.231, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../fs/ntfs/super.c", i32 1504, i32 3}
!580 = !{ptr @.str.232, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../fs/ntfs/super.c", i32 1513, i32 3}
!582 = !{ptr @.str.233, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../fs/ntfs/super.c", i32 1521, i32 3}
!584 = !{ptr @.str.234, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../fs/ntfs/super.c", i32 1528, i32 3}
!586 = !{ptr @.str.235, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../fs/ntfs/super.c", i32 1536, i32 3}
!588 = !{ptr @.str.236, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../fs/ntfs/super.c", i32 1552, i32 4}
!590 = !{ptr @.str.237, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../fs/ntfs/super.c", i32 1559, i32 3}
!592 = !{ptr @__param_str_debug_msgs, !34, !"__param_str_debug_msgs", i1 false, i1 false}
!593 = !{ptr @.str.238, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../fs/ntfs/super.c", i32 3072, i32 2}
!595 = !{ptr @.str.239, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @init_ntfs_fs._entry, !594, !"_entry", i1 false, i1 false}
!597 = !{ptr @init_ntfs_fs._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @.str.240, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../fs/ntfs/super.c", i32 3086, i32 2}
!600 = !{ptr @.str.242, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../fs/ntfs/super.c", i32 3092, i32 3}
!602 = !{ptr @init_ntfs_fs._entry.241, !601, !"_entry", i1 false, i1 false}
!603 = !{ptr @init_ntfs_fs._entry_ptr.243, !601, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.245, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../fs/ntfs/super.c", i32 3099, i32 3}
!606 = !{ptr @init_ntfs_fs._entry.244, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @init_ntfs_fs._entry_ptr.246, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @init_ntfs_fs._entry.247, !609, !"_entry", i1 false, i1 false}
!609 = !{!"../fs/ntfs/super.c", i32 3108, i32 3}
!610 = !{ptr @init_ntfs_fs._entry_ptr.248, !609, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @init_ntfs_fs._entry.249, !612, !"_entry", i1 false, i1 false}
!612 = !{!"../fs/ntfs/super.c", i32 3116, i32 3}
!613 = !{ptr @init_ntfs_fs._entry_ptr.250, !612, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @init_ntfs_fs._entry.251, !615, !"_entry", i1 false, i1 false}
!615 = !{!"../fs/ntfs/super.c", i32 3125, i32 3}
!616 = !{ptr @init_ntfs_fs._entry_ptr.252, !615, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @.str.254, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../fs/ntfs/super.c", i32 3132, i32 3}
!619 = !{ptr @init_ntfs_fs._entry.253, !618, !"_entry", i1 false, i1 false}
!620 = !{ptr @init_ntfs_fs._entry_ptr.255, !618, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.256, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../fs/ntfs/super.c", i32 3138, i32 3}
!623 = !{ptr @.str.258, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../fs/ntfs/super.c", i32 3141, i32 2}
!625 = !{ptr @init_ntfs_fs._entry.257, !624, !"_entry", i1 false, i1 false}
!626 = !{ptr @init_ntfs_fs._entry_ptr.259, !624, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.261, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../fs/ntfs/super.c", i32 3157, i32 3}
!629 = !{ptr @init_ntfs_fs._entry.260, !628, !"_entry", i1 false, i1 false}
!630 = !{ptr @init_ntfs_fs._entry_ptr.262, !628, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @ntfs_index_ctx_cache_name, !632, !"ntfs_index_ctx_cache_name", i1 false, i1 false}
!632 = !{!"../fs/ntfs/super.c", i32 3061, i32 19}
!633 = !{ptr @ntfs_attr_ctx_cache_name, !634, !"ntfs_attr_ctx_cache_name", i1 false, i1 false}
!634 = !{!"../fs/ntfs/super.c", i32 3062, i32 19}
!635 = !{ptr @ntfs_name_cache_name, !636, !"ntfs_name_cache_name", i1 false, i1 false}
!636 = !{!"../fs/ntfs/super.c", i32 3063, i32 19}
!637 = !{ptr @ntfs_inode_cache_name, !638, !"ntfs_inode_cache_name", i1 false, i1 false}
!638 = !{!"../fs/ntfs/super.c", i32 3064, i32 19}
!639 = !{ptr @ntfs_big_inode_cache_name, !640, !"ntfs_big_inode_cache_name", i1 false, i1 false}
!640 = !{!"../fs/ntfs/super.c", i32 3065, i32 19}
!641 = !{!"sp"}
!642 = !{i32 1, !"wchar_size", i32 2}
!643 = !{i32 1, !"min_enum_size", i32 4}
!644 = !{i32 8, !"branch-target-enforcement", i32 0}
!645 = !{i32 8, !"sign-return-address", i32 0}
!646 = !{i32 8, !"sign-return-address-all", i32 0}
!647 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!648 = !{i32 7, !"uwtable", i32 1}
!649 = !{i32 7, !"frame-pointer", i32 2}
!650 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!651 = !{!"branch_weights", i32 2000, i32 1}
!652 = !{i64 2155183417, i64 2155183898, i64 2155183454, i64 2155183510, i64 2155183544, i64 2155183568, i64 2155183609, i64 2155183630, i64 2155183658, i64 2155183692}
!653 = !{i16 0, i16 17}
!654 = !{i8 0, i8 9}
!655 = !{i32 0, i32 33}
!656 = !{i64 2155185505, i64 2155185986, i64 2155185542, i64 2155185598, i64 2155185632, i64 2155185656, i64 2155185697, i64 2155185718, i64 2155185746, i64 2155185780}
!657 = !{!"auto-init"}
!658 = !{i8 0, i8 2}
!659 = !{!"branch_weights", i32 1, i32 2000}
!660 = !{i64 2155147628, i64 2155148109, i64 2155147665, i64 2155147721, i64 2155147755, i64 2155147779, i64 2155147820, i64 2155147841, i64 2155147869, i64 2155147903}
!661 = !{i64 2155149211, i64 2155149692, i64 2155149248, i64 2155149304, i64 2155149338, i64 2155149362, i64 2155149403, i64 2155149424, i64 2155149452, i64 2155149486}
!662 = !{i64 2155167588, i64 2155168069, i64 2155167625, i64 2155167681, i64 2155167715, i64 2155167739, i64 2155167780, i64 2155167801, i64 2155167829, i64 2155167863}
!663 = !{i64 2155134153, i64 2155134633, i64 2155134190, i64 2155134246, i64 2155134280, i64 2155134304, i64 2155134345, i64 2155134366, i64 2155134394, i64 2155134428}
!664 = !{i64 2153804565}
!665 = !{i64 2152754557}
!666 = !{i64 2152754764}
!667 = !{i64 2153807336}
!668 = !{i64 2153349944, i64 2153350427, i64 2153349981, i64 2153350037, i64 2153350071, i64 2153350095, i64 2153350136, i64 2153350157, i64 2153350185, i64 2153350219}
!669 = !{i64 2148768096}
!670 = !{i64 2148682805, i64 2148682837, i64 2148682866, i64 2148682900, i64 2148682931, i64 2148682954}
!671 = !{i64 2148768325}
!672 = !{i64 2148300346, i64 2148300351, i64 2148300364, i64 2148300408, i64 2148300442, i64 2148300463}
!673 = !{i64 1084300, i64 1084361}
!674 = !{i64 1087032}
!675 = !{i64 1087317}
!676 = !{i64 2153080941}
!677 = !{i64 2153080783}
!678 = !{i64 2153081111}
!679 = !{i64 2149859019}
!680 = !{i64 2150293249, i64 2150293740, i64 2150293286, i64 2150293342, i64 2150293376, i64 2150293400, i64 2150293441, i64 2150293462, i64 2150293490, i64 2150293524}
