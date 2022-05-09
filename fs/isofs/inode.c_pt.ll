; ModuleID = '/llk/IR_all_yes/fs/isofs/inode.c_pt.bc'
source_filename = "../fs/isofs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.isofs_iget5_callback_data = type { i32, i32 }
%struct.isofs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, %struct.kgid_t, %struct.kuid_t, ptr }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.iso_volume_descriptor = type { [1 x i8], [5 x i8], [1 x i8], [2041 x i8] }
%struct.iso_supplementary_descriptor = type { [1 x i8], [5 x i8], [1 x i8], [1 x i8], [32 x i8], [32 x i8], [8 x i8], [8 x i8], [32 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [34 x i8], [128 x i8], [128 x i8], [128 x i8], [128 x i8], [37 x i8], [37 x i8], [37 x i8], [17 x i8], [17 x i8], [17 x i8], [17 x i8], [1 x i8], [1 x i8], [512 x i8], [653 x i8] }
%struct.hs_volume_descriptor = type { [8 x i8], [1 x i8], [5 x i8], [1 x i8], [2033 x i8] }
%struct.hs_primary_descriptor = type { [8 x i8], [1 x i8], [5 x i8], [1 x i8], [1 x i8], [32 x i8], [32 x i8], [8 x i8], [8 x i8], [32 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [4 x i8], [28 x i8], [34 x i8] }
%struct.iso_primary_descriptor = type { [1 x i8], [5 x i8], [1 x i8], [1 x i8], [32 x i8], [32 x i8], [8 x i8], [8 x i8], [32 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [34 x i8], [128 x i8], [128 x i8], [128 x i8], [128 x i8], [37 x i8], [37 x i8], [37 x i8], [17 x i8], [17 x i8], [17 x i8], [17 x i8], [1 x i8], [1 x i8], [512 x i8], [653 x i8] }
%struct.iso_inode_info = type { i32, i32, i32, i8, [3 x i8], i32, i32, i32, %struct.inode }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.76, %struct.list_head, %struct.list_head, %union.anon.77 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.anon.3 = type { i32, i32 }

@isofs_get_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: block number too large\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isofs_get_blocks\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/isofs/inode.c\00", [47 x i8] zeroinitializer }, align 32
@isofs_get_blocks._entry_ptr = internal global ptr @isofs_get_blocks._entry, section ".printk_index", align 4
@isofs_get_blocks._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: block >= EOF (%lu, %llu)\0A\00", [32 x i8] zeroinitializer }, align 32
@isofs_get_blocks._entry_ptr.5 = internal global ptr @isofs_get_blocks._entry.3, section ".printk_index", align 4
@isofs_get_blocks._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: More than 100 file sections ?!? aborting...\0A\00", [45 x i8] zeroinitializer }, align 32
@isofs_get_blocks._entry_ptr.8 = internal global ptr @isofs_get_blocks._entry.6, section ".printk_index", align 4
@isofs_get_blocks._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: block=%lu firstext=%u sect_size=%u nextblk=%lu nextoff=%lu\0A\00", [62 x i8] zeroinitializer }, align 32
@isofs_get_blocks._entry_ptr.11 = internal global ptr @isofs_get_blocks._entry.9, section ".printk_index", align 4
@__UNIQUE_ID_alias269 = internal constant [23 x i8] c"isofs.alias=fs-iso9660\00", section ".modinfo", align 1
@__UNIQUE_ID_alias270 = internal constant [20 x i8] c"isofs.alias=iso9660\00", section ".modinfo", align 1
@iso9660_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.27, i32 1, ptr null, ptr null, ptr @isofs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_isofs__271_1613_init_iso9660_fs6 = internal global ptr @init_iso9660_fs, section ".initcall6.init", align 4
@__exitcall_exit_iso9660_fs = internal global ptr @exit_iso9660_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file272 = internal constant [26 x i8] c"isofs.file=fs/isofs/isofs\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [18 x i8] c"isofs.license=GPL\00", section ".modinfo", align 1
@isofs_get_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Kernel tries to allocate a block\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isofs_get_block\00", [16 x i8] zeroinitializer }, align 32
@isofs_get_block._entry_ptr = internal global ptr @isofs_get_block._entry, section ".printk_index", align 4
@isofs_read_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017ISOFS: Interleaved files not (yet) supported.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isofs_read_inode\00", [47 x i8] zeroinitializer }, align 32
@isofs_read_inode._entry_ptr = internal global ptr @isofs_read_inode._entry, section ".printk_index", align 4
@isofs_read_inode._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ISOFS: File unit size != 0 for ISO file (%ld).\0A\00", [46 x i8] zeroinitializer }, align 32
@isofs_read_inode._entry_ptr.18 = internal global ptr @isofs_read_inode._entry.16, section ".printk_index", align 4
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@zisofs_aops = external dso_local constant %struct.address_space_operations, align 4
@isofs_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @isofs_readpage, ptr null, ptr null, ptr null, ptr @isofs_readahead, ptr null, ptr null, ptr @_isofs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isofs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@isofs_dir_operations = external dso_local constant %struct.file_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@isofs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@isofs_read_inode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014ISOFS: unable to read i-node block\0A\00", [58 x i8] zeroinitializer }, align 32
@isofs_read_inode._entry_ptr.21 = internal global ptr @isofs_read_inode._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isofs_read_level3_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ISOFS: unable to read i-node block %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isofs_read_level3_size\00", [41 x i8] zeroinitializer }, align 32
@isofs_read_level3_size._entry_ptr = internal global ptr @isofs_read_level3_size._entry, section ".printk_index", align 4
@isofs_read_level3_size._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016%s: More than 100 file sections ?!?, aborting...\0Aisofs_read_level3_size: inode=%lu\0A\00", [42 x i8] zeroinitializer }, align 32
@isofs_read_level3_size._entry_ptr.26 = internal global ptr @isofs_read_level3_size._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iso9660\00", [24 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014ISOFS: unsupported/invalid hardware sector size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isofs_fill_super\00", [47 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr = internal global ptr @isofs_fill_super._entry, section ".printk_index", align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CD001\00", [26 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ISO 9660 Extensions: Microsoft Joliet Level %d\0A\00", [46 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.33 = internal global ptr @isofs_fill_super._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CDROM\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iso8859-1\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@isofs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @isofs_alloc_inode, ptr null, ptr @isofs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr @isofs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isofs_statfs, ptr @isofs_remount, ptr null, ptr @isofs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@isofs_export_ops = external dso_local constant %struct.export_operations, align 4
@isofs_fill_super._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.2, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\015ISOFS: primary root directory is empty. Disabling Rock Ridge and switching to Joliet.\00", [40 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.39 = internal global ptr @isofs_fill_super._entry.37, section ".printk_index", align 4
@isofs_fill_super._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017ISOFS: changing to secondary root\0A\00", [59 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.42 = internal global ptr @isofs_fill_super._entry.40, section ".printk_index", align 4
@isofs_fill_super._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014isofs_fill_super: root inode is not a directory. Corrupted media?\0A\00", [59 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.45 = internal global ptr @isofs_fill_super._entry.43, section ".printk_index", align 4
@isofs_dentry_ops = internal constant [3 x %struct.dentry_operations] [%struct.dentry_operations { ptr null, ptr null, ptr @isofs_hashi, ptr @isofs_dentry_cmpi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, %struct.dentry_operations { ptr null, ptr null, ptr @isofs_hash_ms, ptr @isofs_dentry_cmp_ms, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, %struct.dentry_operations { ptr null, ptr null, ptr @isofs_hashi_ms, ptr @isofs_dentry_cmpi_ms, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }], align 128
@isofs_fill_super._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.29, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: get root inode failed\0A\00", [35 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.48 = internal global ptr @isofs_fill_super._entry.46, section ".printk_index", align 4
@isofs_fill_super._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.29, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: bread failed, dev=%s, iso_blknum=%d, block=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.51 = internal global ptr @isofs_fill_super._entry.49, section ".printk_index", align 4
@isofs_fill_super._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.29, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014ISOFS: Bad logical zone size %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.54 = internal global ptr @isofs_fill_super._entry.52, section ".printk_index", align 4
@isofs_fill_super._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.29, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014ISOFS: Logical zone size(%d) < hardware blocksize(%u)\0A\00", [39 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.57 = internal global ptr @isofs_fill_super._entry.55, section ".printk_index", align 4
@isofs_fill_super._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.29, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014ISOFS: Unable to identify CD-ROM format.\0A\00", [52 x i8] zeroinitializer }, align 32
@isofs_fill_super._entry_ptr.60 = internal global ptr @isofs_fill_super._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [36 x %struct.match_token], [64 x i8] } { [36 x %struct.match_token] [%struct.match_token { i32 12, ptr @.str.63 }, %struct.match_token { i32 11, ptr @.str.64 }, %struct.match_token { i32 16, ptr @.str.65 }, %struct.match_token { i32 20, ptr @.str.66 }, %struct.match_token { i32 21, ptr @.str.67 }, %struct.match_token { i32 3, ptr @.str.68 }, %struct.match_token { i32 17, ptr @.str.36 }, %struct.match_token { i32 6, ptr @.str.69 }, %struct.match_token { i32 7, ptr @.str.70 }, %struct.match_token { i32 7, ptr @.str.71 }, %struct.match_token { i32 8, ptr @.str.72 }, %struct.match_token { i32 8, ptr @.str.73 }, %struct.match_token { i32 9, ptr @.str.74 }, %struct.match_token { i32 9, ptr @.str.75 }, %struct.match_token { i32 14, ptr @.str.76 }, %struct.match_token { i32 13, ptr @.str.77 }, %struct.match_token { i32 1, ptr @.str.78 }, %struct.match_token { i32 1, ptr @.str.79 }, %struct.match_token { i32 2, ptr @.str.80 }, %struct.match_token { i32 2, ptr @.str.81 }, %struct.match_token { i32 15, ptr @.str.82 }, %struct.match_token { i32 4, ptr @.str.83 }, %struct.match_token { i32 10, ptr @.str.84 }, %struct.match_token { i32 22, ptr @.str.85 }, %struct.match_token { i32 23, ptr @.str.86 }, %struct.match_token { i32 0, ptr @.str.87 }, %struct.match_token { i32 5, ptr @.str.88 }, %struct.match_token { i32 5, ptr @.str.89 }, %struct.match_token { i32 5, ptr @.str.90 }, %struct.match_token { i32 5, ptr @.str.91 }, %struct.match_token { i32 5, ptr @.str.92 }, %struct.match_token { i32 5, ptr @.str.93 }, %struct.match_token { i32 5, ptr @.str.94 }, %struct.match_token { i32 5, ptr @.str.95 }, %struct.match_token { i32 19, ptr @.str.96 }, %struct.match_token { i32 18, ptr null }], [64 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"norock\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nojoliet\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unhide\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hide\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"showassoc\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cruft\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iocharset=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"map=acorn\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"map=a\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map=normal\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"map=n\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map=off\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"map=o\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"session=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbsector=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check=relaxed\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"check=r\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check=strict\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"check=s\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mode=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmode=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"overriderockperm\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"block=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"conv=binary\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=b\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conv=text\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=t\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"conv=mtext\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=m\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conv=auto\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=a\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nocompress\00", [21 x i8] zeroinitializer }, align 32
@isofs_get_last_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017ISOFS: Session %d start %d type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isofs_get_last_session\00", [41 x i8] zeroinitializer }, align 32
@isofs_get_last_session._entry_ptr = internal global ptr @isofs_get_last_session._entry, section ".printk_index", align 4
@isofs_get_last_session._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ISOFS: Invalid session number or type of track\0A\00", [46 x i8] zeroinitializer }, align 32
@isofs_get_last_session._entry_ptr.101 = internal global ptr @isofs_get_last_session._entry.99, section ".printk_index", align 4
@isofs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",norock\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",nojoliet\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",cruft\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",hide\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",nocompress\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",overriderockperm\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",showassoc\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",check=%c\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",map=%c\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",session=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",sbsector=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",blocksize=%lu\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",dmode=%o\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",fmode=%o\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",iocharset=utf8\00", [16 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isofs_inode_cache\00", [46 x i8] zeroinitializer }, align 32
@switch.table.isofs_fill_super = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 0, i32 0, i32 2, i32 0, i32 3], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.121 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 2048]
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1064, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1085, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1111, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1113, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"iso9660_fs_type\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1570, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1148, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1407, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1414, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [11 x i8] c"isofs_aops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1192, i32 46 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1494, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1290, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1295, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1572, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 653, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 684, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 707, i32 7 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 719, i32 26 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 868, i32 45 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 869, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant [11 x i8] c"isofs_sops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 121, i32 38 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 920, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 940, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 960, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 996, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1003, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1007, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1011, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1016, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 364, i32 31 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 298, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 299, i32 15 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 300, i32 17 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 301, i32 15 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 302, i32 13 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 303, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 304, i32 14 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 306, i32 18 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 307, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 308, i32 14 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 309, i32 14 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 310, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 311, i32 14 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 312, i32 14 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 313, i32 16 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 314, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 315, i32 16 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 316, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 317, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 318, i32 16 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 319, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 320, i32 12 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 321, i32 13 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 322, i32 14 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 323, i32 25 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 324, i32 14 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 325, i32 15 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 326, i32 15 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 327, i32 15 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 328, i32 15 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 329, i32 15 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 330, i32 15 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 331, i32 15 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 332, i32 15 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 333, i32 19 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 561, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 568, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [19 x i8] c"isofs_inode_cachep\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 68, i32 27 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 492, i32 33 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 493, i32 45 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 494, i32 33 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 495, i32 32 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 496, i32 38 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 497, i32 43 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 498, i32 37 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 500, i32 35 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 501, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 502, i32 43 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 503, i32 43 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 506, i32 17 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 509, i32 17 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 512, i32 17 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 516, i32 17 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 518, i32 17 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 522, i32 17 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 524, i32 15 }
@___asan_gen_.467 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.468 = private constant [20 x i8] c"../fs/isofs/inode.c\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 93, i32 41 }
@___asan_gen_.470 = private unnamed_addr constant [30 x i8] c"switch.table.isofs_fill_super\00", align 1
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_exit_iso9660_fs, ptr @__initcall__kmod_isofs__271_1613_init_iso9660_fs6, ptr @exit_iso9660_fs, ptr @isofs_fill_super._entry, ptr @isofs_fill_super._entry.31, ptr @isofs_fill_super._entry.37, ptr @isofs_fill_super._entry.40, ptr @isofs_fill_super._entry.43, ptr @isofs_fill_super._entry.46, ptr @isofs_fill_super._entry.49, ptr @isofs_fill_super._entry.52, ptr @isofs_fill_super._entry.55, ptr @isofs_fill_super._entry.58, ptr @isofs_fill_super._entry_ptr, ptr @isofs_fill_super._entry_ptr.33, ptr @isofs_fill_super._entry_ptr.39, ptr @isofs_fill_super._entry_ptr.42, ptr @isofs_fill_super._entry_ptr.45, ptr @isofs_fill_super._entry_ptr.48, ptr @isofs_fill_super._entry_ptr.51, ptr @isofs_fill_super._entry_ptr.54, ptr @isofs_fill_super._entry_ptr.57, ptr @isofs_fill_super._entry_ptr.60, ptr @isofs_get_block._entry, ptr @isofs_get_block._entry_ptr, ptr @isofs_get_blocks._entry, ptr @isofs_get_blocks._entry.3, ptr @isofs_get_blocks._entry.6, ptr @isofs_get_blocks._entry.9, ptr @isofs_get_blocks._entry_ptr, ptr @isofs_get_blocks._entry_ptr.11, ptr @isofs_get_blocks._entry_ptr.5, ptr @isofs_get_blocks._entry_ptr.8, ptr @isofs_get_last_session._entry, ptr @isofs_get_last_session._entry.99, ptr @isofs_get_last_session._entry_ptr, ptr @isofs_get_last_session._entry_ptr.101, ptr @isofs_read_inode._entry, ptr @isofs_read_inode._entry.16, ptr @isofs_read_inode._entry.19, ptr @isofs_read_inode._entry_ptr, ptr @isofs_read_inode._entry_ptr.18, ptr @isofs_read_inode._entry_ptr.21, ptr @isofs_read_level3_size._entry, ptr @isofs_read_level3_size._entry.24, ptr @isofs_read_level3_size._entry_ptr, ptr @isofs_read_level3_size._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @iso9660_fs_type, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @isofs_aops, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @isofs_sops, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @tokens, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @isofs_inode_cachep, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @switch.table.isofs_fill_super], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_blocks._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_blocks._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_blocks._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso9660_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_read_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_read_inode._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_read_inode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_read_level3_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_read_level3_size._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_fill_super._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_last_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_get_last_session._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.isofs_fill_super to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isofs_get_blocks(ptr nocapture noundef readonly %inode, i64 noundef %iblock, ptr nocapture noundef %bh, i32 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %iblock)
  %0 = icmp ult i64 %iblock, 4294967296
  br i1 %0, label %if.end, label %abort.thread

abort.thread:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  br label %abort.thread232

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %tobool.not200 = icmp eq i32 %nblocks, 0
  br i1 %tobool.not200, label %if.end.abort.thread232_crit_edge, label %while.body.lr.ph

if.end.abort.thread232_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %abort.thread232

while.body.lr.ph:                                 ; preds = %if.end
  %i_next_section_offset = getelementptr i8, ptr %inode, i32 -12
  %1 = ptrtoint ptr %i_next_section_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_next_section_offset, align 4
  %i_next_section_block = getelementptr i8, ptr %inode, i32 -16
  %3 = ptrtoint ptr %i_next_section_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_next_section_block, align 8
  %i_section_size = getelementptr i8, ptr %inode, i32 -8
  %5 = ptrtoint ptr %i_section_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_section_size, align 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %conv4 = zext i8 %10 to i32
  %shr = ashr i32 %6, %conv4
  %i_first_extent = getelementptr i8, ptr %inode, i32 -24
  %11 = ptrtoint ptr %i_first_extent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_first_extent, align 8
  %conv = trunc i64 %iblock to i32
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.body.lr.ph
  %bh.addr.0213 = phi ptr [ %bh, %while.body.lr.ph ], [ %incdec.ptr, %if.end73.while.body_crit_edge ]
  %nblocks.addr.0212 = phi i32 [ %nblocks, %while.body.lr.ph ], [ %dec, %if.end73.while.body_crit_edge ]
  %b_off.0209 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc74, %if.end73.while.body_crit_edge ]
  %rv.0207 = phi i32 [ 0, %while.body.lr.ph ], [ %inc75, %if.end73.while.body_crit_edge ]
  %section.0206 = phi i32 [ 0, %while.body.lr.ph ], [ %section.1.lcssa, %if.end73.while.body_crit_edge ]
  %nextoff.0205 = phi i32 [ %2, %while.body.lr.ph ], [ %nextoff.1.lcssa, %if.end73.while.body_crit_edge ]
  %nextblk.0204 = phi i32 [ %4, %while.body.lr.ph ], [ %nextblk.1.lcssa, %if.end73.while.body_crit_edge ]
  %firstext.0203 = phi i32 [ %12, %while.body.lr.ph ], [ %firstext.1.lcssa, %if.end73.while.body_crit_edge ]
  %sect_size.0202 = phi i32 [ %shr, %while.body.lr.ph ], [ %sect_size.1.lcssa, %if.end73.while.body_crit_edge ]
  %offset.0201 = phi i32 [ 0, %while.body.lr.ph ], [ %offset.1.lcssa179, %if.end73.while.body_crit_edge ]
  %conv5 = zext i32 %b_off.0209 to i64
  %13 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size, align 8
  %sub = add i64 %14, 4095
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits7 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %s_blocksize_bits7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s_blocksize_bits7, align 4
  %sh_prom = zext i8 %18 to i64
  %shr9 = ashr i64 %sub, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr9, i64 %conv5)
  %cmp10 = icmp slt i64 %shr9, %conv5
  br i1 %cmp10, label %do.end15, label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextblk.0204)
  %tobool21.not180 = icmp eq i32 %nextblk.0204, 0
  br i1 %tobool21.not180, label %while.cond20.preheader.while.end_crit_edge, label %land.rhs.preheader

while.cond20.preheader.while.end_crit_edge:       ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs.preheader:                               ; preds = %while.cond20.preheader
  %add22262 = add i32 %sect_size.0202, %offset.0201
  call void @__sanitizer_cov_trace_cmp4(i32 %b_off.0209, i32 %add22262)
  %cmp23.not263 = icmp ult i32 %b_off.0209, %add22262
  br i1 %cmp23.not263, label %land.rhs.preheader.while.end_crit_edge, label %land.rhs.preheader.while.body25_crit_edge

land.rhs.preheader.while.body25_crit_edge:        ; preds = %land.rhs.preheader
  br label %while.body25

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

do.end15:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %b_off.0209, i64 noundef %14) #21
  br label %abort

while.cond20:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not = icmp eq i32 %31, 0
  br i1 %tobool21.not, label %while.cond20.while.end_crit_edge, label %land.rhs

while.cond20.while.end_crit_edge:                 ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs:                                         ; preds = %while.cond20
  %add22 = add i32 %shr40, %add22267
  %cmp23.not = icmp ult i32 %b_off.0209, %add22
  br i1 %cmp23.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body25_crit_edge

land.rhs.while.body25_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body25

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body25:                                     ; preds = %land.rhs.while.body25_crit_edge, %land.rhs.preheader.while.body25_crit_edge
  %add22267 = phi i32 [ %add22, %land.rhs.while.body25_crit_edge ], [ %add22262, %land.rhs.preheader.while.body25_crit_edge ]
  %nextblk.1184266 = phi i32 [ %31, %land.rhs.while.body25_crit_edge ], [ %nextblk.0204, %land.rhs.preheader.while.body25_crit_edge ]
  %nextoff.1185265 = phi i32 [ %33, %land.rhs.while.body25_crit_edge ], [ %nextoff.0205, %land.rhs.preheader.while.body25_crit_edge ]
  %section.1186264 = phi i32 [ %inc, %land.rhs.while.body25_crit_edge ], [ %section.0206, %land.rhs.preheader.while.body25_crit_edge ]
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %call.i = tail call ptr @__isofs_iget(ptr noundef %20, i32 noundef %nextblk.1184266, i32 noundef %nextoff.1185265, i32 noundef 0) #18
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %call.i to i32
  br label %abort

if.end32:                                         ; preds = %while.body25
  %i_first_extent34 = getelementptr i8, ptr %call.i, i32 -24
  %22 = ptrtoint ptr %i_first_extent34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_first_extent34, align 8
  %i_section_size36 = getelementptr i8, ptr %call.i, i32 -8
  %24 = ptrtoint ptr %i_section_size36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_section_size36, align 8
  %i_sb37 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb37, align 4
  %s_blocksize_bits38 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_blocksize_bits38 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_blocksize_bits38, align 4
  %conv39 = zext i8 %29 to i32
  %shr40 = ashr i32 %25, %conv39
  %i_next_section_block42 = getelementptr i8, ptr %call.i, i32 -16
  %30 = ptrtoint ptr %i_next_section_block42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_next_section_block42, align 8
  %i_next_section_offset44 = getelementptr i8, ptr %call.i, i32 -12
  %32 = ptrtoint ptr %i_next_section_offset44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_next_section_offset44, align 4
  tail call void @iput(ptr noundef %call.i) #18
  %inc = add i32 %section.1186264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %cmp45 = icmp sgt i32 %inc, 100
  br i1 %cmp45, label %do.end50, label %while.cond20

do.end50:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #21
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %b_off.0209, i32 noundef %23, i32 noundef %shr40, i32 noundef %31, i32 noundef %33) #21
  br label %abort

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond20.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge, %while.cond20.preheader.while.end_crit_edge
  %offset.1.lcssa179 = phi i32 [ %offset.0201, %while.cond20.preheader.while.end_crit_edge ], [ %offset.0201, %land.rhs.preheader.while.end_crit_edge ], [ %add22267, %land.rhs.while.end_crit_edge ], [ %add22267, %while.cond20.while.end_crit_edge ]
  %sect_size.1.lcssa = phi i32 [ %sect_size.0202, %while.cond20.preheader.while.end_crit_edge ], [ %sect_size.0202, %land.rhs.preheader.while.end_crit_edge ], [ %shr40, %land.rhs.while.end_crit_edge ], [ %shr40, %while.cond20.while.end_crit_edge ]
  %firstext.1.lcssa = phi i32 [ %firstext.0203, %while.cond20.preheader.while.end_crit_edge ], [ %firstext.0203, %land.rhs.preheader.while.end_crit_edge ], [ %23, %land.rhs.while.end_crit_edge ], [ %23, %while.cond20.while.end_crit_edge ]
  %nextblk.1.lcssa = phi i32 [ 0, %while.cond20.preheader.while.end_crit_edge ], [ %nextblk.0204, %land.rhs.preheader.while.end_crit_edge ], [ %31, %land.rhs.while.end_crit_edge ], [ 0, %while.cond20.while.end_crit_edge ]
  %nextoff.1.lcssa = phi i32 [ %nextoff.0205, %while.cond20.preheader.while.end_crit_edge ], [ %nextoff.0205, %land.rhs.preheader.while.end_crit_edge ], [ %33, %land.rhs.while.end_crit_edge ], [ %33, %while.cond20.while.end_crit_edge ]
  %section.1.lcssa = phi i32 [ %section.0206, %while.cond20.preheader.while.end_crit_edge ], [ %section.0206, %land.rhs.preheader.while.end_crit_edge ], [ %inc, %land.rhs.while.end_crit_edge ], [ %inc, %while.cond20.while.end_crit_edge ]
  %34 = ptrtoint ptr %bh.addr.0213 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh.addr.0213, align 4
  %tobool59.not = icmp eq ptr %35, null
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %add66 = add i32 %firstext.1.lcssa, %b_off.0209
  %sub67 = sub i32 %add66, %offset.1.lcssa179
  %conv68 = zext i32 %sub67 to i64
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %while.end
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %35, align 4
  %40 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then60.map_bh.exit_crit_edge

if.then60.map_bh.exit_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #20
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_set_bit(i32 noundef 4, ptr noundef nonnull %35) #18
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then60.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 26
  %41 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 6
  %43 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 3
  %44 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv68, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 3
  %45 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 4
  %47 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %b_size.i, align 8
  br label %if.end73

if.else:                                          ; preds = %while.end
  %s_bdev.i136 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 26
  %48 = ptrtoint ptr %s_bdev.i136 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_bdev.i136, align 4
  %s_blocksize.i137 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 3
  %50 = ptrtoint ptr %s_blocksize.i137 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize.i137, align 16
  %call.i138 = tail call ptr @__getblk_gfp(ptr noundef %49, i64 noundef %conv68, i32 noundef %51, i32 noundef 8) #18
  %52 = ptrtoint ptr %bh.addr.0213 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i138, ptr %bh.addr.0213, align 4
  %tobool70.not = icmp eq ptr %call.i138, null
  br i1 %tobool70.not, label %if.else.abort_crit_edge, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

if.else.abort_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %abort

if.end73:                                         ; preds = %if.else.if.end73_crit_edge, %map_bh.exit
  %incdec.ptr = getelementptr ptr, ptr %bh.addr.0213, i32 1
  %inc74 = add i32 %b_off.0209, 1
  %dec = add i32 %nblocks.addr.0212, -1
  %inc75 = add nuw i32 %rv.0207, 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end73.abort_crit_edge, label %if.end73.while.body_crit_edge

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

if.end73.abort_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %abort

abort:                                            ; preds = %if.end73.abort_crit_edge, %if.else.abort_crit_edge, %do.end50, %if.then30, %do.end15
  %rv.0178 = phi i32 [ %rv.0207, %do.end15 ], [ %rv.0207, %do.end50 ], [ %rv.0207, %if.then30 ], [ %rv.0207, %if.else.abort_crit_edge ], [ %nblocks, %if.end73.abort_crit_edge ]
  %error.3 = phi i32 [ -5, %do.end15 ], [ -5, %do.end50 ], [ %21, %if.then30 ], [ -5, %if.else.abort_crit_edge ], [ 0, %if.end73.abort_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0178)
  %cmp77.not = icmp eq i32 %rv.0178, 0
  br i1 %cmp77.not, label %abort.abort.thread232_crit_edge, label %abort._crit_edge

abort._crit_edge:                                 ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #20
  br label %53

abort.abort.thread232_crit_edge:                  ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #20
  br label %abort.thread232

abort.thread232:                                  ; preds = %abort.abort.thread232_crit_edge, %if.end.abort.thread232_crit_edge, %abort.thread
  %error.3150 = phi i32 [ -5, %abort.thread ], [ %error.3, %abort.abort.thread232_crit_edge ], [ 0, %if.end.abort.thread232_crit_edge ]
  br label %53

53:                                               ; preds = %abort.thread232, %abort._crit_edge
  %54 = phi i32 [ %error.3150, %abort.thread232 ], [ %rv.0178, %abort._crit_edge ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @isofs_bread(ptr nocapture noundef readonly %inode, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %bh_result.addr.i.i = alloca ptr, align 4
  %dummy.i = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %dummy.i) #18
  %0 = call ptr @memset(ptr %dummy.i, i32 255, i32 104)
  %1 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dummy.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %dummy.i, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1000, ptr %b_blocknr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_result.addr.i.i) #18
  %3 = ptrtoint ptr %bh_result.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dummy.i, ptr %bh_result.addr.i.i, align 4
  %call1.i.i = call i32 @isofs_get_blocks(ptr noundef %inode, i64 noundef %block, ptr noundef nonnull %bh_result.addr.i.i, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_result.addr.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %isofs_bmap.exit, label %isofs_bmap.exit.thread

isofs_bmap.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %dummy.i) #18
  br label %cleanup

isofs_bmap.exit:                                  ; preds = %entry
  %4 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr.i, align 8
  %conv.i = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %dummy.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %isofs_bmap.exit.cleanup_crit_edge, label %if.end

isofs_bmap.exit.cleanup_crit_edge:                ; preds = %isofs_bmap.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %isofs_bmap.exit
  call void @__sanitizer_cov_trace_pc() #20
  %conv = sext i32 %conv.i to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %9, i64 noundef %conv, i32 noundef %11, i32 noundef 8) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %isofs_bmap.exit.cleanup_crit_edge, %isofs_bmap.exit.thread
  %retval.0 = phi ptr [ %call.i, %if.end ], [ null, %isofs_bmap.exit.cleanup_crit_edge ], [ null, %isofs_bmap.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__isofs_iget(ptr noundef %sb, i32 noundef %block, i32 noundef %offset, i32 noundef %relocated) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.isofs_iget5_callback_data, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #18
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %1 to i32
  %offset.highbits = lshr i32 %offset, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.highbits)
  %cmp.not = icmp eq i32 %offset.highbits, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.isofs_iget5_callback_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %block, ptr %data, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %offset, ptr %2, align 4
  %shl6 = shl i32 %block, %conv
  %or = or i32 %shl6, %offset
  %call7 = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %or, ptr noundef nonnull @isofs_iget5_test, ptr noundef nonnull @isofs_iget5_set, ptr noundef nonnull %data) #18
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 24
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_state, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize.i, align 16
  %s_high_sierra.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 11
  %13 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %s_high_sierra.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 15
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %call7, i32 -32
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 8
  %conv.i = zext i32 %15 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i.i, align 4
  %call.i.i = call ptr @__bread_gfp(ptr noundef %17, i64 noundef %conv.i, i32 noundef %12, i32 noundef 8) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12.isofs_read_inode.exit.thread_crit_edge, label %if.end.i

if.then12.isofs_read_inode.exit.thread_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_read_inode.exit.thread

if.end.i:                                         ; preds = %if.then12
  %i_iget5_offset.i = getelementptr i8, ptr %call7, i32 -28
  %18 = ptrtoint ptr %i_iget5_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_iget5_offset.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %19
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i, align 1
  %conv5.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %23)
  %cmp.i = icmp ult i8 %23, 33
  br i1 %cmp.i, label %if.end.i.isofs_read_inode.exit_crit_edge, label %if.end8.i

if.end.i.isofs_read_inode.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_read_inode.exit

if.end8.i:                                        ; preds = %if.end.i
  %add.i = add i32 %19, %conv5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp9.i = icmp ugt i32 %add.i, %12
  br i1 %cmp9.i, label %if.then11.i, label %if.end8.i.if.end27.i_crit_edge

if.end8.i.if.end27.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.then11.i:                                      ; preds = %if.end8.i
  %sub.i = sub i32 %12, %19
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv5.i, i32 noundef 3264) #22
  %tobool13.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not.i, label %if.then11.i.isofs_read_inode.exit_crit_edge, label %brelse.exit.i

if.then11.i.isofs_read_inode.exit_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_read_inode.exit

brelse.exit.i:                                    ; preds = %if.then11.i
  %24 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %25, i32 %19
  %26 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr17.i, i32 %sub.i)
  call void @__brelse(ptr noundef nonnull %call.i.i) #18
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %inc.i = add i32 %15, 1
  %conv19.i = zext i32 %inc.i to i64
  %s_bdev.i363.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 26
  %29 = ptrtoint ptr %s_bdev.i363.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev.i363.i, align 4
  %s_blocksize.i364.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %s_blocksize.i364.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize.i364.i, align 16
  %call.i365.i = call ptr @__bread_gfp(ptr noundef %30, i64 noundef %conv19.i, i32 noundef %32, i32 noundef 8) #18
  %tobool21.not.i = icmp eq ptr %call.i365.i, null
  br i1 %tobool21.not.i, label %brelse.exit.i.isofs_read_inode.exit.thread_crit_edge, label %cleanup.thread.i

brelse.exit.i.isofs_read_inode.exit.thread_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_read_inode.exit.thread

cleanup.thread.i:                                 ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr24.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i
  %b_data25.i = getelementptr inbounds %struct.buffer_head, ptr %call.i365.i, i32 0, i32 5
  %33 = ptrtoint ptr %b_data25.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data25.i, align 4
  %sub26.i = sub i32 %conv5.i, %sub.i
  %35 = call ptr @memcpy(ptr %add.ptr24.i, ptr %34, i32 %sub26.i)
  br label %if.end27.i

if.end27.i:                                       ; preds = %cleanup.thread.i, %if.end8.i.if.end27.i_crit_edge
  %bh.1.i = phi ptr [ %call.i.i, %if.end8.i.if.end27.i_crit_edge ], [ %call.i365.i, %cleanup.thread.i ]
  %de.1.i = phi ptr [ %add.ptr.i, %if.end8.i.if.end27.i_crit_edge ], [ %call9.i.i, %cleanup.thread.i ]
  %tmpde.0.i = phi ptr [ null, %if.end8.i.if.end27.i_crit_edge ], [ %call9.i.i, %cleanup.thread.i ]
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i, align 8
  %38 = ptrtoint ptr %i_iget5_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_iget5_offset.i, align 4
  %40 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv31.i = zext i8 %43 to i32
  %sub.i.i = add nsw i32 %conv31.i, -5
  %shl.i.i = shl i32 %37, %sub.i.i
  %shr.i.i = lshr i32 %39, 5
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i.i, ptr %i_ino.i, align 8
  %i_file_format.i = getelementptr i8, ptr %call7, i32 -20
  %45 = ptrtoint ptr %i_file_format.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %i_file_format.i, align 4
  %sub33.i = sub nsw i32 0, %bf.cast.i
  %arrayidx.i = getelementptr %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 5, i32 %sub33.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %48 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool35.not.i = icmp eq i8 %48, 0
  br i1 %tobool35.not.i, label %if.else46.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %s_dmode.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 13
  %49 = ptrtoint ptr %s_dmode.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %s_dmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %50)
  %cmp38.not.i = icmp eq i16 %50, -1
  %51 = or i16 %50, 16384
  %storemerge361.i = select i1 %cmp38.not.i, i16 16749, i16 %51
  br label %if.end59.i

if.else46.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %s_fmode.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 12
  %52 = ptrtoint ptr %s_fmode.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %s_fmode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp48.not.i = icmp eq i16 %53, -1
  %54 = or i16 %53, -32768
  %storemerge.i = select i1 %cmp48.not.i, i16 -32403, i16 %54
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else46.i, %if.then36.i
  %storemerge.sink.i = phi i16 [ %storemerge.i, %if.else46.i ], [ %storemerge361.i, %if.then36.i ]
  %55 = ptrtoint ptr %call7 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %storemerge.sink.i, ptr %call7, align 8
  call void @set_nlink(ptr noundef nonnull %call7, i32 noundef 1) #18
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 2
  %s_uid.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 15
  %56 = ptrtoint ptr %s_uid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_uid.i, align 4
  %58 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 3
  %s_gid.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 14
  %59 = ptrtoint ptr %s_gid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_gid.i, align 4
  %61 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %i_gid.i, align 8
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 22
  %62 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %i_blocks.i, align 8
  %i_format_parm.i = getelementptr i8, ptr %call7, i32 -19
  %63 = ptrtoint ptr %i_format_parm.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %i_format_parm.i, align 1
  %arrayidx62.i = getelementptr i8, ptr %call7, i32 -18
  %64 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx62.i, align 1
  %arrayidx64.i = getelementptr i8, ptr %call7, i32 -17
  %65 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx64.i, align 1
  %size.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 3
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %size.i, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67) #18
  %i_section_size.i = getelementptr i8, ptr %call7, i32 -8
  %69 = ptrtoint ptr %i_section_size.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %i_section_size.i, align 8
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %tobool71.not.i = icmp sgt i8 %71, -1
  br i1 %tobool71.not.i, label %if.else78.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end59.i
  %72 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i366.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %s_blocksize.i366.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_blocksize.i366.i, align 16
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 33
  %76 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_high_sierra.i.i = getelementptr inbounds %struct.isofs_sb_info, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %s_high_sierra.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i.i = load i16, ptr %s_high_sierra.i.i, align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 15
  %bf.cast.i.i = zext i16 %bf.lshr.i.i to i32
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 14
  %79 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %i_size.i.i, align 8
  %i_next_section_block.i.i = getelementptr i8, ptr %call7, i32 -16
  %80 = ptrtoint ptr %i_next_section_block.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %i_next_section_block.i.i, align 8
  %i_next_section_offset.i.i = getelementptr i8, ptr %call7, i32 -12
  %81 = ptrtoint ptr %i_next_section_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %i_next_section_offset.i.i, align 4
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i, align 8
  %84 = ptrtoint ptr %i_iget5_offset.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_iget5_offset.i, align 4
  %sub23.i.i = add i32 %75, -1
  %sub47.i.i = sub nsw i32 0, %bf.cast.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then72.i
  %bh.0.i.i = phi ptr [ null, %if.then72.i ], [ %bh.5.ph.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %block.0.i.i = phi i32 [ %83, %if.then72.i ], [ %block.3.ph.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %offset.0.i.i = phi i32 [ %85, %if.then72.i ], [ %offset.3.ph.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %if.then72.i ], [ %i.1.ph.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %more_entries.0.i.i = phi i32 [ 0, %if.then72.i ], [ %more_entries.1.ph.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %tmpde.0.i.i = phi ptr [ null, %if.then72.i ], [ %tmpde.4.ph.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %tobool.not.i367.i = icmp eq ptr %bh.0.i.i, null
  br i1 %tobool.not.i367.i, label %if.then.i368.i, label %do.body.i.i.if.end7.i.i_crit_edge

do.body.i.i.if.end7.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i

if.then.i368.i:                                   ; preds = %do.body.i.i
  %86 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i, align 4
  %conv.i.i = zext i32 %block.0.i.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 26
  %88 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 3
  %90 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = call ptr @__bread_gfp(ptr noundef %89, i64 noundef %conv.i.i, i32 noundef %91, i32 noundef 8) #18
  %tobool5.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.then.i368.i.do.end68.i.i_crit_edge, label %if.then.i368.i.if.end7.i.i_crit_edge

if.then.i368.i.if.end7.i.i_crit_edge:             ; preds = %if.then.i368.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i

if.then.i368.i.do.end68.i.i_crit_edge:            ; preds = %if.then.i368.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68.i.i

if.end7.i.i:                                      ; preds = %if.then.i368.i.if.end7.i.i_crit_edge, %do.body.i.i.if.end7.i.i_crit_edge
  %bh.1.i.i = phi ptr [ %bh.0.i.i, %do.body.i.i.if.end7.i.i_crit_edge ], [ %call.i.i.i, %if.then.i368.i.if.end7.i.i_crit_edge ]
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i369.i = getelementptr i8, ptr %93, i32 %offset.0.i.i
  %94 = ptrtoint ptr %add.ptr.i369.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr.i369.i, align 1
  %conv8.i.i = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp.i.i = icmp eq i8 %95, 0
  br i1 %cmp.i.i, label %brelse.exit.i.i, label %if.end11.i.i

brelse.exit.i.i:                                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %bh.1.i.i) #18
  %inc.i.i = add i32 %block.0.i.i, 1
  br label %do.cond.i.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %add.i.i = add i32 %offset.0.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add.i.i)
  %cmp12.not.i.i = icmp ugt i32 %75, %add.i.i
  br i1 %cmp12.not.i.i, label %if.end11.i.i.if.end36.i.i_crit_edge, label %if.then14.i.i

if.end11.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %sub.i370.i = sub i32 %75, %add.i.i
  %add15.i.i = add i32 %sub.i370.i, %conv8.i.i
  %tobool16.not.i.i = icmp eq ptr %tmpde.0.i.i, null
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %if.then14.i.i.brelse.exit139.i.i_crit_edge

if.then14.i.i.brelse.exit139.i.i_crit_edge:       ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit139.i.i

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3264, i32 noundef 256) #23
  %tobool19.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool19.not.i.i, label %brelse.exit148.i.i, label %if.then17.i.i.brelse.exit139.i.i_crit_edge

if.then17.i.i.brelse.exit139.i.i_crit_edge:       ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit139.i.i

brelse.exit139.i.i:                               ; preds = %if.then17.i.i.brelse.exit139.i.i_crit_edge, %if.then14.i.i.brelse.exit139.i.i_crit_edge
  %tmpde.1.i.i = phi ptr [ %tmpde.0.i.i, %if.then14.i.i.brelse.exit139.i.i_crit_edge ], [ %call7.i.i.i, %if.then17.i.i.brelse.exit139.i.i_crit_edge ]
  %97 = call ptr @memcpy(ptr %tmpde.1.i.i, ptr %add.ptr.i369.i, i32 %add15.i.i)
  %and.i.i = and i32 %add.i.i, %sub23.i.i
  %inc24.i.i = add i32 %block.0.i.i, 1
  call void @__brelse(ptr noundef nonnull %bh.1.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool25.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool25.not.i.i, label %brelse.exit139.i.i.if.end36.i.i_crit_edge, label %if.then26.i.i

brelse.exit139.i.i.if.end36.i.i_crit_edge:        ; preds = %brelse.exit139.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36.i.i

if.then26.i.i:                                    ; preds = %brelse.exit139.i.i
  %98 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb.i, align 4
  %conv28.i.i = zext i32 %inc24.i.i to i64
  %s_bdev.i140.i.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 26
  %100 = ptrtoint ptr %s_bdev.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_bdev.i140.i.i, align 4
  %s_blocksize.i141.i.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 3
  %102 = ptrtoint ptr %s_blocksize.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_blocksize.i141.i.i, align 16
  %call.i142.i.i = call ptr @__bread_gfp(ptr noundef %101, i64 noundef %conv28.i.i, i32 noundef %103, i32 noundef 8) #18
  %tobool30.not.i.i = icmp eq ptr %call.i142.i.i, null
  br i1 %tobool30.not.i.i, label %if.then26.i.i.do.end68.i.i_crit_edge, label %if.end32.i.i

if.then26.i.i.do.end68.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68.i.i

if.end32.i.i:                                     ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr33.i.i = getelementptr i8, ptr %tmpde.1.i.i, i32 %add15.i.i
  %b_data34.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i142.i.i, i32 0, i32 5
  %104 = ptrtoint ptr %b_data34.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %b_data34.i.i, align 4
  %106 = call ptr @memcpy(ptr %add.ptr33.i.i, ptr %105, i32 %and.i.i)
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.end32.i.i, %brelse.exit139.i.i.if.end36.i.i_crit_edge, %if.end11.i.i.if.end36.i.i_crit_edge
  %bh.4.i.i = phi ptr [ %bh.1.i.i, %if.end11.i.i.if.end36.i.i_crit_edge ], [ null, %brelse.exit139.i.i.if.end36.i.i_crit_edge ], [ %call.i142.i.i, %if.end32.i.i ]
  %block.2.i.i = phi i32 [ %block.0.i.i, %if.end11.i.i.if.end36.i.i_crit_edge ], [ %inc24.i.i, %brelse.exit139.i.i.if.end36.i.i_crit_edge ], [ %inc24.i.i, %if.end32.i.i ]
  %offset.2.i.i = phi i32 [ %add.i.i, %if.end11.i.i.if.end36.i.i_crit_edge ], [ 0, %brelse.exit139.i.i.if.end36.i.i_crit_edge ], [ %and.i.i, %if.end32.i.i ]
  %tmpde.3.i.i = phi ptr [ %tmpde.0.i.i, %if.end11.i.i.if.end36.i.i_crit_edge ], [ %tmpde.1.i.i, %brelse.exit139.i.i.if.end36.i.i_crit_edge ], [ %tmpde.1.i.i, %if.end32.i.i ]
  %de.1.i.i = phi ptr [ %add.ptr.i369.i, %if.end11.i.i.if.end36.i.i_crit_edge ], [ %tmpde.1.i.i, %brelse.exit139.i.i.if.end36.i.i_crit_edge ], [ %tmpde.1.i.i, %if.end32.i.i ]
  %size.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %size.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %size.i.i, align 1
  %109 = call i32 @llvm.bswap.i32(i32 %108) #18
  %conv38.i.i = zext i32 %109 to i64
  %110 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %i_size.i.i, align 8
  %add40.i.i = add i64 %111, %conv38.i.i
  store i64 %add40.i.i, ptr %i_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0.i.i)
  %cmp41.i.i = icmp eq i32 %i.0.i.i, 1
  br i1 %cmp41.i.i, label %if.end46.thread.i.i, label %if.end46.i.i

if.end46.thread.i.i:                              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %112 = ptrtoint ptr %i_next_section_block.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %block.0.i.i, ptr %i_next_section_block.i.i, align 8
  %113 = ptrtoint ptr %i_next_section_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %offset.0.i.i, ptr %i_next_section_offset.i.i, align 4
  %arrayidx198.i.i = getelementptr %struct.iso_directory_record, ptr %de.1.i.i, i32 0, i32 5, i32 %sub47.i.i
  %114 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx198.i.i, align 1
  %116 = and i8 %115, -128
  %and49199.i.i = zext i8 %116 to i32
  br label %do.cond.i.i

if.end46.i.i:                                     ; preds = %if.end36.i.i
  %arrayidx.i.i = getelementptr %struct.iso_directory_record, ptr %de.1.i.i, i32 0, i32 5, i32 %sub47.i.i
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.i, align 1
  %119 = and i8 %118, -128
  %and49.i.i = zext i8 %119 to i32
  %inc50.i.i = add i32 %i.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc50.i.i)
  %cmp51.i.i = icmp sgt i32 %inc50.i.i, 100
  br i1 %cmp51.i.i, label %do.end72.i.i, label %if.end46.i.i.do.cond.i.i_crit_edge

if.end46.i.i.do.cond.i.i_crit_edge:               ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end46.i.i.do.cond.i.i_crit_edge, %if.end46.thread.i.i, %brelse.exit.i.i
  %bh.5.ph.i.i = phi ptr [ %bh.4.i.i, %if.end46.i.i.do.cond.i.i_crit_edge ], [ null, %brelse.exit.i.i ], [ %bh.4.i.i, %if.end46.thread.i.i ]
  %block.3.ph.i.i = phi i32 [ %block.2.i.i, %if.end46.i.i.do.cond.i.i_crit_edge ], [ %inc.i.i, %brelse.exit.i.i ], [ %block.2.i.i, %if.end46.thread.i.i ]
  %offset.3.ph.i.i = phi i32 [ %offset.2.i.i, %if.end46.i.i.do.cond.i.i_crit_edge ], [ 0, %brelse.exit.i.i ], [ %offset.2.i.i, %if.end46.thread.i.i ]
  %i.1.ph.i.i = phi i32 [ %inc50.i.i, %if.end46.i.i.do.cond.i.i_crit_edge ], [ %i.0.i.i, %brelse.exit.i.i ], [ 2, %if.end46.thread.i.i ]
  %more_entries.1.ph.i.i = phi i32 [ %and49.i.i, %if.end46.i.i.do.cond.i.i_crit_edge ], [ %more_entries.0.i.i, %brelse.exit.i.i ], [ %and49199.i.i, %if.end46.thread.i.i ]
  %tmpde.4.ph.i.i = phi ptr [ %tmpde.3.i.i, %if.end46.i.i.do.cond.i.i_crit_edge ], [ %tmpde.0.i.i, %brelse.exit.i.i ], [ %tmpde.3.i.i, %if.end46.thread.i.i ]
  %tobool59.not.i.i = icmp eq i32 %more_entries.1.ph.i.i, 0
  br i1 %tobool59.not.i.i, label %do.cond.i.i.out.i.i_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i

do.cond.i.i.out.i.i_crit_edge:                    ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i.i

out.i.i:                                          ; preds = %do.end72.i.i, %do.cond.i.i.out.i.i_crit_edge
  %tmpde.4169.i.i = phi ptr [ %tmpde.3.i.i, %do.end72.i.i ], [ %tmpde.4.ph.i.i, %do.cond.i.i.out.i.i_crit_edge ]
  %bh.5163.i.i = phi ptr [ %bh.4.i.i, %do.end72.i.i ], [ %bh.5.ph.i.i, %do.cond.i.i.out.i.i_crit_edge ]
  call void @kfree(ptr noundef %tmpde.4169.i.i) #18
  %tobool60.not.i.i = icmp eq ptr %bh.5163.i.i, null
  br i1 %tobool60.not.i.i, label %out.i.i.if.end83.i_crit_edge, label %brelse.exit145.i.i

out.i.i.if.end83.i_crit_edge:                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end83.i

brelse.exit145.i.i:                               ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %bh.5163.i.i) #18
  br label %if.end83.i

brelse.exit148.i.i:                               ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %bh.1.i.i) #18
  br label %isofs_read_inode.exit

do.end68.i.i:                                     ; preds = %if.then26.i.i.do.end68.i.i_crit_edge, %if.then.i368.i.do.end68.i.i_crit_edge
  %block.3.ph172.i.i = phi i32 [ %inc24.i.i, %if.then26.i.i.do.end68.i.i_crit_edge ], [ %block.0.i.i, %if.then.i368.i.do.end68.i.i_crit_edge ]
  %tmpde.4.ph174.i.i = phi ptr [ %tmpde.1.i.i, %if.then26.i.i.do.end68.i.i_crit_edge ], [ %tmpde.0.i.i, %if.then.i368.i.do.end68.i.i_crit_edge ]
  %call69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %block.3.ph172.i.i) #21
  call void @kfree(ptr noundef %tmpde.4.ph174.i.i) #18
  br label %isofs_read_inode.exit

do.end72.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %120 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_ino.i, align 8
  %call74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %121) #21
  br label %out.i.i

if.else78.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #20
  %i_next_section_block.i = getelementptr i8, ptr %call7, i32 -16
  %122 = ptrtoint ptr %i_next_section_block.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %i_next_section_block.i, align 8
  %i_next_section_offset.i = getelementptr i8, ptr %call7, i32 -12
  %123 = ptrtoint ptr %i_next_section_offset.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %i_next_section_offset.i, align 4
  %124 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %size.i, align 1
  %126 = call i32 @llvm.bswap.i32(i32 %125) #18
  %conv82.i = zext i32 %126 to i64
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 14
  %127 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv82.i, ptr %i_size.i, align 8
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.else78.i, %brelse.exit145.i.i, %out.i.i.if.end83.i_crit_edge
  %128 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load84.i = load i16, ptr %s_high_sierra.i, align 4
  %129 = and i16 %bf.load84.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool87.not.i = icmp eq i16 %129, 0
  br i1 %tobool87.not.i, label %if.end83.i.if.end91.i_crit_edge, label %if.then88.i

if.end83.i.if.end91.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end91.i

if.then88.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #20
  %i_size89.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 14
  %130 = ptrtoint ptr %i_size89.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %i_size89.i, align 8
  %and90.i = and i64 %131, 16777215
  store i64 %and90.i, ptr %i_size89.i, align 8
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then88.i, %if.end83.i.if.end91.i_crit_edge
  %interleave.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 7
  %132 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %interleave.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool93.not.i = icmp eq i8 %133, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.end97.i_crit_edge, label %do.end.i

if.end91.i.if.end97.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end97.i

do.end.i:                                         ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #20
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #21
  %i_size96.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 14
  %134 = ptrtoint ptr %i_size96.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %i_size96.i, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.end.i, %if.end91.i.if.end97.i_crit_edge
  %file_unit_size.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 6
  %135 = ptrtoint ptr %file_unit_size.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %file_unit_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp100.not.i = icmp eq i8 %136, 0
  br i1 %cmp100.not.i, label %if.end97.i.if.end109.i_crit_edge, label %do.end105.i

if.end97.i.if.end109.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end109.i

do.end105.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #20
  %137 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %i_ino.i, align 8
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %138) #21
  br label %if.end109.i

if.end109.i:                                      ; preds = %do.end105.i, %if.end97.i.if.end109.i_crit_edge
  %date.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 4
  %call111.i = call i32 @iso_date(ptr noundef %date.i, i32 noundef %bf.cast.i) #18
  %conv112.i = sext i32 %call111.i to i64
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 17
  %139 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv112.i, ptr %i_ctime.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 15
  %140 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv112.i, ptr %i_atime.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 16
  %141 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %conv112.i, ptr %i_mtime.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 17, i32 1
  %142 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %tv_nsec.i, align 8
  %tv_nsec117.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 15, i32 1
  %143 = ptrtoint ptr %tv_nsec117.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %tv_nsec117.i, align 8
  %tv_nsec119.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 16, i32 1
  %144 = ptrtoint ptr %tv_nsec119.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %tv_nsec119.i, align 8
  %extent.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 2
  %145 = ptrtoint ptr %extent.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %extent.i, align 1
  %147 = call i32 @llvm.bswap.i32(i32 %146) #18
  %ext_attr_length.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 1
  %148 = ptrtoint ptr %ext_attr_length.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ext_attr_length.i, align 1
  %conv.i371.i = zext i8 %149 to i32
  %add124.i = add i32 %147, %conv.i371.i
  %i_first_extent.i = getelementptr i8, ptr %call7, i32 -24
  %150 = ptrtoint ptr %i_first_extent.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add124.i, ptr %i_first_extent.i, align 8
  %i_size125.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 14
  %151 = ptrtoint ptr %i_size125.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %i_size125.i, align 8
  %add126.i = add i64 %152, 511
  %shr.i = ashr i64 %add126.i, 9
  %153 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %shr.i, ptr %i_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool128.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool128.not.i, label %if.then129.i, label %if.end109.i.if.end149.i_crit_edge

if.end109.i.if.end149.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end149.i

if.then129.i:                                     ; preds = %if.end109.i
  %call130.i = call i32 @parse_rock_ridge_inode(ptr noundef %de.1.i, ptr noundef %call7, i32 noundef %relocated) #18
  %154 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load131.i = load i16, ptr %s_high_sierra.i, align 4
  %155 = and i16 %bf.load131.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool135.not.i = icmp eq i16 %155, 0
  br i1 %tobool135.not.i, label %if.then129.i.if.end139.i_crit_edge, label %if.then136.i

if.then129.i.if.end139.i_crit_edge:               ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end139.i

if.then136.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #20
  %156 = ptrtoint ptr %s_uid.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_uid.i, align 4
  %158 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %i_uid.i, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then136.i, %if.then129.i.if.end139.i_crit_edge
  %159 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %bf.load140.i = load i16, ptr %s_high_sierra.i, align 4
  %160 = and i16 %bf.load140.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool144.not.i = icmp eq i16 %160, 0
  br i1 %tobool144.not.i, label %if.end139.i.if.end149.i_crit_edge, label %if.then145.i

if.end139.i.if.end149.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end149.i

if.then145.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #20
  %161 = ptrtoint ptr %s_gid.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %s_gid.i, align 4
  %163 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %i_gid.i, align 8
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then145.i, %if.end139.i.if.end149.i_crit_edge, %if.end109.i.if.end149.i_crit_edge
  %164 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %call7, align 8
  %166 = and i16 %165, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %166)
  %cmp153.i = icmp eq i16 %166, 16384
  br i1 %cmp153.i, label %land.lhs.true.i, label %if.end149.i.if.end171.i_crit_edge

if.end149.i.if.end171.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171.i

land.lhs.true.i:                                  ; preds = %if.end149.i
  %167 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %bf.load155.i = load i16, ptr %s_high_sierra.i, align 4
  %168 = and i16 %bf.load155.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool159.not.i = icmp eq i16 %168, 0
  br i1 %tobool159.not.i, label %land.lhs.true.i.if.end171.i_crit_edge, label %land.lhs.true160.i

land.lhs.true.i.if.end171.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171.i

land.lhs.true160.i:                               ; preds = %land.lhs.true.i
  %s_dmode161.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 13
  %169 = ptrtoint ptr %s_dmode161.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %s_dmode161.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %170)
  %cmp163.not.i = icmp eq i16 %170, -1
  br i1 %cmp163.not.i, label %land.lhs.true160.i.if.end171.i_crit_edge, label %if.then165.i

land.lhs.true160.i.if.end171.i_crit_edge:         ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171.i

if.then165.i:                                     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #20
  %171 = or i16 %170, 16384
  %172 = ptrtoint ptr %call7 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %call7, align 8
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then165.i, %land.lhs.true160.i.if.end171.i_crit_edge, %land.lhs.true.i.if.end171.i_crit_edge, %if.end149.i.if.end171.i_crit_edge
  %173 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %call7, align 8
  %175 = and i16 %174, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %175)
  %cmp175.i = icmp eq i16 %175, -32768
  br i1 %cmp175.i, label %land.lhs.true177.i, label %if.end171.i.if.end195.i_crit_edge

if.end171.i.if.end195.i_crit_edge:                ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end195.i

land.lhs.true177.i:                               ; preds = %if.end171.i
  %176 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load179.i = load i16, ptr %s_high_sierra.i, align 4
  %177 = and i16 %bf.load179.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %tobool183.not.i = icmp eq i16 %177, 0
  br i1 %tobool183.not.i, label %land.lhs.true177.i.if.end195.i_crit_edge, label %land.lhs.true184.i

land.lhs.true177.i.if.end195.i_crit_edge:         ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end195.i

land.lhs.true184.i:                               ; preds = %land.lhs.true177.i
  %s_fmode185.i = getelementptr inbounds %struct.isofs_sb_info, ptr %10, i32 0, i32 12
  %178 = ptrtoint ptr %s_fmode185.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %s_fmode185.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %179)
  %cmp187.not.i = icmp eq i16 %179, -1
  br i1 %cmp187.not.i, label %land.lhs.true184.i.if.end195.i_crit_edge, label %if.then189.i

land.lhs.true184.i.if.end195.i_crit_edge:         ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end195.i

if.then189.i:                                     ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #20
  %180 = or i16 %179, -32768
  %181 = ptrtoint ptr %call7 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %call7, align 8
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then189.i, %land.lhs.true184.i.if.end195.i_crit_edge, %land.lhs.true177.i.if.end195.i_crit_edge, %if.end171.i.if.end195.i_crit_edge
  %182 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %call7, align 8
  %184 = and i16 %183, -4096
  %185 = zext i16 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values)
  switch i16 %184, label %if.else223.i [
    i16 -32768, label %if.then201.i
    i16 16384, label %if.then212.i
    i16 -24576, label %if.then219.i
  ]

if.then201.i:                                     ; preds = %if.end195.i
  %186 = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 44
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @generic_ro_fops, ptr %186, align 8
  %188 = ptrtoint ptr %i_file_format.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %i_file_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %189)
  %cond.i = icmp eq i8 %189, 2
  %a_ops.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 46, i32 9
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #20
  %190 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @zisofs_aops, ptr %a_ops.i, align 8
  br label %isofs_read_inode.exit

sw.default.i:                                     ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #20
  %191 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @isofs_aops, ptr %a_ops.i, align 8
  br label %isofs_read_inode.exit

if.then212.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #20
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 7
  %192 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @isofs_dir_inode_operations, ptr %i_op.i, align 8
  %193 = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 44
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @isofs_dir_operations, ptr %193, align 8
  br label %isofs_read_inode.exit

if.then219.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #20
  %i_op220.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 7
  %195 = ptrtoint ptr %i_op220.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @page_symlink_inode_operations, ptr %i_op220.i, align 8
  call void @inode_nohighmem(ptr noundef %call7) #18
  %a_ops222.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 46, i32 9
  %196 = ptrtoint ptr %a_ops222.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @isofs_symlink_aops, ptr %a_ops222.i, align 8
  br label %isofs_read_inode.exit

if.else223.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #20
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 13
  %197 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %i_rdev.i, align 8
  call void @init_special_inode(ptr noundef %call7, i16 noundef zeroext %183, i32 noundef %198) #18
  br label %isofs_read_inode.exit

isofs_read_inode.exit.thread:                     ; preds = %brelse.exit.i.isofs_read_inode.exit.thread_crit_edge, %if.then12.isofs_read_inode.exit.thread_crit_edge
  %tmpde.2.i = phi ptr [ null, %if.then12.isofs_read_inode.exit.thread_crit_edge ], [ %call9.i.i, %brelse.exit.i.isofs_read_inode.exit.thread_crit_edge ]
  %call235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #21
  call void @kfree(ptr noundef %tmpde.2.i) #18
  br label %if.then16

isofs_read_inode.exit:                            ; preds = %if.else223.i, %if.then219.i, %if.then212.i, %sw.default.i, %sw.bb.i, %do.end68.i.i, %brelse.exit148.i.i, %if.then11.i.isofs_read_inode.exit_crit_edge, %if.end.i.isofs_read_inode.exit_crit_edge
  %tmpde.0.sink.i = phi ptr [ null, %if.end.i.isofs_read_inode.exit_crit_edge ], [ null, %if.then11.i.isofs_read_inode.exit_crit_edge ], [ %tmpde.0.i, %brelse.exit148.i.i ], [ %tmpde.0.i, %do.end68.i.i ], [ %tmpde.0.i, %sw.default.i ], [ %tmpde.0.i, %sw.bb.i ], [ %tmpde.0.i, %if.then219.i ], [ %tmpde.0.i, %if.else223.i ], [ %tmpde.0.i, %if.then212.i ]
  %cmp14 = phi i1 [ true, %if.end.i.isofs_read_inode.exit_crit_edge ], [ true, %if.then11.i.isofs_read_inode.exit_crit_edge ], [ true, %brelse.exit148.i.i ], [ true, %do.end68.i.i ], [ false, %sw.default.i ], [ false, %sw.bb.i ], [ false, %if.then219.i ], [ false, %if.else223.i ], [ false, %if.then212.i ]
  %ret.1392.i = phi i32 [ -5, %if.end.i.isofs_read_inode.exit_crit_edge ], [ -12, %if.then11.i.isofs_read_inode.exit_crit_edge ], [ -12, %brelse.exit148.i.i ], [ -5, %do.end68.i.i ], [ 0, %sw.default.i ], [ 0, %sw.bb.i ], [ 0, %if.then219.i ], [ 0, %if.else223.i ], [ 0, %if.then212.i ]
  %bh.2391.i = phi ptr [ %call.i.i, %if.end.i.isofs_read_inode.exit_crit_edge ], [ %call.i.i, %if.then11.i.isofs_read_inode.exit_crit_edge ], [ %bh.1.i, %brelse.exit148.i.i ], [ %bh.1.i, %do.end68.i.i ], [ %bh.1.i, %sw.default.i ], [ %bh.1.i, %sw.bb.i ], [ %bh.1.i, %if.then219.i ], [ %bh.1.i, %if.else223.i ], [ %bh.1.i, %if.then212.i ]
  call void @kfree(ptr noundef %tmpde.0.sink.i) #18
  call void @__brelse(ptr noundef nonnull %bh.2391.i) #18
  br i1 %cmp14, label %isofs_read_inode.exit.if.then16_crit_edge, label %if.else

isofs_read_inode.exit.if.then16_crit_edge:        ; preds = %isofs_read_inode.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then16

if.then16:                                        ; preds = %isofs_read_inode.exit.if.then16_crit_edge, %isofs_read_inode.exit.thread
  %ret.1393.i36 = phi i32 [ -5, %isofs_read_inode.exit.thread ], [ %ret.1392.i, %isofs_read_inode.exit.if.then16_crit_edge ]
  call void @iget_failed(ptr noundef nonnull %call7) #18
  %199 = inttoptr i32 %ret.1393.i36 to ptr
  br label %cleanup

if.else:                                          ; preds = %isofs_read_inode.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @unlock_new_inode(ptr noundef nonnull %call7) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %199, %if.then16 ], [ %call7, %if.else ], [ %call7, %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #18
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isofs_iget5_test(ptr nocapture noundef readonly %ino, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ino, i32 -32
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_iget5_offset = getelementptr i8, ptr %ino, i32 -28
  %4 = ptrtoint ptr %i_iget5_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_iget5_offset, align 4
  %offset = getelementptr inbounds %struct.isofs_iget5_callback_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1 = icmp eq i32 %5, %7
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isofs_iget5_set(ptr nocapture noundef writeonly %ino, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ino, i32 -32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %add.ptr.i, align 8
  %offset = getelementptr inbounds %struct.isofs_iget5_callback_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %i_iget5_offset = getelementptr i8, ptr %ino, i32 -28
  %5 = ptrtoint ptr %i_iget5_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %i_iget5_offset, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_iso9660_fs() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @iso9660_fs_type) #18
  tail call void @zisofs_cleanup() #18
  tail call void @rcu_barrier() #18
  %0 = load ptr, ptr @isofs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zisofs_cleanup() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_iso9660_fs() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.120, i32 noundef 816, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #18
  store ptr %call.i, ptr @isofs_inode_cachep, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @zisofs_init() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out1_crit_edge

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out1

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @iso9660_fs_type) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %out2

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

out2:                                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @zisofs_cleanup() #18
  br label %out1

out1:                                             ; preds = %out2, %if.end.out1_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out1_crit_edge ], [ %call5, %out2 ]
  tail call void @rcu_barrier() #18
  %0 = load ptr, ptr @isofs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #18
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %err.0, %out1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_get_block(ptr nocapture noundef readonly %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %bh_result.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh_result.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bh_result, ptr %bh_result.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = call i32 @isofs_get_blocks(ptr noundef %inode, i64 noundef %iblock, ptr noundef nonnull %bh_result.addr, i32 noundef 1)
  %1 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -30, %do.end ], [ %1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iso_date(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_rock_ridge_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @isofs_get_block) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isofs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @isofs_get_block) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @_isofs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @isofs_get_block) #18
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @isofs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @isofs_fill_super) #18
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %te.i = alloca %struct.cdrom_tocentry, align 4
  %ms_info.i = alloca %struct.cdrom_multisession, align 8
  %options.addr.i = alloca ptr, align 4
  %option.i = alloca i32, align 4
  %uv.i = alloca i32, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup483_crit_edge, label %if.end

entry.cleanup483_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup483

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %2 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #18
  %3 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %option.i, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv.i) #18
  %4 = ptrtoint ptr %uv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uv.i, align 4, !annotation !250
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %while.cond.preheader.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

while.cond.preheader.i:                           ; preds = %if.end
  %call240.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.61) #18
  %cmp.not241.i = icmp eq ptr %call240.i, null
  br i1 %cmp.not241.i, label %while.cond.preheader.i.if.end4_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end4_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %opt.sroa.85.0 = phi i32 [ %opt.sroa.85.1, %cleanup.i.while.body.i_crit_edge ], [ -1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.80.0 = phi i32 [ %opt.sroa.80.1, %cleanup.i.while.body.i_crit_edge ], [ -1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.70.0 = phi ptr [ %opt.sroa.70.2, %cleanup.i.while.body.i_crit_edge ], [ null, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.66.0 = phi i32 [ %opt.sroa.66.2, %cleanup.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.62.0 = phi i32 [ %opt.sroa.62.2, %cleanup.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.58.0 = phi i16 [ %opt.sroa.58.1, %cleanup.i.while.body.i_crit_edge ], [ -1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.54.0 = phi i16 [ %opt.sroa.54.1, %cleanup.i.while.body.i_crit_edge ], [ -1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.48.0 = phi i32 [ %opt.sroa.48.1, %cleanup.i.while.body.i_crit_edge ], [ 1024, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.39.0 = phi i8 [ %opt.sroa.39.1, %cleanup.i.while.body.i_crit_edge ], [ 117, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.33.0 = phi i8 [ %opt.sroa.33.1, %cleanup.i.while.body.i_crit_edge ], [ 110, %while.cond.preheader.i.while.body.i_crit_edge ]
  %opt.sroa.0.0 = phi i16 [ %opt.sroa.0.1, %cleanup.i.while.body.i_crit_edge ], [ -16257, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call242.i = phi ptr [ %call.i, %cleanup.i.while.body.i_crit_edge ], [ %call240.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #18
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  %6 = ptrtoint ptr %call242.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call242.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool27.not.i = icmp eq i8 %7, 0
  br i1 %tobool27.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end29.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end29.i:                                       ; preds = %while.body.i
  %call30.i = call i32 @match_token(ptr noundef nonnull %call242.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #18
  %8 = zext i32 %call30.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %call30.i, label %if.end29.i.parse_options.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %sw.bb34.i
    i32 20, label %sw.bb38.i
    i32 16, label %if.end29.i.sw.bb42.i_crit_edge
    i32 21, label %if.end29.i.sw.bb42.i_crit_edge981
    i32 3, label %sw.bb46.i
    i32 17, label %sw.bb50.i
    i32 6, label %sw.bb58.i
    i32 7, label %sw.bb66.i
    i32 9, label %sw.bb68.i
    i32 8, label %sw.bb70.i
    i32 14, label %sw.bb72.i
    i32 13, label %sw.bb82.i
    i32 1, label %sw.bb89.i
    i32 2, label %sw.bb91.i
    i32 5, label %if.end29.i.cleanup.i_crit_edge
    i32 15, label %sw.bb93.i
    i32 4, label %sw.bb112.i
    i32 10, label %sw.bb139.i
    i32 22, label %sw.bb146.i
    i32 23, label %sw.bb154.i
    i32 0, label %sw.bb158.i
    i32 19, label %sw.bb174.i
  ]

if.end29.i.cleanup.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end29.i.sw.bb42.i_crit_edge981:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb42.i

if.end29.i.sw.bb42.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb42.i

if.end29.i.parse_options.exit_crit_edge:          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

sw.bb.i:                                          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear32.i = and i16 %opt.sroa.0.0, 32767
  br label %cleanup.i

sw.bb34.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear36.i = and i16 %opt.sroa.0.0, -16385
  br label %cleanup.i

sw.bb38.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set41.i = or i16 %opt.sroa.0.0, 4096
  br label %cleanup.i

sw.bb42.i:                                        ; preds = %if.end29.i.sw.bb42.i_crit_edge, %if.end29.i.sw.bb42.i_crit_edge981
  %bf.set45.i = or i16 %opt.sroa.0.0, 2048
  br label %cleanup.i

sw.bb46.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set49.i = or i16 %opt.sroa.0.0, 8192
  br label %cleanup.i

sw.bb50.i:                                        ; preds = %if.end29.i
  call void @kfree(ptr noundef %opt.sroa.70.0) #18
  %call52.i = call noalias ptr @kstrdup(ptr noundef nonnull @.str.36, i32 noundef 3264) #18
  %tobool55.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool55.not.i, label %sw.bb50.i.parse_options.exit_crit_edge, label %sw.bb50.i.cleanup.i_crit_edge

sw.bb50.i.cleanup.i_crit_edge:                    ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb50.i.parse_options.exit_crit_edge:           ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

sw.bb58.i:                                        ; preds = %if.end29.i
  call void @kfree(ptr noundef %opt.sroa.70.0) #18
  %call60.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #18
  %tobool63.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool63.not.i, label %sw.bb58.i.parse_options.exit_crit_edge, label %sw.bb58.i.cleanup.i_crit_edge

sw.bb58.i.cleanup.i_crit_edge:                    ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb58.i.parse_options.exit_crit_edge:           ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

sw.bb66.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb68.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb70.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb72.i:                                        ; preds = %if.end29.i
  %call74.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %sw.bb72.i.parse_options.exit_crit_edge

sw.bb72.i.parse_options.exit_crit_edge:           ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end77.i:                                       ; preds = %sw.bb72.i
  %9 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %option.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %10)
  %cmp78.i = icmp ugt i32 %10, 98
  br i1 %cmp78.i, label %if.end77.i.parse_options.exit_crit_edge, label %if.end80.i

if.end77.i.parse_options.exit_crit_edge:          ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end80.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.i = add nuw nsw i32 %10, 1
  br label %cleanup.i

sw.bb82.i:                                        ; preds = %if.end29.i
  %call84.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %sw.bb82.i.parse_options.exit_crit_edge

sw.bb82.i.parse_options.exit_crit_edge:           ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end87.i:                                       ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %option.i, align 4
  br label %cleanup.i

sw.bb89.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb91.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

sw.bb93.i:                                        ; preds = %if.end29.i
  %call95.i = call i32 @match_uint(ptr noundef nonnull %args.i, ptr noundef nonnull %uv.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end98.i, label %sw.bb93.i.parse_options.exit_crit_edge

sw.bb93.i.parse_options.exit_crit_edge:           ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end98.i:                                       ; preds = %sw.bb93.i
  %13 = call i32 @llvm.read_register.i32(metadata !240) #18
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns.i, align 4
  %21 = ptrtoint ptr %uv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uv.i, align 4
  %call103.i = call i32 @make_kuid(ptr noundef %20, i32 noundef %22) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call103.i)
  %cmp.i.not.i = icmp eq i32 %call103.i, -1
  br i1 %cmp.i.not.i, label %if.end98.i.parse_options.exit_crit_edge, label %if.end108.i

if.end98.i.parse_options.exit_crit_edge:          ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end108.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set111.i = or i16 %opt.sroa.0.0, 256
  br label %cleanup.i

sw.bb112.i:                                       ; preds = %if.end29.i
  %call114.i = call i32 @match_uint(ptr noundef nonnull %args.i, ptr noundef nonnull %uv.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.end117.i, label %sw.bb112.i.parse_options.exit_crit_edge

sw.bb112.i.parse_options.exit_crit_edge:          ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end117.i:                                      ; preds = %sw.bb112.i
  %23 = call i32 @llvm.read_register.i32(metadata !240) #18
  %and.i237.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i237.i to ptr
  %task126.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task126.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task126.i, align 8
  %cred127.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred127.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred127.i, align 16
  %user_ns128.i = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %user_ns128.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns128.i, align 4
  %31 = ptrtoint ptr %uv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uv.i, align 4
  %call129.i = call i32 @make_kgid(ptr noundef %30, i32 noundef %32) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call129.i)
  %cmp.i238.not.i = icmp eq i32 %call129.i, -1
  br i1 %cmp.i238.not.i, label %if.end117.i.parse_options.exit_crit_edge, label %if.end135.i

if.end117.i.parse_options.exit_crit_edge:         ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end135.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set138.i = or i16 %opt.sroa.0.0, 128
  br label %cleanup.i

sw.bb139.i:                                       ; preds = %if.end29.i
  %call141.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %tobool142.not.i = icmp eq i32 %call141.i, 0
  br i1 %tobool142.not.i, label %if.end144.i, label %sw.bb139.i.parse_options.exit_crit_edge

sw.bb139.i.parse_options.exit_crit_edge:          ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end144.i:                                      ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %option.i, align 4
  %conv.i = trunc i32 %34 to i16
  br label %cleanup.i

sw.bb146.i:                                       ; preds = %if.end29.i
  %call148.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %if.end151.i, label %sw.bb146.i.parse_options.exit_crit_edge

sw.bb146.i.parse_options.exit_crit_edge:          ; preds = %sw.bb146.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end151.i:                                      ; preds = %sw.bb146.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %option.i, align 4
  %conv152.i = trunc i32 %36 to i16
  br label %cleanup.i

sw.bb154.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set157.i = or i16 %opt.sroa.0.0, 512
  br label %cleanup.i

sw.bb158.i:                                       ; preds = %if.end29.i
  %call160.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %tobool161.not.i = icmp eq i32 %call160.i, 0
  br i1 %tobool161.not.i, label %if.end163.i, label %sw.bb158.i.parse_options.exit_crit_edge

sw.bb158.i.parse_options.exit_crit_edge:          ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

if.end163.i:                                      ; preds = %sw.bb158.i
  %37 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %option.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %38, label %if.end163.i.parse_options.exit_crit_edge [
    i32 512, label %if.end163.i.cleanup.i_crit_edge
    i32 1024, label %if.end163.i.cleanup.i_crit_edge982
    i32 2048, label %if.end163.i.cleanup.i_crit_edge983
  ]

if.end163.i.cleanup.i_crit_edge983:               ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end163.i.cleanup.i_crit_edge982:               ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end163.i.cleanup.i_crit_edge:                  ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end163.i.parse_options.exit_crit_edge:         ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %parse_options.exit

sw.bb174.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set177.i = or i16 %opt.sroa.0.0, 1024
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb174.i, %if.end163.i.cleanup.i_crit_edge, %if.end163.i.cleanup.i_crit_edge982, %if.end163.i.cleanup.i_crit_edge983, %sw.bb154.i, %if.end151.i, %if.end144.i, %if.end135.i, %if.end108.i, %sw.bb91.i, %sw.bb89.i, %if.end87.i, %if.end80.i, %sw.bb70.i, %sw.bb68.i, %sw.bb66.i, %sw.bb58.i.cleanup.i_crit_edge, %sw.bb50.i.cleanup.i_crit_edge, %sw.bb46.i, %sw.bb42.i, %sw.bb38.i, %sw.bb34.i, %sw.bb.i, %if.end29.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %opt.sroa.85.1 = phi i32 [ %opt.sroa.85.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.85.0, %sw.bb174.i ], [ %opt.sroa.85.0, %sw.bb154.i ], [ %opt.sroa.85.0, %if.end151.i ], [ %opt.sroa.85.0, %if.end144.i ], [ %opt.sroa.85.0, %if.end135.i ], [ %opt.sroa.85.0, %if.end108.i ], [ %opt.sroa.85.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.85.0, %sw.bb91.i ], [ %opt.sroa.85.0, %sw.bb89.i ], [ %12, %if.end87.i ], [ %opt.sroa.85.0, %if.end80.i ], [ %opt.sroa.85.0, %sw.bb70.i ], [ %opt.sroa.85.0, %sw.bb68.i ], [ %opt.sroa.85.0, %sw.bb66.i ], [ %opt.sroa.85.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.85.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.85.0, %sw.bb46.i ], [ %opt.sroa.85.0, %sw.bb42.i ], [ %opt.sroa.85.0, %sw.bb38.i ], [ %opt.sroa.85.0, %sw.bb34.i ], [ %opt.sroa.85.0, %sw.bb.i ], [ %opt.sroa.85.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.85.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.85.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.80.1 = phi i32 [ %opt.sroa.80.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.80.0, %sw.bb174.i ], [ %opt.sroa.80.0, %sw.bb154.i ], [ %opt.sroa.80.0, %if.end151.i ], [ %opt.sroa.80.0, %if.end144.i ], [ %opt.sroa.80.0, %if.end135.i ], [ %opt.sroa.80.0, %if.end108.i ], [ %opt.sroa.80.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.80.0, %sw.bb91.i ], [ %opt.sroa.80.0, %sw.bb89.i ], [ %opt.sroa.80.0, %if.end87.i ], [ %add.i, %if.end80.i ], [ %opt.sroa.80.0, %sw.bb70.i ], [ %opt.sroa.80.0, %sw.bb68.i ], [ %opt.sroa.80.0, %sw.bb66.i ], [ %opt.sroa.80.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.80.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.80.0, %sw.bb46.i ], [ %opt.sroa.80.0, %sw.bb42.i ], [ %opt.sroa.80.0, %sw.bb38.i ], [ %opt.sroa.80.0, %sw.bb34.i ], [ %opt.sroa.80.0, %sw.bb.i ], [ %opt.sroa.80.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.80.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.80.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.70.2 = phi ptr [ %opt.sroa.70.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.70.0, %sw.bb174.i ], [ %opt.sroa.70.0, %sw.bb154.i ], [ %opt.sroa.70.0, %if.end151.i ], [ %opt.sroa.70.0, %if.end144.i ], [ %opt.sroa.70.0, %if.end135.i ], [ %opt.sroa.70.0, %if.end108.i ], [ %opt.sroa.70.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.70.0, %sw.bb91.i ], [ %opt.sroa.70.0, %sw.bb89.i ], [ %opt.sroa.70.0, %if.end87.i ], [ %opt.sroa.70.0, %if.end80.i ], [ %opt.sroa.70.0, %sw.bb70.i ], [ %opt.sroa.70.0, %sw.bb68.i ], [ %opt.sroa.70.0, %sw.bb66.i ], [ %call60.i, %sw.bb58.i.cleanup.i_crit_edge ], [ %call52.i, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.70.0, %sw.bb46.i ], [ %opt.sroa.70.0, %sw.bb42.i ], [ %opt.sroa.70.0, %sw.bb38.i ], [ %opt.sroa.70.0, %sw.bb34.i ], [ %opt.sroa.70.0, %sw.bb.i ], [ %opt.sroa.70.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.70.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.70.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.66.2 = phi i32 [ %opt.sroa.66.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.66.0, %sw.bb174.i ], [ %opt.sroa.66.0, %sw.bb154.i ], [ %opt.sroa.66.0, %if.end151.i ], [ %opt.sroa.66.0, %if.end144.i ], [ %opt.sroa.66.0, %if.end135.i ], [ %call103.i, %if.end108.i ], [ %opt.sroa.66.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.66.0, %sw.bb91.i ], [ %opt.sroa.66.0, %sw.bb89.i ], [ %opt.sroa.66.0, %if.end87.i ], [ %opt.sroa.66.0, %if.end80.i ], [ %opt.sroa.66.0, %sw.bb70.i ], [ %opt.sroa.66.0, %sw.bb68.i ], [ %opt.sroa.66.0, %sw.bb66.i ], [ %opt.sroa.66.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.66.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.66.0, %sw.bb46.i ], [ %opt.sroa.66.0, %sw.bb42.i ], [ %opt.sroa.66.0, %sw.bb38.i ], [ %opt.sroa.66.0, %sw.bb34.i ], [ %opt.sroa.66.0, %sw.bb.i ], [ %opt.sroa.66.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.66.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.66.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.62.2 = phi i32 [ %opt.sroa.62.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.62.0, %sw.bb174.i ], [ %opt.sroa.62.0, %sw.bb154.i ], [ %opt.sroa.62.0, %if.end151.i ], [ %opt.sroa.62.0, %if.end144.i ], [ %call129.i, %if.end135.i ], [ %opt.sroa.62.0, %if.end108.i ], [ %opt.sroa.62.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.62.0, %sw.bb91.i ], [ %opt.sroa.62.0, %sw.bb89.i ], [ %opt.sroa.62.0, %if.end87.i ], [ %opt.sroa.62.0, %if.end80.i ], [ %opt.sroa.62.0, %sw.bb70.i ], [ %opt.sroa.62.0, %sw.bb68.i ], [ %opt.sroa.62.0, %sw.bb66.i ], [ %opt.sroa.62.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.62.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.62.0, %sw.bb46.i ], [ %opt.sroa.62.0, %sw.bb42.i ], [ %opt.sroa.62.0, %sw.bb38.i ], [ %opt.sroa.62.0, %sw.bb34.i ], [ %opt.sroa.62.0, %sw.bb.i ], [ %opt.sroa.62.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.62.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.62.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.58.1 = phi i16 [ %opt.sroa.58.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.58.0, %sw.bb174.i ], [ %opt.sroa.58.0, %sw.bb154.i ], [ %conv152.i, %if.end151.i ], [ %opt.sroa.58.0, %if.end144.i ], [ %opt.sroa.58.0, %if.end135.i ], [ %opt.sroa.58.0, %if.end108.i ], [ %opt.sroa.58.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.58.0, %sw.bb91.i ], [ %opt.sroa.58.0, %sw.bb89.i ], [ %opt.sroa.58.0, %if.end87.i ], [ %opt.sroa.58.0, %if.end80.i ], [ %opt.sroa.58.0, %sw.bb70.i ], [ %opt.sroa.58.0, %sw.bb68.i ], [ %opt.sroa.58.0, %sw.bb66.i ], [ %opt.sroa.58.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.58.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.58.0, %sw.bb46.i ], [ %opt.sroa.58.0, %sw.bb42.i ], [ %opt.sroa.58.0, %sw.bb38.i ], [ %opt.sroa.58.0, %sw.bb34.i ], [ %opt.sroa.58.0, %sw.bb.i ], [ %opt.sroa.58.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.58.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.58.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.54.1 = phi i16 [ %opt.sroa.54.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.54.0, %sw.bb174.i ], [ %opt.sroa.54.0, %sw.bb154.i ], [ %opt.sroa.54.0, %if.end151.i ], [ %conv.i, %if.end144.i ], [ %opt.sroa.54.0, %if.end135.i ], [ %opt.sroa.54.0, %if.end108.i ], [ %opt.sroa.54.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.54.0, %sw.bb91.i ], [ %opt.sroa.54.0, %sw.bb89.i ], [ %opt.sroa.54.0, %if.end87.i ], [ %opt.sroa.54.0, %if.end80.i ], [ %opt.sroa.54.0, %sw.bb70.i ], [ %opt.sroa.54.0, %sw.bb68.i ], [ %opt.sroa.54.0, %sw.bb66.i ], [ %opt.sroa.54.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.54.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.54.0, %sw.bb46.i ], [ %opt.sroa.54.0, %sw.bb42.i ], [ %opt.sroa.54.0, %sw.bb38.i ], [ %opt.sroa.54.0, %sw.bb34.i ], [ %opt.sroa.54.0, %sw.bb.i ], [ %opt.sroa.54.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.54.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.54.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.48.1 = phi i32 [ %opt.sroa.48.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.48.0, %sw.bb174.i ], [ %opt.sroa.48.0, %sw.bb154.i ], [ %opt.sroa.48.0, %if.end151.i ], [ %opt.sroa.48.0, %if.end144.i ], [ %opt.sroa.48.0, %if.end135.i ], [ %opt.sroa.48.0, %if.end108.i ], [ %opt.sroa.48.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.48.0, %sw.bb91.i ], [ %opt.sroa.48.0, %sw.bb89.i ], [ %opt.sroa.48.0, %if.end87.i ], [ %opt.sroa.48.0, %if.end80.i ], [ %opt.sroa.48.0, %sw.bb70.i ], [ %opt.sroa.48.0, %sw.bb68.i ], [ %opt.sroa.48.0, %sw.bb66.i ], [ %opt.sroa.48.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.48.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.48.0, %sw.bb46.i ], [ %opt.sroa.48.0, %sw.bb42.i ], [ %opt.sroa.48.0, %sw.bb38.i ], [ %opt.sroa.48.0, %sw.bb34.i ], [ %opt.sroa.48.0, %sw.bb.i ], [ %38, %if.end163.i.cleanup.i_crit_edge ], [ %38, %if.end163.i.cleanup.i_crit_edge982 ], [ %38, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.39.1 = phi i8 [ %opt.sroa.39.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.39.0, %sw.bb174.i ], [ %opt.sroa.39.0, %sw.bb154.i ], [ %opt.sroa.39.0, %if.end151.i ], [ %opt.sroa.39.0, %if.end144.i ], [ %opt.sroa.39.0, %if.end135.i ], [ %opt.sroa.39.0, %if.end108.i ], [ %opt.sroa.39.0, %if.end29.i.cleanup.i_crit_edge ], [ 115, %sw.bb91.i ], [ 114, %sw.bb89.i ], [ %opt.sroa.39.0, %if.end87.i ], [ %opt.sroa.39.0, %if.end80.i ], [ %opt.sroa.39.0, %sw.bb70.i ], [ %opt.sroa.39.0, %sw.bb68.i ], [ %opt.sroa.39.0, %sw.bb66.i ], [ %opt.sroa.39.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.39.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.39.0, %sw.bb46.i ], [ %opt.sroa.39.0, %sw.bb42.i ], [ %opt.sroa.39.0, %sw.bb38.i ], [ %opt.sroa.39.0, %sw.bb34.i ], [ %opt.sroa.39.0, %sw.bb.i ], [ %opt.sroa.39.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.39.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.39.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.33.1 = phi i8 [ %opt.sroa.33.0, %while.body.i.cleanup.i_crit_edge ], [ %opt.sroa.33.0, %sw.bb174.i ], [ %opt.sroa.33.0, %sw.bb154.i ], [ %opt.sroa.33.0, %if.end151.i ], [ %opt.sroa.33.0, %if.end144.i ], [ %opt.sroa.33.0, %if.end135.i ], [ %opt.sroa.33.0, %if.end108.i ], [ %opt.sroa.33.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.33.0, %sw.bb91.i ], [ %opt.sroa.33.0, %sw.bb89.i ], [ %opt.sroa.33.0, %if.end87.i ], [ %opt.sroa.33.0, %if.end80.i ], [ 110, %sw.bb70.i ], [ 111, %sw.bb68.i ], [ 97, %sw.bb66.i ], [ %opt.sroa.33.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.33.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %opt.sroa.33.0, %sw.bb46.i ], [ %opt.sroa.33.0, %sw.bb42.i ], [ %opt.sroa.33.0, %sw.bb38.i ], [ %opt.sroa.33.0, %sw.bb34.i ], [ %opt.sroa.33.0, %sw.bb.i ], [ %opt.sroa.33.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.33.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.33.0, %if.end163.i.cleanup.i_crit_edge983 ]
  %opt.sroa.0.1 = phi i16 [ %opt.sroa.0.0, %while.body.i.cleanup.i_crit_edge ], [ %bf.set177.i, %sw.bb174.i ], [ %bf.set157.i, %sw.bb154.i ], [ %opt.sroa.0.0, %if.end151.i ], [ %opt.sroa.0.0, %if.end144.i ], [ %bf.set138.i, %if.end135.i ], [ %bf.set111.i, %if.end108.i ], [ %opt.sroa.0.0, %if.end29.i.cleanup.i_crit_edge ], [ %opt.sroa.0.0, %sw.bb91.i ], [ %opt.sroa.0.0, %sw.bb89.i ], [ %opt.sroa.0.0, %if.end87.i ], [ %opt.sroa.0.0, %if.end80.i ], [ %opt.sroa.0.0, %sw.bb70.i ], [ %opt.sroa.0.0, %sw.bb68.i ], [ %opt.sroa.0.0, %sw.bb66.i ], [ %opt.sroa.0.0, %sw.bb58.i.cleanup.i_crit_edge ], [ %opt.sroa.0.0, %sw.bb50.i.cleanup.i_crit_edge ], [ %bf.set49.i, %sw.bb46.i ], [ %bf.set45.i, %sw.bb42.i ], [ %bf.set41.i, %sw.bb38.i ], [ %bf.clear36.i, %sw.bb34.i ], [ %bf.clear32.i, %sw.bb.i ], [ %opt.sroa.0.0, %if.end163.i.cleanup.i_crit_edge ], [ %opt.sroa.0.0, %if.end163.i.cleanup.i_crit_edge982 ], [ %opt.sroa.0.0, %if.end163.i.cleanup.i_crit_edge983 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #18
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.61) #18
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %cleanup.i.if.end4_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

cleanup.i.if.end4_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

parse_options.exit:                               ; preds = %if.end163.i.parse_options.exit_crit_edge, %sw.bb158.i.parse_options.exit_crit_edge, %sw.bb146.i.parse_options.exit_crit_edge, %sw.bb139.i.parse_options.exit_crit_edge, %if.end117.i.parse_options.exit_crit_edge, %sw.bb112.i.parse_options.exit_crit_edge, %if.end98.i.parse_options.exit_crit_edge, %sw.bb93.i.parse_options.exit_crit_edge, %sw.bb82.i.parse_options.exit_crit_edge, %if.end77.i.parse_options.exit_crit_edge, %sw.bb72.i.parse_options.exit_crit_edge, %sw.bb58.i.parse_options.exit_crit_edge, %sw.bb50.i.parse_options.exit_crit_edge, %if.end29.i.parse_options.exit_crit_edge
  %opt.sroa.70.1 = phi ptr [ %opt.sroa.70.0, %if.end29.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %if.end163.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb158.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb146.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb139.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %if.end117.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb112.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %if.end98.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb93.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb82.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %if.end77.i.parse_options.exit_crit_edge ], [ %opt.sroa.70.0, %sw.bb72.i.parse_options.exit_crit_edge ], [ null, %sw.bb58.i.parse_options.exit_crit_edge ], [ null, %sw.bb50.i.parse_options.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  br label %out_freesbi

if.end4:                                          ; preds = %cleanup.i.if.end4_crit_edge, %while.cond.preheader.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %opt.sroa.85.2.ph = phi i32 [ -1, %while.cond.preheader.i.if.end4_crit_edge ], [ -1, %if.end.if.end4_crit_edge ], [ %opt.sroa.85.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.80.2.ph = phi i32 [ -1, %while.cond.preheader.i.if.end4_crit_edge ], [ -1, %if.end.if.end4_crit_edge ], [ %opt.sroa.80.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.70.3.ph = phi ptr [ null, %while.cond.preheader.i.if.end4_crit_edge ], [ null, %if.end.if.end4_crit_edge ], [ %opt.sroa.70.2, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.66.3.ph = phi i32 [ 0, %while.cond.preheader.i.if.end4_crit_edge ], [ 0, %if.end.if.end4_crit_edge ], [ %opt.sroa.66.2, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.62.3.ph = phi i32 [ 0, %while.cond.preheader.i.if.end4_crit_edge ], [ 0, %if.end.if.end4_crit_edge ], [ %opt.sroa.62.2, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.58.2.ph = phi i16 [ -1, %while.cond.preheader.i.if.end4_crit_edge ], [ -1, %if.end.if.end4_crit_edge ], [ %opt.sroa.58.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.54.2.ph = phi i16 [ -1, %while.cond.preheader.i.if.end4_crit_edge ], [ -1, %if.end.if.end4_crit_edge ], [ %opt.sroa.54.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.48.2.ph = phi i32 [ 1024, %while.cond.preheader.i.if.end4_crit_edge ], [ 1024, %if.end.if.end4_crit_edge ], [ %opt.sroa.48.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.39.2.ph = phi i8 [ 117, %while.cond.preheader.i.if.end4_crit_edge ], [ 117, %if.end.if.end4_crit_edge ], [ %opt.sroa.39.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.33.2.ph = phi i8 [ 110, %while.cond.preheader.i.if.end4_crit_edge ], [ 110, %if.end.if.end4_crit_edge ], [ %opt.sroa.33.1, %cleanup.i.if.end4_crit_edge ]
  %opt.sroa.0.2.ph = phi i16 [ -16257, %while.cond.preheader.i.if.end4_crit_edge ], [ -16257, %if.end.if.end4_crit_edge ], [ %opt.sroa.0.1, %cleanup.i.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %40 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end4.if.end10_crit_edge, label %land.lhs.true.i.i

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true.i.i:                                ; preds = %if.end4
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %43, i32 0, i32 37, i32 9
  %44 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %45)
  %cmp = icmp ugt i32 %45, 2048
  br i1 %cmp, label %bdev_logical_block_size.exit651, label %land.lhs.true.i.i.if.end10_crit_edge

land.lhs.true.i.i.if.end10_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

bdev_logical_block_size.exit651:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool2.not.i.i647 = icmp eq i32 %47, 0
  %spec.select.i.i648 = select i1 %tobool2.not.i.i647, i32 512, i32 %47
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %spec.select.i.i648) #21
  br label %out_freesbi

if.end10:                                         ; preds = %land.lhs.true.i.i.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %call11 = call i32 @sb_min_blocksize(ptr noundef %s, i32 noundef %opt.sroa.48.2.ph) #18
  %s_high_sierra = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %48 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load = load i16, ptr %s_high_sierra, align 8
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %s_high_sierra, align 8
  %conv = trunc i32 %opt.sroa.80.2.ph to i8
  %s_session = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 10
  %49 = ptrtoint ptr %s_session to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %s_session, align 1
  %s_sbsector = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %s_sbsector to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %opt.sroa.85.2.ph, ptr %s_sbsector, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %opt.sroa.85.2.ph)
  %cmp14.not = icmp eq i32 %opt.sroa.85.2.ph, -1
  br i1 %cmp14.not, label %cond.false, label %if.end10.cond.end_crit_edge

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %51 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_bdev, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %52, i32 0, i32 17
  %53 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bd_disk.i, align 8
  %cdi1.i = getelementptr inbounds %struct.gendisk, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %cdi1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cdi1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opt.sroa.80.2.ph)
  %cmp.i = icmp sgt i32 %opt.sroa.80.2.ph, 0
  br i1 %cmp.i, label %if.then.i, label %if.end24.i

if.then.i:                                        ; preds = %cond.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %te.i) #18
  %57 = call ptr @memset(ptr %te.i, i32 255, i32 12)
  %tobool.not.i652 = icmp eq ptr %56, null
  br i1 %tobool.not.i652, label %if.then.i.cleanup.thread.i656_crit_edge, label %if.end.i

if.then.i.cleanup.thread.i656_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i656

if.end.i:                                         ; preds = %if.then.i
  %58 = ptrtoint ptr %te.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv, ptr %te.i, align 4
  %cdte_format.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 2
  %59 = ptrtoint ptr %cdte_format.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %cdte_format.i, align 2
  %call.i654 = call i32 @cdrom_read_tocentry(ptr noundef nonnull %56, ptr noundef nonnull %te.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i654)
  %cmp3.i = icmp eq i32 %call.i654, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.if.end24.thread.i_crit_edge

if.end.i.if.end24.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.thread.i

do.end.i:                                         ; preds = %if.end.i
  %cdte_addr.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 3
  %60 = ptrtoint ptr %cdte_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cdte_addr.i, align 4
  %cdte_ctrl.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 1
  %62 = ptrtoint ptr %cdte_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i655 = load i8, ptr %cdte_ctrl.i, align 1
  %63 = and i8 %bf.load.i655, 4
  %and.i = zext i8 %63 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %opt.sroa.80.2.ph, i32 noundef %61, i32 noundef %and.i) #21
  %64 = ptrtoint ptr %cdte_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load9.i = load i8, ptr %cdte_ctrl.i, align 1
  %65 = and i8 %bf.load9.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp13.not.i = icmp eq i8 %65, 0
  br i1 %cmp13.not.i, label %do.end.i.if.end24.thread.i_crit_edge, label %if.then15.i

do.end.i.if.end24.thread.i_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.thread.i

if.then15.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %cdte_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cdte_addr.i, align 4
  br label %cleanup.thread.i656

cleanup.thread.i656:                              ; preds = %if.then15.i, %if.then.i.cleanup.thread.i656_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %if.then.i.cleanup.thread.i656_crit_edge ], [ %67, %if.then15.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %te.i) #18
  br label %cond.end

if.end24.thread.i:                                ; preds = %do.end.i.if.end24.thread.i_crit_edge, %if.end.i.if.end24.thread.i_crit_edge
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %te.i) #18
  br label %if.then26.i

if.end24.i:                                       ; preds = %cond.false
  %tobool25.not.i = icmp eq ptr %56, null
  br i1 %tobool25.not.i, label %if.end24.i.cond.end_crit_edge, label %if.end24.i.if.then26.i_crit_edge

if.end24.i.if.then26.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26.i

if.end24.i.cond.end_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

if.then26.i:                                      ; preds = %if.end24.i.if.then26.i_crit_edge, %if.end24.thread.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ms_info.i) #18
  %68 = ptrtoint ptr %ms_info.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 -16646145, ptr %ms_info.i, align 8, !annotation !250
  %call27.i = call i32 @cdrom_multisession(ptr noundef nonnull %56, ptr noundef nonnull %ms_info.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.then26.i.if.end34.i_crit_edge

if.then26.i.if.end34.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.then26.i
  %xa_flag.i = getelementptr inbounds %struct.cdrom_multisession, ptr %ms_info.i, i32 0, i32 1
  %69 = ptrtoint ptr %xa_flag.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %xa_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool31.not.i = icmp eq i8 %70, 0
  br i1 %tobool31.not.i, label %if.then30.i.if.end34.i_crit_edge, label %if.then32.i

if.then30.i.if.end34.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #20
  %71 = ptrtoint ptr %ms_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ms_info.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.then30.i.if.end34.i_crit_edge, %if.then26.i.if.end34.i_crit_edge
  %vol_desc_start.0.i = phi i32 [ %72, %if.then32.i ], [ 0, %if.then30.i.if.end34.i_crit_edge ], [ 0, %if.then26.i.if.end34.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ms_info.i) #18
  br label %cond.end

cond.end:                                         ; preds = %if.end34.i, %if.end24.i.cond.end_crit_edge, %cleanup.thread.i656, %if.end10.cond.end_crit_edge
  %cond = phi i32 [ %opt.sroa.85.2.ph, %if.end10.cond.end_crit_edge ], [ %vol_desc_start.0.i, %if.end34.i ], [ 0, %if.end24.i.cond.end_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i656 ]
  %add = add i32 %cond, 16
  %add19 = add i32 %cond, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add19)
  %cmp20836 = icmp ult i32 %add, %add19
  br i1 %cmp20836, label %for.body.lr.ph, label %cond.end.out_unknown_format_crit_edge

cond.end.out_unknown_format_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unknown_format

for.body.lr.ph:                                   ; preds = %cond.end
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pri_bh.0840 = phi ptr [ null, %for.body.lr.ph ], [ %pri_bh.2.ph, %for.inc.for.body_crit_edge ]
  %pri.0838 = phi ptr [ null, %for.body.lr.ph ], [ %pri.2.ph, %for.inc.for.body_crit_edge ]
  %iso_blknum.0837 = phi i32 [ %add, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %73 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %s_blocksize_bits, align 4
  %conv22 = zext i8 %74 to i32
  %sub = sub nsw i32 11, %conv22
  %shl = shl i32 %iso_blknum.0837, %sub
  %conv23 = sext i32 %shl to i64
  %75 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_bdev, align 4
  %77 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_blocksize.i, align 16
  %call.i658 = call ptr @__bread_gfp(ptr noundef %76, i64 noundef %conv23, i32 noundef %78, i32 noundef 8) #18
  %tobool25.not = icmp eq ptr %call.i658, null
  br i1 %tobool25.not, label %out_freebh.thread, label %if.end27

if.end27:                                         ; preds = %for.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i658, i32 0, i32 5
  %79 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_data, align 4
  %id = getelementptr inbounds %struct.iso_volume_descriptor, ptr %80, i32 0, i32 1
  %call29 = call i32 @strncmp(ptr noundef %id, ptr noundef nonnull dereferenceable(6) @.str.30, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else100

if.then32:                                        ; preds = %if.end27
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %82, label %if.then32.if.then.i664_crit_edge [
    i8 -1, label %for.end
    i8 1, label %if.then44
    i8 2, label %if.then53
  ]

if.then32.if.then.i664_crit_edge:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i664

if.then44:                                        ; preds = %if.then32
  %tobool45.not = icmp eq ptr %pri.0838, null
  br i1 %tobool45.not, label %if.then44.for.inc_crit_edge, label %if.then44.if.then.i664_crit_edge

if.then44.if.then.i664_crit_edge:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i664

if.then44.for.inc_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then53:                                        ; preds = %if.then32
  %escape = getelementptr inbounds %struct.iso_supplementary_descriptor, ptr %80, i32 0, i32 8
  %84 = ptrtoint ptr %escape to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %escape, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %85)
  %cmp55 = icmp eq i8 %85, 37
  br i1 %cmp55, label %land.lhs.true, label %if.then53.if.then.i664_crit_edge

if.then53.if.then.i664_crit_edge:                 ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i664

land.lhs.true:                                    ; preds = %if.then53
  %arrayidx58 = getelementptr %struct.iso_supplementary_descriptor, ptr %80, i32 0, i32 8, i32 1
  %86 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %87)
  %cmp60 = icmp eq i8 %87, 47
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.then.i664_crit_edge

land.lhs.true.if.then.i664_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i664

if.then62:                                        ; preds = %land.lhs.true
  %88 = and i16 %opt.sroa.0.2.ph, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool65.not = icmp eq i16 %88, 0
  br i1 %tobool65.not, label %if.then62.root_found_crit_edge, label %if.then66

if.then62.root_found_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #20
  br label %root_found

if.then66:                                        ; preds = %if.then62
  %arrayidx68 = getelementptr %struct.iso_supplementary_descriptor, ptr %80, i32 0, i32 8, i32 2
  %89 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx68, align 1
  %switch.tableidx = add i8 %90, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %91 = icmp ult i8 %switch.tableidx, 6
  br i1 %91, label %switch.lookup, label %if.then66.do.end92_crit_edge

if.then66.do.end92_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end92

switch.lookup:                                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #20
  %92 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.isofs_fill_super, i32 0, i32 %92
  %93 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %93)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.end92

do.end92:                                         ; preds = %switch.lookup, %if.then66.do.end92_crit_edge
  %joliet_level.1 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then66.do.end92_crit_edge ]
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %joliet_level.1) #21
  br label %root_found

if.else100:                                       ; preds = %if.end27
  %id101 = getelementptr inbounds %struct.hs_volume_descriptor, ptr %80, i32 0, i32 2
  %call103 = call i32 @strncmp(ptr noundef %id101, ptr noundef nonnull dereferenceable(6) @.str.34, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else100.if.then.i664_crit_edge

if.else100.if.then.i664_crit_edge:                ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i664

if.then106:                                       ; preds = %if.else100
  %type107 = getelementptr inbounds %struct.hs_volume_descriptor, ptr %80, i32 0, i32 1
  %94 = ptrtoint ptr %type107 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %type107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp110.not = icmp eq i8 %95, 1
  br i1 %cmp110.not, label %if.end113, label %if.then106.if.then.i688_crit_edge

if.then106.if.then.i688_crit_edge:                ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i688

if.end113:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #20
  %96 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load115 = load i16, ptr %s_high_sierra, align 8
  %bf.set117 = or i16 %bf.load115, -32768
  store i16 %bf.set117, ptr %s_high_sierra, align 8
  %bf.clear119 = and i16 %opt.sroa.0.2.ph, 32767
  br label %root_found

if.then.i664:                                     ; preds = %if.else100.if.then.i664_crit_edge, %land.lhs.true.if.then.i664_crit_edge, %if.then53.if.then.i664_crit_edge, %if.then44.if.then.i664_crit_edge, %if.then32.if.then.i664_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i658) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then.i664, %if.then44.for.inc_crit_edge
  %pri.2.ph = phi ptr [ %80, %if.then44.for.inc_crit_edge ], [ %pri.0838, %if.then.i664 ]
  %pri_bh.2.ph = phi ptr [ %call.i658, %if.then44.for.inc_crit_edge ], [ %pri_bh.0840, %if.then.i664 ]
  %inc = add i32 %iso_blknum.0837, 1
  %exitcond.not = icmp eq i32 %inc, %add19
  br i1 %exitcond.not, label %for.end.thread871, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.then32
  %tobool124.not = icmp eq ptr %pri.0838, null
  br i1 %tobool124.not, label %for.end.out_unknown_format_crit_edge, label %if.then.i667

for.end.out_unknown_format_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unknown_format

for.end.thread871:                                ; preds = %for.inc
  %tobool124.not875 = icmp eq ptr %pri.2.ph, null
  br i1 %tobool124.not875, label %for.end.thread871.out_unknown_format_crit_edge, label %for.end.thread871.root_found_crit_edge

for.end.thread871.root_found_crit_edge:           ; preds = %for.end.thread871
  call void @__sanitizer_cov_trace_pc() #20
  br label %root_found

for.end.thread871.out_unknown_format_crit_edge:   ; preds = %for.end.thread871
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unknown_format

if.then.i667:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %call.i658) #18
  br label %root_found

root_found:                                       ; preds = %if.then.i667, %for.end.thread871.root_found_crit_edge, %if.end113, %do.end92, %if.then62.root_found_crit_edge
  %pri.0827 = phi ptr [ %pri.0838, %if.then.i667 ], [ %pri.0838, %if.end113 ], [ %pri.0838, %do.end92 ], [ %pri.0838, %if.then62.root_found_crit_edge ], [ %pri.2.ph, %for.end.thread871.root_found_crit_edge ]
  %opt.sroa.0.6 = phi i16 [ %opt.sroa.0.2.ph, %if.then.i667 ], [ %bf.clear119, %if.end113 ], [ %opt.sroa.0.2.ph, %do.end92 ], [ %opt.sroa.0.2.ph, %if.then62.root_found_crit_edge ], [ %opt.sroa.0.2.ph, %for.end.thread871.root_found_crit_edge ]
  %joliet_level.5 = phi i32 [ 0, %if.then.i667 ], [ 0, %if.end113 ], [ %joliet_level.1, %do.end92 ], [ 0, %if.then62.root_found_crit_edge ], [ 0, %for.end.thread871.root_found_crit_edge ]
  %sec.4 = phi ptr [ null, %if.then.i667 ], [ null, %if.end113 ], [ %80, %do.end92 ], [ %80, %if.then62.root_found_crit_edge ], [ null, %for.end.thread871.root_found_crit_edge ]
  %h_pri.3 = phi ptr [ null, %if.then.i667 ], [ %80, %if.end113 ], [ null, %do.end92 ], [ null, %if.then62.root_found_crit_edge ], [ null, %for.end.thread871.root_found_crit_edge ]
  %pri_bh.4 = phi ptr [ null, %if.then.i667 ], [ %pri_bh.0840, %if.end113 ], [ %pri_bh.0840, %do.end92 ], [ %pri_bh.0840, %if.then62.root_found_crit_edge ], [ null, %for.end.thread871.root_found_crit_edge ]
  %bh.4 = phi ptr [ %pri_bh.0840, %if.then.i667 ], [ %call.i658, %if.end113 ], [ %call.i658, %do.end92 ], [ %call.i658, %if.then62.root_found_crit_edge ], [ %pri_bh.2.ph, %for.end.thread871.root_found_crit_edge ]
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %97 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_flags.i, align 4
  %and.i670 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i670)
  %tobool.i.not = icmp eq i32 %and.i670, 0
  br i1 %tobool.i.not, label %root_found.out_freebh_crit_edge, label %if.end129

root_found.out_freebh_crit_edge:                  ; preds = %root_found
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_freebh

if.end129:                                        ; preds = %root_found
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %joliet_level.5)
  %tobool130.not = icmp eq i32 %joliet_level.5, 0
  %tobool132.not = icmp eq ptr %pri.0827, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %opt.sroa.0.6)
  %tobool136.not = icmp sgt i16 %opt.sroa.0.6, -1
  %or.cond817 = select i1 %tobool132.not, i1 true, i1 %tobool136.not
  %spec.select820 = select i1 %or.cond817, ptr %sec.4, ptr %pri.0827
  %pri.5 = select i1 %tobool130.not, ptr %pri.0827, ptr %spec.select820
  %99 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load140 = load i16, ptr %s_high_sierra, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load140)
  %tobool143.not = icmp sgt i16 %bf.load140, -1
  br i1 %tobool143.not, label %if.else153, label %if.then144

if.then144:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #20
  %root_directory_record = getelementptr inbounds %struct.hs_primary_descriptor, ptr %h_pri.3, i32 0, i32 16
  %volume_space_size = getelementptr inbounds %struct.hs_primary_descriptor, ptr %h_pri.3, i32 0, i32 8
  %100 = ptrtoint ptr %volume_space_size to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %volume_space_size, align 1
  %102 = call i32 @llvm.bswap.i32(i32 %101) #18
  %s_nzones = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %s_nzones to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %s_nzones, align 4
  %logical_block_size = getelementptr inbounds %struct.hs_primary_descriptor, ptr %h_pri.3, i32 0, i32 12
  br label %if.end171

if.else153:                                       ; preds = %if.end129
  %tobool154.not = icmp eq ptr %pri.5, null
  br i1 %tobool154.not, label %if.else153.out_freebh_crit_edge, label %if.end156

if.else153.out_freebh_crit_edge:                  ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_freebh

if.end156:                                        ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #20
  %root_directory_record157 = getelementptr inbounds %struct.iso_primary_descriptor, ptr %pri.5, i32 0, i32 17
  %volume_space_size159 = getelementptr inbounds %struct.iso_primary_descriptor, ptr %pri.5, i32 0, i32 7
  %104 = ptrtoint ptr %volume_space_size159 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %volume_space_size159, align 1
  %106 = call i32 @llvm.bswap.i32(i32 %105) #18
  %s_nzones162 = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %s_nzones162 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %s_nzones162, align 4
  %logical_block_size163 = getelementptr inbounds %struct.iso_primary_descriptor, ptr %pri.5, i32 0, i32 11
  br label %if.end171

if.end171:                                        ; preds = %if.end156, %if.then144
  %logical_block_size163.sink = phi ptr [ %logical_block_size163, %if.end156 ], [ %logical_block_size, %if.then144 ]
  %volume_space_size159.sink = phi ptr [ %volume_space_size159, %if.end156 ], [ %volume_space_size, %if.then144 ]
  %rootp.0 = phi ptr [ %root_directory_record157, %if.end156 ], [ %root_directory_record, %if.then144 ]
  %108 = ptrtoint ptr %logical_block_size163.sink to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %logical_block_size163.sink, align 1
  %110 = call i16 @llvm.bswap.i16(i16 %109) #18
  %conv.i672 = zext i16 %110 to i32
  %s_log_zone_size166 = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %s_log_zone_size166 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv.i672, ptr %s_log_zone_size166, align 4
  %112 = ptrtoint ptr %volume_space_size159.sink to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %volume_space_size159.sink, align 1
  %114 = call i32 @llvm.bswap.i32(i32 %113) #18
  %s_max_size170 = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %115 = ptrtoint ptr %s_max_size170 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %s_max_size170, align 8
  %116 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %call7.i.i, align 8
  %s_log_zone_size172 = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %s_log_zone_size172 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_log_zone_size172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %call11)
  %cmp174 = icmp ult i32 %118, %call11
  br i1 %cmp174, label %do.end469, label %if.end177

if.end177:                                        ; preds = %if.end171
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %118, label %do.end463 [
    i32 512, label %if.end177.sw.epilog_crit_edge
    i32 1024, label %sw.bb180
    i32 2048, label %sw.bb182
  ]

if.end177.sw.epilog_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb180:                                         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb182:                                         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb182, %sw.bb180, %if.end177.sw.epilog_crit_edge
  %.sink910 = phi i32 [ 11, %sw.bb182 ], [ 10, %sw.bb180 ], [ 9, %if.end177.sw.epilog_crit_edge ]
  %120 = ptrtoint ptr %s_log_zone_size172 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink910, ptr %s_log_zone_size172, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %121 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 38496, ptr %s_magic, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 4
  %122 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 8796093022208, ptr %s_maxbytes, align 8
  %call184 = call i64 @mktime64(i32 noundef 1900, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %sub185 = add i64 %call184, -46800
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %123 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %sub185, ptr %s_time_min, align 8
  %call186 = call i64 @mktime64(i32 noundef 2155, i32 noundef 12, i32 noundef 31, i32 noundef 23, i32 noundef 59, i32 noundef 59) #18
  %add187 = add i64 %call186, 46800
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %124 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %add187, ptr %s_time_max, align 64
  %extent = getelementptr inbounds %struct.iso_directory_record, ptr %rootp.0, i32 0, i32 2
  %125 = ptrtoint ptr %extent to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %extent, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126) #18
  %ext_attr_length = getelementptr inbounds %struct.iso_directory_record, ptr %rootp.0, i32 0, i32 1
  %128 = ptrtoint ptr %ext_attr_length to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ext_attr_length, align 1
  %conv.i673 = zext i8 %129 to i32
  %add192 = add i32 %127, %conv.i673
  %s_firstdatazone = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %130 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add192, ptr %s_firstdatazone, align 8
  br i1 %tobool130.not, label %sw.epilog.if.end204_crit_edge, label %if.then194

sw.epilog.if.end204_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end204

if.then194:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %extent197 = getelementptr inbounds %struct.iso_primary_descriptor, ptr %sec.4, i32 0, i32 17, i32 2
  %131 = ptrtoint ptr %extent197 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %extent197, align 1
  %133 = call i32 @llvm.bswap.i32(i32 %132) #18
  %ext_attr_length200 = getelementptr inbounds %struct.iso_primary_descriptor, ptr %sec.4, i32 0, i32 17, i32 1
  %134 = ptrtoint ptr %ext_attr_length200 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ext_attr_length200, align 1
  %conv.i674 = zext i8 %135 to i32
  %add203 = add i32 %133, %conv.i674
  br label %if.end204

if.end204:                                        ; preds = %if.then194, %sw.epilog.if.end204_crit_edge
  %first_data_zone.0 = phi i32 [ %add203, %if.then194 ], [ %add192, %sw.epilog.if.end204_crit_edge ]
  %tobool.not.i675 = icmp eq ptr %pri_bh.4, null
  br i1 %tobool.not.i675, label %if.end204.brelse.exit678_crit_edge, label %if.then.i676

if.end204.brelse.exit678_crit_edge:               ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit678

if.then.i676:                                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %pri_bh.4) #18
  br label %brelse.exit678

brelse.exit678:                                   ; preds = %if.then.i676, %if.end204.brelse.exit678_crit_edge
  %tobool.not.i679 = icmp eq ptr %bh.4, null
  br i1 %tobool.not.i679, label %brelse.exit678.brelse.exit682_crit_edge, label %if.then.i680

brelse.exit678.brelse.exit682_crit_edge:          ; preds = %brelse.exit678
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit682

if.then.i680:                                     ; preds = %brelse.exit678
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %bh.4) #18
  br label %brelse.exit682

brelse.exit682:                                   ; preds = %if.then.i680, %brelse.exit678.brelse.exit682_crit_edge
  %call205 = call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef %118) #18
  %s_nls_iocharset = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 16
  %136 = ptrtoint ptr %s_nls_iocharset to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %s_nls_iocharset, align 8
  br i1 %tobool130.not, label %brelse.exit682.if.end236_crit_edge, label %if.then207

brelse.exit682.if.end236_crit_edge:               ; preds = %brelse.exit682
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end236

if.then207:                                       ; preds = %brelse.exit682
  %tobool208.not = icmp eq ptr %opt.sroa.70.3.ph, null
  %spec.select = select i1 %tobool208.not, ptr @.str.35, ptr %opt.sroa.70.3.ph
  %call214 = call i32 @strcmp(ptr noundef nonnull %spec.select, ptr noundef nonnull dereferenceable(5) @.str.36) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215.not = icmp eq i32 %call214, 0
  br i1 %cmp215.not, label %if.then207.if.end236_crit_edge, label %if.then217

if.then207.if.end236_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end236

if.then217:                                       ; preds = %if.then207
  br i1 %tobool208.not, label %cond.false223, label %cond.true220

cond.true220:                                     ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #20
  %call222 = call ptr @load_nls(ptr noundef nonnull %opt.sroa.70.3.ph) #18
  br label %cond.end225

cond.false223:                                    ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #20
  %call224 = call ptr @load_nls_default() #18
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false223, %cond.true220
  %cond226 = phi ptr [ %call222, %cond.true220 ], [ %call224, %cond.false223 ]
  %137 = ptrtoint ptr %s_nls_iocharset to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %cond226, ptr %s_nls_iocharset, align 8
  %tobool229.not = icmp eq ptr %cond226, null
  br i1 %tobool229.not, label %cond.end225.out_freesbi_crit_edge, label %cond.end225.if.end236_crit_edge

cond.end225.if.end236_crit_edge:                  ; preds = %cond.end225
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end236

cond.end225.out_freesbi_crit_edge:                ; preds = %cond.end225
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_freesbi

if.end236:                                        ; preds = %cond.end225.if.end236_crit_edge, %if.then207.if.end236_crit_edge, %brelse.exit682.if.end236_crit_edge
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %138 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @isofs_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 9
  %139 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @isofs_export_ops, ptr %s_export_op, align 16
  %s_mapping = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %140 = ptrtoint ptr %s_mapping to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %opt.sroa.33.2.ph, ptr %s_mapping, align 1
  %141 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load242 = load i16, ptr %s_high_sierra, align 8
  %142 = lshr i16 %opt.sroa.0.6, 1
  %bf.shl = and i16 %142, 16384
  %bf.clear243 = and i16 %bf.load242, -32705
  %bf.set244 = or i16 %bf.clear243, %bf.shl
  %s_rock_offset = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %143 = ptrtoint ptr %s_rock_offset to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %s_rock_offset, align 4
  %bf.shl251 = and i16 %142, 4096
  %144 = lshr i16 %opt.sroa.0.6, 2
  %bf.shl261 = and i16 %144, 1024
  %bf.shl271 = and i16 %144, 512
  %bf.set253 = or i16 %bf.shl261, %bf.shl251
  %bf.set263 = or i16 %bf.set253, %bf.shl271
  %bf.set273 = or i16 %bf.set263, %bf.set244
  %s_uid = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 15
  %145 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %opt.sroa.66.3.ph, ptr %s_uid, align 4
  %s_gid = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 14
  %146 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %opt.sroa.62.3.ph, ptr %s_gid, align 8
  %147 = shl i16 %opt.sroa.0.6, 1
  %bf.shl301 = and i16 %147, 2048
  %bf.shl311 = and i16 %142, 256
  %bf.set283 = and i16 %142, 192
  %bf.set293 = or i16 %bf.set283, %bf.shl301
  %bf.set303 = or i16 %bf.set293, %bf.shl311
  %bf.set313 = or i16 %bf.set303, %bf.set273
  store i16 %bf.set313, ptr %s_high_sierra, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %opt.sroa.54.2.ph)
  %cmp316.not = icmp eq i16 %opt.sroa.54.2.ph, -1
  %148 = and i16 %opt.sroa.54.2.ph, 511
  %spec.select911 = select i1 %cmp316.not, i16 -1, i16 %148
  %149 = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 12
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %spec.select911, ptr %149, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %opt.sroa.58.2.ph)
  %cmp326.not = icmp eq i16 %opt.sroa.58.2.ph, -1
  %151 = and i16 %opt.sroa.58.2.ph, 511
  %.sink864 = select i1 %cmp326.not, i16 -1, i16 %151
  %152 = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 13
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %.sink864, ptr %152, align 4
  %154 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %s_firstdatazone, align 8
  %call.i683 = call ptr @__isofs_iget(ptr noundef %s, i32 noundef %155, i32 noundef 0, i32 noundef 0) #18
  %cmp.i684 = icmp ugt ptr %call.i683, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i684, label %if.end236.out_no_root_crit_edge, label %if.end340

if.end236.out_no_root_crit_edge:                  ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_no_root

if.end340:                                        ; preds = %if.end236
  %156 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %156)
  %bf.load342 = load i16, ptr %s_high_sierra, align 8
  %157 = and i16 %bf.load342, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %157)
  %cmp346 = icmp ne i16 %157, 8192
  %brmerge = or i1 %tobool130.not, %cmp346
  br i1 %brmerge, label %if.end340.if.end364_crit_edge, label %land.lhs.true350

if.end340.if.end364_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end364

land.lhs.true350:                                 ; preds = %if.end340
  %158 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_firstdatazone, align 8
  %call352 = call fastcc zeroext i1 @rootdir_empty(ptr noundef %s, i32 noundef %159)
  br i1 %call352, label %do.end357, label %land.lhs.true350.if.end364_crit_edge

land.lhs.true350.if.end364_crit_edge:             ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end364

do.end357:                                        ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #20
  %call359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #21
  %160 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load361 = load i16, ptr %s_high_sierra, align 8
  %bf.clear362 = and i16 %bf.load361, -24577
  store i16 %bf.clear362, ptr %s_high_sierra, align 8
  br label %if.end364

if.end364:                                        ; preds = %do.end357, %land.lhs.true350.if.end364_crit_edge, %if.end340.if.end364_crit_edge
  %161 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_load2_noabort(i32 %161)
  %bf.load366 = load i16, ptr %s_high_sierra, align 8
  %162 = and i16 %bf.load366, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %162)
  %cmp370 = icmp eq i16 %162, 8192
  %brmerge642 = or i1 %tobool130.not, %cmp370
  br i1 %brmerge642, label %if.end364.if.end408_crit_edge, label %if.then375

if.end364.if.end408_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end408

if.then375:                                       ; preds = %if.end364
  %bf.clear378 = and i16 %bf.load366, -24577
  %163 = ptrtoint ptr %s_high_sierra to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %bf.clear378, ptr %s_high_sierra, align 8
  %164 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_firstdatazone, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %first_data_zone.0)
  %cmp381.not = icmp eq i32 %165, %first_data_zone.0
  br i1 %cmp381.not, label %if.then375.if.end408_crit_edge, label %if.then383

if.then375.if.end408_crit_edge:                   ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end408

if.then383:                                       ; preds = %if.then375
  %166 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %first_data_zone.0, ptr %s_firstdatazone, align 8
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #21
  call void @iput(ptr noundef %call.i683) #18
  %167 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %s_firstdatazone, align 8
  %call.i685 = call ptr @__isofs_iget(ptr noundef %s, i32 noundef %168, i32 noundef 0, i32 noundef 0) #18
  %cmp.i686 = icmp ugt ptr %call.i685, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i686, label %if.then383.out_no_root_crit_edge, label %if.then383.if.end408_crit_edge

if.then383.if.end408_crit_edge:                   ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end408

if.then383.out_no_root_crit_edge:                 ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_no_root

if.end408:                                        ; preds = %if.then383.if.end408_crit_edge, %if.then375.if.end408_crit_edge, %if.end364.if.end408_crit_edge
  %.sink = phi i8 [ 114, %if.then383.if.end408_crit_edge ], [ 114, %if.then375.if.end408_crit_edge ], [ 115, %if.end364.if.end408_crit_edge ]
  %inode.0796 = phi ptr [ %call.i685, %if.then383.if.end408_crit_edge ], [ %call.i683, %if.then375.if.end408_crit_edge ], [ %call.i683, %if.end364.if.end408_crit_edge ]
  %joliet_level.6795 = phi i32 [ %joliet_level.5, %if.then383.if.end408_crit_edge ], [ %joliet_level.5, %if.then375.if.end408_crit_edge ], [ 0, %if.end364.if.end408_crit_edge ]
  %conv409 = trunc i32 %joliet_level.6795 to i8
  %s_joliet_level = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %169 = ptrtoint ptr %s_joliet_level to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv409, ptr %s_joliet_level, align 4
  %170 = ptrtoint ptr %inode.0796 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %inode.0796, align 8
  %172 = and i16 %171, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %172)
  %cmp412 = icmp eq i16 %172, 16384
  br i1 %cmp412, label %if.end420, label %do.end417

do.end417:                                        ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #20
  %call419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #21
  call void @iput(ptr noundef %inode.0796) #18
  br label %out_no_inode

if.end420:                                        ; preds = %if.end408
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %opt.sroa.39.2.ph)
  %cmp399793 = icmp eq i8 %opt.sroa.39.2.ph, 117
  %spec.select819 = select i1 %cmp399793, i8 %.sink, i8 %opt.sroa.39.2.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %joliet_level.6795)
  %tobool421.not = icmp eq i32 %joliet_level.6795, 0
  %spec.select643 = select i1 %tobool421.not, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %spec.select819)
  %cmp427 = icmp eq i8 %spec.select819, 114
  %inc430 = zext i1 %cmp427 to i32
  %table.1 = or i32 %spec.select643, %inc430
  %s_check = getelementptr inbounds %struct.isofs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %173 = ptrtoint ptr %s_check to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %spec.select819, ptr %s_check, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %table.1)
  %tobool433.not = icmp eq i32 %table.1, 0
  br i1 %tobool433.not, label %if.end420.if.end437_crit_edge, label %if.then434

if.end420.if.end437_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end437

if.then434:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #20
  %sub435 = add nsw i32 %table.1, -1
  %arrayidx436 = getelementptr [3 x %struct.dentry_operations], ptr @isofs_dentry_ops, i32 0, i32 %sub435
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 45
  %174 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %arrayidx436, ptr %s_d_op, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.then434, %if.end420.if.end437_crit_edge
  %call438 = call ptr @d_make_root(ptr noundef %inode.0796) #18
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %175 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call438, ptr %s_root, align 64
  %tobool440.not = icmp eq ptr %call438, null
  br i1 %tobool440.not, label %if.end437.out_no_inode_crit_edge, label %if.end442

if.end437.out_no_inode_crit_edge:                 ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_no_inode

if.end442:                                        ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef %opt.sroa.70.3.ph) #18
  br label %cleanup483

out_no_root:                                      ; preds = %if.then383.out_no_root_crit_edge, %if.end236.out_no_root_crit_edge
  %inode.1 = phi ptr [ %call.i683, %if.end236.out_no_root_crit_edge ], [ %call.i685, %if.then383.out_no_root_crit_edge ]
  %cmp445.not = icmp eq ptr %inode.1, inttoptr (i32 -12 to ptr)
  br i1 %cmp445.not, label %out_no_root.out_no_inode_crit_edge, label %do.end450

out_no_root.out_no_inode_crit_edge:               ; preds = %out_no_root
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_no_inode

do.end450:                                        ; preds = %out_no_root
  call void @__sanitizer_cov_trace_pc() #20
  %176 = ptrtoint ptr %inode.1 to i32
  %call452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.29) #21
  br label %out_no_inode

out_no_inode:                                     ; preds = %do.end450, %out_no_root.out_no_inode_crit_edge, %if.end437.out_no_inode_crit_edge, %do.end417
  %error.0 = phi i32 [ %176, %do.end450 ], [ -12, %out_no_root.out_no_inode_crit_edge ], [ -22, %do.end417 ], [ -12, %if.end437.out_no_inode_crit_edge ]
  %177 = ptrtoint ptr %s_nls_iocharset to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_nls_iocharset, align 8
  call void @unload_nls(ptr noundef %178) #18
  br label %out_freesbi

out_freebh.thread:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %s_id = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.29, ptr noundef %s_id, i32 noundef %iso_blknum.0837, i32 noundef %shl) #21
  br label %brelse.exit690

do.end463:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #20
  %call466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %118) #21
  br label %out_freebh

do.end469:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #20
  %call472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %118, i32 noundef %call11) #21
  br label %out_freebh

out_unknown_format:                               ; preds = %for.end.thread871.out_unknown_format_crit_edge, %for.end.out_unknown_format_crit_edge, %cond.end.out_unknown_format_crit_edge
  %bh.3870 = phi ptr [ %call.i658, %for.end.out_unknown_format_crit_edge ], [ null, %for.end.thread871.out_unknown_format_crit_edge ], [ null, %cond.end.out_unknown_format_crit_edge ]
  %pri_bh.0.lcssa869 = phi ptr [ %pri_bh.0840, %for.end.out_unknown_format_crit_edge ], [ %pri_bh.2.ph, %for.end.thread871.out_unknown_format_crit_edge ], [ null, %cond.end.out_unknown_format_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool473.not = icmp eq i32 %silent, 0
  br i1 %tobool473.not, label %do.end477, label %out_unknown_format.out_freebh_crit_edge

out_unknown_format.out_freebh_crit_edge:          ; preds = %out_unknown_format
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_freebh

do.end477:                                        ; preds = %out_unknown_format
  call void @__sanitizer_cov_trace_pc() #20
  %call479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #21
  br label %out_freebh

out_freebh:                                       ; preds = %do.end477, %out_unknown_format.out_freebh_crit_edge, %do.end469, %do.end463, %if.else153.out_freebh_crit_edge, %root_found.out_freebh_crit_edge
  %error.1 = phi i32 [ -22, %do.end469 ], [ -22, %do.end463 ], [ -22, %if.else153.out_freebh_crit_edge ], [ -22, %out_unknown_format.out_freebh_crit_edge ], [ -22, %do.end477 ], [ -13, %root_found.out_freebh_crit_edge ]
  %pri_bh.5 = phi ptr [ %pri_bh.4, %do.end469 ], [ %pri_bh.4, %do.end463 ], [ %pri_bh.4, %if.else153.out_freebh_crit_edge ], [ %pri_bh.0.lcssa869, %out_unknown_format.out_freebh_crit_edge ], [ %pri_bh.0.lcssa869, %do.end477 ], [ %pri_bh.4, %root_found.out_freebh_crit_edge ]
  %bh.5 = phi ptr [ %bh.4, %do.end469 ], [ %bh.4, %do.end463 ], [ %bh.4, %if.else153.out_freebh_crit_edge ], [ %bh.3870, %out_unknown_format.out_freebh_crit_edge ], [ %bh.3870, %do.end477 ], [ %bh.4, %root_found.out_freebh_crit_edge ]
  %tobool.not.i687 = icmp eq ptr %bh.5, null
  br i1 %tobool.not.i687, label %out_freebh.brelse.exit690_crit_edge, label %out_freebh.if.then.i688_crit_edge

out_freebh.if.then.i688_crit_edge:                ; preds = %out_freebh
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i688

out_freebh.brelse.exit690_crit_edge:              ; preds = %out_freebh
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit690

if.then.i688:                                     ; preds = %out_freebh.if.then.i688_crit_edge, %if.then106.if.then.i688_crit_edge
  %bh.5816 = phi ptr [ %bh.5, %out_freebh.if.then.i688_crit_edge ], [ %call.i658, %if.then106.if.then.i688_crit_edge ]
  %pri_bh.5815 = phi ptr [ %pri_bh.5, %out_freebh.if.then.i688_crit_edge ], [ %pri_bh.0840, %if.then106.if.then.i688_crit_edge ]
  %error.1814 = phi i32 [ %error.1, %out_freebh.if.then.i688_crit_edge ], [ -22, %if.then106.if.then.i688_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.5816) #18
  br label %brelse.exit690

brelse.exit690:                                   ; preds = %if.then.i688, %out_freebh.brelse.exit690_crit_edge, %out_freebh.thread
  %pri_bh.5808 = phi ptr [ %pri_bh.0840, %out_freebh.thread ], [ %pri_bh.5, %out_freebh.brelse.exit690_crit_edge ], [ %pri_bh.5815, %if.then.i688 ]
  %error.1807 = phi i32 [ -22, %out_freebh.thread ], [ %error.1, %out_freebh.brelse.exit690_crit_edge ], [ %error.1814, %if.then.i688 ]
  %tobool.not.i691 = icmp eq ptr %pri_bh.5808, null
  br i1 %tobool.not.i691, label %brelse.exit690.out_freesbi_crit_edge, label %if.then.i692

brelse.exit690.out_freesbi_crit_edge:             ; preds = %brelse.exit690
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_freesbi

if.then.i692:                                     ; preds = %brelse.exit690
  call void @__sanitizer_cov_trace_pc() #20
  call void @__brelse(ptr noundef nonnull %pri_bh.5808) #18
  br label %out_freesbi

out_freesbi:                                      ; preds = %if.then.i692, %brelse.exit690.out_freesbi_crit_edge, %out_no_inode, %cond.end225.out_freesbi_crit_edge, %bdev_logical_block_size.exit651, %parse_options.exit
  %opt.sroa.70.3720 = phi ptr [ %opt.sroa.70.3.ph, %bdev_logical_block_size.exit651 ], [ %opt.sroa.70.3.ph, %out_no_inode ], [ %opt.sroa.70.1, %parse_options.exit ], [ %opt.sroa.70.3.ph, %cond.end225.out_freesbi_crit_edge ], [ %opt.sroa.70.3.ph, %brelse.exit690.out_freesbi_crit_edge ], [ %opt.sroa.70.3.ph, %if.then.i692 ]
  %error.2 = phi i32 [ -22, %bdev_logical_block_size.exit651 ], [ %error.0, %out_no_inode ], [ -22, %parse_options.exit ], [ -22, %cond.end225.out_freesbi_crit_edge ], [ %error.1807, %brelse.exit690.out_freesbi_crit_edge ], [ %error.1807, %if.then.i692 ]
  call void @kfree(ptr noundef %opt.sroa.70.3720) #18
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  %179 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup483

cleanup483:                                       ; preds = %out_freesbi, %if.end442, %entry.cleanup483_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_freesbi ], [ 0, %if.end442 ], [ -12, %entry.cleanup483_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rootdir_empty(ptr nocapture noundef readonly %sb, i32 noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %block to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %1, i64 noundef %conv, i32 noundef %3, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp3 = icmp eq i8 %7, 0
  br i1 %cmp3, label %while.cond.preheader.brelse.exit_crit_edge, label %if.end6

while.cond.preheader.brelse.exit_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit

if.end6:                                          ; preds = %while.cond.preheader
  %conv2 = zext i8 %7 to i32
  %add.ptr.1 = getelementptr i8, ptr %5, i32 %conv2
  %8 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp3.1 = icmp eq i8 %9, 0
  br i1 %cmp3.1, label %if.end6.brelse.exit_crit_edge, label %if.end6.1

if.end6.brelse.exit_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %brelse.exit

if.end6.1:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %conv2.1 = zext i8 %9 to i32
  %add.1 = add nuw nsw i32 %conv2, %conv2.1
  %add.ptr.2 = getelementptr i8, ptr %5, i32 %add.1
  %10 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp3.2 = icmp eq i8 %11, 0
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.end6.1, %if.end6.brelse.exit_crit_edge, %while.cond.preheader.brelse.exit_crit_edge
  %cmp.lcssa = phi i1 [ true, %while.cond.preheader.brelse.exit_crit_edge ], [ true, %if.end6.brelse.exit_crit_edge ], [ %cmp3.2, %if.end6.1 ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #18
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.lcssa, %brelse.exit ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_read_tocentry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_multisession(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @isofs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @isofs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.iso_inode_info, ptr %call, i32 0, i32 8
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isofs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @isofs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -32
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isofs_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_nls_iocharset = getelementptr inbounds %struct.isofs_sb_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %s_nls_iocharset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_nls_iocharset, align 4
  tail call void @unload_nls(ptr noundef %3) #18
  tail call void @kfree(ptr noundef %1) #18
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isofs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %5, 255
  %6 = lshr i32 %5, 12
  %shl.i.i = and i32 %6, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %5, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 38496, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %f_bsize, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_nzones = getelementptr inbounds %struct.isofs_sb_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_nzones, align 4
  %s_log_zone_size = getelementptr inbounds %struct.isofs_sb_info, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %s_log_zone_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_log_zone_size, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %18 to i32
  %sub = sub i32 %16, %conv
  %shl = shl i32 %14, %sub
  %conv3 = zext i32 %shl to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %19 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv3, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %20 = call ptr @memset(ptr %f_bfree, i32 0, i32 16)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %conv5 = zext i32 %23 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %24 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv5, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %25 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %26 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %27 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -30, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %s_rock, align 4
  %5 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end3.sink.split_crit_edge, label %if.else

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.sink.split

if.else:                                          ; preds = %entry
  %s_joliet_level = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %s_joliet_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_joliet_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.else.if.end3.sink.split_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.else.if.end3.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.else.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.str.103.sink = phi ptr [ @.str.102, %entry.if.end3.sink.split_crit_edge ], [ @.str.103, %if.else.if.end3.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.103.sink) #18
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.else.if.end3_crit_edge
  %8 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load4 = load i16, ptr %s_rock, align 4
  %9 = and i16 %bf.load4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not = icmp eq i16 %9, 0
  br i1 %tobool8.not, label %if.end3.if.end10_crit_edge, label %if.then9

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.104) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end3.if.end10_crit_edge
  %10 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load11 = load i16, ptr %s_rock, align 4
  %11 = and i16 %bf.load11, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool15.not = icmp eq i16 %11, 0
  br i1 %tobool15.not, label %if.end10.if.end17_crit_edge, label %if.then16

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.105) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end10.if.end17_crit_edge
  %12 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load18 = load i16, ptr %s_rock, align 4
  %13 = and i16 %bf.load18, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool22.not = icmp eq i16 %13, 0
  br i1 %tobool22.not, label %if.end17.if.end24_crit_edge, label %if.then23

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.106) #18
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end17.if.end24_crit_edge
  %14 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load25 = load i16, ptr %s_rock, align 4
  %15 = and i16 %bf.load25, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool29.not = icmp eq i16 %15, 0
  br i1 %tobool29.not, label %if.end24.if.end31_crit_edge, label %if.then30

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.107) #18
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end24.if.end31_crit_edge
  %16 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load32 = load i16, ptr %s_rock, align 4
  %17 = and i16 %bf.load32, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool36.not = icmp eq i16 %17, 0
  br i1 %tobool36.not, label %if.end31.if.end38_crit_edge, label %if.then37

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.108) #18
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end31.if.end38_crit_edge
  %s_check = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %s_check to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool39.not = icmp eq i8 %19, 0
  br i1 %tobool39.not, label %if.end38.if.end42_crit_edge, label %if.then40

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.109, i32 noundef %conv) #18
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  %s_mapping = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %s_mapping to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_mapping, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool43.not = icmp eq i8 %21, 0
  br i1 %tobool43.not, label %if.end42.if.end47_crit_edge, label %if.then44

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %conv46 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.110, i32 noundef %conv46) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  %s_session = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %s_session to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_session, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp.not = icmp eq i8 %23, -1
  br i1 %cmp.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %conv48 = zext i8 %23 to i32
  %sub = add nsw i32 %conv48, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.111, i32 noundef %sub) #18
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  %s_sbsector = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %s_sbsector to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_sbsector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp54.not = icmp eq i32 %25, -1
  br i1 %cmp54.not, label %if.end53.if.end58_crit_edge, label %if.then56

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.112, i32 noundef %25) #18
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53.if.end58_crit_edge
  %26 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %29)
  %cmp60.not = icmp eq i32 %29, 1024
  br i1 %cmp60.not, label %if.end58.if.end65_crit_edge, label %if.then62

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.113, i32 noundef %29) #18
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end58.if.end65_crit_edge
  %30 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load66 = load i16, ptr %s_rock, align 4
  %31 = and i16 %bf.load66, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool70.not = icmp eq i16 %31, 0
  br i1 %tobool70.not, label %if.end65.if.end73_crit_edge, label %if.then71

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #20
  %s_uid = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 15
  %32 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack149 = load i32, ptr %s_uid, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack149, 0
  %call72 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %33) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.114, i32 noundef %call72) #18
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end65.if.end73_crit_edge
  %34 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load74 = load i16, ptr %s_rock, align 4
  %35 = and i16 %bf.load74, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool78.not = icmp eq i16 %35, 0
  br i1 %tobool78.not, label %if.end73.if.end82_crit_edge, label %if.then79

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  %s_gid = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 14
  %36 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack = load i32, ptr %s_gid, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call81 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %37) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.115, i32 noundef %call81) #18
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end73.if.end82_crit_edge
  %s_dmode = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 13
  %38 = ptrtoint ptr %s_dmode to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %s_dmode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %cmp84.not = icmp eq i16 %39, -1
  br i1 %cmp84.not, label %if.end82.if.end89_crit_edge, label %if.then86

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  %conv83 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.116, i32 noundef %conv83) #18
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end82.if.end89_crit_edge
  %s_fmode = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 12
  %40 = ptrtoint ptr %s_fmode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %s_fmode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp91.not = icmp eq i16 %41, -1
  br i1 %cmp91.not, label %if.end89.if.end96_crit_edge, label %if.then93

if.end89.if.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  %conv90 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.117, i32 noundef %conv90) #18
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end89.if.end96_crit_edge
  %s_nls_iocharset = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 16
  %42 = ptrtoint ptr %s_nls_iocharset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_nls_iocharset, align 4
  %tobool97.not = icmp eq ptr %43, null
  br i1 %tobool97.not, label %if.else100, label %if.then98

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.118, ptr noundef %45) #18
  br label %if.end101

if.else100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.119) #18
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then98
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_hashi(ptr noundef %dentry, ptr nocapture noundef %qstr) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qstr, align 8
  %2 = ptrtoint ptr %dentry to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not1.i = icmp eq i32 %1, 0
  br i1 %tobool7.not1.i, label %entry.isofs_hashi_common.exit_crit_edge, label %while.body8.i.preheader

entry.isofs_hashi_common.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_hashi_common.exit

while.body8.i.preheader:                          ; preds = %entry
  %name2.i = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %3 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2.i, align 8
  br label %while.body8.i

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %while.body8.i.preheader
  %hash.04.i = phi i32 [ %mul.i.i, %while.body8.i.while.body8.i_crit_edge ], [ %2, %while.body8.i.preheader ]
  %len.23.i = phi i32 [ %dec6.i, %while.body8.i.while.body8.i_crit_edge ], [ %1, %while.body8.i.preheader ]
  %name.02.i = phi ptr [ %incdec.ptr.i, %while.body8.i.while.body8.i_crit_edge ], [ %4, %while.body8.i.preheader ]
  %dec6.i = add i32 %len.23.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %name.02.i, i32 1
  %5 = ptrtoint ptr %name.02.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name.02.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i.i = icmp eq i8 %9, 0
  %sub.i.i = add i8 %6, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %6, i8 %sub.i.i
  %conv9.i = zext i8 %spec.select.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv9.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.04.i
  %shr.i.i = lshr i32 %conv9.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %tobool7.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.not.i, label %while.body8.i.isofs_hashi_common.exit_crit_edge, label %while.body8.i.while.body8.i_crit_edge

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body8.i

while.body8.i.isofs_hashi_common.exit_crit_edge:  ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_hashi_common.exit

isofs_hashi_common.exit:                          ; preds = %while.body8.i.isofs_hashi_common.exit_crit_edge, %entry.isofs_hashi_common.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ %2, %entry.isofs_hashi_common.exit_crit_edge ], [ %mul.i.i, %while.body8.i.isofs_hashi_common.exit_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %hash13.i = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %10 = ptrtoint ptr %hash13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i.i.i.i, ptr %hash13.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isofs_dentry_cmpi(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp17.i = icmp eq i32 %1, %len
  br i1 %cmp17.i, label %if.then19.i, label %entry.if.end34.i_crit_edge

entry.if.end34.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then19.i:                                      ; preds = %entry
  %name27.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %2 = ptrtoint ptr %name27.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name27.i, align 8
  %call.i = tail call i32 @strncasecmp(ptr noundef %3, ptr noundef %str, i32 noundef %len) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23.i = icmp eq i32 %call.i, 0
  br i1 %cmp23.i, label %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge, label %if.then19.i.if.end34.i_crit_edge

if.then19.i.if.end34.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then19.i.isofs_dentry_cmp_common.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_dentry_cmp_common.exit

if.end34.i:                                       ; preds = %if.then19.i.if.end34.i_crit_edge, %entry.if.end34.i_crit_edge
  br label %isofs_dentry_cmp_common.exit

isofs_dentry_cmp_common.exit:                     ; preds = %if.end34.i, %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end34.i ], [ 0, %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_hash_ms(ptr noundef %dentry, ptr nocapture noundef %qstr) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qstr, align 8
  %name2.i = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %2 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.0.i = phi i32 [ %1, %entry ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool3.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool3.not.i, label %while.cond.i.isofs_hash_common.exit_crit_edge, label %land.rhs.i

while.cond.i.isofs_hash_common.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_hash_common.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %5, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.isofs_hash_common.exit_crit_edge

land.rhs.i.isofs_hash_common.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_hash_common.exit

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

isofs_hash_common.exit:                           ; preds = %land.rhs.i.isofs_hash_common.exit_crit_edge, %while.cond.i.isofs_hash_common.exit_crit_edge
  %call.i = tail call i32 @full_name_hash(ptr noundef %dentry, ptr noundef %3, i32 noundef %len.0.i) #25
  %hash.i = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %6 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %hash.i, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_dentry_cmp_ms(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  %name3.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %alen.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %1, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alen.0.i)
  %tobool2.not.i = icmp eq i32 %alen.0.i, 0
  br i1 %tobool2.not.i, label %while.cond.i.while.cond5.i.preheader_crit_edge, label %land.rhs.i

while.cond.i.while.cond5.i.preheader_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond5.i.preheader

land.rhs.i:                                       ; preds = %while.cond.i
  %2 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name3.i, align 8
  %sub.i = add i32 %alen.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %5, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.while.cond5.i.preheader_crit_edge

land.rhs.i.while.cond5.i.preheader_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond5.i.preheader

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.cond5.i.preheader:                          ; preds = %land.rhs.i.while.cond5.i.preheader_crit_edge, %while.cond.i.while.cond5.i.preheader_crit_edge
  br label %while.cond5.i

while.cond5.i:                                    ; preds = %land.rhs7.i.while.cond5.i_crit_edge, %while.cond5.i.preheader
  %blen.0.i = phi i32 [ %sub8.i, %land.rhs7.i.while.cond5.i_crit_edge ], [ %len, %while.cond5.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen.0.i)
  %tobool6.not.i = icmp eq i32 %blen.0.i, 0
  br i1 %tobool6.not.i, label %while.cond5.i.if.end.i_crit_edge, label %land.rhs7.i

while.cond5.i.if.end.i_crit_edge:                 ; preds = %while.cond5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs7.i:                                      ; preds = %while.cond5.i
  %sub8.i = add i32 %blen.0.i, -1
  %arrayidx9.i = getelementptr i8, ptr %str, i32 %sub8.i
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9.i, align 1
  %cmp11.i = icmp eq i8 %7, 46
  br i1 %cmp11.i, label %land.rhs7.i.while.cond5.i_crit_edge, label %land.rhs7.i.if.end.i_crit_edge

land.rhs7.i.if.end.i_crit_edge:                   ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs7.i.while.cond5.i_crit_edge:              ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond5.i

if.end.i:                                         ; preds = %land.rhs7.i.if.end.i_crit_edge, %while.cond5.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %alen.0.i, i32 %blen.0.i)
  %cmp17.i = icmp eq i32 %alen.0.i, %blen.0.i
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i.if.end34.i_crit_edge

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then19.i:                                      ; preds = %if.end.i
  %8 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name3.i, align 8
  %call28.i = tail call i32 @strncmp(ptr noundef %9, ptr noundef %str, i32 noundef %alen.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge, label %if.then19.i.if.end34.i_crit_edge

if.then19.i.if.end34.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then19.i.isofs_dentry_cmp_common.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_dentry_cmp_common.exit

if.end34.i:                                       ; preds = %if.then19.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  br label %isofs_dentry_cmp_common.exit

isofs_dentry_cmp_common.exit:                     ; preds = %if.end34.i, %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end34.i ], [ 0, %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_hashi_ms(ptr noundef %dentry, ptr nocapture noundef %qstr) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qstr, align 8
  %name2.i = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %2 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %1, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool3.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool3.not.i, label %if.end.thread.i, label %land.rhs.i

if.end.thread.i:                                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %dentry to i32
  br label %isofs_hashi_common.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %6, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %if.end.thread7.i

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

if.end.thread7.i:                                 ; preds = %land.rhs.i
  %7 = ptrtoint ptr %dentry to i32
  br label %while.body8.i

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %if.end.thread7.i
  %hash.04.i = phi i32 [ %mul.i.i, %while.body8.i.while.body8.i_crit_edge ], [ %7, %if.end.thread7.i ]
  %len.23.i = phi i32 [ %dec6.i, %while.body8.i.while.body8.i_crit_edge ], [ %len.0.i, %if.end.thread7.i ]
  %name.02.i = phi ptr [ %incdec.ptr.i, %while.body8.i.while.body8.i_crit_edge ], [ %3, %if.end.thread7.i ]
  %dec6.i = add i32 %len.23.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %name.02.i, i32 1
  %8 = ptrtoint ptr %name.02.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name.02.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not.i.i = icmp eq i8 %12, 0
  %sub.i.i = add i8 %9, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %9, i8 %sub.i.i
  %conv9.i = zext i8 %spec.select.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv9.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.04.i
  %shr.i.i = lshr i32 %conv9.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %tobool7.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.not.i, label %while.body8.i.isofs_hashi_common.exit_crit_edge, label %while.body8.i.while.body8.i_crit_edge

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body8.i

while.body8.i.isofs_hashi_common.exit_crit_edge:  ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_hashi_common.exit

isofs_hashi_common.exit:                          ; preds = %while.body8.i.isofs_hashi_common.exit_crit_edge, %if.end.thread.i
  %hash.0.lcssa.i = phi i32 [ %4, %if.end.thread.i ], [ %mul.i.i, %while.body8.i.isofs_hashi_common.exit_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %hash13.i = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %13 = ptrtoint ptr %hash13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i.i.i.i, ptr %hash13.i, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_dentry_cmpi_ms(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  %name3.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %alen.0.i = phi i32 [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ], [ %1, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alen.0.i)
  %tobool2.not.i = icmp eq i32 %alen.0.i, 0
  br i1 %tobool2.not.i, label %while.cond.i.while.cond5.i.preheader_crit_edge, label %land.rhs.i

while.cond.i.while.cond5.i.preheader_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond5.i.preheader

land.rhs.i:                                       ; preds = %while.cond.i
  %2 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name3.i, align 8
  %sub.i = add i32 %alen.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %5, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.while.cond5.i.preheader_crit_edge

land.rhs.i.while.cond5.i.preheader_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond5.i.preheader

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

while.cond5.i.preheader:                          ; preds = %land.rhs.i.while.cond5.i.preheader_crit_edge, %while.cond.i.while.cond5.i.preheader_crit_edge
  br label %while.cond5.i

while.cond5.i:                                    ; preds = %land.rhs7.i.while.cond5.i_crit_edge, %while.cond5.i.preheader
  %blen.0.i = phi i32 [ %sub8.i, %land.rhs7.i.while.cond5.i_crit_edge ], [ %len, %while.cond5.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen.0.i)
  %tobool6.not.i = icmp eq i32 %blen.0.i, 0
  br i1 %tobool6.not.i, label %while.cond5.i.if.end.i_crit_edge, label %land.rhs7.i

while.cond5.i.if.end.i_crit_edge:                 ; preds = %while.cond5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs7.i:                                      ; preds = %while.cond5.i
  %sub8.i = add i32 %blen.0.i, -1
  %arrayidx9.i = getelementptr i8, ptr %str, i32 %sub8.i
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9.i, align 1
  %cmp11.i = icmp eq i8 %7, 46
  br i1 %cmp11.i, label %land.rhs7.i.while.cond5.i_crit_edge, label %land.rhs7.i.if.end.i_crit_edge

land.rhs7.i.if.end.i_crit_edge:                   ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs7.i.while.cond5.i_crit_edge:              ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond5.i

if.end.i:                                         ; preds = %land.rhs7.i.if.end.i_crit_edge, %while.cond5.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %alen.0.i, i32 %blen.0.i)
  %cmp17.i = icmp eq i32 %alen.0.i, %blen.0.i
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i.if.end34.i_crit_edge

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then19.i:                                      ; preds = %if.end.i
  %8 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name3.i, align 8
  %call.i = tail call i32 @strncasecmp(ptr noundef %9, ptr noundef %str, i32 noundef %alen.0.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23.i = icmp eq i32 %call.i, 0
  br i1 %cmp23.i, label %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge, label %if.then19.i.if.end34.i_crit_edge

if.then19.i.if.end34.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34.i

if.then19.i.isofs_dentry_cmp_common.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %isofs_dentry_cmp_common.exit

if.end34.i:                                       ; preds = %if.then19.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  br label %isofs_dentry_cmp_common.exit

isofs_dentry_cmp_common.exit:                     ; preds = %if.end34.i, %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end34.i ], [ 0, %if.then19.i.isofs_dentry_cmp_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @zisofs_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.iso_inode_info, ptr %foo, i32 0, i32 8
  tail call void @inode_init_once(ptr noundef %vfs_inode) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/isofs/inode.c", i32 1064, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @isofs_get_blocks._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @isofs_get_blocks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/isofs/inode.c", i32 1085, i32 4}
!8 = !{ptr @isofs_get_blocks._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @isofs_get_blocks._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/isofs/inode.c", i32 1111, i32 5}
!12 = !{ptr @isofs_get_blocks._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @isofs_get_blocks._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/isofs/inode.c", i32 1113, i32 5}
!16 = !{ptr @isofs_get_blocks._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @isofs_get_blocks._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias269, !19, !"__UNIQUE_ID_alias269", i1 false, i1 false}
!19 = !{!"../fs/isofs/inode.c", i32 1577, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias270, !21, !"__UNIQUE_ID_alias270", i1 false, i1 false}
!21 = !{!"../fs/isofs/inode.c", i32 1578, i32 1}
!22 = !{ptr @__initcall__kmod_isofs__271_1613_init_iso9660_fs6, !23, !"__initcall__kmod_isofs__271_1613_init_iso9660_fs6", i1 false, i1 false}
!23 = !{!"../fs/isofs/inode.c", i32 1613, i32 1}
!24 = !{ptr @__exitcall_exit_iso9660_fs, !25, !"__exitcall_exit_iso9660_fs", i1 false, i1 false}
!25 = !{!"../fs/isofs/inode.c", i32 1614, i32 1}
!26 = !{ptr @__UNIQUE_ID_file272, !27, !"__UNIQUE_ID_file272", i1 false, i1 false}
!27 = !{!"../fs/isofs/inode.c", i32 1615, i32 1}
!28 = !{ptr @__UNIQUE_ID_license273, !27, !"__UNIQUE_ID_license273", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/isofs/inode.c", i32 1148, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @isofs_get_block._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @isofs_get_block._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/isofs/inode.c", i32 1407, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @isofs_read_inode._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @isofs_read_inode._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/isofs/inode.c", i32 1414, i32 3}
!41 = !{ptr @isofs_read_inode._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @isofs_read_inode._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/isofs/inode.c", i32 1494, i32 2}
!45 = !{ptr @isofs_read_inode._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @isofs_read_inode._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/isofs/inode.c", i32 1290, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @isofs_read_level3_size._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @isofs_read_level3_size._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/isofs/inode.c", i32 1295, i32 2}
!54 = !{ptr @isofs_read_level3_size._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @isofs_read_level3_size._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @isofs_aops, !57, !"isofs_aops", i1 false, i1 false}
!57 = !{!"../fs/isofs/inode.c", i32 1192, i32 46}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/isofs/inode.c", i32 1572, i32 11}
!60 = !{ptr @iso9660_fs_type, !61, !"iso9660_fs_type", i1 false, i1 false}
!61 = !{!"../fs/isofs/inode.c", i32 1570, i32 32}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/isofs/inode.c", i32 653, i32 3}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @isofs_fill_super._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @isofs_fill_super._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/isofs/inode.c", i32 684, i32 25}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/isofs/inode.c", i32 707, i32 7}
!71 = !{ptr @isofs_fill_super._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @isofs_fill_super._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/isofs/inode.c", i32 719, i32 26}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/isofs/inode.c", i32 868, i32 45}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/isofs/inode.c", i32 869, i32 17}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/isofs/inode.c", i32 920, i32 3}
!81 = !{ptr @isofs_fill_super._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @isofs_fill_super._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/isofs/inode.c", i32 940, i32 4}
!85 = !{ptr @isofs_fill_super._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @isofs_fill_super._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/isofs/inode.c", i32 960, i32 3}
!89 = !{ptr @isofs_fill_super._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @isofs_fill_super._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/isofs/inode.c", i32 996, i32 3}
!93 = !{ptr @isofs_fill_super._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @isofs_fill_super._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/isofs/inode.c", i32 1003, i32 2}
!97 = !{ptr @isofs_fill_super._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @isofs_fill_super._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/isofs/inode.c", i32 1007, i32 2}
!101 = !{ptr @isofs_fill_super._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @isofs_fill_super._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/isofs/inode.c", i32 1011, i32 2}
!105 = !{ptr @isofs_fill_super._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @isofs_fill_super._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/isofs/inode.c", i32 1016, i32 3}
!109 = !{ptr @isofs_fill_super._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @isofs_fill_super._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/isofs/inode.c", i32 364, i32 31}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../fs/isofs/inode.c", i32 441, i32 26}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../fs/isofs/inode.c", i32 449, i32 26}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/isofs/inode.c", i32 299, i32 15}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/isofs/inode.c", i32 300, i32 17}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/isofs/inode.c", i32 301, i32 15}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/isofs/inode.c", i32 302, i32 13}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/isofs/inode.c", i32 303, i32 18}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/isofs/inode.c", i32 304, i32 14}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/isofs/inode.c", i32 306, i32 18}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/isofs/inode.c", i32 307, i32 14}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/isofs/inode.c", i32 308, i32 14}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/isofs/inode.c", i32 309, i32 14}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/isofs/inode.c", i32 310, i32 14}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/isofs/inode.c", i32 311, i32 14}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/isofs/inode.c", i32 312, i32 14}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/isofs/inode.c", i32 313, i32 16}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/isofs/inode.c", i32 314, i32 11}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/isofs/inode.c", i32 315, i32 16}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/isofs/inode.c", i32 316, i32 16}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/isofs/inode.c", i32 317, i32 16}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/isofs/inode.c", i32 318, i32 16}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/isofs/inode.c", i32 319, i32 12}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/isofs/inode.c", i32 320, i32 12}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/isofs/inode.c", i32 321, i32 13}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/isofs/inode.c", i32 322, i32 14}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/isofs/inode.c", i32 323, i32 25}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/isofs/inode.c", i32 324, i32 14}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/isofs/inode.c", i32 325, i32 15}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/isofs/inode.c", i32 326, i32 15}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/isofs/inode.c", i32 327, i32 15}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/isofs/inode.c", i32 328, i32 15}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/isofs/inode.c", i32 329, i32 15}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/isofs/inode.c", i32 330, i32 15}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/isofs/inode.c", i32 331, i32 15}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/isofs/inode.c", i32 332, i32 15}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/isofs/inode.c", i32 333, i32 19}
!185 = !{ptr @tokens, !186, !"tokens", i1 false, i1 false}
!186 = !{!"../fs/isofs/inode.c", i32 298, i32 28}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/isofs/inode.c", i32 561, i32 4}
!189 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @isofs_get_last_session._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @isofs_get_last_session._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/isofs/inode.c", i32 568, i32 3}
!194 = !{ptr @isofs_get_last_session._entry.99, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @isofs_get_last_session._entry_ptr.101, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @isofs_sops, !197, !"isofs_sops", i1 false, i1 false}
!197 = !{!"../fs/isofs/inode.c", i32 121, i32 38}
!198 = !{ptr @isofs_inode_cachep, !199, !"isofs_inode_cachep", i1 false, i1 false}
!199 = !{!"../fs/isofs/inode.c", i32 68, i32 27}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/isofs/inode.c", i32 492, i32 33}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/isofs/inode.c", i32 493, i32 45}
!204 = !{ptr @.str.104, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/isofs/inode.c", i32 494, i32 33}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/isofs/inode.c", i32 495, i32 32}
!208 = !{ptr @.str.106, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/isofs/inode.c", i32 496, i32 38}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/isofs/inode.c", i32 497, i32 43}
!212 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/isofs/inode.c", i32 498, i32 37}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/isofs/inode.c", i32 500, i32 35}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/isofs/inode.c", i32 501, i32 37}
!218 = !{ptr @.str.111, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/isofs/inode.c", i32 502, i32 43}
!220 = !{ptr @.str.112, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/isofs/inode.c", i32 503, i32 43}
!222 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/isofs/inode.c", i32 506, i32 17}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/isofs/inode.c", i32 509, i32 17}
!226 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/isofs/inode.c", i32 512, i32 17}
!228 = !{ptr @.str.116, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/isofs/inode.c", i32 516, i32 17}
!230 = !{ptr @.str.117, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/isofs/inode.c", i32 518, i32 17}
!232 = !{ptr @.str.118, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/isofs/inode.c", i32 522, i32 17}
!234 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/isofs/inode.c", i32 524, i32 15}
!236 = !{ptr @isofs_dentry_ops, !237, !"isofs_dentry_ops", i1 false, i1 false}
!237 = !{!"../fs/isofs/inode.c", i32 131, i32 39}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/isofs/inode.c", i32 93, i32 41}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"auto-init"}
