; ModuleID = '/llk/IR_all_yes/fs/btrfs/zoned.c_pt.bc'
source_filename = "../fs/btrfs/zoned.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rcu_string = type { %struct.callback_head, [0 x i8] }
%struct.btrfs_zoned_device_info = type { i64, i8, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, [6 x %struct.blk_zone] }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_free_space_ctl = type { %struct.spinlock, %struct.rb_root, %struct.rb_root_cached, i64, i32, i32, i32, i32, i64, [2 x i32], [2 x i64], ptr, ptr, %struct.mutex, %struct.list_head }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.87, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.87 = type { i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.30, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.30 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.btrfs_ordered_extent = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.rb_node, %struct.list_head, %struct.btrfs_work, %struct.completion, %struct.btrfs_work, %struct.list_head, i64, ptr }
%struct.btrfs_io_context = type { %struct.refcount_struct, %struct.atomic_t, ptr, i64, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, ptr, [0 x %struct.btrfs_io_stripe] }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs_info->zone_size\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/zoned.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"zone_sectors != 0 && (zone_sectors & (zone_sectors - 1)) == 0\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013zoned: %s: zone size %llu larger than supported maximum %llu\00", [33 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013zoned: %s: max active zones %u is too small, need at least %u active zones\00", [51 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013zoned: failed to allocate zone cache for %s\00", [50 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013inconsistent number of zones on %s (%u/%u)\00", [51 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013zoned: %u active zones on %s exceeds max_active_zones %u\00", [37 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013zoned: failed to read super block log zone info at devid %llu zone %u\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013zoned: super block log zone corrupted devid %llu zone %u\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host-managed zoned\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host-aware zoned\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regular\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emulated \00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013zoned: unsupported model %d on %s\00", [60 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s block device %s, %u %szones of %llu bytes\00", [49 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zone_info.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013zoned: unequal block device zone sizes: have %llu found %llu\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013zoned: no zoned devices found on a zoned filesystem\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013zoned: mode not enabled but zoned device found\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013zoned: cannot mix zoned and regular devices\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013zoned: zone size %llu not aligned to stripe %u\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013zoned: mixed block groups not supported\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016zoned mode enabled with zone size %llu\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013zoned: space cache v1 is not supported\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013zoned: NODATACOW not supported\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rw == READ || rw == WRITE\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IS_ALIGNED(hole_start, zinfo->zone_size)\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IS_ALIGNED(num_bytes, zinfo->zone_size)\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IS_ALIGNED(start, zinfo->zone_size)\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IS_ALIGNED(size, zinfo->zone_size)\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014zoned: resetting device %s (devid %llu) zone %llu for allocation\00", [61 x i8] zeroinitializer }, align 32
@btrfs_ensure_empty_zones.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@btrfs_ensure_empty_zones.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013zoned: block group %llu len %llu unaligned to zone size %llu\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013zoned: unexpected conventional zone %llu on device %s (devid %llu)\00", [59 x i8] zeroinitializer }, align 32
@btrfs_load_block_group_zone_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013zoned: offline/readonly zone %llu on device %s (devid %llu)\00", [34 x i8] zeroinitializer }, align 32
@btrfs_load_block_group_zone_info.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013zoned: failed to determine allocation offset of bg %llu\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013zoned: cannot recover write pointer for zone %llu\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013zoned: profile %s not yet supported\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013zoned: invalid write pointer %llu in block group %llu\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013zoned: invalid write pointer %llu (larger than zone capacity %llu) in block group %llu\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013zoned: got wrong write pointer in BG %llu: %llu > %llu\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!bdev_is_partition(ordered->bdev)\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cache->meta_write_pointer == eb->start + eb->len\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"map->num_stripes == 1\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"list_empty(&block_group->active_bg_list)\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"!list_empty(&block_group->active_bg_list)\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(flags & BTRFS_BLOCK_GROUP_PROFILE_MASK) == 0\00", [50 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block_group\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"block_group->alloc_offset == block_group->zone_capacity\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"block_group->free_space_ctl->free_space == 0\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.62, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IS_ALIGNED(pos, zinfo->zone_size)\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013zoned: failed to read zone %llu on %s (devid %llu)\00", [43 x i8] zeroinitializer }, align 32
@btrfs_get_dev_zones.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mirror < BTRFS_SUPER_MIRROR_MAX\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zone <= U32_MAX\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"zones[i].type != BLK_ZONE_TYPE_CONVENTIONAL\00", [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sb_zone_is_full(reset)\00", [41 x i8] zeroinitializer }, align 32
@switch.table.btrfs_get_dev_zone_info = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.16, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@switch.table.btrfs_get_dev_zone_info.72 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.17, ptr @.str.15], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 14]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 14]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 14]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967291]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967291]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 387, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 394, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 399, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 415, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 457, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 494, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 504, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 534, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 552, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 565, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 566, i32 14 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 569, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 573, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 574, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 578, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 585, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 663, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 679, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 686, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 693, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 705, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 713, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 729, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 744, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 749, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 830, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 946, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 994, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 995, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1109, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1110, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1132, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1233, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1327, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1340, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1395, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1405, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1423, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1438, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1445, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1454, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1554, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1595, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1663, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1762, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1825, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1917, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1937, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1969, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1983, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1984, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3491, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 695, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 723, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 234, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 261, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 160, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 167, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 86, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [20 x i8] c"../fs/btrfs/zoned.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 780, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [37 x i8] c"switch.table.btrfs_get_dev_zone_info\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [40 x i8] c"switch.table.btrfs_get_dev_zone_info.72\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @switch.table.btrfs_get_dev_zone_info, ptr @switch.table.btrfs_get_dev_zone_info.72], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_get_dev_zone_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_get_dev_zone_info.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_get_dev_zone_info_all_devices(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %0 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %incompat_flags.i.i, align 1
  %4 = and i64 %3, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.i.not = icmp eq i64 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_devices1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %5 = ptrtoint ptr %fs_devices1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fs_devices1, align 8
  %device_list_mutex = getelementptr inbounds %struct.btrfs_fs_devices, ptr %6, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %device_list_mutex, i32 noundef 0) #13
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %device.025 = load ptr, ptr %devices, align 8
  %cmp.not26 = icmp eq ptr %device.025, %devices
  br i1 %cmp.not26, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %device.027 = phi ptr [ %device.0, %for.inc.for.body_crit_edge ], [ %device.025, %if.end.for.body_crit_edge ]
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device.027, i32 0, i32 7
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %call5 = tail call i32 @btrfs_get_dev_zone_info(ptr noundef %device.027, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.for.inc_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %device.027 to i32
  call void @__asan_load4_noabort(i32 %10)
  %device.0 = load ptr, ptr %device.027, align 8
  %cmp.not = icmp eq ptr %device.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call5, %if.end4.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %device_list_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_get_dev_zone_info(ptr noundef %device, i1 noundef zeroext %populate_cache) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.btrfs_key, align 8
  %nr_zones = alloca i32, align 4
  %sb_wp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %bdev2 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %2 = ptrtoint ptr %bdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev2, align 8
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_zones) #13
  %6 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nr_zones, align 4, !annotation !152
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %incompat_flags.i.i, align 1
  %11 = and i64 %10, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.i.not = icmp eq i64 %11, 0
  br i1 %tobool.i.not, label %entry.cleanup399_crit_edge, label %if.end

entry.cleanup399_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup399

if.end:                                           ; preds = %entry
  %zone_info4 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %12 = ptrtoint ptr %zone_info4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zone_info4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup399_crit_edge

if.end.cleanup399_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup399

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 424) #16
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup399_crit_edge, label %if.end10

if.end6.cleanup399_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup399

if.end10:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %zone_info4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %zone_info4, align 4
  %16 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not.i652 = icmp eq ptr %17, null
  br i1 %tobool.not.i652, label %if.end10.if.then13_crit_edge, label %bdev_is_zoned.exit

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

bdev_is_zoned.exit:                               ; preds = %if.end10
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 37, i32 27
  %18 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i661, label %bdev_is_zoned.exit.if.then13_crit_edge

bdev_is_zoned.exit.if.then13_crit_edge:           ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %bdev_is_zoned.exit.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %20 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool14.not = icmp eq i64 %22, 0
  br i1 %tobool14.not, label %if.then15, label %if.then13.cond.end_crit_edge

if.then13.cond.end_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.then15:                                        ; preds = %if.then13
  %dev_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_root.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #13
  %25 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %27 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1, ptr %key.i, align 8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -52, ptr %25, align 8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %26, align 1
  %call.i654 = tail call ptr @btrfs_alloc_path() #13
  %tobool.not.i655 = icmp eq ptr %call.i654, null
  br i1 %tobool.not.i655, label %calculate_emulated_zone_size.exit.thread, label %if.end.i

calculate_emulated_zone_size.exit.thread:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #13
  br label %out

if.end.i:                                         ; preds = %if.then15
  %call1.i656 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %24, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i654, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i656)
  %cmp.i = icmp slt i32 %call1.i656, 0
  br i1 %cmp.i, label %if.end.i.calculate_emulated_zone_size.exit.thread705_crit_edge, label %if.end3.i

if.end.i.calculate_emulated_zone_size.exit.thread705_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calculate_emulated_zone_size.exit.thread705

if.end3.i:                                        ; preds = %if.end.i
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i654, i32 0, i32 1
  %30 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots.i, align 4
  %32 = ptrtoint ptr %call.i654 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i654, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages.i.i, align 4
  %call.i.i657 = call ptr @page_address(ptr noundef %35) #13
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %33, align 8
  %conv.i.i = trunc i64 %37 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i657, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %nritems.i.i, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %40)
  %cmp6.not.i = icmp ult i32 %31, %40
  br i1 %cmp6.not.i, label %if.end3.i.if.end20_crit_edge, label %if.then7.i

if.end3.i.if.end20_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then7.i:                                       ; preds = %if.end3.i
  %call.i40.i = call i32 @btrfs_next_old_leaf(ptr noundef %24, ptr noundef nonnull %call.i654, i64 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %cmp9.i = icmp slt i32 %call.i40.i, 0
  br i1 %cmp9.i, label %if.then7.i.calculate_emulated_zone_size.exit.thread705_crit_edge, label %if.end11.i

if.then7.i.calculate_emulated_zone_size.exit.thread705_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calculate_emulated_zone_size.exit.thread705

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %cmp12.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %cmp12.not.i, label %if.end11.i.if.end20_crit_edge, label %if.end11.i.calculate_emulated_zone_size.exit.thread705_crit_edge

if.end11.i.calculate_emulated_zone_size.exit.thread705_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calculate_emulated_zone_size.exit.thread705

if.end11.i.if.end20_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

calculate_emulated_zone_size.exit.thread705:      ; preds = %if.end11.i.calculate_emulated_zone_size.exit.thread705_crit_edge, %if.then7.i.calculate_emulated_zone_size.exit.thread705_crit_edge, %if.end.i.calculate_emulated_zone_size.exit.thread705_crit_edge
  %ret.0.i.ph = phi i32 [ -117, %if.end11.i.calculate_emulated_zone_size.exit.thread705_crit_edge ], [ %call.i40.i, %if.then7.i.calculate_emulated_zone_size.exit.thread705_crit_edge ], [ %call1.i656, %if.end.i.calculate_emulated_zone_size.exit.thread705_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call.i654) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #13
  br label %out

if.end20:                                         ; preds = %if.end11.i.if.end20_crit_edge, %if.end3.i.if.end20_crit_edge
  %41 = ptrtoint ptr %call.i654 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i654, align 4
  %43 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %44, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %45 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %42, ptr noundef %45, i32 noundef 17) #13
  %add.i = add i32 %call.i.i.i, 101
  %46 = inttoptr i32 %add.i to ptr
  %call.i41.i = call i64 @btrfs_get_64(ptr noundef %42, ptr noundef %46, i32 noundef 24) #13
  %47 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %call.i41.i, ptr %20, align 8
  call void @btrfs_free_path(ptr noundef nonnull %call.i654) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #13
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %48)
  %.pr = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %tobool21.not = icmp eq i64 %.pr, 0
  br i1 %tobool21.not, label %cond.false, label %if.end20.cond.end_crit_edge, !prof !153

if.end20.cond.end_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 387) #17
  unreachable

cond.end:                                         ; preds = %if.end20.cond.end_crit_edge, %if.then13.cond.end_crit_edge
  %49 = phi i64 [ %.pr, %if.end20.cond.end_crit_edge ], [ %22, %if.then13.cond.end_crit_edge ]
  %shr = lshr i64 %49, 9
  br label %if.end25

if.then.i661:                                     ; preds = %bdev_is_zoned.exit
  %50 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i.i = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %if.then.i661.bdev_zone_sectors.exit_crit_edge

if.then.i661.bdev_zone_sectors.exit_crit_edge:    ; preds = %if.then.i661
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_zone_sectors.exit

cond.true.i.i:                                    ; preds = %if.then.i661
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 37, i32 5
  %52 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %bdev_zone_sectors.exit

bdev_zone_sectors.exit:                           ; preds = %cond.true.i.i, %if.then.i661.bdev_zone_sectors.exit_crit_edge
  %cond.i.i = phi i32 [ %53, %cond.true.i.i ], [ 0, %if.then.i661.bdev_zone_sectors.exit_crit_edge ]
  %conv.i.i662 = zext i32 %cond.i.i to i64
  br label %if.end25

if.end25:                                         ; preds = %bdev_zone_sectors.exit, %cond.end
  %zone_sectors.0 = phi i64 [ %conv.i.i662, %bdev_zone_sectors.exit ], [ %shr, %cond.end ]
  %54 = call i64 @llvm.ctpop.i64(i64 %zone_sectors.0), !range !154
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %54)
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %cond.end35, label %cond.false34, !prof !155

cond.false34:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 394) #17
  unreachable

cond.end35:                                       ; preds = %if.end25
  %shl = shl nuw i64 %zone_sectors.0, 9
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %shl, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %zone_sectors.0)
  %cmp37 = icmp ugt i64 %zone_sectors.0, 16777216
  br i1 %cmp37, label %do.body, label %if.end56

do.body:                                          ; preds = %cond.end35
  %57 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %60, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %61 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %name, align 8
  %call41 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end50_crit_edge

rcu_read_lock.exit.do.end50_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call43 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true.do.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true
  %.b552 = load i1, ptr @btrfs_get_dev_zone_info.__warned, align 1
  br i1 %.b552, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @.str.4) #13
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true.do.end50_crit_edge, %rcu_read_lock.exit.do.end50_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %str, i64 noundef %64, i64 noundef 8589934592) #18
  call fastcc void @rcu_read_unlock()
  br label %out

if.end56:                                         ; preds = %cond.end35
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %65 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bd_nr_sectors.i, align 8
  %shr.i.i = lshr i64 %zone_sectors.0, 23
  %conv.i.i664 = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i664)
  %tobool.not.i.i = icmp eq i32 %conv.i.i664, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %67 = call i32 @llvm.ctlz.i32(i32 %conv.i.i664, i1 true) #13, !range !157
  %add.i.i = sub nuw nsw i32 64, %67
  br label %cond.end70

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i.i = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %68 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #13, !range !157
  %sub.i6.i.i = sub nuw nsw i32 32, %68
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end70

cond.end70:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %69 = trunc i32 %retval.0.i.i to i8
  %conv = add i8 %69, -1
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv, ptr %zone_size_shift, align 8
  %conv1.i.i670 = trunc i64 %zone_sectors.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i670)
  %tobool.not.i5.i.i671 = icmp eq i32 %conv1.i.i670, 0
  %71 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i670, i1 true) #13, !range !157
  %sub.i6.i.i672.op = xor i32 %71, 31
  %sub.i676 = select i1 %tobool.not.i5.i.i671, i32 -1, i32 %sub.i6.i.i672.op
  %sh_prom = zext i32 %sub.i676 to i64
  %shr85 = lshr i64 %66, %sh_prom
  %conv86 = trunc i64 %shr85 to i32
  %nr_zones87 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 2
  %sub88 = add nsw i64 %zone_sectors.0, -1
  %and89 = and i64 %66, %sub88
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and89)
  %cmp90 = icmp ne i64 %and89, 0
  %inc = zext i1 %cmp90 to i32
  %spec.select = add i32 %conv86, %inc
  %72 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select, ptr %nr_zones87, align 4
  %max_active_zones.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 43
  %73 = ptrtoint ptr %max_active_zones.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_active_zones.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool96.not = icmp eq i32 %74, 0
  %75 = add i32 %74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %75)
  %76 = icmp ult i32 %75, 7
  br i1 %76, label %do.body101, label %if.end126

do.body101:                                       ; preds = %cond.end70
  %77 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i554 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i554 to ptr
  %preempt_count.i.i.i.i555 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i555, align 4
  %add.i.i.i556 = add i32 %80, 1
  store volatile i32 %add.i.i.i556, ptr %preempt_count.i.i.i.i555, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i557 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i557, label %do.body101.rcu_read_lock.exit564_crit_edge, label %land.lhs.true.i560

do.body101.rcu_read_lock.exit564_crit_edge:       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit564

land.lhs.true.i560:                               ; preds = %do.body101
  %call1.i558 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i558)
  %tobool.not.i559 = icmp eq i32 %call1.i558, 0
  br i1 %tobool.not.i559, label %land.lhs.true.i560.rcu_read_lock.exit564_crit_edge, label %land.lhs.true2.i562

land.lhs.true.i560.rcu_read_lock.exit564_crit_edge: ; preds = %land.lhs.true.i560
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit564

land.lhs.true2.i562:                              ; preds = %land.lhs.true.i560
  %.b4.i561 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i561, label %land.lhs.true2.i562.rcu_read_lock.exit564_crit_edge, label %if.then.i563

land.lhs.true2.i562.rcu_read_lock.exit564_crit_edge: ; preds = %land.lhs.true2.i562
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit564

if.then.i563:                                     ; preds = %land.lhs.true2.i562
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit564

rcu_read_lock.exit564:                            ; preds = %if.then.i563, %land.lhs.true2.i562.rcu_read_lock.exit564_crit_edge, %land.lhs.true.i560.rcu_read_lock.exit564_crit_edge, %do.body101.rcu_read_lock.exit564_crit_edge
  %name107 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %81 = ptrtoint ptr %name107 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %name107, align 8
  %call109 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true111, label %rcu_read_lock.exit564.do.end119_crit_edge

rcu_read_lock.exit564.do.end119_crit_edge:        ; preds = %rcu_read_lock.exit564
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end119

land.lhs.true111:                                 ; preds = %rcu_read_lock.exit564
  %call112 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %land.lhs.true111.do.end119_crit_edge, label %land.lhs.true114

land.lhs.true111.do.end119_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end119

land.lhs.true114:                                 ; preds = %land.lhs.true111
  %.b540551 = load i1, ptr @btrfs_get_dev_zone_info.__warned.6, align 1
  br i1 %.b540551, label %land.lhs.true114.do.end119_crit_edge, label %if.then116

land.lhs.true114.do.end119_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end119

if.then116:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned.6, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 418, ptr noundef nonnull @.str.4) #13
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %land.lhs.true114.do.end119_crit_edge, %land.lhs.true111.do.end119_crit_edge, %rcu_read_lock.exit564.do.end119_crit_edge
  %str122 = getelementptr inbounds %struct.rcu_string, ptr %82, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %str122, i32 noundef %74, i32 noundef 8) #18
  call fastcc void @rcu_read_unlock()
  br label %out

if.end126:                                        ; preds = %cond.end70
  %max_active_zones127 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %max_active_zones127 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %74, ptr %max_active_zones127, align 8
  %call129 = call ptr @bitmap_zalloc(i32 noundef %spec.select, i32 noundef 3264) #13
  %seq_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %seq_zones to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call129, ptr %seq_zones, align 8
  %tobool131.not = icmp eq ptr %call129, null
  br i1 %tobool131.not, label %if.end126.out_crit_edge, label %if.end133

if.end126.out_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end133:                                        ; preds = %if.end126
  %85 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr_zones87, align 4
  %call135 = call ptr @bitmap_zalloc(i32 noundef %86, i32 noundef 3264) #13
  %empty_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %empty_zones to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call135, ptr %empty_zones, align 4
  %tobool137.not = icmp eq ptr %call135, null
  br i1 %tobool137.not, label %if.end133.out_crit_edge, label %if.end139

if.end133.out_crit_edge:                          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end139:                                        ; preds = %if.end133
  %88 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_zones87, align 4
  %call141 = call ptr @bitmap_zalloc(i32 noundef %89, i32 noundef 3264) #13
  %active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 7
  %90 = ptrtoint ptr %active_zones to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call141, ptr %active_zones, align 8
  %tobool143.not = icmp eq ptr %call141, null
  br i1 %tobool143.not, label %if.end139.out_crit_edge, label %if.end145

if.end139.out_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end145:                                        ; preds = %if.end139
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 262144, i32 noundef 3520, i32 noundef 6) #19
  %tobool147.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool147.not, label %if.end145.out_crit_edge, label %if.end149

if.end145.out_crit_edge:                          ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end149:                                        ; preds = %if.end145
  br i1 %populate_cache, label %land.lhs.true152, label %if.end149.if.end189_crit_edge

if.end149.if.end189_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

land.lhs.true152:                                 ; preds = %if.end149
  %91 = ptrtoint ptr %bdev2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bdev2, align 8
  %bd_queue.i.i680 = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 18
  %93 = ptrtoint ptr %bd_queue.i.i680 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bd_queue.i.i680, align 4
  %tobool.not.i681 = icmp eq ptr %94, null
  br i1 %tobool.not.i681, label %land.lhs.true152.if.end189_crit_edge, label %bdev_is_zoned.exit687

land.lhs.true152.if.end189_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

bdev_is_zoned.exit687:                            ; preds = %land.lhs.true152
  %zoned.i.i.i682 = getelementptr inbounds %struct.request_queue, ptr %94, i32 0, i32 37, i32 27
  %95 = ptrtoint ptr %zoned.i.i.i682 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %zoned.i.i.i682, align 4
  %call.off.i.i683 = add i32 %96, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i683)
  %switch.i.i684 = icmp ult i32 %call.off.i.i683, 2
  br i1 %switch.i.i684, label %if.then156, label %bdev_is_zoned.exit687.if.end189_crit_edge

bdev_is_zoned.exit687.if.end189_crit_edge:        ; preds = %bdev_is_zoned.exit687
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

if.then156:                                       ; preds = %bdev_is_zoned.exit687
  %97 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_zones87, align 4
  %mul = shl i32 %98, 6
  %call158 = call noalias ptr @vzalloc(i32 noundef %mul) #19
  %zone_cache = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 8
  %99 = ptrtoint ptr %zone_cache to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call158, ptr %zone_cache, align 4
  %tobool160.not = icmp eq ptr %call158, null
  br i1 %tobool160.not, label %do.body162, label %if.then156.if.end189_crit_edge

if.then156.if.end189_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

do.body162:                                       ; preds = %if.then156
  %100 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i565 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i565 to ptr
  %preempt_count.i.i.i.i566 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i.i566 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i.i566, align 4
  %add.i.i.i567 = add i32 %103, 1
  store volatile i32 %add.i.i.i567, ptr %preempt_count.i.i.i.i566, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i568 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i568, label %do.body162.rcu_read_lock.exit575_crit_edge, label %land.lhs.true.i571

do.body162.rcu_read_lock.exit575_crit_edge:       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit575

land.lhs.true.i571:                               ; preds = %do.body162
  %call1.i569 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i569)
  %tobool.not.i570 = icmp eq i32 %call1.i569, 0
  br i1 %tobool.not.i570, label %land.lhs.true.i571.rcu_read_lock.exit575_crit_edge, label %land.lhs.true2.i573

land.lhs.true.i571.rcu_read_lock.exit575_crit_edge: ; preds = %land.lhs.true.i571
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit575

land.lhs.true2.i573:                              ; preds = %land.lhs.true.i571
  %.b4.i572 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i572, label %land.lhs.true2.i573.rcu_read_lock.exit575_crit_edge, label %if.then.i574

land.lhs.true2.i573.rcu_read_lock.exit575_crit_edge: ; preds = %land.lhs.true2.i573
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit575

if.then.i574:                                     ; preds = %land.lhs.true2.i573
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit575

rcu_read_lock.exit575:                            ; preds = %if.then.i574, %land.lhs.true2.i573.rcu_read_lock.exit575_crit_edge, %land.lhs.true.i571.rcu_read_lock.exit575_crit_edge, %do.body162.rcu_read_lock.exit575_crit_edge
  %104 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fs_info1, align 4
  %name169 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %106 = ptrtoint ptr %name169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %name169, align 8
  %call171 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %land.lhs.true173, label %rcu_read_lock.exit575.do.end181_crit_edge

rcu_read_lock.exit575.do.end181_crit_edge:        ; preds = %rcu_read_lock.exit575
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end181

land.lhs.true173:                                 ; preds = %rcu_read_lock.exit575
  %call174 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %land.lhs.true173.do.end181_crit_edge, label %land.lhs.true176

land.lhs.true173.do.end181_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end181

land.lhs.true176:                                 ; preds = %land.lhs.true173
  %.b541550 = load i1, ptr @btrfs_get_dev_zone_info.__warned.8, align 1
  br i1 %.b541550, label %land.lhs.true176.do.end181_crit_edge, label %if.then178

land.lhs.true176.do.end181_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end181

if.then178:                                       ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned.8, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 459, ptr noundef nonnull @.str.4) #13
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %land.lhs.true176.do.end181_crit_edge, %land.lhs.true173.do.end181_crit_edge, %rcu_read_lock.exit575.do.end181_crit_edge
  %str184 = getelementptr inbounds %struct.rcu_string, ptr %107, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %105, ptr noundef nonnull @.str.7, ptr noundef %str184) #18
  call fastcc void @rcu_read_unlock()
  br label %out

if.end189:                                        ; preds = %if.then156.if.end189_crit_edge, %bdev_is_zoned.exit687.if.end189_crit_edge, %land.lhs.true152.if.end189_crit_edge, %if.end149.if.end189_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp190729.not = icmp eq i64 %66, 0
  br i1 %cmp190729.not, label %if.end189.while.end_crit_edge, label %if.end189.while.body_crit_edge

if.end189.while.body_crit_edge:                   ; preds = %if.end189
  br label %while.body

if.end189.while.end_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %for.end.while.body_crit_edge, %if.end189.while.body_crit_edge
  %nactive.0732 = phi i32 [ %nactive.1.lcssa, %for.end.while.body_crit_edge ], [ 0, %if.end189.while.body_crit_edge ]
  %sector.0731 = phi i64 [ %add, %for.end.while.body_crit_edge ], [ 0, %if.end189.while.body_crit_edge ]
  %nreported.0730 = phi i32 [ %nreported.1.lcssa, %for.end.while.body_crit_edge ], [ 0, %if.end189.while.body_crit_edge ]
  %108 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 4096, ptr %nr_zones, align 4
  %shl192 = shl i64 %sector.0731, 9
  %call193 = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %device, i64 noundef %shl192, ptr noundef nonnull %call1.i.i.i.i, ptr noundef nonnull %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %for.cond.preheader, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %while.body
  %109 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp197722.not = icmp eq i32 %110, 0
  br i1 %cmp197722.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %nactive.1726 = phi i32 [ %nactive.2, %sw.epilog.for.body_crit_edge ], [ %nactive.0732, %for.cond.preheader.for.body_crit_edge ]
  %i.0725 = phi i32 [ %inc213, %sw.epilog.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nreported.1723 = phi i32 [ %inc212, %sw.epilog.for.body_crit_edge ], [ %nreported.0730, %for.cond.preheader.for.body_crit_edge ]
  %type = getelementptr %struct.blk_zone, ptr %call1.i.i.i.i, i32 %i.0725, i32 3
  %111 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %112)
  %cmp200 = icmp eq i8 %112, 2
  br i1 %cmp200, label %if.then202, label %for.body.if.end204_crit_edge

for.body.if.end204_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204

if.then202:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %seq_zones to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %seq_zones, align 8
  %rem.i = and i32 %nreported.1723, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %nreported.1723, 5
  %add.ptr.i = getelementptr i32, ptr %114, i32 %div2.i
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %116, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %for.body.if.end204_crit_edge
  %cond206 = getelementptr %struct.blk_zone, ptr %call1.i.i.i.i, i32 %i.0725, i32 4
  %117 = ptrtoint ptr %cond206 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cond206, align 1
  %119 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values)
  switch i8 %118, label %if.end204.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.end204.sw.bb209_crit_edge
    i8 3, label %if.end204.sw.bb209_crit_edge751
    i8 4, label %if.end204.sw.bb209_crit_edge752
  ]

if.end204.sw.bb209_crit_edge752:                  ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end204.sw.bb209_crit_edge751:                  ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end204.sw.bb209_crit_edge:                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end204.sw.epilog_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %empty_zones to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %empty_zones, align 4
  %rem.i576 = and i32 %nreported.1723, 31
  %shl.i577 = shl nuw i32 1, %rem.i576
  %div2.i578 = lshr i32 %nreported.1723, 5
  %add.ptr.i579 = getelementptr i32, ptr %121, i32 %div2.i578
  %122 = ptrtoint ptr %add.ptr.i579 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i579, align 4
  %or.i580 = or i32 %123, %shl.i577
  store i32 %or.i580, ptr %add.ptr.i579, align 4
  br label %sw.epilog

sw.bb209:                                         ; preds = %if.end204.sw.bb209_crit_edge, %if.end204.sw.bb209_crit_edge751, %if.end204.sw.bb209_crit_edge752
  %124 = ptrtoint ptr %active_zones to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %active_zones, align 8
  %rem.i581 = and i32 %nreported.1723, 31
  %shl.i582 = shl nuw i32 1, %rem.i581
  %div2.i583 = lshr i32 %nreported.1723, 5
  %add.ptr.i584 = getelementptr i32, ptr %125, i32 %div2.i583
  %126 = ptrtoint ptr %add.ptr.i584 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i584, align 4
  %or.i585 = or i32 %127, %shl.i582
  store i32 %or.i585, ptr %add.ptr.i584, align 4
  %inc211 = add i32 %nactive.1726, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb209, %sw.bb, %if.end204.sw.epilog_crit_edge
  %nactive.2 = phi i32 [ %nactive.1726, %if.end204.sw.epilog_crit_edge ], [ %inc211, %sw.bb209 ], [ %nactive.1726, %sw.bb ]
  %inc212 = add i32 %nreported.1723, 1
  %inc213 = add nuw i32 %i.0725, 1
  %exitcond.not = icmp eq i32 %inc213, %110
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nreported.1.lcssa = phi i32 [ %nreported.0730, %for.cond.preheader.for.end_crit_edge ], [ %inc212, %sw.epilog.for.end_crit_edge ]
  %nactive.1.lcssa = phi i32 [ %nactive.0732, %for.cond.preheader.for.end_crit_edge ], [ %nactive.2, %sw.epilog.for.end_crit_edge ]
  %sub214 = add i32 %110, -1
  %arrayidx215 = getelementptr %struct.blk_zone, ptr %call1.i.i.i.i, i32 %sub214
  %128 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx215, align 64
  %len = getelementptr %struct.blk_zone, ptr %call1.i.i.i.i, i32 %sub214, i32 1
  %130 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %len, align 8
  %add = add i64 %131, %129
  %cmp190 = icmp ult i64 %add, %66
  br i1 %cmp190, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end189.while.end_crit_edge
  %nreported.0.lcssa = phi i32 [ 0, %if.end189.while.end_crit_edge ], [ %nreported.1.lcssa, %for.end.while.end_crit_edge ]
  %nactive.0.lcssa = phi i32 [ 0, %if.end189.while.end_crit_edge ], [ %nactive.1.lcssa, %for.end.while.end_crit_edge ]
  %132 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nr_zones87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nreported.0.lcssa, i32 %133)
  %cmp219.not = icmp eq i32 %nreported.0.lcssa, %133
  br i1 %cmp219.not, label %if.end249, label %do.body222

do.body222:                                       ; preds = %while.end
  %134 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i586 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i.i.i586 to ptr
  %preempt_count.i.i.i.i587 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %preempt_count.i.i.i.i587 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %preempt_count.i.i.i.i587, align 4
  %add.i.i.i588 = add i32 %137, 1
  store volatile i32 %add.i.i.i588, ptr %preempt_count.i.i.i.i587, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i589 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i589, label %do.body222.rcu_read_lock.exit596_crit_edge, label %land.lhs.true.i592

do.body222.rcu_read_lock.exit596_crit_edge:       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit596

land.lhs.true.i592:                               ; preds = %do.body222
  %call1.i590 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i590)
  %tobool.not.i591 = icmp eq i32 %call1.i590, 0
  br i1 %tobool.not.i591, label %land.lhs.true.i592.rcu_read_lock.exit596_crit_edge, label %land.lhs.true2.i594

land.lhs.true.i592.rcu_read_lock.exit596_crit_edge: ; preds = %land.lhs.true.i592
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit596

land.lhs.true2.i594:                              ; preds = %land.lhs.true.i592
  %.b4.i593 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i593, label %land.lhs.true2.i594.rcu_read_lock.exit596_crit_edge, label %if.then.i595

land.lhs.true2.i594.rcu_read_lock.exit596_crit_edge: ; preds = %land.lhs.true2.i594
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit596

if.then.i595:                                     ; preds = %land.lhs.true2.i594
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit596

rcu_read_lock.exit596:                            ; preds = %if.then.i595, %land.lhs.true2.i594.rcu_read_lock.exit596_crit_edge, %land.lhs.true.i592.rcu_read_lock.exit596_crit_edge, %do.body222.rcu_read_lock.exit596_crit_edge
  %138 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fs_info1, align 4
  %name229 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %140 = ptrtoint ptr %name229 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile ptr, ptr %name229, align 8
  %call231 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %land.lhs.true233, label %rcu_read_lock.exit596.do.end241_crit_edge

rcu_read_lock.exit596.do.end241_crit_edge:        ; preds = %rcu_read_lock.exit596
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end241

land.lhs.true233:                                 ; preds = %rcu_read_lock.exit596
  %call234 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %land.lhs.true233.do.end241_crit_edge, label %land.lhs.true236

land.lhs.true233.do.end241_crit_edge:             ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end241

land.lhs.true236:                                 ; preds = %land.lhs.true233
  %.b542549 = load i1, ptr @btrfs_get_dev_zone_info.__warned.10, align 1
  br i1 %.b542549, label %land.lhs.true236.do.end241_crit_edge, label %if.then238

land.lhs.true236.do.end241_crit_edge:             ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end241

if.then238:                                       ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @.str.4) #13
  br label %do.end241

do.end241:                                        ; preds = %if.then238, %land.lhs.true236.do.end241_crit_edge, %land.lhs.true233.do.end241_crit_edge, %rcu_read_lock.exit596.do.end241_crit_edge
  %str244 = getelementptr inbounds %struct.rcu_string, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nr_zones87, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %139, ptr noundef nonnull @.str.9, ptr noundef %str244, i32 noundef %nreported.0.lcssa, i32 noundef %143) #18
  call fastcc void @rcu_read_unlock()
  br label %out

if.end249:                                        ; preds = %while.end
  br i1 %tobool96.not, label %if.end249.sb_zone_number.exit_crit_edge, label %if.then251

if.end249.sb_zone_number.exit_crit_edge:          ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

if.then251:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %nactive.0.lcssa)
  %cmp252 = icmp ult i32 %74, %nactive.0.lcssa
  br i1 %cmp252, label %do.body255, label %if.end281

do.body255:                                       ; preds = %if.then251
  %144 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i597 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i597 to ptr
  %preempt_count.i.i.i.i598 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i.i598 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i.i598, align 4
  %add.i.i.i599 = add i32 %147, 1
  store volatile i32 %add.i.i.i599, ptr %preempt_count.i.i.i.i598, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i600 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i600, label %do.body255.rcu_read_lock.exit607_crit_edge, label %land.lhs.true.i603

do.body255.rcu_read_lock.exit607_crit_edge:       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit607

land.lhs.true.i603:                               ; preds = %do.body255
  %call1.i601 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i601)
  %tobool.not.i602 = icmp eq i32 %call1.i601, 0
  br i1 %tobool.not.i602, label %land.lhs.true.i603.rcu_read_lock.exit607_crit_edge, label %land.lhs.true2.i605

land.lhs.true.i603.rcu_read_lock.exit607_crit_edge: ; preds = %land.lhs.true.i603
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit607

land.lhs.true2.i605:                              ; preds = %land.lhs.true.i603
  %.b4.i604 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i604, label %land.lhs.true2.i605.rcu_read_lock.exit607_crit_edge, label %if.then.i606

land.lhs.true2.i605.rcu_read_lock.exit607_crit_edge: ; preds = %land.lhs.true2.i605
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit607

if.then.i606:                                     ; preds = %land.lhs.true2.i605
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit607

rcu_read_lock.exit607:                            ; preds = %if.then.i606, %land.lhs.true2.i605.rcu_read_lock.exit607_crit_edge, %land.lhs.true.i603.rcu_read_lock.exit607_crit_edge, %do.body255.rcu_read_lock.exit607_crit_edge
  %148 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fs_info1, align 4
  %name262 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %150 = ptrtoint ptr %name262 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile ptr, ptr %name262, align 8
  %call264 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %land.lhs.true266, label %rcu_read_lock.exit607.do.end274_crit_edge

rcu_read_lock.exit607.do.end274_crit_edge:        ; preds = %rcu_read_lock.exit607
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end274

land.lhs.true266:                                 ; preds = %rcu_read_lock.exit607
  %call267 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %land.lhs.true266.do.end274_crit_edge, label %land.lhs.true269

land.lhs.true266.do.end274_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end274

land.lhs.true269:                                 ; preds = %land.lhs.true266
  %.b543548 = load i1, ptr @btrfs_get_dev_zone_info.__warned.12, align 1
  br i1 %.b543548, label %land.lhs.true269.do.end274_crit_edge, label %if.then271

land.lhs.true269.do.end274_crit_edge:             ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end274

if.then271:                                       ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned.12, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 507, ptr noundef nonnull @.str.4) #13
  br label %do.end274

do.end274:                                        ; preds = %if.then271, %land.lhs.true269.do.end274_crit_edge, %land.lhs.true266.do.end274_crit_edge, %rcu_read_lock.exit607.do.end274_crit_edge
  %str277 = getelementptr inbounds %struct.rcu_string, ptr %151, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %149, ptr noundef nonnull @.str.11, i32 noundef %nactive.0.lcssa, ptr noundef %str277, i32 noundef %74) #18
  call fastcc void @rcu_read_unlock()
  br label %out

if.end281:                                        ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #15
  %active_zones_left = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 4
  %sub282 = sub i32 %74, %nactive.0.lcssa
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_zones_left, i32 noundef 4) #13
  %152 = ptrtoint ptr %active_zones_left to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %sub282, ptr %active_zones_left, align 4
  %153 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr744 = load i32, ptr %nr_zones87, align 4
  br label %sb_zone_number.exit

cond.false15.i:                                   ; preds = %sw.epilog.i.2.cond.false15.i_crit_edge, %sw.epilog.i.1.cond.false15.i_crit_edge
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.69, i32 noundef 167) #20
  unreachable

sb_zone_number.exit:                              ; preds = %if.end281, %if.end249.sb_zone_number.exit_crit_edge
  %154 = phi i32 [ %133, %if.end249.sb_zone_number.exit_crit_edge ], [ %.pr744, %if.end281 ]
  %155 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 2, ptr %nr_zones, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_wp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp294.not = icmp ugt i32 %154, 1
  br i1 %cmp294.not, label %if.end297, label %sb_zone_number.exit.sw.epilog.i.1_crit_edge

sb_zone_number.exit.sw.epilog.i.1_crit_edge:      ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.1

if.end297:                                        ; preds = %sb_zone_number.exit
  %arrayidx299 = getelementptr %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 9, i32 0
  %call300 = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %device, i64 noundef 0, ptr noundef %arrayidx299, ptr noundef nonnull %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.end303, label %if.end297.cleanup_crit_edge

if.end297.cleanup_crit_edge:                      ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end303:                                        ; preds = %if.end297
  %156 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %157)
  %cmp304.not = icmp eq i32 %157, 2
  br i1 %cmp304.not, label %if.end311, label %if.end303.do.body307_crit_edge

if.end303.do.body307_crit_edge:                   ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body307

do.body307:                                       ; preds = %if.end303.2.do.body307_crit_edge, %if.end303.1.do.body307_crit_edge, %if.end303.do.body307_crit_edge
  %zone.022.off0.i.lcssa739 = phi i32 [ 0, %if.end303.do.body307_crit_edge ], [ %extract.t.i.1, %if.end303.1.do.body307_crit_edge ], [ %extract.t.i.2, %if.end303.2.do.body307_crit_edge ]
  %158 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i608 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i.i.i608 to ptr
  %preempt_count.i.i.i.i609 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %preempt_count.i.i.i.i609 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %preempt_count.i.i.i.i609, align 4
  %add.i.i.i610 = add i32 %161, 1
  store volatile i32 %add.i.i.i610, ptr %preempt_count.i.i.i.i609, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i611 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i611, label %do.body307.rcu_read_lock.exit618_crit_edge, label %land.lhs.true.i614

do.body307.rcu_read_lock.exit618_crit_edge:       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit618

land.lhs.true.i614:                               ; preds = %do.body307
  %call1.i612 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i612)
  %tobool.not.i613 = icmp eq i32 %call1.i612, 0
  br i1 %tobool.not.i613, label %land.lhs.true.i614.rcu_read_lock.exit618_crit_edge, label %land.lhs.true2.i616

land.lhs.true.i614.rcu_read_lock.exit618_crit_edge: ; preds = %land.lhs.true.i614
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit618

land.lhs.true2.i616:                              ; preds = %land.lhs.true.i614
  %.b4.i615 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i615, label %land.lhs.true2.i616.rcu_read_lock.exit618_crit_edge, label %if.then.i617

land.lhs.true2.i616.rcu_read_lock.exit618_crit_edge: ; preds = %land.lhs.true2.i616
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit618

if.then.i617:                                     ; preds = %land.lhs.true2.i616
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit618

rcu_read_lock.exit618:                            ; preds = %if.then.i617, %land.lhs.true2.i616.rcu_read_lock.exit618_crit_edge, %land.lhs.true.i614.rcu_read_lock.exit618_crit_edge, %do.body307.rcu_read_lock.exit618_crit_edge
  %162 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fs_info1, align 4
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  %164 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %devid, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %163, ptr noundef nonnull @.str.13, i64 noundef %165, i32 noundef %zone.022.off0.i.lcssa739) #18
  br label %cleanup.sink.split

if.end311:                                        ; preds = %if.end303
  %type315 = getelementptr %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 3
  %166 = ptrtoint ptr %type315 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %type315, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %167)
  %cmp317 = icmp eq i8 %167, 1
  br i1 %cmp317, label %if.end311.sw.epilog.i.1_crit_edge, label %if.end320

if.end311.sw.epilog.i.1_crit_edge:                ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.1

if.end320:                                        ; preds = %if.end311
  %168 = ptrtoint ptr %bdev2 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bdev2, align 8
  %call324 = call fastcc i32 @sb_write_pointer(ptr noundef %169, ptr noundef %arrayidx299, ptr noundef nonnull %sb_wp)
  %170 = zext i32 %call324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call324, label %if.end320.do.body330_crit_edge [
    i32 -2, label %if.end320.sw.epilog.i.1_crit_edge
    i32 0, label %if.end320.sw.epilog.i.1_crit_edge753
  ]

if.end320.sw.epilog.i.1_crit_edge753:             ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.1

if.end320.sw.epilog.i.1_crit_edge:                ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.1

if.end320.do.body330_crit_edge:                   ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body330

do.body330:                                       ; preds = %if.end320.2.do.body330_crit_edge, %if.end320.1.do.body330_crit_edge, %if.end320.do.body330_crit_edge
  %zone.022.off0.i.lcssa740 = phi i32 [ 0, %if.end320.do.body330_crit_edge ], [ %extract.t.i.1, %if.end320.1.do.body330_crit_edge ], [ %extract.t.i.2, %if.end320.2.do.body330_crit_edge ]
  %171 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i619 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i.i.i619 to ptr
  %preempt_count.i.i.i.i620 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %preempt_count.i.i.i.i620 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %preempt_count.i.i.i.i620, align 4
  %add.i.i.i621 = add i32 %174, 1
  store volatile i32 %add.i.i.i621, ptr %preempt_count.i.i.i.i620, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i622 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i622, label %do.body330.rcu_read_lock.exit629_crit_edge, label %land.lhs.true.i625

do.body330.rcu_read_lock.exit629_crit_edge:       ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit629

land.lhs.true.i625:                               ; preds = %do.body330
  %call1.i623 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i623)
  %tobool.not.i624 = icmp eq i32 %call1.i623, 0
  br i1 %tobool.not.i624, label %land.lhs.true.i625.rcu_read_lock.exit629_crit_edge, label %land.lhs.true2.i627

land.lhs.true.i625.rcu_read_lock.exit629_crit_edge: ; preds = %land.lhs.true.i625
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit629

land.lhs.true2.i627:                              ; preds = %land.lhs.true.i625
  %.b4.i626 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i626, label %land.lhs.true2.i627.rcu_read_lock.exit629_crit_edge, label %if.then.i628

land.lhs.true2.i627.rcu_read_lock.exit629_crit_edge: ; preds = %land.lhs.true2.i627
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit629

if.then.i628:                                     ; preds = %land.lhs.true2.i627
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit629

rcu_read_lock.exit629:                            ; preds = %if.then.i628, %land.lhs.true2.i627.rcu_read_lock.exit629_crit_edge, %land.lhs.true.i625.rcu_read_lock.exit629_crit_edge, %do.body330.rcu_read_lock.exit629_crit_edge
  %175 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %fs_info1, align 4
  %devid332 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  %177 = ptrtoint ptr %devid332 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %devid332, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %176, ptr noundef nonnull @.str.14, i64 noundef %178, i32 noundef %zone.022.off0.i.lcssa740) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_lock.exit629, %rcu_read_lock.exit618
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end297.2.cleanup_crit_edge, %if.end297.1.cleanup_crit_edge, %cleanup.sink.split, %if.end297.cleanup_crit_edge
  %ret.4 = phi i32 [ %call300, %if.end297.cleanup_crit_edge ], [ %call300.1, %if.end297.1.cleanup_crit_edge ], [ %call300.2, %if.end297.2.cleanup_crit_edge ], [ -117, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_wp) #13
  br label %out

sw.epilog.i.1:                                    ; preds = %if.end320.sw.epilog.i.1_crit_edge, %if.end320.sw.epilog.i.1_crit_edge753, %if.end311.sw.epilog.i.1_crit_edge, %sb_zone_number.exit.sw.epilog.i.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_wp) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_wp) #13
  %179 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %zone_size_shift, align 8
  %conv290.1 = zext i8 %180 to i32
  %sh_prom5.pn.in.i.1 = sub nsw i32 39, %conv290.1
  %sh_prom5.pn.i.1 = zext i32 %sh_prom5.pn.in.i.1 to i64
  %zone.0.i.1 = shl nuw i64 1, %sh_prom5.pn.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i.1)
  %cmp7.i.1 = icmp ult i32 %sh_prom5.pn.in.i.1, 32
  %extract.t.i.1 = trunc i64 %zone.0.i.1 to i32
  br i1 %cmp7.i.1, label %sb_zone_number.exit.1, label %sw.epilog.i.1.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.1.cond.false15.i_crit_edge:           ; preds = %sw.epilog.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sb_zone_number.exit.1:                            ; preds = %sw.epilog.i.1
  %add292.1 = add i32 %extract.t.i.1, 1
  %181 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nr_zones87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add292.1, i32 %182)
  %cmp294.not.1 = icmp ult i32 %add292.1, %182
  br i1 %cmp294.not.1, label %if.end297.1, label %sb_zone_number.exit.1.sw.epilog.i.2_crit_edge

sb_zone_number.exit.1.sw.epilog.i.2_crit_edge:    ; preds = %sb_zone_number.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.2

if.end297.1:                                      ; preds = %sb_zone_number.exit.1
  %conv.i.1 = and i64 %zone.0.i.1, 4294967295
  %sh_prom.i.1 = zext i8 %180 to i64
  %shl.i689.1 = shl i64 %conv.i.1, %sh_prom.i.1
  %arrayidx299.1 = getelementptr %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 9, i32 2
  %call300.1 = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %device, i64 noundef %shl.i689.1, ptr noundef %arrayidx299.1, ptr noundef nonnull %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300.1)
  %tobool301.not.1 = icmp eq i32 %call300.1, 0
  br i1 %tobool301.not.1, label %if.end303.1, label %if.end297.1.cleanup_crit_edge

if.end297.1.cleanup_crit_edge:                    ; preds = %if.end297.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end303.1:                                      ; preds = %if.end297.1
  %183 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp304.not.1 = icmp eq i32 %184, 2
  br i1 %cmp304.not.1, label %if.end311.1, label %if.end303.1.do.body307_crit_edge

if.end303.1.do.body307_crit_edge:                 ; preds = %if.end303.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body307

if.end311.1:                                      ; preds = %if.end303.1
  %type315.1 = getelementptr %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 3
  %185 = ptrtoint ptr %type315.1 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %type315.1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp317.1 = icmp eq i8 %186, 1
  br i1 %cmp317.1, label %if.end311.1.sw.epilog.i.2_crit_edge, label %if.end320.1

if.end311.1.sw.epilog.i.2_crit_edge:              ; preds = %if.end311.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.2

if.end320.1:                                      ; preds = %if.end311.1
  %187 = ptrtoint ptr %bdev2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bdev2, align 8
  %call324.1 = call fastcc i32 @sb_write_pointer(ptr noundef %188, ptr noundef %arrayidx299.1, ptr noundef nonnull %sb_wp)
  %189 = zext i32 %call324.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call324.1, label %if.end320.1.do.body330_crit_edge [
    i32 -2, label %if.end320.1.sw.epilog.i.2_crit_edge
    i32 0, label %if.end320.1.sw.epilog.i.2_crit_edge754
  ]

if.end320.1.sw.epilog.i.2_crit_edge754:           ; preds = %if.end320.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.2

if.end320.1.sw.epilog.i.2_crit_edge:              ; preds = %if.end320.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.2

if.end320.1.do.body330_crit_edge:                 ; preds = %if.end320.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body330

sw.epilog.i.2:                                    ; preds = %if.end320.1.sw.epilog.i.2_crit_edge, %if.end320.1.sw.epilog.i.2_crit_edge754, %if.end311.1.sw.epilog.i.2_crit_edge, %sb_zone_number.exit.1.sw.epilog.i.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_wp) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_wp) #13
  %190 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %zone_size_shift, align 8
  %conv290.2 = zext i8 %191 to i32
  %sh_prom5.pn.in.i.2 = sub nsw i32 42, %conv290.2
  %sh_prom5.pn.i.2 = zext i32 %sh_prom5.pn.in.i.2 to i64
  %zone.0.i.2 = shl nuw i64 1, %sh_prom5.pn.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i.2)
  %cmp7.i.2 = icmp ult i32 %sh_prom5.pn.in.i.2, 32
  %extract.t.i.2 = trunc i64 %zone.0.i.2 to i32
  br i1 %cmp7.i.2, label %sb_zone_number.exit.2, label %sw.epilog.i.2.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.2.cond.false15.i_crit_edge:           ; preds = %sw.epilog.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sb_zone_number.exit.2:                            ; preds = %sw.epilog.i.2
  %add292.2 = add i32 %extract.t.i.2, 1
  %192 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nr_zones87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add292.2, i32 %193)
  %cmp294.not.2 = icmp ult i32 %add292.2, %193
  br i1 %cmp294.not.2, label %if.end297.2, label %sb_zone_number.exit.2.for.inc338.2_crit_edge

sb_zone_number.exit.2.for.inc338.2_crit_edge:     ; preds = %sb_zone_number.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc338.2

if.end297.2:                                      ; preds = %sb_zone_number.exit.2
  %conv.i.2 = and i64 %zone.0.i.2, 4294967295
  %sh_prom.i.2 = zext i8 %191 to i64
  %shl.i689.2 = shl i64 %conv.i.2, %sh_prom.i.2
  %arrayidx299.2 = getelementptr %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 9, i32 4
  %call300.2 = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %device, i64 noundef %shl.i689.2, ptr noundef %arrayidx299.2, ptr noundef nonnull %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300.2)
  %tobool301.not.2 = icmp eq i32 %call300.2, 0
  br i1 %tobool301.not.2, label %if.end303.2, label %if.end297.2.cleanup_crit_edge

if.end297.2.cleanup_crit_edge:                    ; preds = %if.end297.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end303.2:                                      ; preds = %if.end297.2
  %194 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %195)
  %cmp304.not.2 = icmp eq i32 %195, 2
  br i1 %cmp304.not.2, label %if.end311.2, label %if.end303.2.do.body307_crit_edge

if.end303.2.do.body307_crit_edge:                 ; preds = %if.end303.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body307

if.end311.2:                                      ; preds = %if.end303.2
  %type315.2 = getelementptr %struct.btrfs_zoned_device_info, ptr %call7.i.i, i32 0, i32 9, i32 4, i32 3
  %196 = ptrtoint ptr %type315.2 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %type315.2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %197)
  %cmp317.2 = icmp eq i8 %197, 1
  br i1 %cmp317.2, label %if.end311.2.for.inc338.2_crit_edge, label %if.end320.2

if.end311.2.for.inc338.2_crit_edge:               ; preds = %if.end311.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc338.2

if.end320.2:                                      ; preds = %if.end311.2
  %198 = ptrtoint ptr %bdev2 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bdev2, align 8
  %call324.2 = call fastcc i32 @sb_write_pointer(ptr noundef %199, ptr noundef %arrayidx299.2, ptr noundef nonnull %sb_wp)
  %200 = zext i32 %call324.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call324.2, label %if.end320.2.do.body330_crit_edge [
    i32 -2, label %if.end320.2.for.inc338.2_crit_edge
    i32 0, label %if.end320.2.for.inc338.2_crit_edge755
  ]

if.end320.2.for.inc338.2_crit_edge755:            ; preds = %if.end320.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc338.2

if.end320.2.for.inc338.2_crit_edge:               ; preds = %if.end320.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc338.2

if.end320.2.do.body330_crit_edge:                 ; preds = %if.end320.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body330

for.inc338.2:                                     ; preds = %if.end320.2.for.inc338.2_crit_edge, %if.end320.2.for.inc338.2_crit_edge755, %if.end311.2.for.inc338.2_crit_edge, %sb_zone_number.exit.2.for.inc338.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_wp) #13
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #13
  %201 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not.i691 = icmp eq ptr %202, null
  br i1 %tobool.not.i691, label %for.inc338.2.do.body372_crit_edge, label %bdev_zoned_model.exit

for.inc338.2.do.body372_crit_edge:                ; preds = %for.inc338.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body372

bdev_zoned_model.exit:                            ; preds = %for.inc338.2
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %202, i32 0, i32 37, i32 27
  %203 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %zoned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %204)
  %205 = icmp ult i32 %204, 3
  br i1 %205, label %switch.lookup, label %do.body345

do.body345:                                       ; preds = %bdev_zoned_model.exit
  %206 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i630 = and i32 %206, -16384
  %207 = inttoptr i32 %and.i.i.i.i.i630 to ptr
  %preempt_count.i.i.i.i631 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %preempt_count.i.i.i.i631 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %preempt_count.i.i.i.i631, align 4
  %add.i.i.i632 = add i32 %209, 1
  store volatile i32 %add.i.i.i632, ptr %preempt_count.i.i.i.i631, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i633 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i633, label %do.body345.rcu_read_lock.exit640_crit_edge, label %land.lhs.true.i636

do.body345.rcu_read_lock.exit640_crit_edge:       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit640

land.lhs.true.i636:                               ; preds = %do.body345
  %call1.i634 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i634)
  %tobool.not.i635 = icmp eq i32 %call1.i634, 0
  br i1 %tobool.not.i635, label %land.lhs.true.i636.rcu_read_lock.exit640_crit_edge, label %land.lhs.true2.i638

land.lhs.true.i636.rcu_read_lock.exit640_crit_edge: ; preds = %land.lhs.true.i636
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit640

land.lhs.true2.i638:                              ; preds = %land.lhs.true.i636
  %.b4.i637 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i637, label %land.lhs.true2.i638.rcu_read_lock.exit640_crit_edge, label %if.then.i639

land.lhs.true2.i638.rcu_read_lock.exit640_crit_edge: ; preds = %land.lhs.true2.i638
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit640

if.then.i639:                                     ; preds = %land.lhs.true2.i638
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit640

rcu_read_lock.exit640:                            ; preds = %if.then.i639, %land.lhs.true2.i638.rcu_read_lock.exit640_crit_edge, %land.lhs.true.i636.rcu_read_lock.exit640_crit_edge, %do.body345.rcu_read_lock.exit640_crit_edge
  %210 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not.i695 = icmp eq ptr %211, null
  br i1 %tobool.not.i695, label %rcu_read_lock.exit640.bdev_zoned_model.exit699_crit_edge, label %if.then.i697

rcu_read_lock.exit640.bdev_zoned_model.exit699_crit_edge: ; preds = %rcu_read_lock.exit640
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_zoned_model.exit699

if.then.i697:                                     ; preds = %rcu_read_lock.exit640
  call void @__sanitizer_cov_trace_pc() #15
  %zoned.i.i696 = getelementptr inbounds %struct.request_queue, ptr %211, i32 0, i32 37, i32 27
  %212 = ptrtoint ptr %zoned.i.i696 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %zoned.i.i696, align 4
  br label %bdev_zoned_model.exit699

bdev_zoned_model.exit699:                         ; preds = %if.then.i697, %rcu_read_lock.exit640.bdev_zoned_model.exit699_crit_edge
  %retval.0.i698 = phi i32 [ %213, %if.then.i697 ], [ 0, %rcu_read_lock.exit640.bdev_zoned_model.exit699_crit_edge ]
  %name352 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %214 = ptrtoint ptr %name352 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %name352, align 8
  %call354 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %land.lhs.true356, label %bdev_zoned_model.exit699.do.end364_crit_edge

bdev_zoned_model.exit699.do.end364_crit_edge:     ; preds = %bdev_zoned_model.exit699
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end364

land.lhs.true356:                                 ; preds = %bdev_zoned_model.exit699
  %call357 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %land.lhs.true356.do.end364_crit_edge, label %land.lhs.true359

land.lhs.true356.do.end364_crit_edge:             ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end364

land.lhs.true359:                                 ; preds = %land.lhs.true356
  %.b544547 = load i1, ptr @btrfs_get_dev_zone_info.__warned.21, align 1
  br i1 %.b544547, label %land.lhs.true359.do.end364_crit_edge, label %if.then361

land.lhs.true359.do.end364_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end364

if.then361:                                       ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned.21, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 580, ptr noundef nonnull @.str.4) #13
  br label %do.end364

do.end364:                                        ; preds = %if.then361, %land.lhs.true359.do.end364_crit_edge, %land.lhs.true356.do.end364_crit_edge, %bdev_zoned_model.exit699.do.end364_crit_edge
  %str367 = getelementptr inbounds %struct.rcu_string, ptr %215, i32 0, i32 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i698, ptr noundef %str367) #18
  call fastcc void @rcu_read_unlock()
  br label %out_free_zone_info

switch.lookup:                                    ; preds = %bdev_zoned_model.exit
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.btrfs_get_dev_zone_info, i32 0, i32 %204
  %216 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %216)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep747 = getelementptr inbounds [3 x ptr], ptr @switch.table.btrfs_get_dev_zone_info.72, i32 0, i32 %204
  %217 = ptrtoint ptr %switch.gep747 to i32
  call void @__asan_load4_noabort(i32 %217)
  %switch.load748 = load ptr, ptr %switch.gep747, align 4
  br label %do.body372

do.body372:                                       ; preds = %switch.lookup, %for.inc338.2.do.body372_crit_edge
  %emulated.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %for.inc338.2.do.body372_crit_edge ]
  %model.0 = phi ptr [ %switch.load748, %switch.lookup ], [ @.str.18, %for.inc338.2.do.body372_crit_edge ]
  %218 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i641 = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i.i.i641 to ptr
  %preempt_count.i.i.i.i642 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %preempt_count.i.i.i.i642 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %preempt_count.i.i.i.i642, align 4
  %add.i.i.i643 = add i32 %221, 1
  store volatile i32 %add.i.i.i643, ptr %preempt_count.i.i.i.i642, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i644 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i644, label %do.body372.rcu_read_lock.exit651_crit_edge, label %land.lhs.true.i647

do.body372.rcu_read_lock.exit651_crit_edge:       ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit651

land.lhs.true.i647:                               ; preds = %do.body372
  %call1.i645 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i645)
  %tobool.not.i646 = icmp eq i32 %call1.i645, 0
  br i1 %tobool.not.i646, label %land.lhs.true.i647.rcu_read_lock.exit651_crit_edge, label %land.lhs.true2.i649

land.lhs.true.i647.rcu_read_lock.exit651_crit_edge: ; preds = %land.lhs.true.i647
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit651

land.lhs.true2.i649:                              ; preds = %land.lhs.true.i647
  %.b4.i648 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i648, label %land.lhs.true2.i649.rcu_read_lock.exit651_crit_edge, label %if.then.i650

land.lhs.true2.i649.rcu_read_lock.exit651_crit_edge: ; preds = %land.lhs.true2.i649
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit651

if.then.i650:                                     ; preds = %land.lhs.true2.i649
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit651

rcu_read_lock.exit651:                            ; preds = %if.then.i650, %land.lhs.true2.i649.rcu_read_lock.exit651_crit_edge, %land.lhs.true.i647.rcu_read_lock.exit651_crit_edge, %do.body372.rcu_read_lock.exit651_crit_edge
  %name378 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %222 = ptrtoint ptr %name378 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile ptr, ptr %name378, align 8
  %call380 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %land.lhs.true382, label %rcu_read_lock.exit651.do.end390_crit_edge

rcu_read_lock.exit651.do.end390_crit_edge:        ; preds = %rcu_read_lock.exit651
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

land.lhs.true382:                                 ; preds = %rcu_read_lock.exit651
  %call383 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %tobool384.not = icmp eq i32 %call383, 0
  br i1 %tobool384.not, label %land.lhs.true382.do.end390_crit_edge, label %land.lhs.true385

land.lhs.true382.do.end390_crit_edge:             ; preds = %land.lhs.true382
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

land.lhs.true385:                                 ; preds = %land.lhs.true382
  %.b545546 = load i1, ptr @btrfs_get_dev_zone_info.__warned.23, align 1
  br i1 %.b545546, label %land.lhs.true385.do.end390_crit_edge, label %if.then387

land.lhs.true385.do.end390_crit_edge:             ; preds = %land.lhs.true385
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

if.then387:                                       ; preds = %land.lhs.true385
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zone_info.__warned.23, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 588, ptr noundef nonnull @.str.4) #13
  br label %do.end390

do.end390:                                        ; preds = %if.then387, %land.lhs.true385.do.end390_crit_edge, %land.lhs.true382.do.end390_crit_edge, %rcu_read_lock.exit651.do.end390_crit_edge
  %str393 = getelementptr inbounds %struct.rcu_string, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %nr_zones87, align 4
  %226 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %model.0, ptr noundef %str393, i32 noundef %225, ptr noundef nonnull %emulated.0, i64 noundef %227) #18
  call fastcc void @rcu_read_unlock()
  br label %cleanup399

out:                                              ; preds = %cleanup, %do.end274, %do.end241, %while.body.out_crit_edge, %do.end181, %if.end145.out_crit_edge, %if.end139.out_crit_edge, %if.end133.out_crit_edge, %if.end126.out_crit_edge, %do.end119, %do.end50, %calculate_emulated_zone_size.exit.thread705, %calculate_emulated_zone_size.exit.thread
  %ret.5 = phi i32 [ -22, %do.end50 ], [ -22, %do.end119 ], [ -5, %do.end241 ], [ -5, %do.end274 ], [ %ret.4, %cleanup ], [ -12, %do.end181 ], [ -12, %if.end126.out_crit_edge ], [ -12, %if.end133.out_crit_edge ], [ -12, %if.end139.out_crit_edge ], [ -12, %if.end145.out_crit_edge ], [ -12, %calculate_emulated_zone_size.exit.thread ], [ %ret.0.i.ph, %calculate_emulated_zone_size.exit.thread705 ], [ %call193, %while.body.out_crit_edge ]
  %zones.0 = phi ptr [ null, %do.end50 ], [ null, %do.end119 ], [ %call1.i.i.i.i, %do.end241 ], [ %call1.i.i.i.i, %do.end274 ], [ %call1.i.i.i.i, %cleanup ], [ %call1.i.i.i.i, %do.end181 ], [ null, %if.end126.out_crit_edge ], [ null, %if.end133.out_crit_edge ], [ null, %if.end139.out_crit_edge ], [ null, %if.end145.out_crit_edge ], [ null, %calculate_emulated_zone_size.exit.thread ], [ null, %calculate_emulated_zone_size.exit.thread705 ], [ %call1.i.i.i.i, %while.body.out_crit_edge ]
  call void @kfree(ptr noundef %zones.0) #13
  br label %out_free_zone_info

out_free_zone_info:                               ; preds = %out, %do.end364
  %ret.6 = phi i32 [ %ret.5, %out ], [ -95, %do.end364 ]
  %228 = ptrtoint ptr %zone_info4 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %zone_info4, align 4
  %tobool.not.i700 = icmp eq ptr %229, null
  br i1 %tobool.not.i700, label %out_free_zone_info.cleanup399_crit_edge, label %if.end.i701

out_free_zone_info.cleanup399_crit_edge:          ; preds = %out_free_zone_info
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup399

if.end.i701:                                      ; preds = %out_free_zone_info
  call void @__sanitizer_cov_trace_pc() #15
  %active_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %229, i32 0, i32 7
  %230 = ptrtoint ptr %active_zones.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %active_zones.i, align 8
  call void @bitmap_free(ptr noundef %231) #13
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %229, i32 0, i32 5
  %232 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %seq_zones.i, align 8
  call void @bitmap_free(ptr noundef %233) #13
  %empty_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %229, i32 0, i32 6
  %234 = ptrtoint ptr %empty_zones.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %empty_zones.i, align 4
  call void @bitmap_free(ptr noundef %235) #13
  %zone_cache.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %229, i32 0, i32 8
  %236 = ptrtoint ptr %zone_cache.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %zone_cache.i, align 4
  call void @vfree(ptr noundef %237) #13
  call void @kfree(ptr noundef nonnull %229) #13
  %238 = ptrtoint ptr %zone_info4 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %zone_info4, align 4
  br label %cleanup399

cleanup399:                                       ; preds = %if.end.i701, %out_free_zone_info.cleanup399_crit_edge, %do.end390, %if.end6.cleanup399_crit_edge, %if.end.cleanup399_crit_edge, %entry.cleanup399_crit_edge
  %retval.0 = phi i32 [ 0, %do.end390 ], [ 0, %entry.cleanup399_crit_edge ], [ 0, %if.end.cleanup399_crit_edge ], [ -12, %if.end6.cleanup399_crit_edge ], [ %ret.6, %out_free_zone_info.cleanup399_crit_edge ], [ %ret.6, %if.end.i701 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_zones) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #13, !srcloc !159
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 724, ptr noundef nonnull @.str.65) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !160
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_get_dev_zones(ptr noundef %device, i64 noundef %pos, ptr noundef %zones, ptr nocapture noundef %nr_zones) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info, align 4
  %2 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup66

if.end:                                           ; preds = %entry
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i116 = icmp eq ptr %7, null
  br i1 %tobool.not.i116, label %if.end.if.then1_crit_edge, label %bdev_is_zoned.exit

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then1

bdev_is_zoned.exit:                               ; preds = %if.end
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 27
  %8 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end3, label %bdev_is_zoned.exit.if.then1_crit_edge

bdev_is_zoned.exit.if.then1_crit_edge:            ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then1

if.then1:                                         ; preds = %bdev_is_zoned.exit.if.then1_crit_edge, %if.end.if.then1_crit_edge
  %fs_info.i = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 4
  %10 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info.i, align 4
  %12 = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 176
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %shr.i = lshr i64 %14, 9
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shr1.i = lshr i64 %pos, 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then1
  %i.041.i = phi i32 [ %inc14.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then1 ]
  %conv.i = zext i32 %i.041.i to i64
  %mul.i = mul i64 %shr.i, %conv.i
  %add.i = add i64 %mul.i, %shr1.i
  %arrayidx.i = getelementptr %struct.blk_zone, ptr %zones, i32 %i.041.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i, ptr %arrayidx.i, align 8
  %len.i = getelementptr %struct.blk_zone, ptr %zones, i32 %i.041.i, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shr.i, ptr %len.i, align 8
  %capacity.i = getelementptr %struct.blk_zone, ptr %zones, i32 %i.041.i, i32 8
  %19 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shr.i, ptr %capacity.i, align 8
  %add6.i = add i64 %add.i, %shr.i
  %wp.i = getelementptr %struct.blk_zone, ptr %zones, i32 %i.041.i, i32 2
  %20 = ptrtoint ptr %wp.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add6.i, ptr %wp.i, align 8
  %type.i = getelementptr %struct.blk_zone, ptr %zones, i32 %i.041.i, i32 3
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type.i, align 8
  %cond.i = getelementptr %struct.blk_zone, ptr %zones, i32 %i.041.i, i32 4
  %22 = ptrtoint ptr %cond.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %cond.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add6.i, i64 %16)
  %cmp12.not.i = icmp ult i64 %add6.i, %16
  %inc14.i = add nuw i32 %i.041.i, 1
  br i1 %cmp12.not.i, label %for.inc.i, label %for.body.i.emulate_report_zones.exit_crit_edge

for.body.i.emulate_report_zones.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %emulate_report_zones.exit

for.inc.i:                                        ; preds = %for.body.i
  %exitcond.not.i = icmp eq i32 %inc14.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.emulate_report_zones.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.emulate_report_zones.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %emulate_report_zones.exit

emulate_report_zones.exit:                        ; preds = %for.inc.i.emulate_report_zones.exit_crit_edge, %for.body.i.emulate_report_zones.exit_crit_edge
  %i.1.i = phi i32 [ %inc14.i, %for.body.i.emulate_report_zones.exit_crit_edge ], [ %3, %for.inc.i.emulate_report_zones.exit_crit_edge ]
  %23 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.1.i, ptr %nr_zones, align 4
  br label %cleanup66

if.end3:                                          ; preds = %bdev_is_zoned.exit
  %zone_cache = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %zone_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %zone_cache, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %if.end3.if.end31_crit_edge, label %if.then5

if.end3.if.end31_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then5:                                         ; preds = %if.end3
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %1, align 8
  %sub = add i64 %27, -1
  %and = and i64 %sub, %pos
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.66, i32 noundef 234) #17
  unreachable

cond.end:                                         ; preds = %if.then5
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %zone_size_shift, align 8
  %sh_prom = zext i8 %29 to i64
  %shr = lshr i64 %pos, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %nr_zones9 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %nr_zones9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_zones9, align 4
  %sub10 = sub i32 %31, %conv8
  %32 = tail call i32 @llvm.umin.i32(i32 %3, i32 %sub10)
  %33 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp16121.not = icmp eq i32 %32, 0
  br i1 %cmp16121.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %34 = ptrtoint ptr %zone_cache to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %zone_cache, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.0122, %conv8
  %len = getelementptr %struct.blk_zone, ptr %35, i32 %add, i32 1
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool20.not = icmp eq i64 %37, 0
  br i1 %tobool20.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %32
  br i1 %exitcond.not, label %for.inc.if.then25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.then25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %i.0122, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %32)
  %cmp23 = icmp eq i32 %i.0.lcssa, %32
  br i1 %cmp23, label %for.end.if.then25_crit_edge, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

for.end.if.then25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %for.end.if.then25_crit_edge, %for.inc.if.then25_crit_edge
  %38 = ptrtoint ptr %zone_cache to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %zone_cache, align 4
  %add.ptr = getelementptr %struct.blk_zone, ptr %39, i32 %conv8
  %mul = shl i32 %32, 6
  %40 = call ptr @memcpy(ptr %zones, ptr %add.ptr, i32 %mul)
  br label %cleanup66

if.end31:                                         ; preds = %for.end.if.end31_crit_edge, %if.end3.if.end31_crit_edge
  %zno.0 = phi i32 [ -1, %if.end3.if.end31_crit_edge ], [ %conv8, %for.end.if.end31_crit_edge ]
  %41 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bdev, align 8
  %shr33 = lshr i64 %pos, 9
  %43 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_zones, align 4
  %call34 = tail call i32 @blkdev_report_zones(ptr noundef %42, i64 noundef %shr33, i32 noundef %44, ptr noundef nonnull @copy_zone_info_cb, ptr noundef %zones) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.body, label %if.end55

do.body:                                          ; preds = %if.end31
  %45 = tail call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %fs_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 4
  %49 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fs_info, align 4
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %name, align 8
  %call41 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end50_crit_edge

rcu_read_lock.exit.do.end50_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call43 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true.do.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true
  %.b115 = load i1, ptr @btrfs_get_dev_zones.__warned, align 1
  br i1 %.b115, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_get_dev_zones.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 264, ptr noundef nonnull @.str.4) #13
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true.do.end50_crit_edge, %rcu_read_lock.exit.do.end50_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %52, i32 0, i32 1
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  %53 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %devid, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %50, ptr noundef nonnull @.str.67, i64 noundef %pos, ptr noundef %str, i64 noundef %54) #18
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup66

if.end55:                                         ; preds = %if.end31
  %55 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call34, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool56.not = icmp eq i32 %call34, 0
  br i1 %tobool56.not, label %if.end55.cleanup66_crit_edge, label %if.end58

if.end55.cleanup66_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup66

if.end58:                                         ; preds = %if.end55
  %56 = ptrtoint ptr %zone_cache to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %zone_cache, align 4
  %tobool60.not = icmp eq ptr %57, null
  br i1 %tobool60.not, label %if.end58.cleanup66_crit_edge, label %if.then61

if.end58.cleanup66_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr63 = getelementptr %struct.blk_zone, ptr %57, i32 %zno.0
  %mul64 = shl i32 %call34, 6
  %58 = call ptr @memcpy(ptr %add.ptr63, ptr %zones, i32 %mul64)
  br label %cleanup66

cleanup66:                                        ; preds = %if.then61, %if.end58.cleanup66_crit_edge, %if.end55.cleanup66_crit_edge, %do.end50, %if.then25, %emulate_report_zones.exit, %entry.cleanup66_crit_edge
  %retval.1 = phi i32 [ %call34, %do.end50 ], [ 0, %emulate_report_zones.exit ], [ 0, %entry.cleanup66_crit_edge ], [ 0, %if.then25 ], [ -5, %if.end55.cleanup66_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end58.cleanup66_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sb_write_pointer(ptr nocapture noundef readonly %bdev, ptr nocapture noundef readonly %zones, ptr nocapture noundef writeonly %wp_ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr %struct.blk_zone, ptr %zones, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1.not = icmp eq i8 %1, 1
  br i1 %cmp1.not, label %entry.cond.false_crit_edge, label %cond.end, !prof !153

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %sb_zone_is_full.exit.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.70, i32 noundef 86) #17
  unreachable

cond.end:                                         ; preds = %entry
  %cond = getelementptr %struct.blk_zone, ptr %zones, i32 0, i32 4
  %2 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp6.not = icmp eq i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %3)
  %cmp.i = icmp eq i8 %3, 14
  br i1 %cmp.i, label %cond.end.sb_zone_is_full.exit_crit_edge, label %lor.rhs.i

cond.end.sb_zone_is_full.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_is_full.exit

lor.rhs.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %wp.i = getelementptr %struct.blk_zone, ptr %zones, i32 0, i32 2
  %4 = ptrtoint ptr %wp.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wp.i, align 8
  %add.i = add i64 %5, 8
  %6 = ptrtoint ptr %zones to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %zones, align 8
  %capacity.i = getelementptr %struct.blk_zone, ptr %zones, i32 0, i32 8
  %8 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %capacity.i, align 8
  %add2.i = add i64 %9, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add2.i)
  %cmp3.i = icmp ule i64 %add.i, %add2.i
  br label %sb_zone_is_full.exit

sb_zone_is_full.exit:                             ; preds = %lor.rhs.i, %cond.end.sb_zone_is_full.exit_crit_edge
  %10 = phi i1 [ false, %cond.end.sb_zone_is_full.exit_crit_edge ], [ %cmp3.i, %lor.rhs.i ]
  %type.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1, i32 3
  %11 = ptrtoint ptr %type.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp1.not.1 = icmp eq i8 %12, 1
  br i1 %cmp1.not.1, label %sb_zone_is_full.exit.cond.false_crit_edge, label %cond.end.1, !prof !153

sb_zone_is_full.exit.cond.false_crit_edge:        ; preds = %sb_zone_is_full.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.end.1:                                       ; preds = %sb_zone_is_full.exit
  %cond.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1, i32 4
  %13 = ptrtoint ptr %cond.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cond.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp6.1 = icmp eq i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %14)
  %cmp.i.1 = icmp eq i8 %14, 14
  br i1 %cmp.i.1, label %cond.end.1.sb_zone_is_full.exit.1_crit_edge, label %lor.rhs.i.1

cond.end.1.sb_zone_is_full.exit.1_crit_edge:      ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_is_full.exit.1

lor.rhs.i.1:                                      ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1
  %wp.i.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1, i32 2
  %15 = ptrtoint ptr %wp.i.1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %wp.i.1, align 8
  %add.i.1 = add i64 %16, 8
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.1, align 8
  %capacity.i.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1, i32 8
  %19 = ptrtoint ptr %capacity.i.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %capacity.i.1, align 8
  %add2.i.1 = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.1, i64 %add2.i.1)
  %cmp3.i.1 = icmp ugt i64 %add.i.1, %add2.i.1
  br label %sb_zone_is_full.exit.1

sb_zone_is_full.exit.1:                           ; preds = %lor.rhs.i.1, %cond.end.1.sb_zone_is_full.exit.1_crit_edge
  %21 = phi i1 [ true, %cond.end.1.sb_zone_is_full.exit.1_crit_edge ], [ %cmp3.i.1, %lor.rhs.i.1 ]
  br i1 %cmp6.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sb_zone_is_full.exit.1
  br i1 %cmp6.1, label %if.then, label %if.else.thread

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %zones to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %zones, align 8
  %shl = shl i64 %23, 9
  %24 = ptrtoint ptr %wp_ret to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl, ptr %wp_ret, align 8
  br label %cleanup105

if.else:                                          ; preds = %sb_zone_is_full.exit.1
  br i1 %10, label %land.lhs.true84, label %if.else.land.lhs.true22_crit_edge

if.else.land.lhs.true22_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

if.else.thread:                                   ; preds = %land.lhs.true
  br i1 %10, label %lor.lhs.false, label %if.else.thread.land.lhs.true22_crit_edge

if.else.thread.land.lhs.true22_crit_edge:         ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.else.thread.land.lhs.true22_crit_edge, %if.else.land.lhs.true22_crit_edge
  br i1 %21, label %if.then26, label %if.then96

if.then26:                                        ; preds = %land.lhs.true22
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 7
  %25 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_mapping, align 8
  %29 = ptrtoint ptr %zones to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %zones, align 8
  %len = getelementptr %struct.blk_zone, ptr %zones, i32 0, i32 1
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len, align 8
  %add = add i64 %32, %30
  %shl35 = shl i64 %add, 9
  %sub = add i64 %shl35, 17592186040320
  %shr = lshr i64 %sub, 12
  %conv36 = trunc i64 %shr to i32
  %call37 = tail call ptr @read_cache_page_gfp(ptr noundef %28, i32 noundef %conv36, i32 noundef 3136) #13
  %cmp.i140 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then26.cleanup75.thread_crit_edge, label %for.inc52

if.then26.cleanup75.thread_crit_edge:             ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup75.thread

if.then44:                                        ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_release_disk_super(ptr noundef %call50) #13
  br label %cleanup75.thread

cleanup75.thread:                                 ; preds = %if.then44, %if.then26.cleanup75.thread_crit_edge
  %call37.lcssa159 = phi ptr [ %call37.1, %if.then44 ], [ %call37, %if.then26.cleanup75.thread_crit_edge ]
  %33 = ptrtoint ptr %call37.lcssa159 to i32
  br label %cleanup105

for.inc52:                                        ; preds = %if.then26
  %call50 = tail call ptr @page_address(ptr noundef %call37) #13
  %arrayidx32.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1
  %34 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx32.1, align 8
  %len.1 = getelementptr %struct.blk_zone, ptr %zones, i32 1, i32 1
  %36 = ptrtoint ptr %len.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %len.1, align 8
  %add.1 = add i64 %37, %35
  %shl35.1 = shl i64 %add.1, 9
  %sub.1 = add i64 %shl35.1, 17592186040320
  %shr.1 = lshr i64 %sub.1, 12
  %conv36.1 = trunc i64 %shr.1 to i32
  %call37.1 = tail call ptr @read_cache_page_gfp(ptr noundef %28, i32 noundef %conv36.1, i32 noundef 3136) #13
  %cmp.i140.1 = icmp ugt ptr %call37.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140.1, label %if.then44, label %for.inc52.1

for.inc52.1:                                      ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #15
  %call50.1 = tail call ptr @page_address(ptr noundef %call37.1) #13
  %generation = getelementptr inbounds %struct.btrfs_super_block, ptr %call50, i32 0, i32 5
  %38 = ptrtoint ptr %generation to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %generation, align 1
  %generation57 = getelementptr inbounds %struct.btrfs_super_block, ptr %call50.1, i32 0, i32 5
  %40 = ptrtoint ptr %generation57 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %generation57, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp58 = icmp ugt i64 %39, %41
  %sector.0.in.idx = zext i1 %cmp58 to i32
  %sector.0.in = getelementptr %struct.blk_zone, ptr %zones, i32 %sector.0.in.idx
  %42 = ptrtoint ptr %sector.0.in to i32
  call void @__asan_load8_noabort(i32 %42)
  %sector.0 = load i64, ptr %sector.0.in, align 8
  tail call void @btrfs_release_disk_super(ptr noundef %call50) #13
  tail call void @btrfs_release_disk_super(ptr noundef %call50.1) #13
  br label %if.end103

land.lhs.true84:                                  ; preds = %if.else
  %brmerge = select i1 %cmp6.1, i1 true, i1 %21
  br i1 %brmerge, label %land.lhs.true84.if.then91_crit_edge, label %land.lhs.true84.cleanup105_crit_edge

land.lhs.true84.cleanup105_crit_edge:             ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

land.lhs.true84.if.then91_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then91

lor.lhs.false:                                    ; preds = %if.else.thread
  br i1 %21, label %lor.lhs.false.if.then91_crit_edge, label %lor.lhs.false.cleanup105_crit_edge

lor.lhs.false.cleanup105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

lor.lhs.false.if.then91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false.if.then91_crit_edge, %land.lhs.true84.if.then91_crit_edge
  %wp = getelementptr inbounds %struct.blk_zone, ptr %zones, i32 0, i32 2
  %43 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wp, align 8
  br label %if.end103

if.then96:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  %wp98 = getelementptr %struct.blk_zone, ptr %zones, i32 1, i32 2
  %45 = ptrtoint ptr %wp98 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wp98, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %if.then91, %for.inc52.1
  %sector.2 = phi i64 [ %sector.0, %for.inc52.1 ], [ %46, %if.then96 ], [ %44, %if.then91 ]
  %shl104 = shl i64 %sector.2, 9
  %47 = ptrtoint ptr %wp_ret to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl104, ptr %wp_ret, align 8
  br label %cleanup105

cleanup105:                                       ; preds = %if.end103, %lor.lhs.false.cleanup105_crit_edge, %land.lhs.true84.cleanup105_crit_edge, %cleanup75.thread, %if.then
  %retval.3 = phi i32 [ -2, %if.then ], [ 0, %if.end103 ], [ %33, %cleanup75.thread ], [ -117, %lor.lhs.false.cleanup105_crit_edge ], [ -117, %land.lhs.true84.cleanup105_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_destroy_dev_zone_info(ptr nocapture noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info1 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %active_zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_zones, align 8
  tail call void @bitmap_free(ptr noundef %3) #13
  %seq_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %seq_zones to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq_zones, align 8
  tail call void @bitmap_free(ptr noundef %5) #13
  %empty_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %empty_zones to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %empty_zones, align 4
  tail call void @bitmap_free(ptr noundef %7) #13
  %zone_cache = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %zone_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone_cache, align 4
  tail call void @vfree(ptr noundef %9) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  %10 = ptrtoint ptr %zone_info1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %zone_info1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_get_dev_zone(ptr noundef %device, i64 noundef %pos, ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  %nr_zones = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_zones) #13
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %nr_zones, align 4
  %call = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %device, i64 noundef %pos, ptr noundef %zone, ptr noundef nonnull %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %spec.select = phi i32 [ -5, %lor.lhs.false.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_zones) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_zoned_mode(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_devices1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %0 = ptrtoint ptr %fs_devices1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_devices1, align 8
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %2 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %incompat_flags.i.i, align 1
  %6 = and i64 %5, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.i = icmp ne i64 %6, 0
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %device.0140 = load ptr, ptr %devices, align 8
  %cmp.not141 = icmp eq ptr %device.0140, %devices
  br i1 %cmp.not141, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %device.0147 = phi ptr [ %device.0, %for.inc.for.body_crit_edge ], [ %device.0140, %entry.for.body_crit_edge ]
  %zoned_devices.0144 = phi i64 [ %zoned_devices.2.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %zone_size.0143 = phi i64 [ %zone_size.4.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nr_devices.0142 = phi i64 [ %nr_devices.1.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device.0147, i32 0, i32 7
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.land.lhs.true10_crit_edge, label %bdev_zoned_model.exit

if.end.land.lhs.true10_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10

bdev_zoned_model.exit:                            ; preds = %if.end
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 27
  %12 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zoned.i.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %13, label %bdev_zoned_model.exit.if.end25_crit_edge [
    i32 2, label %bdev_zoned_model.exit.if.then12_crit_edge
    i32 1, label %land.lhs.true
    i32 0, label %bdev_zoned_model.exit.land.lhs.true10_crit_edge
  ]

bdev_zoned_model.exit.land.lhs.true10_crit_edge:  ; preds = %bdev_zoned_model.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10

bdev_zoned_model.exit.if.then12_crit_edge:        ; preds = %bdev_zoned_model.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

bdev_zoned_model.exit.if.end25_crit_edge:         ; preds = %bdev_zoned_model.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %bdev_zoned_model.exit
  br i1 %tobool.i, label %land.lhs.true.if.then12_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

land.lhs.true10:                                  ; preds = %bdev_zoned_model.exit.land.lhs.true10_crit_edge, %if.end.land.lhs.true10_crit_edge
  br i1 %tobool.i, label %land.lhs.true10.if.then12_crit_edge, label %land.lhs.true10.if.end25_crit_edge

land.lhs.true10.if.end25_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true10.if.then12_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %land.lhs.true10.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge, %bdev_zoned_model.exit.if.then12_crit_edge
  %zone_info13 = getelementptr inbounds %struct.btrfs_device, ptr %device.0147, i32 0, i32 8
  %15 = ptrtoint ptr %zone_info13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zone_info13, align 4
  %inc = add i64 %zoned_devices.0144, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zone_size.0143)
  %tobool15.not = icmp eq i64 %zone_size.0143, 0
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  br i1 %tobool15.not, label %if.then12.if.end25_crit_edge, label %if.else

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %zone_size.0143)
  %cmp19.not = icmp eq i64 %18, %zone_size.0143
  br i1 %cmp19.not, label %if.else.if.end25_crit_edge, label %cleanup27

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.then12.if.end25_crit_edge, %land.lhs.true10.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %bdev_zoned_model.exit.if.end25_crit_edge
  %zone_size.3 = phi i64 [ %zone_size.0143, %land.lhs.true10.if.end25_crit_edge ], [ %zone_size.0143, %bdev_zoned_model.exit.if.end25_crit_edge ], [ %zone_size.0143, %land.lhs.true.if.end25_crit_edge ], [ %zone_size.0143, %if.else.if.end25_crit_edge ], [ %18, %if.then12.if.end25_crit_edge ]
  %zoned_devices.1 = phi i64 [ %zoned_devices.0144, %land.lhs.true10.if.end25_crit_edge ], [ %zoned_devices.0144, %bdev_zoned_model.exit.if.end25_crit_edge ], [ %zoned_devices.0144, %land.lhs.true.if.end25_crit_edge ], [ %inc, %if.else.if.end25_crit_edge ], [ %inc, %if.then12.if.end25_crit_edge ]
  %inc26 = add i64 %nr_devices.0142, 1
  br label %for.inc

cleanup27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.24, i64 noundef %18, i64 noundef %zone_size.0143) #18
  br label %cleanup64

for.inc:                                          ; preds = %if.end25, %for.body.for.inc_crit_edge
  %nr_devices.1.ph = phi i64 [ %nr_devices.0142, %for.body.for.inc_crit_edge ], [ %inc26, %if.end25 ]
  %zone_size.4.ph = phi i64 [ %zone_size.0143, %for.body.for.inc_crit_edge ], [ %zone_size.3, %if.end25 ]
  %zoned_devices.2.ph = phi i64 [ %zoned_devices.0144, %for.body.for.inc_crit_edge ], [ %zoned_devices.1, %if.end25 ]
  %19 = ptrtoint ptr %device.0147 to i32
  call void @__asan_load4_noabort(i32 %19)
  %device.0 = load ptr, ptr %device.0147, align 8
  %cmp.not = icmp eq ptr %device.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_devices.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %nr_devices.1.ph, %for.inc.for.end_crit_edge ]
  %zone_size.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %zone_size.4.ph, %for.inc.for.end_crit_edge ]
  %zoned_devices.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %zoned_devices.2.ph, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zoned_devices.0.lcssa)
  %tobool35.not = icmp eq i64 %zoned_devices.0.lcssa, 0
  %tobool35.not.not = xor i1 %tobool35.not, true
  %brmerge = select i1 %tobool35.not.not, i1 true, i1 %tobool.i
  br i1 %brmerge, label %if.end39, label %for.end.cleanup64_crit_edge

for.end.cleanup64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup64

if.end39:                                         ; preds = %for.end
  %20 = select i1 %tobool35.not, i1 %tobool.i, i1 false
  br i1 %20, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.25) #18
  br label %cleanup64

if.end44:                                         ; preds = %if.end39
  %brmerge113 = select i1 %tobool35.not, i1 true, i1 %tobool.i
  br i1 %brmerge113, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.26) #18
  br label %cleanup64

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_cmp8(i64 %zoned_devices.0.lcssa, i64 %nr_devices.0.lcssa)
  %cmp50.not = icmp eq i64 %zoned_devices.0.lcssa, %nr_devices.0.lcssa
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.27) #18
  br label %cleanup64

if.end52:                                         ; preds = %if.end49
  %and = and i64 %zone_size.0.lcssa, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp53 = icmp eq i64 %and, 0
  br i1 %cmp53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.28, i64 noundef %zone_size.0.lcssa, i32 noundef 65536) #18
  br label %cleanup64

if.end55:                                         ; preds = %if.end52
  %21 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i115 = getelementptr inbounds %struct.btrfs_super_block, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %incompat_flags.i.i115 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %incompat_flags.i.i115, align 1
  %25 = and i64 %24, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.i117.not = icmp eq i64 %25, 0
  br i1 %tobool.i117.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.29) #18
  br label %cleanup64

if.end58:                                         ; preds = %if.end55
  %26 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %zone_size.0.lcssa, ptr %26, align 8
  %28 = ptrtoint ptr %fs_devices1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fs_devices1, align 8
  %chunk_alloc_policy = getelementptr inbounds %struct.btrfs_fs_devices, ptr %29, i32 0, i32 24
  %30 = ptrtoint ptr %chunk_alloc_policy to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %chunk_alloc_policy, align 8
  %31 = load i64, ptr %26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp.i.not.i = icmp eq i64 %31, 0
  br i1 %cmp.i.not.i, label %if.end58.if.end63_crit_edge, label %if.end.i

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end.i:                                         ; preds = %if.end58
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %32 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mount_opt.i, align 8
  %and.i118 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %tobool.not.i119, label %if.end2.i, label %if.end.i.btrfs_check_mountopts_zoned.exit_crit_edge

if.end.i.btrfs_check_mountopts_zoned.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_check_mountopts_zoned.exit

if.end2.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end2.i.if.end63_crit_edge, label %if.end2.i.btrfs_check_mountopts_zoned.exit_crit_edge

if.end2.i.btrfs_check_mountopts_zoned.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_check_mountopts_zoned.exit

if.end2.i.if.end63_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

btrfs_check_mountopts_zoned.exit:                 ; preds = %if.end2.i.btrfs_check_mountopts_zoned.exit_crit_edge, %if.end.i.btrfs_check_mountopts_zoned.exit_crit_edge
  %.str.32.sink.i = phi ptr [ @.str.31, %if.end.i.btrfs_check_mountopts_zoned.exit_crit_edge ], [ @.str.32, %if.end2.i.btrfs_check_mountopts_zoned.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull %.str.32.sink.i) #18
  br label %cleanup64

if.end63:                                         ; preds = %if.end2.i.if.end63_crit_edge, %if.end58.if.end63_crit_edge
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.30, i64 noundef %zone_size.0.lcssa) #18
  br label %cleanup64

cleanup64:                                        ; preds = %if.end63, %btrfs_check_mountopts_zoned.exit, %if.then57, %if.then54, %if.then51, %if.then48, %if.then43, %for.end.cleanup64_crit_edge, %cleanup27
  %retval.0 = phi i32 [ -22, %cleanup27 ], [ -22, %if.then51 ], [ -22, %if.then57 ], [ -22, %btrfs_check_mountopts_zoned.exit ], [ 0, %if.end63 ], [ -22, %if.then54 ], [ -22, %if.then48 ], [ -22, %if.then43 ], [ 0, %for.end.cleanup64_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_mountopts_zoned(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 176
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i.not = icmp eq i64 %2, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 31
  %3 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mount_opt, align 8
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split

if.end2:                                          ; preds = %if.end
  %and4 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.return_crit_edge, label %if.end2.return.sink.split_crit_edge

if.end2.return.sink.split_crit_edge:              ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return.sink.split:                                ; preds = %if.end2.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge
  %.str.32.sink = phi ptr [ @.str.31, %if.end.return.sink.split_crit_edge ], [ @.str.32, %if.end2.return.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull %.str.32.sink) #18
  br label %return

return:                                           ; preds = %return.sink.split, %if.end2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end2.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sb_log_location_bdev(ptr noundef %bdev, i32 noundef %mirror, i32 noundef %rw, ptr nocapture noundef writeonly %bytenr_ret) local_unnamed_addr #0 align 64 {
entry:
  %zones = alloca [2 x %struct.blk_zone], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %zones) #13
  %0 = call ptr @memset(ptr %zones, i32 255, i32 128)
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %1 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %bdev_is_zoned.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

bdev_is_zoned.exit:                               ; preds = %entry
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 37, i32 27
  %3 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end, label %bdev_is_zoned.exit.if.then_crit_edge

bdev_is_zoned.exit.if.then_crit_edge:             ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %bdev_is_zoned.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mirror)
  %tobool.not.i64 = icmp eq i32 %mirror, 0
  %mul.i = mul i32 %mirror, 12
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl i64 16384, %sh_prom.i
  %retval.0.i65 = select i1 %tobool.not.i64, i64 65536, i64 %shl.i
  %5 = ptrtoint ptr %bytenr_ret to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %retval.0.i65, ptr %bytenr_ret, align 8
  br label %cleanup

if.end:                                           ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rw)
  %switch = icmp ult i32 %rw, 2
  br i1 %switch, label %if.then.i68, label %cond.false

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.33, i32 noundef 830) #17
  unreachable

if.then.i68:                                      ; preds = %if.end
  %6 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bdev_zone_sectors.exit, label %if.then.i68.cleanup_crit_edge

if.then.i68.cleanup_crit_edge:                    ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bdev_zone_sectors.exit:                           ; preds = %if.then.i68
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 37, i32 5
  %8 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunk_sectors.i.i, align 4
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #13, !range !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %cond.end16, label %bdev_zone_sectors.exit.cleanup_crit_edge

bdev_zone_sectors.exit.cleanup_crit_edge:         ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end16:                                       ; preds = %bdev_zone_sectors.exit
  %12 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #13, !range !157
  %sub.i = xor i32 %12, 31
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 1
  %13 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bd_nr_sectors.i, align 8
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %14, %sh_prom
  %conv21 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mirror)
  %cmp.i = icmp slt i32 %mirror, 3
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !prof !158

cond.false.i:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.68, i32 noundef 160) #20
  unreachable

cond.end.i:                                       ; preds = %cond.end16
  %15 = zext i32 %mirror to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %mirror, label %cond.end.i.cond.false15.i_crit_edge [
    i32 0, label %cond.end.i.sb_zone_number.exit_crit_edge
    i32 1, label %cond.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb3.i
  ]

cond.end.i.sw.epilog.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

cond.end.i.sb_zone_number.exit_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

cond.end.i.cond.false15.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sw.bb3.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %cond.end.i.sw.epilog.i_crit_edge
  %.pn.i = phi i32 [ 42, %sw.bb3.i ], [ 39, %cond.end.i.sw.epilog.i_crit_edge ]
  %add.neg = sub nuw nsw i32 -9, %sub.i
  %sh_prom5.pn.in.i = add nsw i32 %add.neg, %.pn.i
  %sh_prom5.pn.i = zext i32 %sh_prom5.pn.in.i to i64
  %zone.0.i = shl nuw i64 1, %sh_prom5.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i)
  %cmp7.i = icmp ult i32 %sh_prom5.pn.in.i, 32
  %extract.t.i = trunc i64 %zone.0.i to i32
  br i1 %cmp7.i, label %sw.epilog.i.sb_zone_number.exit_crit_edge, label %sw.epilog.i.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.cond.false15.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sw.epilog.i.sb_zone_number.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

cond.false15.i:                                   ; preds = %sw.epilog.i.cond.false15.i_crit_edge, %cond.end.i.cond.false15.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.69, i32 noundef 167) #20
  unreachable

sb_zone_number.exit:                              ; preds = %sw.epilog.i.sb_zone_number.exit_crit_edge, %cond.end.i.sb_zone_number.exit_crit_edge
  %zone.022.off0.i = phi i32 [ %extract.t.i, %sw.epilog.i.sb_zone_number.exit_crit_edge ], [ %mirror, %cond.end.i.sb_zone_number.exit_crit_edge ]
  %add24 = add i32 %zone.022.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %conv21)
  %cmp25.not = icmp ult i32 %add24, %conv21
  br i1 %cmp25.not, label %if.then.i.i72, label %sb_zone_number.exit.cleanup_crit_edge

sb_zone_number.exit.cleanup_crit_edge:            ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i72:                                    ; preds = %sb_zone_number.exit
  %16 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %if.end.i.i.i, label %if.end.i.i.thread.i

if.end.i.i.thread.i:                              ; preds = %if.then.i.i72
  call void @__sanitizer_cov_trace_pc() #15
  %conv15.i = zext i32 %zone.022.off0.i to i64
  br label %21

if.end.i.i.i:                                     ; preds = %if.then.i.i72
  %18 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_sectors.i.i, align 4
  %conv.i = zext i32 %zone.022.off0.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i5.i.i.i = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #13, !range !157
  %sub.i6.i.i.op.i = xor i32 %20, 31
  br i1 %tobool.not.i5.i.i.i, label %if.end.i.i.i._crit_edge, label %if.end.i.i.i.zone_start_sector.exit_crit_edge

if.end.i.i.i.zone_start_sector.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %zone_start_sector.exit

if.end.i.i.i._crit_edge:                          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %21

21:                                               ; preds = %if.end.i.i.i._crit_edge, %if.end.i.i.thread.i
  %conv19.i = phi i64 [ %conv15.i, %if.end.i.i.thread.i ], [ %conv.i, %if.end.i.i.i._crit_edge ]
  br label %zone_start_sector.exit

zone_start_sector.exit:                           ; preds = %21, %if.end.i.i.i.zone_start_sector.exit_crit_edge
  %conv18.i = phi i64 [ %conv19.i, %21 ], [ %conv.i, %if.end.i.i.i.zone_start_sector.exit_crit_edge ]
  %22 = phi i32 [ -1, %21 ], [ %sub.i6.i.i.op.i, %if.end.i.i.i.zone_start_sector.exit_crit_edge ]
  %sh_prom.i73 = zext i32 %22 to i64
  %shl.i74 = shl i64 %conv18.i, %sh_prom.i73
  %call30 = call i32 @blkdev_report_zones(ptr noundef %bdev, i64 noundef %shl.i74, i32 noundef 2, ptr noundef nonnull @copy_zone_info_cb, ptr noundef nonnull %zones) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %zone_start_sector.exit.cleanup_crit_edge, label %if.end34

zone_start_sector.exit.cleanup_crit_edge:         ; preds = %zone_start_sector.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %zone_start_sector.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30)
  %cmp35.not = icmp eq i32 %call30, 2
  br i1 %cmp35.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = call fastcc i32 @sb_log_location(ptr noundef %bdev, ptr noundef nonnull %zones, i32 noundef %rw, ptr noundef %bytenr_ret)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end34.cleanup_crit_edge, %zone_start_sector.exit.cleanup_crit_edge, %sb_zone_number.exit.cleanup_crit_edge, %bdev_zone_sectors.exit.cleanup_crit_edge, %if.then.i68.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call40, %if.end38 ], [ 0, %if.then ], [ -2, %sb_zone_number.exit.cleanup_crit_edge ], [ %call30, %zone_start_sector.exit.cleanup_crit_edge ], [ -5, %if.end34.cleanup_crit_edge ], [ -22, %bdev_zone_sectors.exit.cleanup_crit_edge ], [ -22, %if.then.i68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %zones) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @copy_zone_info_cb(ptr nocapture noundef readonly %zone, i32 noundef %idx, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.blk_zone, ptr %data, i32 %idx
  %0 = call ptr @memcpy(ptr %arrayidx, ptr %zone, i32 64)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sb_log_location(ptr noundef %bdev, ptr noundef %zones, i32 noundef %rw, ptr nocapture noundef writeonly %bytenr_ret) unnamed_addr #0 align 64 {
entry:
  %wp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wp) #13
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wp, align 8, !annotation !152
  %type = getelementptr inbounds %struct.blk_zone, ptr %zones, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %zones to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %zones, align 8
  %shl = shl i64 %4, 9
  br label %cleanup80.sink.split

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @sb_write_pointer(ptr noundef %bdev, ptr noundef %zones, ptr noundef nonnull %wp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp3.not = icmp ne i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  %5 = and i1 %cmp3.not, %cmp5
  br i1 %5, label %if.end.cleanup80_crit_edge, label %if.end8

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rw)
  %cmp9 = icmp eq i32 %rw, 1
  br i1 %cmp9, label %if.then11, label %if.else45

if.then11:                                        ; preds = %if.end8
  %6 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wp, align 8
  %8 = ptrtoint ptr %zones to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %zones, align 8
  %shl14 = shl i64 %9, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %shl14)
  %cmp15 = icmp eq i64 %7, %shl14
  br i1 %cmp15, label %if.then11.if.end27_crit_edge, label %if.else

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.else:                                          ; preds = %if.then11
  %arrayidx19 = getelementptr %struct.blk_zone, ptr %zones, i32 1
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx19, align 8
  %shl21 = shl i64 %11, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %shl21)
  %cmp22 = icmp eq i64 %7, %shl21
  br i1 %cmp22, label %if.else.if.end27_crit_edge, label %if.else.if.end79_crit_edge

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then11.if.end27_crit_edge
  %reset.0 = phi ptr [ %zones, %if.then11.if.end27_crit_edge ], [ %arrayidx19, %if.else.if.end27_crit_edge ]
  %tobool.not = icmp eq ptr %reset.0, null
  br i1 %tobool.not, label %if.end27.if.end79_crit_edge, label %land.lhs.true28

if.end27.if.end79_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true28:                                  ; preds = %if.end27
  %cond = getelementptr inbounds %struct.blk_zone, ptr %reset.0, i32 0, i32 4
  %12 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cond, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %13, label %sb_zone_is_full.exit [
    i8 1, label %land.lhs.true28.if.end79_crit_edge
    i8 14, label %land.lhs.true28.cond.end_crit_edge
  ]

land.lhs.true28.cond.end_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true28.if.end79_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

sb_zone_is_full.exit:                             ; preds = %land.lhs.true28
  %wp.i = getelementptr inbounds %struct.blk_zone, ptr %reset.0, i32 0, i32 2
  %15 = ptrtoint ptr %wp.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %wp.i, align 8
  %add.i = add i64 %16, 8
  %17 = ptrtoint ptr %reset.0 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %reset.0, align 8
  %capacity.i = getelementptr inbounds %struct.blk_zone, ptr %reset.0, i32 0, i32 8
  %19 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %capacity.i, align 8
  %add2.i = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add2.i)
  %cmp3.i = icmp ugt i64 %add.i, %add2.i
  br i1 %cmp3.i, label %sb_zone_is_full.exit.cond.end_crit_edge, label %cond.false, !prof !158

sb_zone_is_full.exit.cond.end_crit_edge:          ; preds = %sb_zone_is_full.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %sb_zone_is_full.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.71, i32 noundef 780) #17
  unreachable

cond.end:                                         ; preds = %sb_zone_is_full.exit.cond.end_crit_edge, %land.lhs.true28.cond.end_crit_edge
  %21 = ptrtoint ptr %reset.0 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %reset.0, align 8
  %len = getelementptr inbounds %struct.blk_zone, ptr %reset.0, i32 0, i32 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %len, align 8
  %call37 = tail call i32 @blkdev_zone_mgmt(ptr noundef %bdev, i32 noundef 15, i64 noundef %22, i64 noundef %24, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cond.end.cleanup80_crit_edge

cond.end.cleanup80_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end40:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %cond, align 1
  %26 = ptrtoint ptr %reset.0 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %reset.0, align 8
  %wp43 = getelementptr inbounds %struct.blk_zone, ptr %reset.0, i32 0, i32 2
  %28 = ptrtoint ptr %wp43 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %wp43, align 8
  br label %if.end79

if.else45:                                        ; preds = %if.end8
  br i1 %cmp3.not, label %if.then48, label %if.else45.if.end79_crit_edge

if.else45.if.end79_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then48:                                        ; preds = %if.else45
  %29 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %wp, align 8
  %31 = ptrtoint ptr %zones to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %zones, align 8
  %shl51 = shl i64 %32, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %shl51)
  %cmp52 = icmp eq i64 %30, %shl51
  %arrayidx55 = getelementptr %struct.blk_zone, ptr %zones, i32 1
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx55, align 8
  br i1 %cmp52, label %if.then48.if.end71_crit_edge, label %if.else58

if.then48.if.end71_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.else58:                                        ; preds = %if.then48
  %shl61 = shl i64 %34, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %shl61)
  %cmp62 = icmp eq i64 %30, %shl61
  br i1 %cmp62, label %if.else58.if.end71_crit_edge, label %if.else58.if.end76_crit_edge

if.else58.if.end76_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.else58.if.end71_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.end71:                                         ; preds = %if.else58.if.end71_crit_edge, %if.then48.if.end71_crit_edge
  %.sink = phi i32 [ 1, %if.then48.if.end71_crit_edge ], [ 0, %if.else58.if.end71_crit_edge ]
  %.sink117 = phi i64 [ %34, %if.then48.if.end71_crit_edge ], [ %32, %if.else58.if.end71_crit_edge ]
  %capacity68 = getelementptr %struct.blk_zone, ptr %zones, i32 %.sink, i32 8
  %35 = ptrtoint ptr %capacity68 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %capacity68, align 8
  %add69 = add i64 %36, %.sink117
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add69)
  %tobool72.not = icmp eq i64 %add69, 0
  br i1 %tobool72.not, label %if.end71.if.end76_crit_edge, label %if.then73

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %shl74 = shl i64 %add69, 9
  %and = and i64 %shl74, -4096
  %37 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %and, ptr %wp, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end71.if.end76_crit_edge, %if.else58.if.end76_crit_edge
  %38 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %wp, align 8
  %sub77 = add i64 %39, -4096
  store i64 %sub77, ptr %wp, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %if.else45.if.end79_crit_edge, %if.end40, %land.lhs.true28.if.end79_crit_edge, %if.end27.if.end79_crit_edge, %if.else.if.end79_crit_edge
  %40 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wp, align 8
  br label %cleanup80.sink.split

cleanup80.sink.split:                             ; preds = %if.end79, %if.then
  %.sink118 = phi i64 [ %41, %if.end79 ], [ %shl, %if.then ]
  %42 = ptrtoint ptr %bytenr_ret to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %.sink118, ptr %bytenr_ret, align 8
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup80.sink.split, %cond.end.cleanup80_crit_edge, %if.end.cleanup80_crit_edge
  %retval.1 = phi i32 [ %call, %if.end.cleanup80_crit_edge ], [ %call37, %cond.end.cleanup80_crit_edge ], [ 0, %cleanup80.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wp) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sb_log_location(ptr nocapture noundef readonly %device, i32 noundef %mirror, i32 noundef %rw, ptr nocapture noundef writeonly %bytenr_ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info, align 4
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %bdev_is_zoned.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

bdev_is_zoned.exit:                               ; preds = %entry
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 27
  %6 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end, label %bdev_is_zoned.exit.if.then_crit_edge

bdev_is_zoned.exit.if.then_crit_edge:             ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %bdev_is_zoned.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mirror)
  %tobool.not.i16 = icmp eq i32 %mirror, 0
  %mul.i = mul i32 %mirror, 12
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl i64 16384, %sh_prom.i
  %retval.0.i17 = select i1 %tobool.not.i16, i64 65536, i64 %shl.i
  %8 = ptrtoint ptr %bytenr_ret to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %retval.0.i17, ptr %bytenr_ret, align 8
  br label %cleanup

if.end:                                           ; preds = %bdev_is_zoned.exit
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %zone_size_shift, align 8
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mirror)
  %cmp.i = icmp slt i32 %mirror, 3
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !prof !158

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.68, i32 noundef 160) #20
  unreachable

cond.end.i:                                       ; preds = %if.end
  %11 = zext i32 %mirror to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %mirror, label %cond.end.i.cond.false15.i_crit_edge [
    i32 0, label %cond.end.i.sb_zone_number.exit_crit_edge
    i32 1, label %cond.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb3.i
  ]

cond.end.i.sw.epilog.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

cond.end.i.sb_zone_number.exit_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

cond.end.i.cond.false15.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sw.bb3.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %cond.end.i.sw.epilog.i_crit_edge
  %.pn.i = phi i32 [ 42, %sw.bb3.i ], [ 39, %cond.end.i.sw.epilog.i_crit_edge ]
  %sh_prom5.pn.in.i = sub nsw i32 %.pn.i, %conv
  %sh_prom5.pn.i = zext i32 %sh_prom5.pn.in.i to i64
  %zone.0.i = shl nuw i64 1, %sh_prom5.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i)
  %cmp7.i = icmp ult i32 %sh_prom5.pn.in.i, 32
  %extract.t.i = trunc i64 %zone.0.i to i32
  br i1 %cmp7.i, label %sw.epilog.i.sb_zone_number.exit_crit_edge, label %sw.epilog.i.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.cond.false15.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sw.epilog.i.sb_zone_number.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

cond.false15.i:                                   ; preds = %sw.epilog.i.cond.false15.i_crit_edge, %cond.end.i.cond.false15.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.69, i32 noundef 167) #20
  unreachable

sb_zone_number.exit:                              ; preds = %sw.epilog.i.sb_zone_number.exit_crit_edge, %cond.end.i.sb_zone_number.exit_crit_edge
  %zone.022.off0.i = phi i32 [ %extract.t.i, %sw.epilog.i.sb_zone_number.exit_crit_edge ], [ %mirror, %cond.end.i.sb_zone_number.exit_crit_edge ]
  %add = add i32 %zone.022.off0.i, 1
  %nr_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp.not = icmp ult i32 %add, %13
  br i1 %cmp.not, label %if.end5, label %sb_zone_number.exit.cleanup_crit_edge

sb_zone_number.exit.cleanup_crit_edge:            ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl nuw nsw i32 %mirror, 1
  %arrayidx = getelementptr %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 9, i32 %mul
  %call7 = tail call fastcc i32 @sb_log_location(ptr noundef %3, ptr noundef %arrayidx, i32 noundef %rw, ptr noundef %bytenr_ret)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %sb_zone_number.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %if.then ], [ -2, %sb_zone_number.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_advance_sb_log(ptr nocapture noundef readonly %device, i32 noundef %mirror) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup30_crit_edge, label %if.end.i

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup30

if.end.i:                                         ; preds = %entry
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zone_size_shift.i, align 8
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mirror)
  %cmp.i.i = icmp slt i32 %mirror, 3
  br i1 %cmp.i.i, label %cond.end.i.i, label %cond.false.i.i, !prof !158

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.68, i32 noundef 160) #20
  unreachable

cond.end.i.i:                                     ; preds = %if.end.i
  %4 = zext i32 %mirror to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %mirror, label %cond.end.i.i.cond.false15.i.i_crit_edge [
    i32 0, label %cond.end.i.i.sb_zone_number.exit.i_crit_edge
    i32 1, label %cond.end.i.i.sw.epilog.i.i_crit_edge
    i32 2, label %sw.bb3.i.i
  ]

cond.end.i.i.sw.epilog.i.i_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

cond.end.i.i.sb_zone_number.exit.i_crit_edge:     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit.i

cond.end.i.i.cond.false15.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i.i

sw.bb3.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %cond.end.i.i.sw.epilog.i.i_crit_edge
  %.pn.i.i = phi i32 [ 42, %sw.bb3.i.i ], [ 39, %cond.end.i.i.sw.epilog.i.i_crit_edge ]
  %sh_prom5.pn.in.i.i = sub nsw i32 %.pn.i.i, %conv.i
  %sh_prom5.pn.i.i = zext i32 %sh_prom5.pn.in.i.i to i64
  %zone.0.i.i = shl nuw i64 1, %sh_prom5.pn.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i.i)
  %cmp7.i.i = icmp ult i32 %sh_prom5.pn.in.i.i, 32
  %extract.t.i.i = trunc i64 %zone.0.i.i to i32
  br i1 %cmp7.i.i, label %sw.epilog.i.i.sb_zone_number.exit.i_crit_edge, label %sw.epilog.i.i.cond.false15.i.i_crit_edge, !prof !158

sw.epilog.i.i.cond.false15.i.i_crit_edge:         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i.i

sw.epilog.i.i.sb_zone_number.exit.i_crit_edge:    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit.i

cond.false15.i.i:                                 ; preds = %sw.epilog.i.i.cond.false15.i.i_crit_edge, %cond.end.i.i.cond.false15.i.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.69, i32 noundef 167) #20
  unreachable

sb_zone_number.exit.i:                            ; preds = %sw.epilog.i.i.sb_zone_number.exit.i_crit_edge, %cond.end.i.i.sb_zone_number.exit.i_crit_edge
  %zone.022.off0.i.i = phi i32 [ %extract.t.i.i, %sw.epilog.i.i.sb_zone_number.exit.i_crit_edge ], [ %mirror, %cond.end.i.i.sb_zone_number.exit.i_crit_edge ]
  %add.i = add i32 %zone.022.off0.i.i, 1
  %nr_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_zones.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %6)
  %cmp.not.i = icmp ult i32 %add.i, %6
  br i1 %cmp.not.i, label %is_sb_log_zone.exit, label %sb_zone_number.exit.i.cleanup30_crit_edge

sb_zone_number.exit.i.cleanup30_crit_edge:        ; preds = %sb_zone_number.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup30

is_sb_log_zone.exit:                              ; preds = %sb_zone_number.exit.i
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %zone.022.off0.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %8, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %zone.022.off0.i.i, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i.not = icmp eq i32 %12, 0
  br i1 %tobool5.not.i.not, label %is_sb_log_zone.exit.cleanup30_crit_edge, label %if.end

is_sb_log_zone.exit.cleanup30_crit_edge:          ; preds = %is_sb_log_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup30

if.end:                                           ; preds = %is_sb_log_zone.exit
  %mul = shl nuw nsw i32 %mirror, 1
  %arrayidx = getelementptr %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 9, i32 %mul
  %cond = getelementptr %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 9, i32 %mul, i32 4
  %13 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cond, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %14, label %if.end.if.end11_crit_edge [
    i8 14, label %if.then3
    i8 1, label %if.end.if.end11.thread_crit_edge
  ]

if.end.if.end11.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.thread

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %incdec.ptr = getelementptr %struct.blk_zone, ptr %arrayidx, i32 1
  %cond.1 = getelementptr %struct.blk_zone, ptr %arrayidx, i32 1, i32 4
  %16 = ptrtoint ptr %cond.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cond.1, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %17, label %if.then3.if.end11_crit_edge [
    i8 14, label %if.then3.1
    i8 1, label %if.then3.if.end11.thread_crit_edge
  ]

if.then3.if.end11.thread_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.thread

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then3.1:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.34, i32 noundef 946) #17
  unreachable

if.end11.thread:                                  ; preds = %if.then3.if.end11.thread_crit_edge, %if.end.if.end11.thread_crit_edge
  %zone.073.lcssa75 = phi ptr [ %arrayidx, %if.end.if.end11.thread_crit_edge ], [ %incdec.ptr, %if.then3.if.end11.thread_crit_edge ]
  %cond.le = getelementptr inbounds %struct.blk_zone, ptr %zone.073.lcssa75, i32 0, i32 4
  %19 = ptrtoint ptr %cond.le to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %cond.le, align 1
  %wp55 = getelementptr inbounds %struct.blk_zone, ptr %zone.073.lcssa75, i32 0, i32 2
  %20 = ptrtoint ptr %wp55 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wp55, align 8
  %add56 = add i64 %21, 8
  store i64 %add56, ptr %wp55, align 8
  br label %sb_zone_is_full.exit

if.end11:                                         ; preds = %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %zone.073.lcssa = phi ptr [ %arrayidx, %if.end.if.end11_crit_edge ], [ %incdec.ptr, %if.then3.if.end11_crit_edge ]
  %cond.le71 = getelementptr inbounds %struct.blk_zone, ptr %zone.073.lcssa, i32 0, i32 4
  %wp = getelementptr inbounds %struct.blk_zone, ptr %zone.073.lcssa, i32 0, i32 2
  %22 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wp, align 8
  %add = add i64 %23, 8
  store i64 %add, ptr %wp, align 8
  br label %sb_zone_is_full.exit

sb_zone_is_full.exit:                             ; preds = %if.end11, %if.end11.thread
  %zone.07377 = phi ptr [ %zone.073.lcssa75, %if.end11.thread ], [ %zone.073.lcssa, %if.end11 ]
  %cond70 = phi ptr [ %cond.le, %if.end11.thread ], [ %cond.le71, %if.end11 ]
  %add60 = phi i64 [ %add56, %if.end11.thread ], [ %add, %if.end11 ]
  %wp58 = phi ptr [ %wp55, %if.end11.thread ], [ %wp, %if.end11 ]
  %add.i53 = add i64 %add60, 8
  %24 = ptrtoint ptr %zone.07377 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %zone.07377, align 8
  %capacity.i = getelementptr inbounds %struct.blk_zone, ptr %zone.07377, i32 0, i32 8
  %26 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %capacity.i, align 8
  %add2.i = add i64 %27, %25
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i53, i64 %add2.i)
  %cmp3.i = icmp ugt i64 %add.i53, %add2.i
  br i1 %cmp3.i, label %if.then13, label %sb_zone_is_full.exit.cleanup30_crit_edge

sb_zone_is_full.exit.cleanup30_crit_edge:         ; preds = %sb_zone_is_full.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup30

if.then13:                                        ; preds = %sb_zone_is_full.exit
  %28 = ptrtoint ptr %zone.07377 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %zone.07377, align 8
  %30 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %capacity.i, align 8
  %add15 = add i64 %31, %29
  call void @__sanitizer_cov_trace_cmp8(i64 %add60, i64 %add15)
  %cmp16.not = icmp eq i64 %add60, %add15
  br i1 %cmp16.not, label %if.then13.if.end23_crit_edge, label %if.then18

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then18:                                        ; preds = %if.then13
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %32 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdev, align 8
  %len = getelementptr inbounds %struct.blk_zone, ptr %zone.07377, i32 0, i32 1
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %len, align 8
  %call20 = tail call i32 @blkdev_zone_mgmt(ptr noundef %33, i32 noundef 12, i64 noundef %29, i64 noundef %35, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.then18.if.end23_crit_edge, label %if.then18.cleanup30_crit_edge

if.then18.cleanup30_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup30

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.then13.if.end23_crit_edge
  %36 = ptrtoint ptr %zone.07377 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %zone.07377, align 8
  %len25 = getelementptr inbounds %struct.blk_zone, ptr %zone.07377, i32 0, i32 1
  %38 = ptrtoint ptr %len25 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %len25, align 8
  %add26 = add i64 %39, %37
  %40 = ptrtoint ptr %wp58 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add26, ptr %wp58, align 8
  %41 = ptrtoint ptr %cond70 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 14, ptr %cond70, align 1
  br label %cleanup30

cleanup30:                                        ; preds = %if.end23, %if.then18.cleanup30_crit_edge, %sb_zone_is_full.exit.cleanup30_crit_edge, %is_sb_log_zone.exit.cleanup30_crit_edge, %sb_zone_number.exit.i.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.1 = phi i32 [ %call20, %if.then18.cleanup30_crit_edge ], [ 0, %is_sb_log_zone.exit.cleanup30_crit_edge ], [ 0, %if.end23 ], [ 0, %sb_zone_is_full.exit.cleanup30_crit_edge ], [ 0, %entry.cleanup30_crit_edge ], [ 0, %sb_zone_number.exit.i.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_zone_mgmt(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_reset_sb_log_zones(ptr noundef %bdev, i32 noundef %mirror) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cond.end4_crit_edge, label %if.then.i

entry.cond.end4_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end4

if.then.i:                                        ; preds = %entry
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %2 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge

if.then.i.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %4 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %5, %cond.true.i.i ], [ 0, %if.then.i.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  br label %cond.end4

cond.end4:                                        ; preds = %blk_queue_zone_sectors.exit.i, %entry.cond.end4_crit_edge
  %retval.0.i = phi i64 [ %conv.i.i, %blk_queue_zone_sectors.exit.i ], [ 0, %entry.cond.end4_crit_edge ]
  %conv1.i.i = trunc i64 %retval.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #13, !range !157
  %sub.i6.i.i.op = xor i32 %6, 31
  %sub.i = select i1 %tobool.not.i5.i.i, i32 255, i32 %sub.i6.i.i.op
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 1
  %7 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bd_nr_sectors.i, align 8
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %8, %sh_prom
  %conv8 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mirror)
  %cmp.i = icmp slt i32 %mirror, 3
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !prof !158

cond.false.i:                                     ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.68, i32 noundef 160) #20
  unreachable

cond.end.i:                                       ; preds = %cond.end4
  %9 = zext i32 %mirror to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %mirror, label %cond.end.i.cond.false15.i_crit_edge [
    i32 0, label %cond.end.i.sb_zone_number.exit_crit_edge
    i32 1, label %cond.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb3.i
  ]

cond.end.i.sw.epilog.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

cond.end.i.sb_zone_number.exit_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

cond.end.i.cond.false15.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sw.bb3.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %cond.end.i.sw.epilog.i_crit_edge
  %.pn.i = phi i32 [ 42, %sw.bb3.i ], [ 39, %cond.end.i.sw.epilog.i_crit_edge ]
  %add.neg = sub nuw nsw i32 -9, %sub.i
  %sh_prom5.pn.in.i = add nsw i32 %add.neg, %.pn.i
  %sh_prom5.pn.i = zext i32 %sh_prom5.pn.in.i to i64
  %zone.0.i = shl nuw i64 1, %sh_prom5.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i)
  %cmp7.i = icmp ult i32 %sh_prom5.pn.in.i, 32
  %extract.t.i = trunc i64 %zone.0.i to i32
  br i1 %cmp7.i, label %sw.epilog.i.sb_zone_number.exit_crit_edge, label %sw.epilog.i.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.cond.false15.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sw.epilog.i.sb_zone_number.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

cond.false15.i:                                   ; preds = %sw.epilog.i.cond.false15.i_crit_edge, %cond.end.i.cond.false15.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.69, i32 noundef 167) #20
  unreachable

sb_zone_number.exit:                              ; preds = %sw.epilog.i.sb_zone_number.exit_crit_edge, %cond.end.i.sb_zone_number.exit_crit_edge
  %zone.022.off0.i = phi i32 [ %extract.t.i, %sw.epilog.i.sb_zone_number.exit_crit_edge ], [ %mirror, %cond.end.i.sb_zone_number.exit_crit_edge ]
  %add11 = add i32 %zone.022.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %conv8)
  %cmp12.not = icmp ult i32 %add11, %conv8
  br i1 %cmp12.not, label %if.end, label %sb_zone_number.exit.cleanup_crit_edge

sb_zone_number.exit.cleanup_crit_edge:            ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sb_zone_number.exit
  br i1 %tobool.not.i, label %if.end.if.end.i.i.thread.i_crit_edge, label %if.then.i.i31

if.end.if.end.i.i.thread.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.thread.i

if.then.i.i31:                                    ; preds = %if.end
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %10 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %if.end.i.i.i, label %if.then.i.i31.if.end.i.i.thread.i_crit_edge

if.then.i.i31.if.end.i.i.thread.i_crit_edge:      ; preds = %if.then.i.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.thread.i

if.end.i.i.thread.i:                              ; preds = %if.then.i.i31.if.end.i.i.thread.i_crit_edge, %if.end.if.end.i.i.thread.i_crit_edge
  %conv15.i = zext i32 %zone.022.off0.i to i64
  br label %15

if.end.i.i.i:                                     ; preds = %if.then.i.i31
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %12 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chunk_sectors.i.i.i, align 4
  %conv.i = zext i32 %zone.022.off0.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i5.i.i.i = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 true) #13, !range !157
  %sub.i6.i.i.op.i = xor i32 %14, 31
  br i1 %tobool.not.i5.i.i.i, label %if.end.i.i.i._crit_edge, label %if.end.i.i.i.zone_start_sector.exit_crit_edge

if.end.i.i.i.zone_start_sector.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %zone_start_sector.exit

if.end.i.i.i._crit_edge:                          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %15

15:                                               ; preds = %if.end.i.i.i._crit_edge, %if.end.i.i.thread.i
  %conv19.i = phi i64 [ %conv15.i, %if.end.i.i.thread.i ], [ %conv.i, %if.end.i.i.i._crit_edge ]
  br label %zone_start_sector.exit

zone_start_sector.exit:                           ; preds = %15, %if.end.i.i.i.zone_start_sector.exit_crit_edge
  %conv18.i = phi i64 [ %conv19.i, %15 ], [ %conv.i, %if.end.i.i.i.zone_start_sector.exit_crit_edge ]
  %16 = phi i32 [ -1, %15 ], [ %sub.i6.i.i.op.i, %if.end.i.i.i.zone_start_sector.exit_crit_edge ]
  %sh_prom.i = zext i32 %16 to i64
  %shl.i = shl i64 %conv18.i, %sh_prom.i
  %mul = shl nuw nsw i64 %retval.0.i, 1
  %call15 = tail call i32 @blkdev_zone_mgmt(ptr noundef %bdev, i32 noundef 15, i64 noundef %shl.i, i64 noundef %mul, i32 noundef 3136) #13
  br label %cleanup

cleanup:                                          ; preds = %zone_start_sector.exit, %sb_zone_number.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %zone_start_sector.exit ], [ -2, %sb_zone_number.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_find_allocatable_zones(ptr nocapture noundef readonly %device, i64 noundef %hole_start, i64 noundef %hole_end, i64 noundef %num_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info, align 4
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zone_size_shift, align 8
  %conv = zext i8 %3 to i32
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %num_bytes, %sh_prom
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %sub = add i64 %5, -1
  %and = and i64 %sub, %hole_start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.35, i32 noundef 994) #17
  unreachable

cond.end:                                         ; preds = %entry
  %and5 = and i64 %sub, %num_bytes
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %while.cond.preheader, label %cond.false15, !prof !158

while.cond.preheader:                             ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp8(i64 %hole_start, i64 %hole_end)
  %cmp17133 = icmp ult i64 %hole_start, %hole_end
  br i1 %cmp17133, label %while.body.lr.ph, label %while.cond.preheader.cleanup72_crit_edge

while.cond.preheader.cleanup72_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %nr_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 2
  %empty_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 6
  %sh_prom5.pn.in.i.1 = sub nsw i32 39, %conv
  %sh_prom5.pn.i.1 = zext i32 %sh_prom5.pn.in.i.1 to i64
  %zone.0.i.1 = shl nuw i64 1, %sh_prom5.pn.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i.1)
  %cmp7.i.1 = icmp ult i32 %sh_prom5.pn.in.i.1, 32
  %extract.t.i.1 = trunc i64 %zone.0.i.1 to i32
  %conv40.1 = and i64 %zone.0.i.1, 4294967295
  %add43.1 = add i32 %extract.t.i.1, 2
  %conv44.1 = zext i32 %add43.1 to i64
  %sh_prom5.pn.in.i.2 = sub nsw i32 42, %conv
  %sh_prom5.pn.i.2 = zext i32 %sh_prom5.pn.in.i.2 to i64
  %zone.0.i.2 = shl nuw i64 1, %sh_prom5.pn.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sh_prom5.pn.in.i.2)
  %cmp7.i.2 = icmp ult i32 %sh_prom5.pn.in.i.2, 32
  %extract.t.i.2 = trunc i64 %zone.0.i.2 to i32
  %conv40.2 = and i64 %zone.0.i.2, 4294967295
  %add43.2 = add i32 %extract.t.i.2, 2
  %conv44.2 = zext i32 %add43.2 to i64
  br label %while.body

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.36, i32 noundef 995) #17
  unreachable

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %pos.0134 = phi i64 [ %hole_start, %while.body.lr.ph ], [ %pos.0.be, %while.cond.backedge.while.body_crit_edge ]
  %shr21 = lshr i64 %pos.0134, %sh_prom
  %add = add i64 %shr21, %shr
  %6 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_zones, align 4
  %conv22 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv22)
  %cmp23 = icmp ugt i64 %add, %conv22
  br i1 %cmp23, label %while.body.cleanup72_crit_edge, label %if.end

while.body.cleanup72_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone_info, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.sb_zone_number.exit_crit_edge, label %btrfs_dev_is_sequential.exit

if.end.sb_zone_number.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

btrfs_dev_is_sequential.exit:                     ; preds = %if.end
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %11 to i64
  %shr.i = lshr i64 %pos.0134, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i, 31
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.i.not = icmp eq i32 %17, 0
  br i1 %tobool3.i.not, label %btrfs_dev_is_sequential.exit.sb_zone_number.exit_crit_edge, label %land.lhs.true

btrfs_dev_is_sequential.exit.sb_zone_number.exit_crit_edge: ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

land.lhs.true:                                    ; preds = %btrfs_dev_is_sequential.exit
  %18 = ptrtoint ptr %empty_zones to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %empty_zones, align 4
  %conv26 = trunc i64 %add to i32
  %conv27 = trunc i64 %shr21 to i32
  %call28 = tail call i32 @_find_next_zero_bit_be(ptr noundef %19, i32 noundef %conv26, i32 noundef %conv27) #13
  %conv29 = sext i32 %call28 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv29)
  %cmp30.not = icmp eq i64 %add, %conv29
  br i1 %cmp30.not, label %land.lhs.true.sb_zone_number.exit_crit_edge, label %if.then32

land.lhs.true.sb_zone_number.exit_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sb_zone_number.exit

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %1, align 8
  %add34 = add i64 %21, %pos.0134
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then59, %if.then47, %if.then32
  %pos.0.be = phi i64 [ %add34, %if.then32 ], [ %and66, %if.then59 ], [ %shl.i, %if.then47 ]
  %cmp17 = icmp ult i64 %pos.0.be, %hole_end
  br i1 %cmp17, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup72_crit_edge

while.cond.backedge.cleanup72_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cond.false15.i:                                   ; preds = %sw.epilog.i.2.cond.false15.i_crit_edge, %sw.epilog.i.1.cond.false15.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.69, i32 noundef 167) #20
  unreachable

sb_zone_number.exit:                              ; preds = %land.lhs.true.sb_zone_number.exit_crit_edge, %btrfs_dev_is_sequential.exit.sb_zone_number.exit_crit_edge, %if.end.sb_zone_number.exit_crit_edge
  %add52 = add i64 %pos.0134, %num_bytes
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp41.not.not = icmp ne i64 %add, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %shr21)
  %cmp45.not = icmp ult i64 %shr21, 2
  %or.cond142 = and i1 %cmp41.not.not, %cmp45.not
  br i1 %or.cond142, label %sb_zone_number.exit.if.then47_crit_edge, label %if.end50

sb_zone_number.exit.if.then47_crit_edge:          ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.then47:                                        ; preds = %sb_zone_number.exit.2.if.then47_crit_edge, %sb_zone_number.exit.1.if.then47_crit_edge, %sb_zone_number.exit.if.then47_crit_edge
  %conv44.lcssa = phi i64 [ 2, %sb_zone_number.exit.if.then47_crit_edge ], [ %conv44.1, %sb_zone_number.exit.1.if.then47_crit_edge ], [ %conv44.2, %sb_zone_number.exit.2.if.then47_crit_edge ]
  %22 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %zone_size_shift, align 8
  %sh_prom.i117 = zext i8 %23 to i64
  %shl.i = shl i64 %conv44.lcssa, %sh_prom.i117
  br label %while.cond.backedge

if.end50:                                         ; preds = %sb_zone_number.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %add52)
  %cmp53.not = icmp ugt i64 %add52, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 69632, i64 %pos.0134)
  %cmp57.not = icmp ult i64 %pos.0134, 69632
  %or.cond = and i1 %cmp53.not, %cmp57.not
  br i1 %or.cond, label %if.end50.if.then59_crit_edge, label %sw.epilog.i.1

if.end50.if.then59_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

if.then59:                                        ; preds = %if.end50.2.if.then59_crit_edge, %if.end50.1.if.then59_crit_edge, %if.end50.if.then59_crit_edge
  %retval.0.i121.lcssa = phi i64 [ 69631, %if.end50.if.then59_crit_edge ], [ 67112959, %if.end50.1.if.then59_crit_edge ], [ 274877911039, %if.end50.2.if.then59_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %1, align 8
  %add63 = add i64 %retval.0.i121.lcssa, %25
  %neg = sub i64 0, %25
  %and66 = and i64 %add63, %neg
  br label %while.cond.backedge

sw.epilog.i.1:                                    ; preds = %if.end50
  br i1 %cmp7.i.1, label %sb_zone_number.exit.1, label %sw.epilog.i.1.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.1.cond.false15.i_crit_edge:           ; preds = %sw.epilog.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sb_zone_number.exit.1:                            ; preds = %sw.epilog.i.1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv40.1)
  %cmp41.not.1 = icmp ugt i64 %add, %conv40.1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr21, i64 %conv44.1)
  %cmp45.not.1 = icmp ult i64 %shr21, %conv44.1
  %or.cond143 = select i1 %cmp41.not.1, i1 %cmp45.not.1, i1 false
  br i1 %or.cond143, label %sb_zone_number.exit.1.if.then47_crit_edge, label %if.end50.1

sb_zone_number.exit.1.if.then47_crit_edge:        ; preds = %sb_zone_number.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.end50.1:                                       ; preds = %sb_zone_number.exit.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108864, i64 %add52)
  %cmp53.not.1 = icmp ugt i64 %add52, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 67112960, i64 %pos.0134)
  %cmp57.not.1 = icmp ult i64 %pos.0134, 67112960
  %or.cond.1 = and i1 %cmp53.not.1, %cmp57.not.1
  br i1 %or.cond.1, label %if.end50.1.if.then59_crit_edge, label %sw.epilog.i.2

if.end50.1.if.then59_crit_edge:                   ; preds = %if.end50.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

sw.epilog.i.2:                                    ; preds = %if.end50.1
  br i1 %cmp7.i.2, label %sb_zone_number.exit.2, label %sw.epilog.i.2.cond.false15.i_crit_edge, !prof !158

sw.epilog.i.2.cond.false15.i_crit_edge:           ; preds = %sw.epilog.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false15.i

sb_zone_number.exit.2:                            ; preds = %sw.epilog.i.2
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv40.2)
  %cmp41.not.2 = icmp ugt i64 %add, %conv40.2
  call void @__sanitizer_cov_trace_cmp8(i64 %shr21, i64 %conv44.2)
  %cmp45.not.2 = icmp ult i64 %shr21, %conv44.2
  %or.cond144 = select i1 %cmp41.not.2, i1 %cmp45.not.2, i1 false
  br i1 %or.cond144, label %sb_zone_number.exit.2.if.then47_crit_edge, label %if.end50.2

sb_zone_number.exit.2.if.then47_crit_edge:        ; preds = %sb_zone_number.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.end50.2:                                       ; preds = %sb_zone_number.exit.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %add52)
  %cmp53.not.2 = icmp ugt i64 %add52, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877911040, i64 %pos.0134)
  %cmp57.not.2 = icmp ult i64 %pos.0134, 274877911040
  %or.cond.2 = and i1 %cmp53.not.2, %cmp57.not.2
  br i1 %or.cond.2, label %if.end50.2.if.then59_crit_edge, label %if.end50.2.cleanup72_crit_edge

if.end50.2.cleanup72_crit_edge:                   ; preds = %if.end50.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end50.2.if.then59_crit_edge:                   ; preds = %if.end50.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

cleanup72:                                        ; preds = %if.end50.2.cleanup72_crit_edge, %while.cond.backedge.cleanup72_crit_edge, %while.body.cleanup72_crit_edge, %while.cond.preheader.cleanup72_crit_edge
  %retval.0 = phi i64 [ %hole_start, %while.cond.preheader.cleanup72_crit_edge ], [ %hole_end, %while.body.cleanup72_crit_edge ], [ %pos.0.be, %while.cond.backedge.cleanup72_crit_edge ], [ %pos.0134, %if.end50.2.cleanup72_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_reset_device_zone(ptr nocapture noundef readonly %device, i64 noundef %physical, i64 noundef %length, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %bytes, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %1 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev, align 8
  %shr = lshr i64 %physical, 9
  %shr1 = lshr i64 %length, 9
  %call = tail call i32 @blkdev_zone_mgmt(ptr noundef %2, i32 noundef 15, i64 noundef %shr, i64 noundef %shr1, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %length, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool2.not17 = icmp eq i64 %length, 0
  br i1 %tobool2.not17, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %zone_info1.i.i = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %4 = ptrtoint ptr %zone_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %zone_info1.i.i, align 4
  br label %while.body

while.body:                                       ; preds = %btrfs_dev_clear_active_zone.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = phi ptr [ %.pr, %while.body.lr.ph ], [ %20, %btrfs_dev_clear_active_zone.exit.while.body_crit_edge ]
  %length.addr.020 = phi i64 [ %length, %while.body.lr.ph ], [ %sub, %btrfs_dev_clear_active_zone.exit.while.body_crit_edge ]
  %physical.addr.018 = phi i64 [ %physical, %while.body.lr.ph ], [ %add, %btrfs_dev_clear_active_zone.exit.while.body_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %while.body.btrfs_dev_set_zone_empty.exit_crit_edge, label %if.end.i.i

while.body.btrfs_dev_set_zone_empty.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_dev_set_zone_empty.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size_shift.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %zone_size_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zone_size_shift.i.i, align 8
  %sh_prom.i.i = zext i8 %7 to i64
  %shr.i.i = lshr i64 %physical.addr.018, %sh_prom.i.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %empty_zones.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %empty_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %empty_zones.i.i, align 4
  tail call void @_set_bit(i32 noundef %conv2.i.i, ptr noundef %9) #13
  br label %btrfs_dev_set_zone_empty.exit

btrfs_dev_set_zone_empty.exit:                    ; preds = %if.end.i.i, %while.body.btrfs_dev_set_zone_empty.exit_crit_edge
  %10 = ptrtoint ptr %zone_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone_info1.i.i, align 4
  %max_active_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %max_active_zones.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_active_zones.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %btrfs_dev_set_zone_empty.exit.btrfs_dev_clear_active_zone.exit_crit_edge, label %if.end.i

btrfs_dev_set_zone_empty.exit.btrfs_dev_clear_active_zone.exit_crit_edge: ; preds = %btrfs_dev_set_zone_empty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_dev_clear_active_zone.exit

if.end.i:                                         ; preds = %btrfs_dev_set_zone_empty.exit
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %15 to i64
  %shr.i = lshr i64 %physical.addr.018, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %active_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %active_zones.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active_zones.i, align 8
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %conv2.i, ptr noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.btrfs_dev_clear_active_zone.exit_crit_edge, label %if.then4.i

if.end.i.btrfs_dev_clear_active_zone.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_dev_clear_active_zone.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %active_zones_left.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %11, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_zones_left.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active_zones_left.i, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_zones_left.i, ptr %active_zones_left.i, i32 1, ptr elementtype(i32) %active_zones_left.i) #13, !srcloc !161
  br label %btrfs_dev_clear_active_zone.exit

btrfs_dev_clear_active_zone.exit:                 ; preds = %if.then4.i, %if.end.i.btrfs_dev_clear_active_zone.exit_crit_edge, %btrfs_dev_set_zone_empty.exit.btrfs_dev_clear_active_zone.exit_crit_edge
  %19 = ptrtoint ptr %zone_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zone_info1.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %add = add i64 %22, %physical.addr.018
  %sub = sub i64 %length.addr.020, %22
  %tobool2.not = icmp eq i64 %sub, 0
  br i1 %tobool2.not, label %btrfs_dev_clear_active_zone.exit.cleanup_crit_edge, label %btrfs_dev_clear_active_zone.exit.while.body_crit_edge

btrfs_dev_clear_active_zone.exit.while.body_crit_edge: ; preds = %btrfs_dev_clear_active_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

btrfs_dev_clear_active_zone.exit.cleanup_crit_edge: ; preds = %btrfs_dev_clear_active_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %btrfs_dev_clear_active_zone.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %btrfs_dev_clear_active_zone.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_dev_clear_active_zone(ptr nocapture noundef readonly %device, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info1 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info1, align 4
  %max_active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_active_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %zone_size_shift, align 8
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %pos, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %active_zones to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_zones, align 8
  %call = tail call i32 @_test_and_clear_bit(i32 noundef %conv2, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %active_zones_left = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_zones_left, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active_zones_left, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_zones_left, ptr %active_zones_left, i32 1, ptr elementtype(i32) %active_zones_left) #13, !srcloc !161
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_ensure_empty_zones(ptr noundef %device, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %reset_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info, align 4
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zone_size_shift, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %start, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %add = add i64 %size, %start
  %shr4 = lshr i64 %add, %sh_prom
  %conv5 = trunc i64 %shr4 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %sub = add i64 %5, -1
  %and = and i64 %sub, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.37, i32 noundef 1109) #17
  unreachable

cond.end:                                         ; preds = %entry
  %and10 = and i64 %sub, %size
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %cmp11 = icmp eq i64 %and10, 0
  br i1 %cmp11, label %cond.end21, label %cond.false20, !prof !158

cond.false20:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.38, i32 noundef 1110) #17
  unreachable

cond.end21:                                       ; preds = %cond.end
  %nr_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv5)
  %cmp22 = icmp ult i32 %7, %conv5
  br i1 %cmp22, label %cond.end21.cleanup117_crit_edge, label %if.end

cond.end21.cleanup117_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end:                                           ; preds = %cond.end21
  %seq_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %seq_zones to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq_zones, align 8
  %call = tail call i32 @_find_next_bit_be(ptr noundef %9, i32 noundef %conv1, i32 noundef %conv5) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv5)
  %cmp24 = icmp eq i32 %call, %conv5
  br i1 %cmp24, label %if.end.cleanup117_crit_edge, label %if.end27

if.end.cleanup117_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end27:                                         ; preds = %if.end
  %10 = ptrtoint ptr %seq_zones to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seq_zones, align 8
  %call29 = tail call i32 @_find_next_zero_bit_be(ptr noundef %11, i32 noundef %conv1, i32 noundef %conv5) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %conv5)
  %cmp30 = icmp eq i32 %call29, %conv5
  br i1 %cmp30, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end27
  %empty_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %empty_zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %empty_zones, align 4
  %call32 = tail call i32 @_find_next_zero_bit_be(ptr noundef %13, i32 noundef %conv1, i32 noundef %conv5) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %conv5)
  %cmp33 = icmp ne i32 %call32, %conv5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp38190 = icmp ugt i64 %add, %start
  %or.cond = and i1 %cmp33, %cmp38190
  br i1 %or.cond, label %land.lhs.true.for.body.lr.ph_crit_edge, label %land.lhs.true.cleanup117_crit_edge

land.lhs.true.cleanup117_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

land.lhs.true.for.body.lr.ph_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

if.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp38190.old = icmp ugt i64 %add, %start
  br i1 %cmp38190.old, label %if.end36.for.body.lr.ph_crit_edge, label %if.end36.cleanup117_crit_edge

if.end36.cleanup117_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end36.for.body.lr.ph_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end36.for.body.lr.ph_crit_edge, %land.lhs.true.for.body.lr.ph_crit_edge
  %fs_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 4
  %name = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 5
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0191 = phi i64 [ %start, %for.body.lr.ph ], [ %add116, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset_bytes) #13
  %14 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zone_info, align 4
  %tobool.not.i164 = icmp eq ptr %15, null
  br i1 %tobool.not.i164, label %for.body.for.inc_crit_edge, label %btrfs_dev_is_sequential.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

btrfs_dev_is_sequential.exit:                     ; preds = %for.body
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %17 to i64
  %shr.i = lshr i64 %pos.0191, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %19, i32 %div3.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i, 31
  %22 = shl nuw i32 1, %and.i.i
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.i.not = icmp eq i32 %23, 0
  br i1 %tobool3.i.not, label %btrfs_dev_is_sequential.exit.for.inc_crit_edge, label %btrfs_dev_is_empty_zone.exit

btrfs_dev_is_sequential.exit.for.inc_crit_edge:   ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

btrfs_dev_is_empty_zone.exit:                     ; preds = %btrfs_dev_is_sequential.exit
  %24 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i168 = zext i8 %25 to i64
  %shr.i169 = lshr i64 %pos.0191, %sh_prom.i168
  %conv2.i170 = trunc i64 %shr.i169 to i32
  %empty_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %15, i32 0, i32 6
  %26 = ptrtoint ptr %empty_zones.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %empty_zones.i, align 4
  %div3.i.i171 = lshr i32 %conv2.i170, 5
  %arrayidx.i.i172 = getelementptr i32, ptr %27, i32 %div3.i.i171
  %28 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i172, align 4
  %and.i.i173 = and i32 %conv2.i170, 31
  %30 = shl nuw i32 1, %and.i.i173
  %31 = and i32 %30, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.i174.not = icmp eq i32 %31, 0
  br i1 %tobool3.i174.not, label %do.body, label %btrfs_dev_is_empty_zone.exit.for.inc_crit_edge

btrfs_dev_is_empty_zone.exit.for.inc_crit_edge:   ; preds = %btrfs_dev_is_empty_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %btrfs_dev_is_empty_zone.exit
  %32 = tail call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %36 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fs_info, align 4
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %name, align 8
  %call47 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %rcu_read_lock.exit.do.end57_crit_edge

rcu_read_lock.exit.do.end57_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

land.lhs.true49:                                  ; preds = %rcu_read_lock.exit
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true49.do.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b163 = load i1, ptr @btrfs_ensure_empty_zones.__warned, align 1
  br i1 %.b163, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_ensure_empty_zones.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1135, ptr noundef nonnull @.str.4) #13
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true49.do.end57_crit_edge, %rcu_read_lock.exit.do.end57_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %devid, align 8
  %shr62 = lshr i64 %pos.0191, %sh_prom
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef %str, i64 noundef %41, i64 noundef %shr62) #18
  %call.i177 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i177, label %do.end57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i180

do.end57.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i180:                               ; preds = %do.end57
  %call1.i178 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178)
  %tobool.not.i179 = icmp eq i32 %call1.i178, 0
  br i1 %tobool.not.i179, label %land.lhs.true.i180.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i182

land.lhs.true.i180.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i182:                              ; preds = %land.lhs.true.i180
  %.b4.i181 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i181, label %land.lhs.true2.i182.rcu_read_unlock.exit_crit_edge, label %if.then.i183

land.lhs.true2.i182.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i183:                                     ; preds = %land.lhs.true2.i182
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 724, ptr noundef nonnull @.str.65) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i183, %land.lhs.true2.i182.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i180.rcu_read_unlock.exit_crit_edge, %do.end57.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !160
  %42 = tail call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i184 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i184 to ptr
  %preempt_count.i.i.i.i185 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i185, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i185, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %.b161162 = load i1, ptr @btrfs_ensure_empty_zones.__already_done, align 1
  br i1 %.b161162, label %rcu_read_unlock.exit.if.end102_crit_edge, label %if.then76, !prof !158

rcu_read_unlock.exit.if.end102_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then76:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_ensure_empty_zones.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1136, i32 noundef 9, ptr noundef null) #13
  br label %if.end102

if.end102:                                        ; preds = %if.then76, %rcu_read_unlock.exit.if.end102_crit_edge
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %1, align 8
  %call111 = call i32 @btrfs_reset_device_zone(ptr noundef %device, i64 noundef %pos.0191, i64 noundef %47, ptr noundef nonnull %reset_bytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end102.for.inc_crit_edge, label %cleanup

if.end102.for.inc_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cleanup:                                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset_bytes) #13
  br label %cleanup117

for.inc:                                          ; preds = %if.end102.for.inc_crit_edge, %btrfs_dev_is_empty_zone.exit.for.inc_crit_edge, %btrfs_dev_is_sequential.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset_bytes) #13
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %1, align 8
  %add116 = add i64 %49, %pos.0191
  %cmp38 = icmp ult i64 %add116, %add
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.cleanup117_crit_edge

for.inc.cleanup117_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup117:                                       ; preds = %for.inc.cleanup117_crit_edge, %cleanup, %if.end36.cleanup117_crit_edge, %land.lhs.true.cleanup117_crit_edge, %if.end.cleanup117_crit_edge, %cond.end21.cleanup117_crit_edge
  %retval.2 = phi i32 [ %call111, %cleanup ], [ -34, %cond.end21.cleanup117_crit_edge ], [ 0, %if.end.cleanup117_crit_edge ], [ 0, %land.lhs.true.cleanup117_crit_edge ], [ 0, %if.end36.cleanup117_crit_edge ], [ 0, %for.inc.cleanup117_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_load_block_group_zone_info(ptr noundef %cache, i1 noundef zeroext %new) local_unnamed_addr #0 align 64 {
entry:
  %nr_zones.i = alloca i32, align 4
  %last_alloc = alloca i64, align 8
  %zone = alloca %struct.blk_zone, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %length2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last_alloc) #13
  %6 = ptrtoint ptr %last_alloc to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %last_alloc, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.i.not = icmp eq i64 %9, 0
  br i1 %cmp.i.not, label %entry.cleanup251_crit_edge, label %if.end

entry.cleanup251_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup251

if.end:                                           ; preds = %entry
  %sub = add i64 %9, -1
  %and = and i64 %sub, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.40, i64 noundef %3, i64 noundef %5, i64 noundef %9) #18
  br label %cleanup251

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock) #13
  %call5 = tail call ptr @lookup_extent_mapping(ptr noundef %mapping_tree, i64 noundef %3, i64 noundef %5) #13
  tail call void @_raw_read_unlock(ptr noundef %lock) #13
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end4.cleanup251_crit_edge, label %if.end8

if.end4.cleanup251_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup251

if.end8:                                          ; preds = %if.end4
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call5, i32 0, i32 12
  %10 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_lookup, align 4
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_stripes, align 8
  %mul = mul i32 %13, 24
  %add = add i32 %mul, 40
  %call9 = tail call ptr @kmemdup(ptr noundef %11, i32 noundef %add, i32 noundef 3136) #13
  %physical_map = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 50
  %14 = ptrtoint ptr %physical_map to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %physical_map, align 8
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.out_crit_edge, label %if.end13

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_stripes, align 8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 8) #13
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end13.out_crit_edge, label %if.end7.i.i, !prof !153

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.i.i:                                      ; preds = %if.end13
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3392) #19
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.out_crit_edge, label %if.end18

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end18:                                         ; preds = %if.end7.i.i
  %20 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_stripes, align 8
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 8) #13
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %if.end18.out_crit_edge, label %if.end7.i.i449, !prof !153

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.i.i449:                                   ; preds = %if.end18
  %24 = extractvalue { i32, i1 } %22, 0
  %call8.i.i448 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3392) #19
  %tobool21.not = icmp eq ptr %call8.i.i448, null
  br i1 %tobool21.not, label %if.end7.i.i449.out_crit_edge, label %if.end23

if.end7.i.i449.out_crit_edge:                     ; preds = %if.end7.i.i449
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end23:                                         ; preds = %if.end7.i.i449
  %25 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_stripes, align 8
  %call25 = tail call ptr @bitmap_zalloc(i32 noundef %26, i32 noundef 3136) #13
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.out_crit_edge, label %for.cond.preheader

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %if.end23
  %27 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp30534 = icmp sgt i32 %28, 0
  br i1 %cmp30534, label %for.body.lr.ph, label %for.cond.preheader.if.end188_crit_edge

for.cond.preheader.if.end188_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end188

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_replace31 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154
  %rwsem = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 15
  %tgtdev = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 13
  %type = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %capacity = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 8
  %cond = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %wp = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num_conventional.0541 = phi i32 [ 0, %for.body.lr.ph ], [ %num_conventional.2.ph, %for.inc.for.body_crit_edge ]
  %num_sequential.0540 = phi i32 [ 0, %for.body.lr.ph ], [ %num_sequential.2.ph, %for.inc.for.body_crit_edge ]
  %i.0536 = phi i32 [ 0, %for.body.lr.ph ], [ %inc162, %for.inc.for.body_crit_edge ]
  %ret.0535 = phi i32 [ -1, %for.body.lr.ph ], [ %ret.1.ph, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %zone) #13
  %29 = call ptr @memset(ptr %zone, i32 255, i32 64)
  %arrayidx = getelementptr %struct.map_lookup, ptr %11, i32 0, i32 7, i32 %i.0536
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 8
  %physical34 = getelementptr %struct.map_lookup, ptr %11, i32 0, i32 7, i32 %i.0536, i32 1
  %32 = ptrtoint ptr %physical34 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %physical34, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 7
  %34 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdev, align 8
  %cmp35 = icmp eq ptr %35, null
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx37 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %arrayidx37, align 8
  br label %for.inc

if.end38:                                         ; preds = %for.body
  %zone_info1.i = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 8
  %37 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %zone_info1.i, align 4
  %tobool.not.i452 = icmp eq ptr %38, null
  br i1 %tobool.not.i452, label %if.end38.if.then46_crit_edge, label %btrfs_dev_is_sequential.exit

if.end38.if.then46_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

btrfs_dev_is_sequential.exit:                     ; preds = %if.end38
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %40 to i64
  %shr.i = lshr i64 %33, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %38, i32 0, i32 5
  %41 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %42, i32 %div3.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i, 31
  %45 = shl nuw i32 1, %and.i.i
  %46 = and i32 %45, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.i.not = icmp eq i32 %46, 0
  %inc = add i32 %num_sequential.0540, 1
  br i1 %tobool3.i.not, label %btrfs_dev_is_sequential.exit.if.then46_crit_edge, label %btrfs_dev_clear_zone_empty.exit

btrfs_dev_is_sequential.exit.if.then46_crit_edge: ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then46:                                        ; preds = %btrfs_dev_is_sequential.exit.if.then46_crit_edge, %if.end38.if.then46_crit_edge
  %inc43491.ph = add i32 %num_conventional.0541, 1
  %arrayidx47 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %47 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 -2, ptr %arrayidx47, align 8
  br label %for.inc

btrfs_dev_clear_zone_empty.exit:                  ; preds = %btrfs_dev_is_sequential.exit
  %48 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i.i = zext i8 %49 to i64
  %shr.i.i = lshr i64 %33, %sh_prom.i.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %empty_zones.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %38, i32 0, i32 6
  %50 = ptrtoint ptr %empty_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %empty_zones.i.i, align 4
  call void @_clear_bit(i32 noundef %conv2.i.i, ptr noundef %51) #13
  call void @down_read(ptr noundef %rwsem) #13
  %call49 = call i32 @btrfs_dev_replace_is_ongoing(ptr noundef %dev_replace31) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %btrfs_dev_clear_zone_empty.exit.if.end54_crit_edge, label %land.lhs.true

btrfs_dev_clear_zone_empty.exit.if.end54_crit_edge: ; preds = %btrfs_dev_clear_zone_empty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

land.lhs.true:                                    ; preds = %btrfs_dev_clear_zone_empty.exit
  %52 = ptrtoint ptr %tgtdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tgtdev, align 4
  %cmp51.not = icmp eq ptr %53, null
  br i1 %cmp51.not, label %land.lhs.true.if.end54_crit_edge, label %if.then52

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true
  %zone_info1.i.i454 = getelementptr inbounds %struct.btrfs_device, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %zone_info1.i.i454 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %zone_info1.i.i454, align 4
  %tobool.not.i.i455 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i455, label %if.then52.if.end54_crit_edge, label %if.end.i.i461

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.end.i.i461:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %zone_size_shift.i.i456 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %zone_size_shift.i.i456 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %zone_size_shift.i.i456, align 8
  %sh_prom.i.i457 = zext i8 %57 to i64
  %shr.i.i458 = lshr i64 %33, %sh_prom.i.i457
  %conv2.i.i459 = trunc i64 %shr.i.i458 to i32
  %empty_zones.i.i460 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %55, i32 0, i32 6
  %58 = ptrtoint ptr %empty_zones.i.i460 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %empty_zones.i.i460, align 4
  call void @_clear_bit(i32 noundef %conv2.i.i459, ptr noundef %59) #13
  br label %if.end54

if.end54:                                         ; preds = %if.end.i.i461, %if.then52.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %btrfs_dev_clear_zone_empty.exit.if.end54_crit_edge
  call void @up_read(ptr noundef %rwsem) #13
  %60 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %7, align 8
  %sub56 = add i64 %61, -1
  %and57 = and i64 %sub56, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %cmp58.not = icmp eq i64 %and57, 0
  br i1 %cmp58.not, label %if.end54.if.end74_crit_edge, label %do.end, !prof !158

if.end54.if.end74_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

do.end:                                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1314, i32 noundef 9, ptr noundef null) #13
  br label %if.end74

if.end74:                                         ; preds = %do.end, %if.end54.if.end74_crit_edge
  %62 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i463 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i463 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %67, 262144
  %or.i464 = or i32 %67, 262144
  store i32 %or.i464, ptr %flags1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_zones.i) #13
  %68 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %nr_zones.i, align 4
  %call.i465 = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %31, i64 noundef %33, ptr noundef nonnull %zone, ptr noundef nonnull %nr_zones.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i465)
  %cmp.not.i = icmp eq i32 %call.i465, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %btrfs_get_dev_zone.exit

lor.lhs.false.i:                                  ; preds = %if.end74
  %69 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_zones.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i466 = icmp eq i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_zones.i) #13
  %71 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i469505 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i469505 to ptr
  %task.i470506 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i470506 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i470506, align 8
  %flags1.i471507 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %flags1.i471507 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags1.i471507, align 4
  %and.i472508 = and i32 %76, -262145
  %or.i473509 = or i32 %and.i472508, %and.i
  store i32 %or.i473509, ptr %flags1.i471507, align 4
  br i1 %tobool.not.i466, label %lor.lhs.false.i.if.then85_crit_edge, label %btrfs_get_dev_zone.exit.thread

lor.lhs.false.i.if.then85_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

btrfs_get_dev_zone.exit.thread:                   ; preds = %lor.lhs.false.i
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp92 = icmp eq i8 %78, 1
  br i1 %cmp92, label %do.body95, label %if.end117

btrfs_get_dev_zone.exit:                          ; preds = %if.end74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_zones.i) #13
  %79 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i469 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i469 to ptr
  %task.i470 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i470 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i470, align 8
  %flags1.i471 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %flags1.i471 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags1.i471, align 4
  %and.i472 = and i32 %84, -262145
  %or.i473 = or i32 %and.i472, %and.i
  store i32 %or.i473, ptr %flags1.i471, align 4
  %85 = zext i32 %call.i465 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i465, label %btrfs_get_dev_zone.exit.cleanup_crit_edge [
    i32 -5, label %btrfs_get_dev_zone.exit.if.then85_crit_edge
    i32 -95, label %btrfs_get_dev_zone.exit.if.then85_crit_edge613
  ]

btrfs_get_dev_zone.exit.if.then85_crit_edge613:   ; preds = %btrfs_get_dev_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

btrfs_get_dev_zone.exit.if.then85_crit_edge:      ; preds = %btrfs_get_dev_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

btrfs_get_dev_zone.exit.cleanup_crit_edge:        ; preds = %btrfs_get_dev_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then85:                                        ; preds = %btrfs_get_dev_zone.exit.if.then85_crit_edge, %btrfs_get_dev_zone.exit.if.then85_crit_edge613, %lor.lhs.false.i.if.then85_crit_edge
  %arrayidx86 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %86 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 -1, ptr %arrayidx86, align 8
  br label %for.inc

do.body95:                                        ; preds = %btrfs_get_dev_zone.exit.thread
  %87 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %90, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !156
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %do.body95.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body95.rcu_read_lock.exit_crit_edge:           ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body95
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body95.rcu_read_lock.exit_crit_edge
  %91 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %zone, align 8
  %shl = shl i64 %92, 9
  %name = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 5
  %93 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %name, align 8
  %call102 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %rcu_read_lock.exit.do.end112_crit_edge

rcu_read_lock.exit.do.end112_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112

land.lhs.true104:                                 ; preds = %rcu_read_lock.exit
  %call105 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.lhs.true104.do.end112_crit_edge, label %land.lhs.true107

land.lhs.true104.do.end112_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112

land.lhs.true107:                                 ; preds = %land.lhs.true104
  %.b410 = load i1, ptr @btrfs_load_block_group_zone_info.__warned, align 1
  br i1 %.b410, label %land.lhs.true107.do.end112_crit_edge, label %if.then109

land.lhs.true107.do.end112_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112

if.then109:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_load_block_group_zone_info.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1330, ptr noundef nonnull @.str.4) #13
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %land.lhs.true107.do.end112_crit_edge, %land.lhs.true104.do.end112_crit_edge, %rcu_read_lock.exit.do.end112_crit_edge
  %str = getelementptr inbounds %struct.rcu_string, ptr %94, i32 0, i32 1
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 13
  %95 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %devid, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.41, i64 noundef %shl, ptr noundef %str, i64 noundef %96) #18
  call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end117:                                        ; preds = %btrfs_get_dev_zone.exit.thread
  %97 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %capacity, align 8
  %shl118 = shl i64 %98, 9
  %arrayidx119 = getelementptr i64, ptr %call8.i.i448, i32 %i.0536
  %99 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %shl118, ptr %arrayidx119, align 8
  %100 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cond, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %101, label %sw.default [
    i8 15, label %if.end117.sw.bb_crit_edge
    i8 13, label %if.end117.sw.bb_crit_edge614
    i8 1, label %sw.bb146
    i8 14, label %sw.bb148
  ]

if.end117.sw.bb_crit_edge614:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end117.sw.bb_crit_edge:                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end117.sw.bb_crit_edge, %if.end117.sw.bb_crit_edge614
  %103 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %zone_info1.i, align 4
  %zone_size_shift = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %zone_size_shift to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %zone_size_shift, align 8
  %sh_prom = zext i8 %106 to i64
  %shr = lshr i64 %33, %sh_prom
  %name127 = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 5
  %107 = ptrtoint ptr %name127 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %name127, align 8
  %call129 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %land.lhs.true131, label %sw.bb.do.end139_crit_edge

sw.bb.do.end139_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

land.lhs.true131:                                 ; preds = %sw.bb
  %call132 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %land.lhs.true131.do.end139_crit_edge, label %land.lhs.true134

land.lhs.true131.do.end139_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

land.lhs.true134:                                 ; preds = %land.lhs.true131
  %.b408409 = load i1, ptr @btrfs_load_block_group_zone_info.__warned.43, align 1
  br i1 %.b408409, label %land.lhs.true134.do.end139_crit_edge, label %if.then136

land.lhs.true134.do.end139_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

if.then136:                                       ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @btrfs_load_block_group_zone_info.__warned.43, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1343, ptr noundef nonnull @.str.4) #13
  br label %do.end139

do.end139:                                        ; preds = %if.then136, %land.lhs.true134.do.end139_crit_edge, %land.lhs.true131.do.end139_crit_edge, %sw.bb.do.end139_crit_edge
  %str142 = getelementptr inbounds %struct.rcu_string, ptr %108, i32 0, i32 1
  %devid144 = getelementptr inbounds %struct.btrfs_device, ptr %31, i32 0, i32 13
  %109 = ptrtoint ptr %devid144 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %devid144, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.42, i64 noundef %shr, ptr noundef %str142, i64 noundef %110) #18
  %arrayidx145 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %111 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 -1, ptr %arrayidx145, align 8
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx147 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %112 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 0, ptr %arrayidx147, align 8
  br label %sw.epilog

sw.bb148:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx150 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %113 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %shl118, ptr %arrayidx150, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %wp, align 8
  %116 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %zone, align 8
  %sub152 = sub i64 %115, %117
  %shl153 = shl i64 %sub152, 9
  %arrayidx154 = getelementptr i64, ptr %call8.i.i, i32 %i.0536
  %118 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %shl153, ptr %arrayidx154, align 8
  %rem.i = and i32 %i.0536, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %i.0536, 5
  %add.ptr.i = getelementptr i32, ptr %call25, i32 %div2.i
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %120, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb148, %sw.bb146, %do.end139
  %121 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %zone_info1.i, align 4
  %max_active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_active_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool156.not = icmp eq i32 %124, 0
  br i1 %tobool156.not, label %if.then157, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then157:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %rem.i411 = and i32 %i.0536, 31
  %shl.i412 = shl nuw i32 1, %rem.i411
  %div2.i413 = lshr i32 %i.0536, 5
  %add.ptr.i414 = getelementptr i32, ptr %call25, i32 %div2.i413
  %125 = ptrtoint ptr %add.ptr.i414 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i414, align 4
  %or.i415 = or i32 %126, %shl.i412
  store i32 %or.i415, ptr %add.ptr.i414, align 4
  br label %for.inc

cleanup:                                          ; preds = %do.end112, %btrfs_get_dev_zone.exit.cleanup_crit_edge
  %ret.1 = phi i32 [ -5, %do.end112 ], [ %call.i465, %btrfs_get_dev_zone.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zone) #13
  br label %out

for.inc:                                          ; preds = %if.then157, %sw.epilog.for.inc_crit_edge, %if.then85, %if.then46, %if.then36
  %ret.1.ph = phi i32 [ 0, %sw.epilog.for.inc_crit_edge ], [ 0, %if.then157 ], [ %ret.0535, %if.then46 ], [ 0, %if.then85 ], [ %ret.0535, %if.then36 ]
  %num_sequential.2.ph = phi i32 [ %inc, %sw.epilog.for.inc_crit_edge ], [ %inc, %if.then157 ], [ %num_sequential.0540, %if.then46 ], [ %inc, %if.then85 ], [ %num_sequential.0540, %if.then36 ]
  %num_conventional.2.ph = phi i32 [ %num_conventional.0541, %sw.epilog.for.inc_crit_edge ], [ %num_conventional.0541, %if.then157 ], [ %inc43491.ph, %if.then46 ], [ %num_conventional.0541, %if.then85 ], [ %num_conventional.0541, %if.then36 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zone) #13
  %inc162 = add nuw nsw i32 %i.0536, 1
  %127 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_stripes, align 8
  %cmp30 = icmp slt i32 %inc162, %128
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sequential.2.ph)
  %cmp163.not = icmp eq i32 %num_sequential.2.ph, 0
  br i1 %cmp163.not, label %for.end.if.end166_crit_edge, label %if.then165

for.end.if.end166_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end166

if.then165:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %seq_zone = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 43
  %129 = ptrtoint ptr %seq_zone to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %seq_zone, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %for.end.if.end166_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conventional.2.ph)
  %cmp167.not = icmp eq i32 %num_conventional.2.ph, 0
  br i1 %cmp167.not, label %if.end166.if.end188_crit_edge, label %if.then169

if.end166.if.end188_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end188

if.then169:                                       ; preds = %if.end166
  %130 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %length2, align 8
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 48
  %132 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %zone_capacity, align 8
  br i1 %new, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #15
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 46
  %133 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 0, ptr %alloc_offset, align 8
  br label %out

if.end173:                                        ; preds = %if.then169
  %call174 = call fastcc i32 @calculate_alloc_pointer(ptr noundef %cache, ptr noundef nonnull %last_alloc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %lor.lhs.false176, label %if.else184

lor.lhs.false176:                                 ; preds = %if.end173
  %134 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %num_conventional.2.ph)
  %cmp178 = icmp eq i32 %135, %num_conventional.2.ph
  br i1 %cmp178, label %if.then182.critedge, label %lor.lhs.false176.if.end188_crit_edge

lor.lhs.false176.if.end188_crit_edge:             ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end188

if.then182.critedge:                              ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #15
  %136 = ptrtoint ptr %last_alloc to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %last_alloc, align 8
  %alloc_offset183 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 46
  %138 = ptrtoint ptr %alloc_offset183 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %alloc_offset183, align 8
  br label %out

if.else184:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %start, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.44, i64 noundef %140) #18
  br label %out

if.end188:                                        ; preds = %lor.lhs.false176.if.end188_crit_edge, %if.end166.if.end188_crit_edge, %for.cond.preheader.if.end188_crit_edge
  %physical.0.lcssa561569 = phi i64 [ %33, %lor.lhs.false176.if.end188_crit_edge ], [ %33, %if.end166.if.end188_crit_edge ], [ 0, %for.cond.preheader.if.end188_crit_edge ]
  %num_conventional.0.lcssa563568 = phi i32 [ %num_conventional.2.ph, %lor.lhs.false176.if.end188_crit_edge ], [ 0, %if.end166.if.end188_crit_edge ], [ 0, %for.cond.preheader.if.end188_crit_edge ]
  %ret.2 = phi i32 [ 0, %lor.lhs.false176.if.end188_crit_edge ], [ %ret.1.ph, %if.end166.if.end188_crit_edge ], [ -1, %for.cond.preheader.if.end188_crit_edge ]
  %141 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %11, align 8
  %and190 = and i64 %142, 2040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and190)
  %cond268 = icmp eq i64 %and190, 0
  br i1 %cond268, label %sw.bb191, label %sw.default203

sw.bb191:                                         ; preds = %if.end188
  %143 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %call8.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %144)
  %cmp193 = icmp eq i64 %144, -1
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.45, i64 noundef %physical.0.lcssa561569) #18
  br label %out

if.end196:                                        ; preds = %sw.bb191
  %alloc_offset198 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 46
  %145 = ptrtoint ptr %alloc_offset198 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %alloc_offset198, align 8
  %146 = ptrtoint ptr %call8.i.i448 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %call8.i.i448, align 128
  %zone_capacity200 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 48
  %148 = ptrtoint ptr %zone_capacity200 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %zone_capacity200, align 8
  %149 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %call25, align 4
  %and1.i = and i32 %150, 1
  %zone_is_active = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 17
  %151 = trunc i32 %and1.i to i8
  %152 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load = load i8, ptr %zone_is_active, align 8
  %bf.value = shl nuw nsw i8 %151, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %zone_is_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool210.not = icmp eq i32 %and1.i, 0
  br i1 %tobool210.not, label %if.end196.out_crit_edge, label %if.then211

if.end196.out_crit_edge:                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.default203:                                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #15
  %call205 = call ptr @btrfs_bg_type_to_raid_name(i64 noundef %142) #13
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %call205) #18
  br label %out

if.then211:                                       ; preds = %if.end196
  call void @btrfs_get_block_group(ptr noundef %cache) #13
  %zone_active_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 182
  call void @_raw_spin_lock(ptr noundef %zone_active_bgs_lock) #13
  %active_bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 51
  %zone_active_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 183
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 183, i32 1
  %153 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %active_bg_list, ptr noundef %154, ptr noundef %zone_active_bgs) #13
  br i1 %call.i.i, label %if.end.i.i474, label %if.then211.list_add_tail.exit_crit_edge

if.then211.list_add_tail.exit_crit_edge:          ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i474:                                    ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %active_bg_list, ptr %prev.i, align 4
  %156 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %zone_active_bgs, ptr %active_bg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 51, i32 1
  %157 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %154, ptr %prev3.i.i, align 4
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %active_bg_list, ptr %154, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i474, %if.then211.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %zone_active_bgs_lock) #13
  br label %out

out:                                              ; preds = %list_add_tail.exit, %sw.default203, %if.end196.out_crit_edge, %if.then195, %if.else184, %if.then182.critedge, %if.then172, %cleanup, %if.end23.out_crit_edge, %if.end7.i.i449.out_crit_edge, %if.end18.out_crit_edge, %if.end7.i.i.out_crit_edge, %if.end13.out_crit_edge, %if.end8.out_crit_edge
  %ret.3 = phi i32 [ %ret.1, %cleanup ], [ %ret.1.ph, %if.then172 ], [ %call174, %if.else184 ], [ 0, %if.then182.critedge ], [ -5, %if.then195 ], [ %ret.2, %list_add_tail.exit ], [ %ret.2, %if.end196.out_crit_edge ], [ -22, %sw.default203 ], [ -12, %if.end8.out_crit_edge ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %if.end7.i.i449.out_crit_edge ], [ -12, %if.end23.out_crit_edge ], [ -12, %if.end13.out_crit_edge ], [ -12, %if.end18.out_crit_edge ]
  %alloc_offsets.0 = phi ptr [ %call8.i.i, %cleanup ], [ %call8.i.i, %if.then172 ], [ %call8.i.i, %if.else184 ], [ %call8.i.i, %if.then182.critedge ], [ %call8.i.i, %if.then195 ], [ %call8.i.i, %list_add_tail.exit ], [ %call8.i.i, %if.end196.out_crit_edge ], [ %call8.i.i, %sw.default203 ], [ null, %if.end8.out_crit_edge ], [ null, %if.end7.i.i.out_crit_edge ], [ %call8.i.i, %if.end7.i.i449.out_crit_edge ], [ %call8.i.i, %if.end23.out_crit_edge ], [ null, %if.end13.out_crit_edge ], [ %call8.i.i, %if.end18.out_crit_edge ]
  %caps.0 = phi ptr [ %call8.i.i448, %cleanup ], [ %call8.i.i448, %if.then172 ], [ %call8.i.i448, %if.else184 ], [ %call8.i.i448, %if.then182.critedge ], [ %call8.i.i448, %if.then195 ], [ %call8.i.i448, %list_add_tail.exit ], [ %call8.i.i448, %if.end196.out_crit_edge ], [ %call8.i.i448, %sw.default203 ], [ null, %if.end8.out_crit_edge ], [ null, %if.end7.i.i.out_crit_edge ], [ null, %if.end7.i.i449.out_crit_edge ], [ %call8.i.i448, %if.end23.out_crit_edge ], [ null, %if.end13.out_crit_edge ], [ null, %if.end18.out_crit_edge ]
  %active.0 = phi ptr [ %call25, %cleanup ], [ %call25, %if.then172 ], [ %call25, %if.else184 ], [ %call25, %if.then182.critedge ], [ %call25, %if.then195 ], [ %call25, %list_add_tail.exit ], [ %call25, %if.end196.out_crit_edge ], [ %call25, %sw.default203 ], [ null, %if.end8.out_crit_edge ], [ null, %if.end7.i.i.out_crit_edge ], [ null, %if.end7.i.i449.out_crit_edge ], [ null, %if.end23.out_crit_edge ], [ null, %if.end13.out_crit_edge ], [ null, %if.end18.out_crit_edge ]
  %num_conventional.3 = phi i32 [ %num_conventional.0541, %cleanup ], [ 1, %if.then172 ], [ 1, %if.else184 ], [ 1, %if.then182.critedge ], [ %num_conventional.0.lcssa563568, %if.then195 ], [ %num_conventional.0.lcssa563568, %list_add_tail.exit ], [ %num_conventional.0.lcssa563568, %if.end196.out_crit_edge ], [ %num_conventional.0.lcssa563568, %sw.default203 ], [ 0, %if.end8.out_crit_edge ], [ 0, %if.end7.i.i.out_crit_edge ], [ 0, %if.end7.i.i449.out_crit_edge ], [ 0, %if.end23.out_crit_edge ], [ 0, %if.end13.out_crit_edge ], [ 0, %if.end18.out_crit_edge ]
  %alloc_offset214 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 46
  %159 = ptrtoint ptr %alloc_offset214 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %alloc_offset214, align 8
  %161 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %160, i64 %162)
  %cmp215 = icmp ugt i64 %160, %162
  br i1 %cmp215, label %if.end220.thread, label %if.end220

if.end220:                                        ; preds = %out
  %163 = ptrtoint ptr %alloc_offset214 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %alloc_offset214, align 8
  %zone_capacity222 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 48
  %165 = ptrtoint ptr %zone_capacity222 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %zone_capacity222, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %164, i64 %166)
  %cmp223 = icmp ugt i64 %164, %166
  br i1 %cmp223, label %if.end220.if.end229.thread_crit_edge, label %if.end229

if.end220.if.end229.thread_crit_edge:             ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229.thread

if.end220.thread:                                 ; preds = %out
  %167 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %start, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.47, i64 noundef %160, i64 noundef %168) #18
  %169 = ptrtoint ptr %alloc_offset214 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %alloc_offset214, align 8
  %zone_capacity222571 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 48
  %171 = ptrtoint ptr %zone_capacity222571 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %zone_capacity222571, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %170, i64 %172)
  %cmp223572 = icmp ugt i64 %170, %172
  br i1 %cmp223572, label %if.end220.thread.if.end229.thread_crit_edge, label %if.end220.thread.if.then247.critedge_crit_edge

if.end220.thread.if.then247.critedge_crit_edge:   ; preds = %if.end220.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then247.critedge

if.end220.thread.if.end229.thread_crit_edge:      ; preds = %if.end220.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229.thread

if.end229.thread:                                 ; preds = %if.end220.thread.if.end229.thread_crit_edge, %if.end220.if.end229.thread_crit_edge
  %173 = phi i64 [ %172, %if.end220.thread.if.end229.thread_crit_edge ], [ %166, %if.end220.if.end229.thread_crit_edge ]
  %174 = phi i64 [ %170, %if.end220.thread.if.end229.thread_crit_edge ], [ %164, %if.end220.if.end229.thread_crit_edge ]
  %175 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %start, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.48, i64 noundef %174, i64 noundef %173, i64 noundef %176) #18
  br label %if.then247.critedge

if.end229:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool230.not = icmp eq i32 %ret.3, 0
  br i1 %tobool230.not, label %land.lhs.true231, label %if.end229.if.then247.critedge_crit_edge

if.end229.if.then247.critedge_crit_edge:          ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then247.critedge

land.lhs.true231:                                 ; preds = %if.end229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conventional.3)
  %tobool232.not = icmp eq i32 %num_conventional.3, 0
  br i1 %tobool232.not, label %land.lhs.true231.if.then241_crit_edge, label %land.lhs.true233

land.lhs.true231.if.then241_crit_edge:            ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then241

land.lhs.true233:                                 ; preds = %land.lhs.true231
  %177 = ptrtoint ptr %last_alloc to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %last_alloc, align 8
  %179 = ptrtoint ptr %alloc_offset214 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %alloc_offset214, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %178, i64 %180)
  %cmp235 = icmp ugt i64 %178, %180
  br i1 %cmp235, label %if.then237, label %land.lhs.true233.if.then241_crit_edge

land.lhs.true233.if.then241_crit_edge:            ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then241

if.then237:                                       ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.49, i64 noundef %3, i64 noundef %178, i64 noundef %180) #18
  br label %if.then247.critedge

if.then241:                                       ; preds = %land.lhs.true233.if.then241_crit_edge, %land.lhs.true231.if.then241_crit_edge
  %181 = ptrtoint ptr %alloc_offset214 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %alloc_offset214, align 8
  %183 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %start, align 8
  %add244 = add i64 %184, %182
  %meta_write_pointer = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 49
  %185 = ptrtoint ptr %meta_write_pointer to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %add244, ptr %meta_write_pointer, align 8
  br label %if.end250

if.then247.critedge:                              ; preds = %if.then237, %if.end229.if.then247.critedge_crit_edge, %if.end229.thread, %if.end220.thread.if.then247.critedge_crit_edge
  %ret.6.ph = phi i32 [ -5, %if.end229.thread ], [ -5, %if.then237 ], [ %ret.3, %if.end229.if.then247.critedge_crit_edge ], [ -5, %if.end220.thread.if.then247.critedge_crit_edge ]
  %186 = ptrtoint ptr %physical_map to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %physical_map, align 8
  call void @kfree(ptr noundef %187) #13
  %188 = ptrtoint ptr %physical_map to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %physical_map, align 8
  br label %if.end250

if.end250:                                        ; preds = %if.then247.critedge, %if.then241
  %ret.6521 = phi i32 [ 0, %if.then241 ], [ %ret.6.ph, %if.then247.critedge ]
  call void @bitmap_free(ptr noundef %active.0) #13
  call void @kfree(ptr noundef %caps.0) #13
  call void @kfree(ptr noundef %alloc_offsets.0) #13
  call void @free_extent_map(ptr noundef nonnull %call5) #13
  br label %cleanup251

cleanup251:                                       ; preds = %if.end250, %if.end4.cleanup251_crit_edge, %if.then3, %entry.cleanup251_crit_edge
  %retval.0 = phi i32 [ %ret.6521, %if.end250 ], [ -5, %if.then3 ], [ 0, %entry.cleanup251_crit_edge ], [ -22, %if.end4.cleanup251_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last_alloc) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @btrfs_dev_replace_is_ongoing(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calculate_alloc_pointer(ptr nocapture noundef readonly %cache, ptr nocapture noundef writeonly %offset_ret) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %call = tail call ptr @btrfs_alloc_path() #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %length2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %6 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %length2, align 8
  %add = add i64 %7, %5
  %8 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %key, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %2, align 1
  %call4 = tail call ptr @btrfs_extent_root(ptr noundef %1, i64 noundef %add) #13
  %call5 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call4, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.store.select = select i1 %tobool6.not, i32 -117, i32 %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp = icmp slt i32 %spec.store.select, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %call12 = call i32 @btrfs_previous_extent_item(ptr noundef %call4, ptr noundef nonnull %call, i64 noundef %12) #13
  %13 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call12, label %if.end10.out_crit_edge [
    i32 0, label %if.end18
    i32 1, label %if.end10.out.sink.split_crit_edge
  ]

if.end10.out.sink.split_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end18:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %18 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %17, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %20 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %15, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %19, align 1
  %23 = call i64 @llvm.bswap.i64(i64 %22) #13
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %18, align 8
  %26 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %disk_key.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %25)
  %cmp21 = icmp eq i8 %25, -88
  br i1 %cmp21, label %if.end18.if.end26_crit_edge, label %if.else

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %29 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nodesize, align 8
  %conv25 = zext i32 %30 to i64
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end18.if.end26_crit_edge
  %length.0 = phi i64 [ %conv25, %if.else ], [ %23, %if.end18.if.end26_crit_edge ]
  %31 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %32)
  %cmp29.not = icmp ult i64 %28, %32
  br i1 %cmp29.not, label %if.end26.out_crit_edge, label %land.lhs.true

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true:                                    ; preds = %if.end26
  %add32 = add i64 %length.0, %28
  %33 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %length2, align 8
  %add35 = add i64 %34, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %add32, i64 %add35)
  %cmp36.not = icmp ugt i64 %add32, %add35
  br i1 %cmp36.not, label %land.lhs.true.out_crit_edge, label %if.end39

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end39:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i64 %add32, %32
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end39, %if.end10.out.sink.split_crit_edge
  %.sink = phi i64 [ %sub, %if.end39 ], [ 0, %if.end10.out.sink.split_crit_edge ]
  %35 = ptrtoint ptr %offset_ret to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %.sink, ptr %offset_ret, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %land.lhs.true.out_crit_edge, %if.end26.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.end.out_crit_edge ], [ %call12, %if.end10.out_crit_edge ], [ -117, %land.lhs.true.out_crit_edge ], [ -117, %if.end26.out_crit_edge ], [ 0, %out.sink.split ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_bg_type_to_raid_name(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_get_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_calc_zone_unusable(ptr nocapture noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes_super = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 9
  %5 = ptrtoint ptr %bytes_super to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytes_super, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.not = icmp eq i64 %6, 0
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %do.end, !prof !158

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1482, i32 noundef 9, ptr noundef null) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end.if.end14_crit_edge
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 46
  %7 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %alloc_offset, align 8
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 7
  %9 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %used, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %length, align 8
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 48
  %13 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %zone_capacity, align 8
  %15 = add i64 %8, %12
  %16 = add i64 %10, %14
  %add = sub i64 %15, %16
  %sub24 = sub i64 %14, %8
  %last_byte_to_unpin = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 21
  %17 = ptrtoint ptr %last_byte_to_unpin to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %last_byte_to_unpin, align 8
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 19
  %18 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %cached, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %19 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free_space_ctl, align 4
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %free_space to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub24, ptr %free_space, align 8
  %zone_unusable = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 47
  %22 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add, ptr %zone_unusable, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_redirty_list_add(ptr noundef %trans, ptr noundef %eb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i.i, align 4
  %call.i.i26 = tail call ptr @page_address(ptr noundef %6) #13
  %7 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %eb, align 8
  %conv.i.i = trunc i64 %8 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i26, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %flags.i.i, align 1
  %11 = and i64 %10, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %release_list = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 13
  %12 = ptrtoint ptr %release_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %release_list, align 4
  %cmp.i27.not = icmp eq ptr %13, %release_list
  br i1 %cmp.i27.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call zeroext i1 @set_extent_buffer_dirty(ptr noundef %eb) #13
  %dirty_pages = getelementptr inbounds %struct.btrfs_transaction, ptr %trans, i32 0, i32 8
  %14 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %eb, align 8
  %len = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %conv = zext i32 %17 to i64
  %add = add i64 %15, -1
  %sub = add i64 %add, %conv
  %call8 = tail call i32 @set_extent_bits_nowait(ptr noundef %dirty_pages, i64 noundef %15, i64 noundef %sub, i32 noundef 1) #13
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 8
  tail call void @memzero_extent_buffer(ptr noundef %eb, i32 noundef 0, i32 noundef %19) #13
  %bflags = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 11, ptr noundef %bflags) #13
  %releasing_ebs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %trans, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %releasing_ebs_lock) #13
  %releasing_ebs = getelementptr inbounds %struct.btrfs_transaction, ptr %trans, i32 0, i32 28
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %trans, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %release_list, ptr noundef %21, ptr noundef %releasing_ebs) #13
  br i1 %call.i.i28, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %release_list, ptr %prev.i, align 4
  %23 = ptrtoint ptr %release_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %releasing_ebs, ptr %release_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %release_list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %releasing_ebs_lock) #13
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #13, !srcloc !161
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_extent_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_extent_bits_nowait(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memzero_extent_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_redirty_list(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %releasing_ebs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %trans, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %releasing_ebs_lock) #13
  %releasing_ebs = getelementptr inbounds %struct.btrfs_transaction, ptr %trans, i32 0, i32 28
  %0 = ptrtoint ptr %releasing_ebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %releasing_ebs, align 4
  %cmp.i.not7 = icmp eq ptr %1, %releasing_ebs
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del_init.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -252
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  tail call void @free_extent_buffer(ptr noundef %add.ptr) #13
  %11 = ptrtoint ptr %releasing_ebs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %releasing_ebs, align 4
  %cmp.i.not = icmp eq ptr %12, %releasing_ebs
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %releasing_ebs_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_use_zone_append(ptr nocapture noundef readonly %inode, i64 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 176
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.not = icmp eq i64 %6, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %location.i.i = getelementptr %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %7 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i.i, label %if.end.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %type.i.i = getelementptr %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %10)
  %cmp.i.i = icmp eq i8 %10, -124
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.is_data_inode.exit_crit_edge

lor.lhs.false.i.i.is_data_inode.exit_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_data_inode.exit

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %11 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %12 to i64
  br label %is_data_inode.exit

is_data_inode.exit:                               ; preds = %if.then.i.i, %lor.lhs.false.i.i.is_data_inode.exit_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %8, %lor.lhs.false.i.i.is_data_inode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i)
  %cmp.i25.not = icmp eq i64 %ino.0.i.i, 1
  br i1 %cmp.i25.not, label %is_data_inode.exit.cleanup_crit_edge, label %if.end4

is_data_inode.exit.cleanup_crit_edge:             ; preds = %is_data_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %is_data_inode.exit
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %root_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %14)
  %cmp.i26 = icmp eq i64 %14, -9
  br i1 %cmp.i26, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @btrfs_lookup_block_group(ptr noundef %3, i64 noundef %start) #13
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %cond.false, label %if.end14, !prof !153

cond.false:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.50, i32 noundef 1554) #17
  unreachable

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %seq_zone = getelementptr inbounds %struct.btrfs_block_group, ptr %call9, i32 0, i32 43
  %15 = ptrtoint ptr %seq_zone to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %seq_zone, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15 = icmp ne i8 %16, 0
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call9) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end4.cleanup_crit_edge, %is_data_inode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool15, %if.end14 ], [ false, %entry.cleanup_crit_edge ], [ false, %is_data_inode.exit.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_block_group(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_record_physical_zoned(ptr noundef %inode, i64 noundef %file_offset, ptr nocapture noundef readonly %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %0 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bi_iter, align 8
  %shl = shl i64 %1, 9
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and)
  %cmp.not = icmp eq i32 %and, 13
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %call1 = tail call ptr @btrfs_lookup_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %file_offset) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !153

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1574, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %physical27 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call1, i32 0, i32 21
  %4 = ptrtoint ptr %physical27 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shl, ptr %physical27, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %5 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bdev, align 4
  %bdev = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call1, i32 0, i32 22
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bdev, align 8
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_ordered_extent(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_ordered_extent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_rewrite_logical_zoned(ptr noundef %ordered) local_unnamed_addr #0 align 64 {
entry:
  %logical = alloca ptr, align 4
  %nr = alloca i32, align 4
  %stripe_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 11
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info2, align 8
  %disk_bytenr = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 1
  %6 = ptrtoint ptr %disk_bytenr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %disk_bytenr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %logical) #13
  %8 = ptrtoint ptr %logical to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %logical, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #13
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %nr, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stripe_len) #13
  %10 = ptrtoint ptr %stripe_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %stripe_len, align 4, !annotation !152
  %bdev = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 22
  %11 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev, align 8
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.not = icmp eq i8 %14, 0
  br i1 %tobool.i.not, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.51, i32 noundef 1595) #17
  unreachable

cond.end:                                         ; preds = %entry
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %do.end, label %if.end35, !prof !153

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1596, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end35:                                         ; preds = %cond.end
  %physical = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 21
  %15 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %physical, align 8
  %call38 = call i32 @btrfs_rmap_block(ptr noundef %5, i64 noundef %7, ptr noundef nonnull %12, i64 noundef %16, ptr noundef nonnull %logical, ptr noundef nonnull %nr, ptr noundef nonnull %stripe_len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end71.critedge, label %do.end55, !prof !158

do.end55:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1601, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end71.critedge:                                ; preds = %if.end35
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not = icmp eq i32 %18, 1
  br i1 %cmp.not, label %if.end71.critedge.if.end94_crit_edge, label %do.end88, !prof !158

if.end71.critedge.if.end94_crit_edge:             ; preds = %if.end71.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

do.end88:                                         ; preds = %if.end71.critedge
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1604, i32 noundef 9, ptr noundef null) #13
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %if.end71.critedge.if.end94_crit_edge
  %19 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %logical, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %22)
  %cmp102 = icmp eq i64 %7, %22
  br i1 %cmp102, label %if.end94.out_crit_edge, label %if.end104

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end104:                                        ; preds = %if.end94
  %23 = ptrtoint ptr %disk_bytenr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %disk_bytenr, align 8
  %extent_tree = getelementptr i8, ptr %1, i32 -796
  %lock = getelementptr i8, ptr %1, i32 -780
  call void @_raw_write_lock(ptr noundef %lock) #13
  %24 = ptrtoint ptr %ordered to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ordered, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 2
  %26 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %num_bytes, align 8
  %call106 = call ptr @search_extent_mapping(ptr noundef %extent_tree, i64 noundef %25, i64 noundef %27) #13
  %28 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %logical, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call106, i32 0, i32 8
  %32 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %block_start, align 8
  call void @free_extent_map(ptr noundef %call106) #13
  call void @_raw_write_unlock(ptr noundef %lock) #13
  %list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 12
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn159 = load ptr, ptr %list, align 4
  %cmp111.not161 = icmp eq ptr %.pn159, %list
  br i1 %cmp111.not161, label %if.end104.out_crit_edge, label %for.body.lr.ph

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %if.end104
  %34 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %logical, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn162 = phi ptr [ %.pn159, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %sum.0163 = getelementptr i8, ptr %.pn162, i32 -12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %sub.neg = sub i64 %37, %7
  %38 = ptrtoint ptr %sum.0163 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sum.0163, align 8
  %sub116 = add i64 %sub.neg, %39
  store i64 %sub116, ptr %sum.0163, align 8
  %40 = ptrtoint ptr %.pn162 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn162, align 4
  %cmp111.not = icmp eq ptr %.pn, %list
  br i1 %cmp111.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.end104.out_crit_edge, %if.end94.out_crit_edge, %do.end55
  %41 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %logical, align 4
  call void @kfree(ptr noundef %42) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stripe_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %logical) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_rmap_block(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_check_meta_write_pointer(ptr noundef %fs_info, ptr nocapture noundef readonly %eb, ptr nocapture noundef writeonly %cache_ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i.not = icmp eq i64 %2, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %eb, align 8
  %call1 = tail call ptr @btrfs_lookup_block_group(ptr noundef %fs_info, i64 noundef %4) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %meta_write_pointer = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 49
  %5 = ptrtoint ptr %meta_write_pointer to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %meta_write_pointer, align 8
  %7 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %eb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.not = icmp eq i64 %6, %8
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call1) #13
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 8
  %conv = zext i32 %10 to i64
  %add = add i64 %6, %conv
  %11 = ptrtoint ptr %meta_write_pointer to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %meta_write_pointer, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %cache.0 = phi ptr [ null, %if.then5 ], [ %call1, %if.else ]
  %12 = ptrtoint ptr %cache_ret to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cache.0, ptr %cache_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.not, %if.end8 ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_revert_meta_write_pointer(ptr noundef %cache, ptr nocapture noundef readonly %eb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  %tobool.not = icmp eq ptr %cache, null
  %or.cond = or i1 %tobool.not, %cmp.i.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %meta_write_pointer = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 49
  %5 = ptrtoint ptr %meta_write_pointer to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %meta_write_pointer, align 8
  %7 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %eb, align 8
  %len = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 8
  %conv = zext i32 %10 to i64
  %add = add i64 %8, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %add)
  %cmp = icmp eq i64 %6, %add
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.52, i32 noundef 1663) #17
  unreachable

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %meta_write_pointer to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %8, ptr %meta_write_pointer, align 8
  br label %return

return:                                           ; preds = %cond.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_zoned_issue_zeroout(ptr nocapture noundef readonly %device, i64 noundef %physical, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_info1.i = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_info1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %btrfs_dev_is_sequential.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

btrfs_dev_is_sequential.exit:                     ; preds = %entry
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %3 to i64
  %shr.i = lshr i64 %physical, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.i.not = icmp eq i32 %9, 0
  br i1 %tobool3.i.not, label %btrfs_dev_is_sequential.exit.return_crit_edge, label %if.end

btrfs_dev_is_sequential.exit.return_crit_edge:    ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %10 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev, align 8
  %shr = lshr i64 %physical, 9
  %shr1 = lshr i64 %length, 9
  %call2 = tail call i32 @blkdev_issue_zeroout(ptr noundef %11, i64 noundef %shr, i64 noundef %shr1, i32 noundef 3136, i32 noundef 0) #13
  br label %return

return:                                           ; preds = %if.end, %btrfs_dev_is_sequential.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -95, %btrfs_dev_is_sequential.exit.return_crit_edge ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sync_zone_write_pointer(ptr nocapture noundef readonly %tgt_dev, i64 noundef %logical, i64 noundef %physical_start, i64 noundef %physical_pos) local_unnamed_addr #0 align 64 {
entry:
  %nr_zones.i.i = alloca i32, align 4
  %bioc.i = alloca ptr, align 4
  %mapped_length.i = alloca i64, align 8
  %zone = alloca %struct.blk_zone, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_device, ptr %tgt_dev, i32 0, i32 4
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %zone) #13
  %2 = call ptr @memset(ptr %zone, i32 255, i32 64)
  %zone_info1.i = getelementptr inbounds %struct.btrfs_device, ptr %tgt_dev, i32 0, i32 8
  %3 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zone_info1.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %btrfs_dev_is_sequential.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

btrfs_dev_is_sequential.exit:                     ; preds = %entry
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %6 to i64
  %shr.i = lshr i64 %physical_pos, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %seq_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %seq_zones.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seq_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %8, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.i.not = icmp eq i32 %12, 0
  br i1 %tobool3.i.not, label %btrfs_dev_is_sequential.exit.cleanup_crit_edge, label %if.end

btrfs_dev_is_sequential.exit.cleanup_crit_edge:   ; preds = %btrfs_dev_is_sequential.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %btrfs_dev_is_sequential.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bioc.i) #13
  %13 = ptrtoint ptr %bioc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bioc.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mapped_length.i) #13
  %14 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 4096, ptr %mapped_length.i, align 8
  %call.i = call i32 @btrfs_map_sblock(ptr noundef %1, i32 noundef 3, i64 noundef %logical, ptr noundef nonnull %mapped_length.i, ptr noundef nonnull %bioc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i26 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i26, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %15 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bioc.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %17 = ptrtoint ptr %mapped_length.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mapped_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %18)
  %cmp.i = icmp ult i64 %18, 4096
  br i1 %cmp.i, label %lor.lhs.false2.i.if.then.i_crit_edge, label %if.end.i27

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %19 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bioc.i, align 4
  call void @btrfs_put_bioc(ptr noundef %20) #13
  br label %read_zone_info.exit.thread

if.end.i27:                                       ; preds = %lor.lhs.false2.i
  %map_type.i = getelementptr inbounds %struct.btrfs_io_context, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %map_type.i, align 8
  %and.i = and i64 %22, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool3.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i27.read_zone_info.exit.thread_crit_edge

if.end.i27.read_zone_info.exit.thread_crit_edge:  ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_zone_info.exit.thread

if.end5.i:                                        ; preds = %if.end.i27
  %23 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags1.i.i, align 4
  %and.i.i28 = and i32 %28, 262144
  %or.i.i = or i32 %28, 262144
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %num_stripes.i = getelementptr inbounds %struct.btrfs_io_context, ptr %16, i32 0, i32 9
  %29 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_stripes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp749.i = icmp sgt i32 %30, 0
  br i1 %cmp749.i, label %if.end5.i.for.body.i_crit_edge, label %if.end5.i.read_zone_info.exit_crit_edge

if.end5.i.read_zone_info.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_zone_info.exit

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %ret.052.i = phi i32 [ %ret.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %i.050.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %bioc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bioc.i, align 4
  %arrayidx.i = getelementptr %struct.btrfs_io_context, ptr %32, i32 0, i32 14, i32 %i.050.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %bdev.i = getelementptr inbounds %struct.btrfs_device, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev.i, align 8
  %tobool12.not.i = icmp eq ptr %36, null
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %physical8.i = getelementptr %struct.btrfs_io_context, ptr %32, i32 0, i32 14, i32 %i.050.i, i32 1
  %37 = ptrtoint ptr %physical8.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %physical8.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_zones.i.i) #13
  %39 = ptrtoint ptr %nr_zones.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %nr_zones.i.i, align 4
  %call.i.i = call fastcc i32 @btrfs_get_dev_zones(ptr noundef %34, i64 noundef %38, ptr noundef nonnull %zone, ptr noundef nonnull %nr_zones.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %btrfs_get_dev_zone.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end14.i
  %40 = ptrtoint ptr %nr_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_zones.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp eq i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_zones.i.i) #13
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i.read_zone_info.exit_crit_edge

lor.lhs.false.i.i.read_zone_info.exit_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_zone_info.exit

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

btrfs_get_dev_zone.exit.i:                        ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_zones.i.i) #13
  %42 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call.i.i, label %btrfs_get_dev_zone.exit.i.read_zone_info.exit_crit_edge [
    i32 -5, label %btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge
    i32 -95, label %btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge39
  ]

btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge39:  ; preds = %btrfs_get_dev_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge:    ; preds = %btrfs_get_dev_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

btrfs_get_dev_zone.exit.i.read_zone_info.exit_crit_edge: ; preds = %btrfs_get_dev_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_zone_info.exit

for.inc.i:                                        ; preds = %btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge, %btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge39, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.1.ph.i = phi i32 [ %call.i.i, %btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge ], [ %call.i.i, %btrfs_get_dev_zone.exit.i.for.inc.i_crit_edge39 ], [ %ret.052.i, %for.body.i.for.inc.i_crit_edge ], [ -5, %lor.lhs.false.i.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not.i, label %for.inc.i.read_zone_info.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.read_zone_info.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_zone_info.exit

read_zone_info.exit.thread:                       ; preds = %if.end.i27.read_zone_info.exit.thread_crit_edge, %if.then.i
  %retval.0.i29.ph = phi i32 [ -22, %if.end.i27.read_zone_info.exit.thread_crit_edge ], [ -5, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_length.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #13
  br label %cleanup

read_zone_info.exit:                              ; preds = %for.inc.i.read_zone_info.exit_crit_edge, %btrfs_get_dev_zone.exit.i.read_zone_info.exit_crit_edge, %lor.lhs.false.i.i.read_zone_info.exit_crit_edge, %if.end5.i.read_zone_info.exit_crit_edge
  %ret.2.i = phi i32 [ 0, %if.end5.i.read_zone_info.exit_crit_edge ], [ %call.i.i, %btrfs_get_dev_zone.exit.i.read_zone_info.exit_crit_edge ], [ %ret.1.ph.i, %for.inc.i.read_zone_info.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.read_zone_info.exit_crit_edge ]
  %43 = call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i.i35.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i35.i to ptr
  %task.i36.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i36.i, align 8
  %flags1.i37.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags1.i37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags1.i37.i, align 4
  %and.i38.i = and i32 %48, -262145
  %or.i39.i = or i32 %and.i38.i, %and.i.i28
  store i32 %or.i39.i, ptr %flags1.i37.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_length.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bioc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool.not = icmp eq i32 %ret.2.i, 0
  br i1 %tobool.not, label %if.end4, label %read_zone_info.exit.cleanup_crit_edge

read_zone_info.exit.cleanup_crit_edge:            ; preds = %read_zone_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %read_zone_info.exit
  %wp5 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %49 = ptrtoint ptr %wp5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wp5, align 8
  %51 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %zone, align 8
  %sub = sub i64 %50, %52
  %shl = shl i64 %sub, 9
  %add = add i64 %shl, %physical_start
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %physical_pos)
  %cmp = icmp eq i64 %add, %physical_pos
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %physical_pos)
  %cmp8 = icmp ult i64 %add, %physical_pos
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %sub11 = sub i64 %add, %physical_pos
  %53 = ptrtoint ptr %zone_info1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %zone_info1.i, align 4
  %tobool.not.i.i30 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i30, label %if.end10.cleanup_crit_edge, label %btrfs_dev_is_sequential.exit.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

btrfs_dev_is_sequential.exit.i:                   ; preds = %if.end10
  %zone_size_shift.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %zone_size_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %zone_size_shift.i.i, align 8
  %sh_prom.i.i = zext i8 %56 to i64
  %shr.i.i = lshr i64 %physical_pos, %sh_prom.i.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %seq_zones.i.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %54, i32 0, i32 5
  %57 = ptrtoint ptr %seq_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seq_zones.i.i, align 8
  %div3.i.i.i = lshr i32 %conv2.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %58, i32 %div3.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i31 = and i32 %conv2.i.i, 31
  %61 = shl nuw i32 1, %and.i.i.i31
  %62 = and i32 %61, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool3.i.not.i = icmp eq i32 %62, 0
  br i1 %tobool3.i.not.i, label %btrfs_dev_is_sequential.exit.i.cleanup_crit_edge, label %if.end.i34

btrfs_dev_is_sequential.exit.i.cleanup_crit_edge: ; preds = %btrfs_dev_is_sequential.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i34:                                       ; preds = %btrfs_dev_is_sequential.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %bdev.i32 = getelementptr inbounds %struct.btrfs_device, ptr %tgt_dev, i32 0, i32 7
  %63 = ptrtoint ptr %bdev.i32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bdev.i32, align 8
  %shr.i33 = lshr i64 %physical_pos, 9
  %shr1.i = lshr i64 %sub11, 9
  %call2.i = call i32 @blkdev_issue_zeroout(ptr noundef %64, i64 noundef %shr.i33, i64 noundef %shr1.i, i32 noundef 3136, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i34, %btrfs_dev_is_sequential.exit.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %read_zone_info.exit.cleanup_crit_edge, %read_zone_info.exit.thread, %btrfs_dev_is_sequential.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %btrfs_dev_is_sequential.exit.cleanup_crit_edge ], [ %ret.2.i, %read_zone_info.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -117, %if.end7.cleanup_crit_edge ], [ %retval.0.i29.ph, %read_zone_info.exit.thread ], [ %call2.i, %if.end.i34 ], [ -95, %btrfs_dev_is_sequential.exit.i.cleanup_crit_edge ], [ -95, %if.end10.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zone) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_zoned_get_device(ptr noundef %fs_info, i64 noundef %logical, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_get_chunk_map(ptr noundef %fs_info, i64 noundef %logical, i64 noundef %length) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_lookup, align 4
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.53, i32 noundef 1762) #17
  unreachable

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stripes = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stripes, align 8
  tail call void @free_extent_map(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_chunk_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_zone_activate(ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %physical_map = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 50
  %5 = ptrtoint ptr %physical_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %physical_map, align 8
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.53, i32 noundef 1790) #17
  unreachable

cond.end:                                         ; preds = %if.end
  %stripes = getelementptr inbounds %struct.map_lookup, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stripes, align 8
  %physical6 = getelementptr inbounds %struct.map_lookup, ptr %6, i32 1, i32 1
  %11 = ptrtoint ptr %physical6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %physical6, align 8
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zone_info, align 4
  %max_active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_active_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %cond.end.cleanup_crit_edge, label %if.end9

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %cond.end
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %zone_is_active = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %17 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %zone_is_active, align 8
  %18 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.out_unlock_crit_edge

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end12:                                         ; preds = %if.end9
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %19 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %alloc_offset, align 8
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 48
  %21 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %zone_capacity, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp13 = icmp eq i64 %20, %22
  br i1 %cmp13, label %if.end12.out_unlock_crit_edge, label %if.end15

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end15:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %zone_info, align 4
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %26 to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %max_active_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %max_active_zones.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_active_zones.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i59 = icmp eq i32 %28, 0
  br i1 %cmp.i59, label %if.end15.if.end18_crit_edge, label %if.end.i

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end.i:                                         ; preds = %if.end15
  %active_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %24, i32 0, i32 7
  %29 = ptrtoint ptr %active_zones.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %active_zones.i, align 8
  %div3.i.i = lshr i32 %conv2.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %30, i32 %div3.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i, 31
  %33 = shl nuw i32 1, %and.i.i
  %34 = and i32 %32, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end.i.if.end18_crit_edge

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then4.i:                                       ; preds = %if.end.i
  %active_zones_left.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %24, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_zones_left.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %active_zones_left.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %active_zones_left.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.then4.i
  %c.0.i.i.i = phi i32 [ %36, %if.then4.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.out_unlock_crit_edge, label %do.cond3.i.i.i, !prof !153

do.body1.i.i.i.out_unlock_crit_edge:              ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %active_zones_left.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active_zones_left.i, ptr %active_zones_left.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %active_zones_left.i) #13, !srcloc !164
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !165
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end9.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !158

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i.i

if.end9.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %38 = ptrtoint ptr %active_zones.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %active_zones.i, align 8
  %call11.i = tail call i32 @_test_and_set_bit(i32 noundef %conv2.i, ptr noundef %39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end18_crit_edge, label %if.then13.i

if.end9.i.if.end18_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i24.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_zones_left.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active_zones_left.i, i32 1, i32 3, i32 1) #13
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_zones_left.i, ptr %active_zones_left.i, i32 1, ptr elementtype(i32) %active_zones_left.i) #13, !srcloc !161
  br label %if.end18

if.end18:                                         ; preds = %if.then13.i, %if.end9.i.if.end18_crit_edge, %if.end.i.if.end18_crit_edge, %if.end15.if.end18_crit_edge
  %41 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load20 = load i8, ptr %zone_is_active, align 8
  %bf.set = or i8 %bf.load20, 2
  store i8 %bf.set, ptr %zone_is_active, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call void @btrfs_get_block_group(ptr noundef %block_group) #13
  %zone_active_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 182
  tail call void @_raw_spin_lock(ptr noundef %zone_active_bgs_lock) #13
  %active_bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 51
  %42 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %active_bg_list, align 4
  %cmp.i60.not = icmp eq ptr %43, %active_bg_list
  br i1 %cmp.i60.not, label %cond.end33, label %cond.false32, !prof !158

cond.false32:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.54, i32 noundef 1825) #17
  unreachable

cond.end33:                                       ; preds = %if.end18
  %zone_active_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 183
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 183, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %active_bg_list, ptr noundef %45, ptr noundef %zone_active_bgs) #13
  br i1 %call.i.i, label %if.end.i.i, label %cond.end33.cleanup.sink.split_crit_edge

cond.end33.cleanup.sink.split_crit_edge:          ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %active_bg_list, ptr %prev.i, align 4
  %47 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %zone_active_bgs, ptr %active_bg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 51, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %active_bg_list, ptr %45, align 4
  br label %cleanup.sink.split

out_unlock:                                       ; preds = %do.body1.i.i.i.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge
  %50 = xor i1 %tobool10.not, true
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_unlock, %if.end.i.i, %cond.end33.cleanup.sink.split_crit_edge
  %lock.sink = phi ptr [ %lock, %out_unlock ], [ %zone_active_bgs_lock, %cond.end33.cleanup.sink.split_crit_edge ], [ %zone_active_bgs_lock, %if.end.i.i ]
  %retval.0.ph = phi i1 [ %50, %out_unlock ], [ true, %cond.end33.cleanup.sink.split_crit_edge ], [ true, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %cond.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_zone_finish(ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %physical_map = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 50
  %5 = ptrtoint ptr %physical_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %physical_map, align 8
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.53, i32 noundef 1849) #17
  unreachable

cond.end:                                         ; preds = %if.end
  %stripes = getelementptr inbounds %struct.map_lookup, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stripes, align 8
  %physical5 = getelementptr inbounds %struct.map_lookup, ptr %6, i32 1, i32 1
  %11 = ptrtoint ptr %physical5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %physical5, align 8
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zone_info, align 4
  %max_active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_active_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %cond.end.cleanup_crit_edge, label %if.end8

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %cond.end
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %zone_is_active = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %17 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %zone_is_active, align 8
  %18 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags, align 8
  %and = and i64 %20, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool13.not = icmp eq i64 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %land.lhs.true

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end12
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %21 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %alloc_offset, align 8
  %meta_write_pointer = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 49
  %23 = ptrtoint ptr %meta_write_pointer to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %meta_write_pointer, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp14 = icmp ugt i64 %22, %24
  br i1 %cmp14, label %if.then15, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %call19 = tail call i32 @btrfs_inc_block_group_ro(ptr noundef %block_group, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  tail call void @btrfs_wait_block_group_reservations(ptr noundef %block_group) #13
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %length, align 8
  tail call void @btrfs_wait_ordered_roots(ptr noundef %1, i64 noundef -1, i64 noundef %26, i64 noundef %28) #13
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %29 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load25 = load i8, ptr %zone_is_active, align 8
  %30 = and i8 %bf.load25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool29.not = icmp eq i8 %30, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call void @btrfs_dec_block_group_ro(ptr noundef %block_group) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 6
  %31 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool33.not = icmp eq i64 %32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call void @btrfs_dec_block_group_ro(ptr noundef %block_group) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %bf.clear39 = and i8 %bf.load25, -3
  %33 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.clear39, ptr %zone_is_active, align 8
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 48
  %34 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %zone_capacity, align 8
  %alloc_offset40 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %36 = ptrtoint ptr %alloc_offset40 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %alloc_offset40, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %37 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %free_space_ctl, align 4
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %free_space to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %free_space, align 8
  tail call fastcc void @btrfs_clear_treelog_bg(ptr noundef %block_group)
  tail call void @btrfs_clear_data_reloc_bg(ptr noundef %block_group)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %10, i32 0, i32 7
  %40 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev, align 8
  %shr = lshr i64 %12, 9
  %42 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %zone_info, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %43, align 8
  %shr43 = lshr i64 %45, 9
  %call44 = tail call i32 @blkdev_zone_mgmt(ptr noundef %41, i32 noundef 12, i64 noundef %shr, i64 noundef %shr43, i32 noundef 3136) #13
  tail call void @btrfs_dec_block_group_ro(ptr noundef %block_group) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then46:                                        ; preds = %if.end36
  tail call fastcc void @btrfs_dev_clear_active_zone(ptr noundef %10, i64 noundef %12)
  %zone_active_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 182
  tail call void @_raw_spin_lock(ptr noundef %zone_active_bgs_lock) #13
  %active_bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 51
  %46 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %active_bg_list, align 4
  %cmp.i110.not = icmp eq ptr %47, %active_bg_list
  br i1 %cmp.i110.not, label %cond.false58, label %cond.end59, !prof !153

cond.false58:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.55, i32 noundef 1917) #17
  unreachable

cond.end59:                                       ; preds = %if.then46
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active_bg_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %cond.end59.list_del_init.exit_crit_edge

cond.end59.list_del_init.exit_crit_edge:          ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 51, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %active_bg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %cond.end59.list_del_init.exit_crit_edge
  %54 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %active_bg_list, ptr %active_bg_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 51, i32 1
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %active_bg_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %zone_active_bgs_lock) #13
  tail call void @btrfs_put_block_group(ptr noundef %block_group) #13
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.end36.cleanup_crit_edge, %if.then34, %if.then30, %if.end17.cleanup_crit_edge, %if.then15, %if.then10, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then15 ], [ -11, %if.then34 ], [ 0, %if.then30 ], [ 0, %if.then10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ 0, %list_del_init.exit ], [ %call44, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inc_block_group_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_block_group_reservations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_ordered_roots(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_dec_block_group_ro(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_clear_treelog_bg(ptr nocapture noundef readonly %bg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %bg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %treelog_bg_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 178
  tail call void @_raw_spin_lock(ptr noundef %treelog_bg_lock) #13
  %treelog_bg = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 179
  %5 = ptrtoint ptr %treelog_bg to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %treelog_bg, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 3
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp = icmp eq i64 %6, %8
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %treelog_bg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %treelog_bg, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %treelog_bg_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_clear_data_reloc_bg(ptr nocapture noundef readonly %bg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg, align 8
  %relocation_bg_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 180
  tail call void @_raw_spin_lock(ptr noundef %relocation_bg_lock) #13
  %data_reloc_bg = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 181
  %2 = ptrtoint ptr %data_reloc_bg to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data_reloc_bg, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp = icmp eq i64 %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %data_reloc_bg to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %data_reloc_bg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %relocation_bg_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_can_activate_zone(ptr noundef %fs_devices, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 19
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

if.end:                                           ; preds = %entry
  %and = and i64 %flags, 2040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !158

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.56, i32 noundef 1937) #17
  unreachable

cond.end:                                         ; preds = %if.end
  %device_list_mutex = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %device_list_mutex, i32 noundef 0) #13
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 13
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %device.043 = load ptr, ptr %devices, align 8
  %cmp3.not44 = icmp eq ptr %device.043, %devices
  br i1 %cmp3.not44, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %cond.end.for.body_crit_edge
  %cmp3.not46 = phi i1 [ %cmp3.not, %cleanup.for.body_crit_edge ], [ %cmp3.not44, %cond.end.for.body_crit_edge ]
  %device.045 = phi ptr [ %device.0, %cleanup.for.body_crit_edge ], [ %device.043, %cond.end.for.body_crit_edge ]
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device.045, i32 0, i32 8
  %6 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zone_info, align 4
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device.045, i32 0, i32 7
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %max_active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_active_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.end8.for.end_crit_edge, label %lor.lhs.false

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end8
  %active_zones_left = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %7, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_zones_left, i32 noundef 4) #13
  %12 = ptrtoint ptr %active_zones_left to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %active_zones_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %14 = ptrtoint ptr %device.045 to i32
  call void @__asan_load4_noabort(i32 %14)
  %device.0 = load ptr, ptr %device.045, align 8
  %cmp3.not = icmp eq ptr %device.0, %devices
  br i1 %cmp3.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end8.for.end_crit_edge, %cond.end.for.end_crit_edge
  %cmp3.not.lcssa = phi i1 [ %cmp3.not44, %cond.end.for.end_crit_edge ], [ %cmp3.not, %cleanup.for.end_crit_edge ], [ %cmp3.not46, %if.end8.for.end_crit_edge ], [ %cmp3.not46, %lor.lhs.false.for.end_crit_edge ]
  %15 = xor i1 %cmp3.not.lcssa, true
  tail call void @mutex_unlock(ptr noundef %device_list_mutex) #13
  br label %cleanup21

cleanup21:                                        ; preds = %for.end, %entry.cleanup21_crit_edge
  %retval.0 = phi i1 [ %15, %for.end ], [ true, %entry.cleanup21_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_zone_finish_endio(ptr noundef %fs_info, i64 noundef %logical, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i.not = icmp eq i64 %2, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @btrfs_lookup_block_group(ptr noundef %fs_info, i64 noundef %logical) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !153

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.57, i32 noundef 1969) #17
  unreachable

cond.end:                                         ; preds = %if.end
  %add = add i64 %length, %logical
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 48
  %5 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %zone_capacity, align 8
  %add4 = add i64 %6, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add4)
  %cmp = icmp ult i64 %add, %add4
  br i1 %cmp, label %cond.end.out_crit_edge, label %if.end6

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end6:                                          ; preds = %cond.end
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %zone_is_active = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 17
  %7 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %zone_is_active, align 8
  %8 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %out

if.end10:                                         ; preds = %if.end6
  %bf.clear13 = and i8 %bf.load, -3
  %9 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear13, ptr %zone_is_active, align 8
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 46
  %10 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %alloc_offset, align 8
  %12 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %zone_capacity, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp15 = icmp eq i64 %11, %13
  br i1 %cmp15, label %cond.end24, label %cond.false23, !prof !158

cond.false23:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.58, i32 noundef 1983) #17
  unreachable

cond.end24:                                       ; preds = %if.end10
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 23
  %14 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_space_ctl, align 4
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp25 = icmp eq i64 %17, 0
  br i1 %cmp25, label %cond.end34, label %cond.false33, !prof !158

cond.false33:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.59, i32 noundef 1984) #17
  unreachable

cond.end34:                                       ; preds = %cond.end24
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 176
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp.i.not.i = icmp eq i64 %22, 0
  br i1 %cmp.i.not.i, label %cond.end34.btrfs_clear_treelog_bg.exit_crit_edge, label %if.end.i

cond.end34.btrfs_clear_treelog_bg.exit_crit_edge: ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_clear_treelog_bg.exit

if.end.i:                                         ; preds = %cond.end34
  %treelog_bg_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 178
  tail call void @_raw_spin_lock(ptr noundef %treelog_bg_lock.i) #13
  %treelog_bg.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 179
  %23 = ptrtoint ptr %treelog_bg.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %treelog_bg.i, align 8
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp.i83 = icmp eq i64 %24, %26
  br i1 %cmp.i83, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %treelog_bg.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %treelog_bg.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %treelog_bg_lock.i) #13
  br label %btrfs_clear_treelog_bg.exit

btrfs_clear_treelog_bg.exit:                      ; preds = %if.end4.i, %cond.end34.btrfs_clear_treelog_bg.exit_crit_edge
  %28 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call1, align 8
  %relocation_bg_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %29, i32 0, i32 180
  tail call void @_raw_spin_lock(ptr noundef %relocation_bg_lock.i) #13
  %data_reloc_bg.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %29, i32 0, i32 181
  %30 = ptrtoint ptr %data_reloc_bg.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %data_reloc_bg.i, align 8
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp.i85 = icmp eq i64 %31, %33
  br i1 %cmp.i85, label %if.then.i, label %btrfs_clear_treelog_bg.exit.btrfs_clear_data_reloc_bg.exit_crit_edge

btrfs_clear_treelog_bg.exit.btrfs_clear_data_reloc_bg.exit_crit_edge: ; preds = %btrfs_clear_treelog_bg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_clear_data_reloc_bg.exit

if.then.i:                                        ; preds = %btrfs_clear_treelog_bg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %data_reloc_bg.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %data_reloc_bg.i, align 8
  br label %btrfs_clear_data_reloc_bg.exit

btrfs_clear_data_reloc_bg.exit:                   ; preds = %if.then.i, %btrfs_clear_treelog_bg.exit.btrfs_clear_data_reloc_bg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %relocation_bg_lock.i) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %physical_map = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 50
  %35 = ptrtoint ptr %physical_map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %physical_map, align 8
  %stripes = getelementptr inbounds %struct.map_lookup, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stripes, align 8
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %zone_info, align 4
  %max_active_zones = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_active_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool39.not = icmp eq i32 %42, 0
  br i1 %tobool39.not, label %btrfs_clear_data_reloc_bg.exit.out_crit_edge, label %if.end.i88

btrfs_clear_data_reloc_bg.exit.out_crit_edge:     ; preds = %btrfs_clear_data_reloc_bg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i88:                                       ; preds = %btrfs_clear_data_reloc_bg.exit
  %physical38 = getelementptr inbounds %struct.map_lookup, ptr %36, i32 1, i32 1
  %43 = ptrtoint ptr %physical38 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %physical38, align 8
  %zone_size_shift.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %zone_size_shift.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %zone_size_shift.i, align 8
  %sh_prom.i = zext i8 %46 to i64
  %shr.i = lshr i64 %44, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %active_zones.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %40, i32 0, i32 7
  %47 = ptrtoint ptr %active_zones.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_zones.i, align 8
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %conv2.i, ptr noundef %48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i88.btrfs_dev_clear_active_zone.exit_crit_edge, label %if.then4.i

if.end.i88.btrfs_dev_clear_active_zone.exit_crit_edge: ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_dev_clear_active_zone.exit

if.then4.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  %active_zones_left.i = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %40, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_zones_left.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active_zones_left.i, i32 1, i32 3, i32 1) #13
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_zones_left.i, ptr %active_zones_left.i, i32 1, ptr elementtype(i32) %active_zones_left.i) #13, !srcloc !161
  br label %btrfs_dev_clear_active_zone.exit

btrfs_dev_clear_active_zone.exit:                 ; preds = %if.then4.i, %if.end.i88.btrfs_dev_clear_active_zone.exit_crit_edge
  %zone_active_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 182
  tail call void @_raw_spin_lock(ptr noundef %zone_active_bgs_lock) #13
  %active_bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 51
  %50 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %active_bg_list, align 4
  %cmp.i89.not = icmp eq ptr %51, %active_bg_list
  br i1 %cmp.i89.not, label %cond.false53, label %cond.end54, !prof !153

cond.false53:                                     ; preds = %btrfs_dev_clear_active_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.55, i32 noundef 1999) #17
  unreachable

cond.end54:                                       ; preds = %btrfs_dev_clear_active_zone.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active_bg_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %cond.end54.list_del_init.exit_crit_edge

cond.end54.list_del_init.exit_crit_edge:          ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 51, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %active_bg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %cond.end54.list_del_init.exit_crit_edge
  %58 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %active_bg_list, ptr %active_bg_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call1, i32 0, i32 51, i32 1
  %59 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %active_bg_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %zone_active_bgs_lock) #13
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call1) #13
  br label %out

out:                                              ; preds = %list_del_init.exit, %btrfs_clear_data_reloc_bg.exit.out_crit_edge, %if.then8, %cond.end.out_crit_edge
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_zone_cache(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i.not = icmp eq i64 %2, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_devices1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %3 = ptrtoint ptr %fs_devices1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_devices1, align 8
  %device_list_mutex = getelementptr inbounds %struct.btrfs_fs_devices, ptr %4, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %device_list_mutex, i32 noundef 0) #13
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %device.023 = load ptr, ptr %devices, align 8
  %cmp.not24 = icmp eq ptr %device.023, %devices
  br i1 %cmp.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %device.025 = phi ptr [ %device.0, %for.inc.for.body_crit_edge ], [ %device.023, %if.end.for.body_crit_edge ]
  %zone_info = getelementptr inbounds %struct.btrfs_device, ptr %device.025, i32 0, i32 8
  %6 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zone_info, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %zone_cache = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %zone_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zone_cache, align 4
  tail call void @vfree(ptr noundef %9) #13
  %10 = ptrtoint ptr %zone_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone_info, align 4
  %zone_cache6 = getelementptr inbounds %struct.btrfs_zoned_device_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %zone_cache6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %zone_cache6, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %device.025 to i32
  call void @__asan_load4_noabort(i32 %13)
  %device.0 = load ptr, ptr %device.025, align 8
  %cmp.not = icmp eq ptr %device.0, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %device_list_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_disk_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_extent_root(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_previous_extent_item(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_map_sblock(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_bioc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold noreturn }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122, !124, !125, !126, !128, !129, !131, !133, !134, !136, !138, !140}
!llvm.named.register.sp = !{!142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/zoned.c", i32 387, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/zoned.c", i32 394, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/zoned.c", i32 399, i32 3}
!7 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/zoned.c", i32 415, i32 3}
!11 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/zoned.c", i32 457, i32 4}
!14 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/zoned.c", i32 494, i32 3}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/zoned.c", i32 504, i32 4}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/zoned.c", i32 534, i32 4}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/zoned.c", i32 552, i32 4}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/zoned.c", i32 565, i32 11}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/zoned.c", i32 566, i32 14}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/zoned.c", i32 569, i32 11}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/zoned.c", i32 573, i32 11}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/zoned.c", i32 574, i32 14}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/zoned.c", i32 578, i32 3}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/zoned.c", i32 585, i32 2}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/zoned.c", i32 663, i32 5}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/btrfs/zoned.c", i32 679, i32 3}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/zoned.c", i32 686, i32 3}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/btrfs/zoned.c", i32 693, i32 3}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/zoned.c", i32 705, i32 3}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/btrfs/zoned.c", i32 713, i32 3}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/btrfs/zoned.c", i32 729, i32 2}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/btrfs/zoned.c", i32 744, i32 3}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/btrfs/zoned.c", i32 749, i32 3}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/btrfs/zoned.c", i32 830, i32 2}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/zoned.c", i32 946, i32 2}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/btrfs/zoned.c", i32 994, i32 2}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/btrfs/zoned.c", i32 995, i32 2}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/btrfs/zoned.c", i32 1109, i32 2}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/btrfs/zoned.c", i32 1110, i32 2}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/btrfs/zoned.c", i32 1132, i32 3}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/btrfs/zoned.c", i32 1136, i32 3}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/zoned.c", i32 1233, i32 3}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/btrfs/zoned.c", i32 1327, i32 4}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/zoned.c", i32 1340, i32 4}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/zoned.c", i32 1395, i32 5}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/zoned.c", i32 1405, i32 4}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/btrfs/zoned.c", i32 1423, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/btrfs/zoned.c", i32 1438, i32 3}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/btrfs/zoned.c", i32 1445, i32 3}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/btrfs/zoned.c", i32 1454, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/btrfs/zoned.c", i32 1554, i32 2}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/btrfs/zoned.c", i32 1595, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/zoned.c", i32 1663, i32 2}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/btrfs/zoned.c", i32 1762, i32 2}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/btrfs/zoned.c", i32 1825, i32 2}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/btrfs/zoned.c", i32 1917, i32 3}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/btrfs/zoned.c", i32 1937, i32 2}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/btrfs/zoned.c", i32 1969, i32 2}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/btrfs/zoned.c", i32 1983, i32 2}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/btrfs/zoned.c", i32 1984, i32 2}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @assertfail._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @assertfail._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!128 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/btrfs/zoned.c", i32 234, i32 3}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/btrfs/zoned.c", i32 261, i32 3}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/btrfs/zoned.c", i32 160, i32 2}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/btrfs/zoned.c", i32 167, i32 2}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/btrfs/zoned.c", i32 86, i32 3}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/btrfs/zoned.c", i32 780, i32 4}
!142 = !{!"sp"}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 0, i64 56}
!155 = !{!"branch_weights", i32 4000000, i32 4001}
!156 = !{i64 2149967273}
!157 = !{i32 0, i32 33}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{i64 2158349849, i64 2158350331, i64 2158349886, i64 2158349942, i64 2158349976, i64 2158350000, i64 2158350041, i64 2158350062, i64 2158350090, i64 2158350124}
!160 = !{i64 2149967539}
!161 = !{i64 2148212447, i64 2148212473, i64 2148212502, i64 2148212536, i64 2148212567, i64 2148212590}
!162 = !{i8 0, i8 2}
!163 = !{i64 2148314270}
!164 = !{i64 696183, i64 696207, i64 696228, i64 696245, i64 696262}
!165 = !{i64 2148314496}
