; ModuleID = '/llk/IR_all_yes/fs/btrfs/sysfs.c_pt.bc'
source_filename = "../fs/btrfs/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.btrfs_feature_attr = type { %struct.kobj_attribute, i32, i64 }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.86, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.86 = type { i64 }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
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
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.raid_kobject = type { i64, %struct.kobject }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.66 = type { %struct.work_struct }
%struct.btrfs_qgroup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.btrfs_qgroup_rsv, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, i64, %struct.kobject }
%struct.btrfs_qgroup_rsv = type { [3 x i64] }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.84, ptr, ptr, ptr, ptr, %union.anon.85, [120 x i8] }
%union.anon.84 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.85 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdi\00", [28 x i8] zeroinitializer }, align 32
@allocation_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @btrfs_attr_allocation_global_rsv_reserved, ptr @btrfs_attr_allocation_global_rsv_size, ptr null], [20 x i8] zeroinitializer }, align 32
@discard_debug_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @btrfs_attr_discard_discardable_bytes, ptr @btrfs_attr_discard_discardable_extents, ptr @btrfs_attr_discard_discard_bitmap_bytes, ptr @btrfs_attr_discard_discard_bytes_saved, ptr @btrfs_attr_discard_discard_extent_bytes, ptr @btrfs_attr_discard_iops_limit, ptr @btrfs_attr_discard_kbps_limit, ptr @btrfs_attr_discard_max_discard_size, ptr null], [60 x i8] zeroinitializer }, align 32
@btrfs_debug_mount_attrs = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@btrfs_feature_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.44, ptr @btrfs_feature_visible, ptr null, ptr @btrfs_supported_feature_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@btrfs_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @btrfs_attr__label, ptr @btrfs_attr__nodesize, ptr @btrfs_attr__sectorsize, ptr @btrfs_attr__clone_alignment, ptr @btrfs_attr__quota_override, ptr @btrfs_attr__metadata_uuid, ptr @btrfs_attr__checksum, ptr @btrfs_attr__exclusive_operation, ptr @btrfs_attr__generation, ptr @btrfs_attr__read_policy, ptr @btrfs_attr__bg_reclaim_threshold, ptr null], [48 x i8] zeroinitializer }, align 32
@btrfs_feature_set_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96], [20 x i8] zeroinitializer }, align 32
@btrfs_feature_attrs = internal global { [3 x [64 x %struct.btrfs_feature_attr]], [1920 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014couldn't alloc memory for raid level kobject\00", [49 x i8] zeroinitializer }, align 32
@btrfs_raid_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @release_raid_kobj, ptr @kobj_sysfs_ops, ptr null, ptr @raid_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014failed to add kobject for block cache, ignoring\00", [46 x i8] zeroinitializer }, align 32
@space_info_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @space_info_release, ptr @kobj_sysfs_ops, ptr null, ptr @space_info_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devices_kobj\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/sysfs.c\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devinfo_kobj\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014creating sysfs device link for devid %llu failed: %d\00", [41 x i8] zeroinitializer }, align 32
@devid_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @btrfs_release_devid_kobj, ptr @kobj_sysfs_ops, ptr null, ptr @devid_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014devinfo init for devid %llu failed: %d\00", [55 x i8] zeroinitializer }, align 32
@btrfs_kobject_uevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.8, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014BTRFS: Sending event '%d' to kobject: '%s' (%p): failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"btrfs_kobject_uevent\00", [43 x i8] zeroinitializer }, align 32
@btrfs_kobject_uevent._entry_ptr = internal global ptr @btrfs_kobject_uevent._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pU\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014sysfs: failed to create fsid for sprout\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014sysfs: failed to update devid for %llu\00", [55 x i8] zeroinitializer }, align 32
@btrfs_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@btrfs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @btrfs_release_fsid_kobj, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to init sysfs device interface\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devinfo\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to init sysfs devinfo kobject\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"allocation\00", [21 x i8] zeroinitializer }, align 32
@qgroup_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @qgroup_release, ptr @kobj_sysfs_ops, ptr null, ptr @qgroup_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%hu_%llu\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsid_kobj\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qgroups\00", [24 x i8] zeroinitializer }, align 32
@supported_feature_masks = internal constant { [3 x i64], [40 x i8] } { [3 x i64] [i64 0, i64 7, i64 8191], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bit & supported_feature_masks[set]\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@btrfs_static_feature_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.44, ptr null, ptr null, ptr @btrfs_supported_static_feature_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@btrfs_debug_feature_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.22, ptr null, ptr null, ptr @btrfs_debug_feature_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@btrfs_attr_allocation_global_rsv_reserved = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @global_rsv_reserved_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_allocation_global_rsv_size = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @global_rsv_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"global_rsv_reserved\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"global_rsv_size\00", [16 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_discardable_bytes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discardable_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_discardable_extents = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discardable_extents_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_discard_bitmap_bytes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discard_bitmap_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_discard_bytes_saved = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discard_bytes_saved_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_discard_extent_bytes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discard_extent_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_iops_limit = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discard_iops_limit_show, ptr @btrfs_discard_iops_limit_store }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_kbps_limit = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discard_kbps_limit_show, ptr @btrfs_discard_kbps_limit_store }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_discard_max_discard_size = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_discard_max_discard_size_show, ptr @btrfs_discard_max_discard_size_store }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"discardable_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discardable_extents\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"discard_bitmap_bytes\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard_bytes_saved\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"discard_extent_bytes\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iops_limit\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kbps_limit\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_discard_size\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@btrfs_supported_feature_attrs = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @btrfs_attr_features_mixed_backref, ptr @btrfs_attr_features_default_subvol, ptr @btrfs_attr_features_mixed_groups, ptr @btrfs_attr_features_compress_lzo, ptr @btrfs_attr_features_compress_zstd, ptr @btrfs_attr_features_big_metadata, ptr @btrfs_attr_features_extended_iref, ptr @btrfs_attr_features_raid56, ptr @btrfs_attr_features_skinny_metadata, ptr @btrfs_attr_features_no_holes, ptr @btrfs_attr_features_metadata_uuid, ptr @btrfs_attr_features_free_space_tree, ptr @btrfs_attr_features_raid1c34, ptr @btrfs_attr_features_zoned, ptr @btrfs_attr_features_verity, ptr null], [32 x i8] zeroinitializer }, align 32
@can_modify_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.8, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014btrfs: sysfs: unknown feature set %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can_modify_feature\00", [45 x i8] zeroinitializer }, align 32
@can_modify_feature._entry_ptr = internal global ptr @can_modify_feature._entry, section ".printk_index", align 4
@btrfs_attr_features_mixed_backref = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 1 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_default_subvol = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 2 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_mixed_groups = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 4 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_compress_lzo = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 8 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_compress_zstd = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 16 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_big_metadata = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 32 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_extended_iref = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 64 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_raid56 = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 128 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_skinny_metadata = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 256 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_no_holes = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 512 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_metadata_uuid = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 1024 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_free_space_tree = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 1, i64 1 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_raid1c34 = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 2048 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_zoned = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 2, i64 4096 }, [56 x i8] zeroinitializer }, align 32
@btrfs_attr_features_verity = internal global { %struct.btrfs_feature_attr, [56 x i8] } { %struct.btrfs_feature_attr { %struct.kobj_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_feature_attr_show, ptr @btrfs_feature_attr_store }, i32 1, i64 4 }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mixed_backref\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%sabling feature %s on mounted fs is not supported.\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s %s feature flag\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Setting\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"default_subvol\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mixed_groups\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"compress_lzo\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"compress_zstd\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"big_metadata\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extended_iref\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raid56\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skinny_metadata\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_holes\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"metadata_uuid\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"free_space_tree\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid1c34\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zoned\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verity\00", [25 x i8] zeroinitializer }, align 32
@btrfs_attr__label = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_label_show, ptr @btrfs_label_store }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__nodesize = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_nodesize_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__sectorsize = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_sectorsize_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__clone_alignment = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_clone_alignment_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__quota_override = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @quota_override_show, ptr @quota_override_store }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__metadata_uuid = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_metadata_uuid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__checksum = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_checksum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__exclusive_operation = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_exclusive_operation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__generation = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_generation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__read_policy = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_read_policy_show, ptr @btrfs_read_policy_store }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr__bg_reclaim_threshold = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_bg_reclaim_threshold_show, ptr @btrfs_bg_reclaim_threshold_store }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nodesize\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sectorsize\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clone_alignment\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"quota_override\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pU\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"checksum\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s (%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exclusive_operation\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"balance\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device add\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device remove\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device replace\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resize\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"swap activate\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNKNOWN\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"generation\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_policy\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s[%s]\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016read policy set to '%s'\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bg_reclaim_threshold\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"compat\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"compat_ro\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"incompat\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@raid_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @raid_group, ptr null], [24 x i8] zeroinitializer }, align 32
@raid_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @raid_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@raid_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @btrfs_attr_raid_total_bytes, ptr @btrfs_attr_raid_used_bytes, ptr null], [20 x i8] zeroinitializer }, align 32
@btrfs_attr_raid_total_bytes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_raid_used_bytes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_bytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total_bytes\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"used_bytes\00", [21 x i8] zeroinitializer }, align 32
@space_info_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @space_info_group, ptr null], [24 x i8] zeroinitializer }, align 32
@space_info_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @space_info_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@space_info_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @btrfs_attr_space_info_flags, ptr @btrfs_attr_space_info_total_bytes, ptr @btrfs_attr_space_info_bytes_used, ptr @btrfs_attr_space_info_bytes_pinned, ptr @btrfs_attr_space_info_bytes_reserved, ptr @btrfs_attr_space_info_bytes_may_use, ptr @btrfs_attr_space_info_bytes_readonly, ptr @btrfs_attr_space_info_bytes_zone_unusable, ptr @btrfs_attr_space_info_disk_used, ptr @btrfs_attr_space_info_disk_total, ptr null], [52 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_flags = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_flags, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_total_bytes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_total_bytes, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_bytes_used = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_bytes_used, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_bytes_pinned = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_bytes_pinned, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_bytes_reserved = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_bytes_reserved, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_bytes_may_use = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_bytes_may_use, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_bytes_readonly = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_bytes_readonly, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_bytes_zone_unusable = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_bytes_zone_unusable, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_disk_used = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_disk_used, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_space_info_disk_total = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_space_info_show_disk_total, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bytes_used\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bytes_pinned\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bytes_reserved\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bytes_may_use\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bytes_readonly\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bytes_zone_unusable\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disk_used\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disk_total\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixed\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"metadata\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid-combination\00", [44 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.115, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@devid_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @devid_group, ptr null], [24 x i8] zeroinitializer }, align 32
@devid_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devid_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@devid_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @btrfs_attr_devid_error_stats, ptr @btrfs_attr_devid_fsid, ptr @btrfs_attr_devid_in_fs_metadata, ptr @btrfs_attr_devid_missing, ptr @btrfs_attr_devid_replace_target, ptr @btrfs_attr_devid_scrub_speed_max, ptr @btrfs_attr_devid_writeable, ptr null], [32 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_error_stats = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_error_stats_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_fsid = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_fsid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_in_fs_metadata = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_in_fs_metadata_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_missing = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_missing_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_replace_target = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_replace_target_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_scrub_speed_max = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_scrub_speed_max_show, ptr @btrfs_devinfo_scrub_speed_max_store }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_devid_writeable = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_devinfo_writeable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"error_stats\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"invalid\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"write_errs %d\0Aread_errs %d\0Aflush_errs %d\0Acorruption_errs %d\0Ageneration_errs %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fsid\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in_fs_metadata\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"missing\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"replace_target\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scrub_speed_max\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeable\00", [22 x i8] zeroinitializer }, align 32
@qgroup_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qgroup_group, ptr null], [24 x i8] zeroinitializer }, align 32
@qgroup_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qgroup_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qgroup_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @btrfs_attr_qgroup_referenced, ptr @btrfs_attr_qgroup_exclusive, ptr @btrfs_attr_qgroup_max_referenced, ptr @btrfs_attr_qgroup_max_exclusive, ptr @btrfs_attr_qgroup_limit_flags, ptr @btrfs_attr_qgroup_rsv_data, ptr @btrfs_attr_qgroup_rsv_meta_pertrans, ptr @btrfs_attr_qgroup_rsv_meta_prealloc, ptr null], [60 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_referenced = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_show_rfer, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_exclusive = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_show_excl, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_max_referenced = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_show_max_rfer, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_max_exclusive = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_show_max_excl, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_limit_flags = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_show_lim_flags, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_rsv_data = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_rsv_show_data, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_rsv_meta_pertrans = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_rsv_show_meta_pertrans, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_qgroup_rsv_meta_prealloc = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @btrfs_qgroup_rsv_show_meta_prealloc, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"referenced\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exclusive\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_referenced\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_exclusive\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"limit_flags\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rsv_data\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rsv_meta_pertrans\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rsv_meta_prealloc\00", [46 x i8] zeroinitializer }, align 32
@btrfs_unknown_feature_names = internal global { [3 x [64 x [13 x i8]]], [608 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%u\00", [26 x i8] zeroinitializer }, align 32
@btrfs_supported_static_feature_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @btrfs_attr_static_feature_rmdir_subvol, ptr @btrfs_attr_static_feature_supported_checksums, ptr @btrfs_attr_static_feature_send_stream_version, ptr @btrfs_attr_static_feature_supported_rescue_options, ptr @btrfs_attr_static_feature_supported_sectorsizes, ptr null], [40 x i8] zeroinitializer }, align 32
@btrfs_attr_static_feature_rmdir_subvol = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmdir_subvol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_static_feature_supported_checksums = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @supported_checksums_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_static_feature_send_stream_version = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @send_stream_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_static_feature_supported_rescue_options = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @supported_rescue_options_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@btrfs_attr_static_feature_supported_sectorsizes = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.145, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @supported_sectorsizes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmdir_subvol\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"supported_checksums\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_stream_version\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"supported_rescue_options\00", [39 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usebackuproot\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nologreplay\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ignorebadroots\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ignoredatacsums\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"supported_sectorsizes\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@btrfs_debug_feature_attrs = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@switch.table.btrfs_sysfs_add_space_info_type = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.108, ptr @.str.109, ptr @.str.108], [44 x i8] zeroinitializer }, align 32
@switch.table.btrfs_exclusive_operation_show = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.79, ptr @.str.86, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1208, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"allocation_attrs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 759, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c"discard_debug_attrs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 584, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"btrfs_debug_mount_attrs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 601, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant [25 x i8] c"btrfs_feature_attr_group\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 324, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"btrfs_attrs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1060, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant [24 x i8] c"btrfs_feature_set_names\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1234, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"btrfs_feature_attrs\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1105, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1263, i32 46 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1264, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1264, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1339, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"btrfs_raid_ktype\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 695, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1366, i32 53 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1374, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"space_info_ktype\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 748, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1448, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1624, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1633, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"devid_ktype\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1604, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1642, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1645, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1688, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1702, i32 47 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1704, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1715, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [11 x i8] c"btrfs_kset\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1721, i32 21 }
@___asan_gen_.243 = private unnamed_addr constant [12 x i8] c"btrfs_ktype\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1083, i32 25 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1742, i32 49 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1745, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1751, i32 49 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1754, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1785, i32 47 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1796, i32 55 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1817, i32 52 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"qgroup_ktype\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1898, i32 25 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1918, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1955, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1959, i32 49 }
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"supported_feature_masks\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1107, i32 18 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 2009, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 2029, i32 35 }
@___asan_gen_.288 = private unnamed_addr constant [32 x i8] c"btrfs_static_feature_attr_group\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 421, i32 37 }
@___asan_gen_.291 = private unnamed_addr constant [31 x i8] c"btrfs_debug_feature_attr_group\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 614, i32 37 }
@___asan_gen_.294 = private unnamed_addr constant [42 x i8] c"btrfs_attr_allocation_global_rsv_reserved\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [38 x i8] c"btrfs_attr_allocation_global_rsv_size\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 648, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 629, i32 25 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 639, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [37 x i8] c"btrfs_attr_discard_discardable_bytes\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [39 x i8] c"btrfs_attr_discard_discardable_extents\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [40 x i8] c"btrfs_attr_discard_discard_bitmap_bytes\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [39 x i8] c"btrfs_attr_discard_discard_bytes_saved\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [40 x i8] c"btrfs_attr_discard_discard_extent_bytes\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [30 x i8] c"btrfs_attr_discard_iops_limit\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [30 x i8] c"btrfs_attr_discard_kbps_limit\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [36 x i8] c"btrfs_attr_discard_max_discard_size\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 442, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 439, i32 25 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 453, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 450, i32 25 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 464, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 475, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 486, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 516, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 494, i32 25 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 546, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 576, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1121, i32 12 }
@___asan_gen_.369 = private unnamed_addr constant [30 x i8] c"btrfs_supported_feature_attrs\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 301, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 154, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [34 x i8] c"btrfs_attr_features_mixed_backref\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [35 x i8] c"btrfs_attr_features_default_subvol\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [33 x i8] c"btrfs_attr_features_mixed_groups\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [33 x i8] c"btrfs_attr_features_compress_lzo\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [34 x i8] c"btrfs_attr_features_compress_zstd\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [33 x i8] c"btrfs_attr_features_big_metadata\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [34 x i8] c"btrfs_attr_features_extended_iref\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [27 x i8] c"btrfs_attr_features_raid56\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [36 x i8] c"btrfs_attr_features_skinny_metadata\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [29 x i8] c"btrfs_attr_features_no_holes\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [34 x i8] c"btrfs_attr_features_metadata_uuid\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [36 x i8] c"btrfs_attr_features_free_space_tree\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [29 x i8] c"btrfs_attr_features_raid1c34\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [26 x i8] c"btrfs_attr_features_zoned\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [27 x i8] c"btrfs_attr_features_verity\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 273, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 224, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 230, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 274, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 275, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 276, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 277, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 278, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 279, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 280, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 281, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 282, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 283, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 284, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 285, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 288, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 291, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant [18 x i8] c"btrfs_attr__label\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c"btrfs_attr__nodesize\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [23 x i8] c"btrfs_attr__sectorsize\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [28 x i8] c"btrfs_attr__clone_alignment\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [27 x i8] c"btrfs_attr__quota_override\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [26 x i8] c"btrfs_attr__metadata_uuid\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 894, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c"btrfs_attr__checksum\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [32 x i8] c"btrfs_attr__exclusive_operation\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [23 x i8] c"btrfs_attr__generation\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [24 x i8] c"btrfs_attr__read_policy\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [33 x i8] c"btrfs_attr__bg_reclaim_threshold\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 814, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 773, i32 35 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 796, i32 23 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 824, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 834, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 844, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 884, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 891, i32 25 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 907, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 902, i32 25 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 943, i32 1 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 917, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 920, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 923, i32 10 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 926, i32 10 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 929, i32 10 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 932, i32 10 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 935, i32 10 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 938, i32 10 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 952, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1019, i32 1 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 984, i32 49 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 985, i32 24 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 973, i32 56 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1009, i32 5 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1052, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1235, i32 19 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1236, i32 21 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1237, i32 21 }
@___asan_gen_.606 = private unnamed_addr constant [12 x i8] c"raid_groups\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [11 x i8] c"raid_group\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 688, i32 1 }
@___asan_gen_.612 = private unnamed_addr constant [11 x i8] c"raid_attrs\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 683, i32 26 }
@___asan_gen_.615 = private unnamed_addr constant [28 x i8] c"btrfs_attr_raid_total_bytes\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [27 x i8] c"btrfs_attr_raid_used_bytes\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 655, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 656, i32 1 }
@___asan_gen_.627 = private unnamed_addr constant [18 x i8] c"space_info_groups\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"space_info_group\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 740, i32 1 }
@___asan_gen_.633 = private unnamed_addr constant [17 x i8] c"space_info_attrs\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 727, i32 26 }
@___asan_gen_.636 = private unnamed_addr constant [28 x i8] c"btrfs_attr_space_info_flags\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [34 x i8] c"btrfs_attr_space_info_total_bytes\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 712, i32 1 }
@___asan_gen_.642 = private unnamed_addr constant [33 x i8] c"btrfs_attr_space_info_bytes_used\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [35 x i8] c"btrfs_attr_space_info_bytes_pinned\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [37 x i8] c"btrfs_attr_space_info_bytes_reserved\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [36 x i8] c"btrfs_attr_space_info_bytes_may_use\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [37 x i8] c"btrfs_attr_space_info_bytes_readonly\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [42 x i8] c"btrfs_attr_space_info_bytes_zone_unusable\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [32 x i8] c"btrfs_attr_space_info_disk_used\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [33 x i8] c"btrfs_attr_space_info_disk_total\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 711, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 713, i32 1 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 714, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 715, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 716, i32 1 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 717, i32 1 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 718, i32 1 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 719, i32 1 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 720, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1406, i32 10 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1408, i32 10 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1410, i32 10 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1412, i32 10 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1415, i32 10 }
@___asan_gen_.708 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.718 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 3491, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 87, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [13 x i8] c"devid_groups\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [12 x i8] c"devid_group\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1593, i32 1 }
@___asan_gen_.732 = private unnamed_addr constant [12 x i8] c"devid_attrs\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1583, i32 26 }
@___asan_gen_.735 = private unnamed_addr constant [29 x i8] c"btrfs_attr_devid_error_stats\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [22 x i8] c"btrfs_attr_devid_fsid\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [32 x i8] c"btrfs_attr_devid_in_fs_metadata\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [25 x i8] c"btrfs_attr_devid_missing\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [32 x i8] c"btrfs_attr_devid_replace_target\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [33 x i8] c"btrfs_attr_devid_scrub_speed_max\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [27 x i8] c"btrfs_attr_devid_writeable\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1576, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1557, i32 26 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1565, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1548, i32 1 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1472, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1485, i32 1 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1499, i32 1 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1524, i32 1 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1538, i32 1 }
@___asan_gen_.783 = private unnamed_addr constant [14 x i8] c"qgroup_groups\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [13 x i8] c"qgroup_group\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1889, i32 1 }
@___asan_gen_.789 = private unnamed_addr constant [13 x i8] c"qgroup_attrs\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1878, i32 26 }
@___asan_gen_.792 = private unnamed_addr constant [29 x i8] c"btrfs_attr_qgroup_referenced\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [28 x i8] c"btrfs_attr_qgroup_exclusive\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [33 x i8] c"btrfs_attr_qgroup_max_referenced\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [32 x i8] c"btrfs_attr_qgroup_max_exclusive\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [30 x i8] c"btrfs_attr_qgroup_limit_flags\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [27 x i8] c"btrfs_attr_qgroup_rsv_data\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [36 x i8] c"btrfs_attr_qgroup_rsv_meta_pertrans\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [36 x i8] c"btrfs_attr_qgroup_rsv_meta_prealloc\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1864, i32 1 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1865, i32 1 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1866, i32 1 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1867, i32 1 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1868, i32 1 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1869, i32 1 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1870, i32 1 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1871, i32 1 }
@___asan_gen_.840 = private unnamed_addr constant [28 x i8] c"btrfs_unknown_feature_names\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1104, i32 13 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1303, i32 43 }
@___asan_gen_.846 = private unnamed_addr constant [37 x i8] c"btrfs_supported_static_feature_attrs\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 412, i32 26 }
@___asan_gen_.849 = private unnamed_addr constant [39 x i8] c"btrfs_attr_static_feature_rmdir_subvol\00", align 1
@___asan_gen_.852 = private unnamed_addr constant [46 x i8] c"btrfs_attr_static_feature_supported_checksums\00", align 1
@___asan_gen_.855 = private unnamed_addr constant [46 x i8] c"btrfs_attr_static_feature_send_stream_version\00", align 1
@___asan_gen_.858 = private unnamed_addr constant [51 x i8] c"btrfs_attr_static_feature_supported_rescue_options\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [48 x i8] c"btrfs_attr_static_feature_supported_sectorsizes\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 335, i32 1 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 333, i32 25 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 356, i32 1 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 363, i32 1 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 385, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 366, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 367, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 368, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 369, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 370, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 403, i32 1 }
@___asan_gen_.897 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 399, i32 33 }
@___asan_gen_.900 = private unnamed_addr constant [26 x i8] c"btrfs_debug_feature_attrs\00", align 1
@___asan_gen_.901 = private constant [20 x i8] c"../fs/btrfs/sysfs.c\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 610, i32 26 }
@___asan_gen_.903 = private unnamed_addr constant [45 x i8] c"switch.table.btrfs_sysfs_add_space_info_type\00", align 1
@___asan_gen_.904 = private unnamed_addr constant [44 x i8] c"switch.table.btrfs_exclusive_operation_show\00", align 1
@llvm.compiler.used = appending global [255 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_kobject_uevent._entry, ptr @btrfs_kobject_uevent._entry_ptr, ptr @can_modify_feature._entry, ptr @can_modify_feature._entry_ptr, ptr @.str, ptr @allocation_attrs, ptr @discard_debug_attrs, ptr @btrfs_debug_mount_attrs, ptr @btrfs_feature_attr_group, ptr @btrfs_attrs, ptr @btrfs_feature_set_names, ptr @btrfs_feature_attrs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @btrfs_raid_ktype, ptr @.str.5, ptr @.str.6, ptr @space_info_ktype, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @devid_ktype, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @btrfs_kset, ptr @btrfs_ktype, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @qgroup_ktype, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @supported_feature_masks, ptr @.str.28, ptr @.str.29, ptr @btrfs_static_feature_attr_group, ptr @btrfs_debug_feature_attr_group, ptr @btrfs_attr_allocation_global_rsv_reserved, ptr @btrfs_attr_allocation_global_rsv_size, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @btrfs_attr_discard_discardable_bytes, ptr @btrfs_attr_discard_discardable_extents, ptr @btrfs_attr_discard_discard_bitmap_bytes, ptr @btrfs_attr_discard_discard_bytes_saved, ptr @btrfs_attr_discard_discard_extent_bytes, ptr @btrfs_attr_discard_iops_limit, ptr @btrfs_attr_discard_kbps_limit, ptr @btrfs_attr_discard_max_discard_size, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @btrfs_supported_feature_attrs, ptr @.str.45, ptr @.str.46, ptr @btrfs_attr_features_mixed_backref, ptr @btrfs_attr_features_default_subvol, ptr @btrfs_attr_features_mixed_groups, ptr @btrfs_attr_features_compress_lzo, ptr @btrfs_attr_features_compress_zstd, ptr @btrfs_attr_features_big_metadata, ptr @btrfs_attr_features_extended_iref, ptr @btrfs_attr_features_raid56, ptr @btrfs_attr_features_skinny_metadata, ptr @btrfs_attr_features_no_holes, ptr @btrfs_attr_features_metadata_uuid, ptr @btrfs_attr_features_free_space_tree, ptr @btrfs_attr_features_raid1c34, ptr @btrfs_attr_features_zoned, ptr @btrfs_attr_features_verity, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @btrfs_attr__label, ptr @btrfs_attr__nodesize, ptr @btrfs_attr__sectorsize, ptr @btrfs_attr__clone_alignment, ptr @btrfs_attr__quota_override, ptr @btrfs_attr__metadata_uuid, ptr @btrfs_attr__checksum, ptr @btrfs_attr__exclusive_operation, ptr @btrfs_attr__generation, ptr @btrfs_attr__read_policy, ptr @btrfs_attr__bg_reclaim_threshold, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @raid_groups, ptr @raid_group, ptr @raid_attrs, ptr @btrfs_attr_raid_total_bytes, ptr @btrfs_attr_raid_used_bytes, ptr @.str.97, ptr @.str.98, ptr @space_info_groups, ptr @space_info_group, ptr @space_info_attrs, ptr @btrfs_attr_space_info_flags, ptr @btrfs_attr_space_info_total_bytes, ptr @btrfs_attr_space_info_bytes_used, ptr @btrfs_attr_space_info_bytes_pinned, ptr @btrfs_attr_space_info_bytes_reserved, ptr @btrfs_attr_space_info_bytes_may_use, ptr @btrfs_attr_space_info_bytes_readonly, ptr @btrfs_attr_space_info_bytes_zone_unusable, ptr @btrfs_attr_space_info_disk_used, ptr @btrfs_attr_space_info_disk_total, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @init_completion.__key, ptr @.str.116, ptr @devid_groups, ptr @devid_group, ptr @devid_attrs, ptr @btrfs_attr_devid_error_stats, ptr @btrfs_attr_devid_fsid, ptr @btrfs_attr_devid_in_fs_metadata, ptr @btrfs_attr_devid_missing, ptr @btrfs_attr_devid_replace_target, ptr @btrfs_attr_devid_scrub_speed_max, ptr @btrfs_attr_devid_writeable, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @qgroup_groups, ptr @qgroup_group, ptr @qgroup_attrs, ptr @btrfs_attr_qgroup_referenced, ptr @btrfs_attr_qgroup_exclusive, ptr @btrfs_attr_qgroup_max_referenced, ptr @btrfs_attr_qgroup_max_exclusive, ptr @btrfs_attr_qgroup_limit_flags, ptr @btrfs_attr_qgroup_rsv_data, ptr @btrfs_attr_qgroup_rsv_meta_pertrans, ptr @btrfs_attr_qgroup_rsv_meta_prealloc, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @btrfs_unknown_feature_names, ptr @.str.134, ptr @btrfs_supported_static_feature_attrs, ptr @btrfs_attr_static_feature_rmdir_subvol, ptr @btrfs_attr_static_feature_supported_checksums, ptr @btrfs_attr_static_feature_send_stream_version, ptr @btrfs_attr_static_feature_supported_rescue_options, ptr @btrfs_attr_static_feature_supported_sectorsizes, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @btrfs_debug_feature_attrs, ptr @switch.table.btrfs_sysfs_add_space_info_type, ptr @switch.table.btrfs_exclusive_operation_show], section "llvm.metadata"
@0 = internal global [252 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocation_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discard_debug_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_debug_mount_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_feature_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_feature_set_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_feature_attrs to i32), i32 7680, i32 9600, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_raid_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_info_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devid_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_kobject_uevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qgroup_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_feature_masks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_static_feature_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_debug_feature_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_allocation_global_rsv_reserved to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_allocation_global_rsv_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_discardable_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_discardable_extents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_discard_bitmap_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_discard_bytes_saved to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_discard_extent_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_iops_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_kbps_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_discard_max_discard_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_supported_feature_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_modify_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_mixed_backref to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_default_subvol to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_mixed_groups to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_compress_lzo to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_compress_zstd to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_big_metadata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_extended_iref to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_raid56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_skinny_metadata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_no_holes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_metadata_uuid to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_free_space_tree to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_raid1c34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_zoned to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_features_verity to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__label to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__nodesize to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__sectorsize to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__clone_alignment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__quota_override to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__metadata_uuid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__checksum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__exclusive_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__generation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__read_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr__bg_reclaim_threshold to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_raid_total_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_raid_used_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_info_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_info_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_info_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_flags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_total_bytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_bytes_used to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_bytes_pinned to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_bytes_reserved to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_bytes_may_use to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_bytes_readonly to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_bytes_zone_unusable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_disk_used to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_space_info_disk_total to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devid_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devid_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devid_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_error_stats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_fsid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_in_fs_metadata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_missing to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_replace_target to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_scrub_speed_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_devid_writeable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qgroup_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qgroup_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qgroup_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_referenced to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_exclusive to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_max_referenced to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_max_exclusive to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_limit_flags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_rsv_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_rsv_meta_pertrans to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_qgroup_rsv_meta_prealloc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_unknown_feature_names to i32), i32 2496, i32 3104, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_supported_static_feature_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_static_feature_rmdir_subvol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_static_feature_supported_checksums to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_static_feature_send_stream_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_static_feature_supported_rescue_options to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_attr_static_feature_supported_sectorsizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_debug_feature_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_sysfs_add_space_info_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_exclusive_operation_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_remove_fsid(ptr noundef %fs_devs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_get_fs_uuids() #17
  %tobool.not = icmp eq ptr %fs_devs, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %call, align 4
  %cmp.not12 = icmp eq ptr %.pn11, %call
  br i1 %cmp.not12, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef nonnull %fs_devs)
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn11, %for.cond.preheader.for.body_crit_edge ]
  %fs_devs.addr.0 = getelementptr i8, ptr %.pn13, i32 -36
  tail call fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef %fs_devs.addr.0)
  %1 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, %call
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @btrfs_get_fs_uuids() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef %fs_devs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devinfo_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 22
  %0 = ptrtoint ptr %devinfo_kobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devinfo_kobj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %1) #14
  %2 = ptrtoint ptr %devinfo_kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devinfo_kobj, align 4
  tail call void @kobject_put(ptr noundef %3) #14
  %4 = ptrtoint ptr %devinfo_kobj to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %devinfo_kobj, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %devices_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 21
  %5 = ptrtoint ptr %devices_kobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devices_kobj, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %6) #14
  %7 = ptrtoint ptr %devices_kobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devices_kobj, align 8
  tail call void @kobject_put(ptr noundef %8) #14
  %9 = ptrtoint ptr %devices_kobj to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %devices_kobj, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %state_initialized = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 20, i32 8
  %10 = ptrtoint ptr %state_initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %state_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %fsid_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 20
  tail call void @kobject_del(ptr noundef %fsid_kobj) #14
  tail call void @kobject_put(ptr noundef %fsid_kobj) #14
  %kobj_unregister = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 23
  tail call void @wait_for_completion(ptr noundef %kobj_unregister) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_remove_mounted(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %attrs.i = alloca [2 x ptr], align 4
  %agroup.i = alloca %struct.attribute_group, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %0 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_devices, align 8
  %fsid_kobj1 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %1, i32 0, i32 20
  tail call void @sysfs_remove_link(ptr noundef %fsid_kobj1, ptr noundef nonnull @.str) #14
  %space_info_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 92
  %2 = ptrtoint ptr %space_info_kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %space_info_kobj, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sysfs_remove_files(ptr noundef nonnull %3, ptr noundef nonnull @allocation_attrs) #14
  %4 = ptrtoint ptr %space_info_kobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %space_info_kobj, align 8
  tail call void @kobject_del(ptr noundef %5) #14
  %6 = ptrtoint ptr %space_info_kobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %space_info_kobj, align 8
  tail call void @kobject_put(ptr noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %discard_debug_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 187
  %8 = ptrtoint ptr %discard_debug_kobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %discard_debug_kobj, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sysfs_remove_files(ptr noundef nonnull %9, ptr noundef nonnull @discard_debug_attrs) #14
  %10 = ptrtoint ptr %discard_debug_kobj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %discard_debug_kobj, align 8
  tail call void @kobject_del(ptr noundef %11) #14
  %12 = ptrtoint ptr %discard_debug_kobj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %discard_debug_kobj, align 8
  tail call void @kobject_put(ptr noundef %13) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %debug_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 186
  %14 = ptrtoint ptr %debug_kobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debug_kobj, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.end10.get_features.exit.i_crit_edge, label %if.then12

if.end10.get_features.exit.i_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_features.exit.i

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sysfs_remove_files(ptr noundef nonnull %15, ptr noundef nonnull @btrfs_debug_mount_attrs) #14
  %16 = ptrtoint ptr %debug_kobj to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debug_kobj, align 4
  tail call void @kobject_del(ptr noundef %17) #14
  %18 = ptrtoint ptr %debug_kobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debug_kobj, align 4
  tail call void @kobject_put(ptr noundef %19) #14
  br label %get_features.exit.i

get_features.exit.i:                              ; preds = %if.then12, %if.end10.get_features.exit.i_crit_edge
  %20 = getelementptr inbounds [2 x ptr], ptr %attrs.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.attribute_group, ptr %agroup.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.attribute_group, ptr %agroup.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.attribute_group, ptr %agroup.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.attribute_group, ptr %agroup.i, i32 0, i32 4
  %super_copy.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs.i) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %agroup.i) #14
  %25 = ptrtoint ptr %agroup.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.44, ptr %agroup.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %21, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %22, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %attrs.i, ptr %23, align 4
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %24, align 4
  %30 = ptrtoint ptr %super_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %super_copy.i.i, align 8
  %compat_flags.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %compat_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %compat_flags.i.i.i, align 1
  %34 = call i64 @llvm.bswap.i64(i64 %33) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool.not.i = icmp eq i64 %33, 0
  br i1 %tobool.not.i, label %get_features.exit.i.get_features.exit.i.1_crit_edge, label %if.end.i

get_features.exit.i.get_features.exit.i.1_crit_edge: ; preds = %get_features.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_features.exit.i.1

if.end.i:                                         ; preds = %get_features.exit.i
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %20, align 4
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %if.end.i
  %i.055.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body5.i_crit_edge ]
  %sh_prom.i = zext i32 %i.055.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and6.i = and i64 %shl.i, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i)
  %tobool7.not.i = icmp eq i64 %and6.i, 0
  br i1 %tobool7.not.i, label %for.body5.i.for.inc.i_crit_edge, label %if.end9.i

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx11.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 0, i32 %i.055.i
  %36 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx11.i, ptr %attrs.i, align 4
  %37 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_devices, align 8
  %fsid_kobj.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %38, i32 0, i32 20
  call void @sysfs_unmerge_group(ptr noundef %fsid_kobj.i, ptr noundef nonnull %agroup.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i, %for.body5.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.get_features.exit.i.1_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

for.inc.i.get_features.exit.i.1_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_features.exit.i.1

get_features.exit.i.1:                            ; preds = %for.inc.i.get_features.exit.i.1_crit_edge, %get_features.exit.i.get_features.exit.i.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %agroup.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs.i) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %agroup.i) #14
  %39 = ptrtoint ptr %agroup.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.44, ptr %agroup.i, align 4
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %21, align 4
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %22, align 4
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %attrs.i, ptr %23, align 4
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %24, align 4
  %44 = ptrtoint ptr %super_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %super_copy.i.i, align 8
  %compat_ro_flags.i.i.i.1 = getelementptr inbounds %struct.btrfs_super_block, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %compat_ro_flags.i.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %compat_ro_flags.i.i.i.1, align 1
  %48 = and i64 %47, -504403158265495553
  %49 = call i64 @llvm.bswap.i64(i64 %48)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool.not.i.1 = icmp eq i64 %48, 0
  br i1 %tobool.not.i.1, label %get_features.exit.i.1.get_features.exit.i.2_crit_edge, label %if.end.i.1

get_features.exit.i.1.get_features.exit.i.2_crit_edge: ; preds = %get_features.exit.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_features.exit.i.2

if.end.i.1:                                       ; preds = %get_features.exit.i.1
  %50 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %20, align 4
  br label %for.body5.i.1

for.body5.i.1:                                    ; preds = %for.inc.i.1.for.body5.i.1_crit_edge, %if.end.i.1
  %i.055.i.1 = phi i32 [ 0, %if.end.i.1 ], [ %inc.i.1, %for.inc.i.1.for.body5.i.1_crit_edge ]
  %sh_prom.i.1 = zext i32 %i.055.i.1 to i64
  %shl.i.1 = shl nuw i64 1, %sh_prom.i.1
  %and6.i.1 = and i64 %shl.i.1, %49
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i.1)
  %tobool7.not.i.1 = icmp eq i64 %and6.i.1, 0
  br i1 %tobool7.not.i.1, label %for.body5.i.1.for.inc.i.1_crit_edge, label %if.end9.i.1

for.body5.i.1.for.inc.i.1_crit_edge:              ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.1

if.end9.i.1:                                      ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx11.i.1 = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 1, i32 %i.055.i.1
  %51 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx11.i.1, ptr %attrs.i, align 4
  %52 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fs_devices, align 8
  %fsid_kobj.i.1 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %53, i32 0, i32 20
  call void @sysfs_unmerge_group(ptr noundef %fsid_kobj.i.1, ptr noundef nonnull %agroup.i) #14
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end9.i.1, %for.body5.i.1.for.inc.i.1_crit_edge
  %inc.i.1 = add nuw nsw i32 %i.055.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 64
  br i1 %exitcond.not.i.1, label %for.inc.i.1.get_features.exit.i.2_crit_edge, label %for.inc.i.1.for.body5.i.1_crit_edge

for.inc.i.1.for.body5.i.1_crit_edge:              ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i.1

for.inc.i.1.get_features.exit.i.2_crit_edge:      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_features.exit.i.2

get_features.exit.i.2:                            ; preds = %for.inc.i.1.get_features.exit.i.2_crit_edge, %get_features.exit.i.1.get_features.exit.i.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %agroup.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs.i) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %agroup.i) #14
  %54 = ptrtoint ptr %agroup.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.44, ptr %agroup.i, align 4
  %55 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %21, align 4
  %56 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %22, align 4
  %57 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %attrs.i, ptr %23, align 4
  %58 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %24, align 4
  %59 = ptrtoint ptr %super_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %super_copy.i.i, align 8
  %incompat_flags.i.i.i.2 = getelementptr inbounds %struct.btrfs_super_block, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %incompat_flags.i.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %incompat_flags.i.i.i.2, align 1
  %63 = and i64 %62, 63331869759897599
  %64 = call i64 @llvm.bswap.i64(i64 %63)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool.not.i.2 = icmp eq i64 %63, 0
  br i1 %tobool.not.i.2, label %get_features.exit.i.2.for.inc31.i.2_crit_edge, label %if.end.i.2

get_features.exit.i.2.for.inc31.i.2_crit_edge:    ; preds = %get_features.exit.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31.i.2

if.end.i.2:                                       ; preds = %get_features.exit.i.2
  %65 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %20, align 4
  br label %for.body5.i.2

for.body5.i.2:                                    ; preds = %for.inc.i.2.for.body5.i.2_crit_edge, %if.end.i.2
  %i.055.i.2 = phi i32 [ 0, %if.end.i.2 ], [ %inc.i.2, %for.inc.i.2.for.body5.i.2_crit_edge ]
  %sh_prom.i.2 = zext i32 %i.055.i.2 to i64
  %shl.i.2 = shl nuw i64 1, %sh_prom.i.2
  %and6.i.2 = and i64 %shl.i.2, %64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i.2)
  %tobool7.not.i.2 = icmp eq i64 %and6.i.2, 0
  br i1 %tobool7.not.i.2, label %for.body5.i.2.for.inc.i.2_crit_edge, label %if.end9.i.2

for.body5.i.2.for.inc.i.2_crit_edge:              ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.2

if.end9.i.2:                                      ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx11.i.2 = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 2, i32 %i.055.i.2
  %66 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx11.i.2, ptr %attrs.i, align 4
  %67 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fs_devices, align 8
  %fsid_kobj.i.2 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %68, i32 0, i32 20
  call void @sysfs_unmerge_group(ptr noundef %fsid_kobj.i.2, ptr noundef nonnull %agroup.i) #14
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.end9.i.2, %for.body5.i.2.for.inc.i.2_crit_edge
  %inc.i.2 = add nuw nsw i32 %i.055.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 64
  br i1 %exitcond.not.i.2, label %for.inc.i.2.for.inc31.i.2_crit_edge, label %for.inc.i.2.for.body5.i.2_crit_edge

for.inc.i.2.for.body5.i.2_crit_edge:              ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i.2

for.inc.i.2.for.inc31.i.2_crit_edge:              ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31.i.2

for.inc31.i.2:                                    ; preds = %for.inc.i.2.for.inc31.i.2_crit_edge, %get_features.exit.i.2.for.inc31.i.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %agroup.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs.i) #14
  call void @sysfs_remove_group(ptr noundef %fsid_kobj1, ptr noundef nonnull @btrfs_feature_attr_group) #14
  call void @sysfs_remove_files(ptr noundef %fsid_kobj1, ptr noundef nonnull @btrfs_attrs) #14
  %69 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fs_devices, align 8
  call fastcc void @btrfs_sysfs_remove_fs_devices(ptr noundef %70)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_files(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @addrm_unknown_feature_attrs(ptr nocapture noundef readonly %fs_info, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %attrs = alloca [2 x ptr], align 4
  %agroup = alloca %struct.attribute_group, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [2 x ptr], ptr %attrs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.attribute_group, ptr %agroup, i32 0, i32 1
  %2 = getelementptr inbounds %struct.attribute_group, ptr %agroup, i32 0, i32 2
  %3 = getelementptr inbounds %struct.attribute_group, ptr %agroup, i32 0, i32 3
  %4 = getelementptr inbounds %struct.attribute_group, ptr %agroup, i32 0, i32 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %fs_devices19 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %entry
  %set.057 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %agroup) #14
  %5 = ptrtoint ptr %agroup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.44, ptr %agroup, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attrs, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %10 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %super_copy.i, align 8
  %12 = zext i32 %set.057 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %set.057, label %if.else4.i [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %compat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 20
  br label %get_features.exit

if.then2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 21
  br label %get_features.exit

if.else4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 22
  br label %get_features.exit

get_features.exit:                                ; preds = %if.else4.i, %if.then2.i, %if.then.i
  %incompat_flags.i.sink.i = phi ptr [ %incompat_flags.i.i, %if.else4.i ], [ %compat_ro_flags.i.i, %if.then2.i ], [ %compat_flags.i.i, %if.then.i ]
  %13 = ptrtoint ptr %incompat_flags.i.sink.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %incompat_flags.i.sink.i, align 1
  %15 = call i64 @llvm.bswap.i64(i64 %14) #14
  %arrayidx = getelementptr [3 x i64], ptr @supported_feature_masks, i32 0, i32 %set.057
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  %neg = xor i64 %17, -1
  %and = and i64 %15, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %get_features.exit.for.inc31_crit_edge, label %if.end

get_features.exit.for.inc31_crit_edge:            ; preds = %get_features.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31

if.end:                                           ; preds = %get_features.exit
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %0, align 4
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %if.end
  %i.055 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body5_crit_edge ]
  %sh_prom = zext i32 %i.055 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and6 = and i64 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %for.body5.for.inc_crit_edge, label %if.end9

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end9:                                          ; preds = %for.body5
  %arrayidx11 = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 %set.057, i32 %i.055
  %19 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx11, ptr %attrs, align 4
  %20 = ptrtoint ptr %fs_devices19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_devices19, align 8
  %fsid_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %21, i32 0, i32 20
  br i1 %add, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  %call15 = call i32 @sysfs_merge_group(ptr noundef %fsid_kobj, ptr noundef nonnull %agroup) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.for.inc_crit_edge, label %cleanup25

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @sysfs_unmerge_group(ptr noundef %fsid_kobj, ptr noundef nonnull %agroup) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then14.for.inc_crit_edge, %for.body5.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.for.inc31_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.inc.for.inc31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31

cleanup25:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %agroup) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs) #14
  br label %cleanup34

for.inc31:                                        ; preds = %for.inc.for.inc31_crit_edge, %get_features.exit.for.inc31_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %agroup) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs) #14
  %inc32 = add nuw nsw i32 %set.057, 1
  %exitcond59.not = icmp eq i32 %inc32, 3
  br i1 %exitcond59.not, label %for.inc31.cleanup34_crit_edge, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc31.cleanup34_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

cleanup34:                                        ; preds = %for.inc31.cleanup34_crit_edge, %cleanup25
  %retval.6 = phi i32 [ %call15, %cleanup25 ], [ 0, %for.inc31.cleanup34_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_sysfs_remove_fs_devices(ptr noundef readonly %fs_devices) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 13
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %device.071 = load ptr, ptr %devices, align 8
  %cmp.not72 = icmp eq ptr %device.071, %devices
  br i1 %cmp.not72, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %btrfs_sysfs_remove_device.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %device.073 = phi ptr [ %device.0, %btrfs_sysfs_remove_device.exit.for.body_crit_edge ], [ %device.071, %entry.for.body_crit_edge ]
  %fs_info.i = getelementptr inbounds %struct.btrfs_device, ptr %device.073, i32 0, i32 4
  %1 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_info.i, align 4
  %fs_devices.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %2, i32 0, i32 100
  %3 = ptrtoint ptr %fs_devices.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_devices.i, align 8
  %devices_kobj1.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %devices_kobj1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devices_kobj1.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cond.false.i, label %cond.end.i, !prof !436

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 1448) #18
  unreachable

cond.end.i:                                       ; preds = %for.body
  %bdev.i = getelementptr inbounds %struct.btrfs_device, ptr %device.073, i32 0, i32 7
  %7 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev.i, align 8
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %cond.end.i.if.end.i_crit_edge, label %if.then.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %bd_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_device.i, align 8
  tail call void @sysfs_remove_link(ptr noundef nonnull %6, ptr noundef %10) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.i.if.end.i_crit_edge
  %state_initialized.i = getelementptr inbounds %struct.btrfs_device, ptr %device.073, i32 0, i32 32, i32 8
  %11 = ptrtoint ptr %state_initialized.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %state_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool6.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool6.not.i, label %if.end.i.btrfs_sysfs_remove_device.exit_crit_edge, label %if.then7.i

if.end.i.btrfs_sysfs_remove_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_remove_device.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %devid_kobj.i = getelementptr inbounds %struct.btrfs_device, ptr %device.073, i32 0, i32 32
  tail call void @kobject_del(ptr noundef %devid_kobj.i) #14
  tail call void @kobject_put(ptr noundef %devid_kobj.i) #14
  %kobj_unregister.i = getelementptr inbounds %struct.btrfs_device, ptr %device.073, i32 0, i32 31
  tail call void @wait_for_completion(ptr noundef %kobj_unregister.i) #14
  br label %btrfs_sysfs_remove_device.exit

btrfs_sysfs_remove_device.exit:                   ; preds = %if.then7.i, %if.end.i.btrfs_sysfs_remove_device.exit_crit_edge
  %12 = ptrtoint ptr %device.073 to i32
  call void @__asan_load4_noabort(i32 %12)
  %device.0 = load ptr, ptr %device.073, align 8
  %cmp.not = icmp eq ptr %device.0, %devices
  br i1 %cmp.not, label %btrfs_sysfs_remove_device.exit.for.end_crit_edge, label %btrfs_sysfs_remove_device.exit.for.body_crit_edge

btrfs_sysfs_remove_device.exit.for.body_crit_edge: ; preds = %btrfs_sysfs_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

btrfs_sysfs_remove_device.exit.for.end_crit_edge: ; preds = %btrfs_sysfs_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %btrfs_sysfs_remove_device.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %seed_list = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 15
  %13 = ptrtoint ptr %seed_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn77 = load ptr, ptr %seed_list, align 8
  %cmp14.not78 = icmp eq ptr %.pn77, %seed_list
  br i1 %cmp14.not78, label %for.end.for.end41_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end41

for.cond11.loopexit:                              ; preds = %btrfs_sysfs_remove_device.exit70.for.cond11.loopexit_crit_edge, %for.body16.for.cond11.loopexit_crit_edge
  %14 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn79, align 8
  %cmp14.not = icmp eq ptr %.pn, %seed_list
  br i1 %cmp14.not, label %for.cond11.loopexit.for.end41_crit_edge, label %for.cond11.loopexit.for.body16_crit_edge

for.cond11.loopexit.for.body16_crit_edge:         ; preds = %for.cond11.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16

for.cond11.loopexit.for.end41_crit_edge:          ; preds = %for.cond11.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end41

for.body16:                                       ; preds = %for.cond11.loopexit.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.cond11.loopexit.for.body16_crit_edge ], [ %.pn77, %for.end.for.body16_crit_edge ]
  %devices18 = getelementptr i8, ptr %.pn79, i32 -16
  %15 = ptrtoint ptr %devices18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %device.174 = load ptr, ptr %devices18, align 8
  %cmp25.not75 = icmp eq ptr %device.174, %devices18
  br i1 %cmp25.not75, label %for.body16.for.cond11.loopexit_crit_edge, label %for.body16.for.body27_crit_edge

for.body16.for.body27_crit_edge:                  ; preds = %for.body16
  br label %for.body27

for.body16.for.cond11.loopexit_crit_edge:         ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond11.loopexit

for.body27:                                       ; preds = %btrfs_sysfs_remove_device.exit70.for.body27_crit_edge, %for.body16.for.body27_crit_edge
  %device.176 = phi ptr [ %device.1, %btrfs_sysfs_remove_device.exit70.for.body27_crit_edge ], [ %device.174, %for.body16.for.body27_crit_edge ]
  %fs_info.i53 = getelementptr inbounds %struct.btrfs_device, ptr %device.176, i32 0, i32 4
  %16 = ptrtoint ptr %fs_info.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_info.i53, align 4
  %fs_devices.i54 = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 100
  %18 = ptrtoint ptr %fs_devices.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_devices.i54, align 8
  %devices_kobj1.i55 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %devices_kobj1.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devices_kobj1.i55, align 8
  %tobool.not.i56 = icmp eq ptr %21, null
  br i1 %tobool.not.i56, label %cond.false.i57, label %cond.end.i60, !prof !436

cond.false.i57:                                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 1448) #18
  unreachable

cond.end.i60:                                     ; preds = %for.body27
  %bdev.i58 = getelementptr inbounds %struct.btrfs_device, ptr %device.176, i32 0, i32 7
  %22 = ptrtoint ptr %bdev.i58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i58, align 8
  %tobool4.not.i59 = icmp eq ptr %23, null
  br i1 %tobool4.not.i59, label %cond.end.i60.if.end.i66_crit_edge, label %if.then.i62

cond.end.i60.if.end.i66_crit_edge:                ; preds = %cond.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i66

if.then.i62:                                      ; preds = %cond.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  %bd_device.i61 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %bd_device.i61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd_device.i61, align 8
  tail call void @sysfs_remove_link(ptr noundef nonnull %21, ptr noundef %25) #14
  br label %if.end.i66

if.end.i66:                                       ; preds = %if.then.i62, %cond.end.i60.if.end.i66_crit_edge
  %state_initialized.i63 = getelementptr inbounds %struct.btrfs_device, ptr %device.176, i32 0, i32 32, i32 8
  %26 = ptrtoint ptr %state_initialized.i63 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i64 = load i8, ptr %state_initialized.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i64)
  %tobool6.not.i65 = icmp sgt i8 %bf.load.i64, -1
  br i1 %tobool6.not.i65, label %if.end.i66.btrfs_sysfs_remove_device.exit70_crit_edge, label %if.then7.i69

if.end.i66.btrfs_sysfs_remove_device.exit70_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_remove_device.exit70

if.then7.i69:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #16
  %devid_kobj.i67 = getelementptr inbounds %struct.btrfs_device, ptr %device.176, i32 0, i32 32
  tail call void @kobject_del(ptr noundef %devid_kobj.i67) #14
  tail call void @kobject_put(ptr noundef %devid_kobj.i67) #14
  %kobj_unregister.i68 = getelementptr inbounds %struct.btrfs_device, ptr %device.176, i32 0, i32 31
  tail call void @wait_for_completion(ptr noundef %kobj_unregister.i68) #14
  br label %btrfs_sysfs_remove_device.exit70

btrfs_sysfs_remove_device.exit70:                 ; preds = %if.then7.i69, %if.end.i66.btrfs_sysfs_remove_device.exit70_crit_edge
  %27 = ptrtoint ptr %device.176 to i32
  call void @__asan_load4_noabort(i32 %27)
  %device.1 = load ptr, ptr %device.176, align 8
  %cmp25.not = icmp eq ptr %device.1, %devices18
  br i1 %cmp25.not, label %btrfs_sysfs_remove_device.exit70.for.cond11.loopexit_crit_edge, label %btrfs_sysfs_remove_device.exit70.for.body27_crit_edge

btrfs_sysfs_remove_device.exit70.for.body27_crit_edge: ; preds = %btrfs_sysfs_remove_device.exit70
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body27

btrfs_sysfs_remove_device.exit70.for.cond11.loopexit_crit_edge: ; preds = %btrfs_sysfs_remove_device.exit70
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond11.loopexit

for.end41:                                        ; preds = %for.cond11.loopexit.for.end41_crit_edge, %for.end.for.end41_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @btrfs_feature_set_name(i32 noundef %set) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @btrfs_feature_set_names, i32 0, i32 %set
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_printable_features(i32 noundef %set, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup8

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.022 = phi i32 [ %len.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sh_prom = zext i32 %i.023 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %flags
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx4 = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 %set, i32 %i.023
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx4, align 8
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %len.022
  %sub = sub i32 4096, %len.022
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.022)
  %tobool6.not = icmp eq i32 %len.022, 0
  %cond = select i1 %tobool6.not, ptr @.str.3, ptr @.str.2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef %2) #14
  %add = add i32 %call7, %len.022
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.body.cleanup_crit_edge
  %len.1 = phi i32 [ %add, %if.end3 ], [ %len.022, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %cleanup.cleanup8_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.cleanup8_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_add_block_group_type(ptr nocapture noundef readonly %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %space_info2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 22
  %2 = ptrtoint ptr %space_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %space_info2, align 8
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !426) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %11, 262144
  %or.i = or i32 %11, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3392, i32 noundef 144) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !426) #14
  %and.i.i57 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i57 to ptr
  %task.i58 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i58, align 8
  %flags1.i59 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags1.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags1.i59, align 4
  %and.i60 = and i32 %18, -262145
  %or.i61 = or i32 %and.i60, %and.i
  store i32 %or.i61, ptr %flags1.i59, align 4
  %19 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %20, ptr noundef nonnull @.str.4) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %5) #17
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags, align 8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %call7.i.i, align 8
  %kobj = getelementptr inbounds %struct.raid_kobject, ptr %call7.i.i, i32 0, i32 1
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @btrfs_raid_ktype) #14
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %arrayidx = getelementptr %struct.btrfs_space_info, ptr %3, i32 0, i32 24, i32 %call
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  tail call void @kobject_put(ptr noundef %kobj) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %kobj, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  %kobj18 = getelementptr inbounds %struct.btrfs_space_info, ptr %3, i32 0, i32 23
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %call7.i.i, align 8
  %call20 = tail call ptr @btrfs_bg_type_to_raid_name(i64 noundef %28) #14
  %call21 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj, ptr noundef %kobj18, ptr noundef nonnull @.str.5, ptr noundef %call20) #14
  %29 = tail call i32 @llvm.read_register.i32(metadata !426) #14
  %and.i.i62 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i62 to ptr
  %task.i63 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i63, align 8
  %flags1.i64 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags1.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags1.i64, align 4
  %and.i65 = and i32 %34, -262145
  %or.i66 = or i32 %and.i65, %and.i
  store i32 %or.i66, ptr %flags1.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else.cleanup_crit_edge, label %if.then23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  tail call void @kobject_put(ptr noundef %kobj) #14
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.6) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.else.cleanup_crit_edge, %if.then9, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @btrfs_bg_flags_to_raid_index(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_bg_type_to_raid_name(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_remove_space_info(ptr noundef %space_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %1) #14
  tail call void @kobject_put(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  store ptr null, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %3) #14
  tail call void @kobject_put(ptr noundef nonnull %3) #14
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx.2 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  store ptr null, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %5) #14
  tail call void @kobject_put(ptr noundef nonnull %5) #14
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx.3 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  store ptr null, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %7) #14
  tail call void @kobject_put(ptr noundef nonnull %7) #14
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %arrayidx.4 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  store ptr null, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %9) #14
  tail call void @kobject_put(ptr noundef nonnull %9) #14
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %arrayidx.5 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  store ptr null, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %11) #14
  tail call void @kobject_put(ptr noundef nonnull %11) #14
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %arrayidx.6 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  store ptr null, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %13, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %13) #14
  tail call void @kobject_put(ptr noundef nonnull %13) #14
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %arrayidx.7 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  store ptr null, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %15, null
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %15) #14
  tail call void @kobject_put(ptr noundef nonnull %15) #14
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  %arrayidx.8 = getelementptr %struct.btrfs_space_info, ptr %space_info, i32 0, i32 24, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  store ptr null, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %17, null
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %if.then.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %17) #14
  tail call void @kobject_put(ptr noundef nonnull %17) #14
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.end.7.if.end.8_crit_edge
  %kobj3 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 23
  tail call void @kobject_del(ptr noundef %kobj3) #14
  tail call void @kobject_put(ptr noundef %kobj3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sysfs_add_space_info_type(ptr nocapture noundef readonly %fs_info, ptr noundef %space_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 23
  %space_info_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 92
  %0 = ptrtoint ptr %space_info_kobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info_kobj, align 8
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %switch.tableidx = add i64 %3, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %switch.tableidx)
  %4 = icmp ult i64 %switch.tableidx, 5
  br i1 %4, label %switch.hole_check, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1414, i32 noundef 9, ptr noundef null) #14
  br label %alloc_name.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %6 = trunc i64 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.btrfs_sysfs_add_space_info_type, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %alloc_name.exit

alloc_name.exit:                                  ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi ptr [ @.str.112, %do.end.i ], [ %switch.load, %switch.lookup ]
  %call1 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @space_info_ktype, ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %alloc_name.exit.cleanup_crit_edge, label %if.then

alloc_name.exit.cleanup_crit_edge:                ; preds = %alloc_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %alloc_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_put(ptr noundef %kobj) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %alloc_name.exit.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_remove_device(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_devices, align 8
  %devices_kobj1 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %devices_kobj1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devices_kobj1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !436

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 1448) #21
  unreachable

cond.end:                                         ; preds = %entry
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %bd_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_device, align 8
  tail call void @sysfs_remove_link(ptr noundef nonnull %5, ptr noundef %9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %state_initialized = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 32, i32 8
  %10 = ptrtoint ptr %state_initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %state_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %devid_kobj = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 32
  tail call void @kobject_del(ptr noundef %devid_kobj) #14
  tail call void @kobject_put(ptr noundef %devid_kobj) #14
  %kobj_unregister = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 31
  tail call void @wait_for_completion(ptr noundef %kobj_unregister) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #6 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %expr, ptr noundef nonnull @.str.8, i32 noundef %line) #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #14, !srcloc !437
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sysfs_add_device(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_devices, align 8
  %devices_kobj1 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %devices_kobj1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devices_kobj1, align 8
  %devinfo_kobj4 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %devinfo_kobj4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devinfo_kobj4, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !436

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 1623) #21
  unreachable

cond.end:                                         ; preds = %entry
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %cond.false15, label %cond.end16, !prof !436

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 1624) #21
  unreachable

cond.end16:                                       ; preds = %cond.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !426) #14
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %13, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 7
  %14 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev, align 8
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %cond.end16.if.end23_crit_edge, label %if.then

cond.end16.if.end23_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then:                                          ; preds = %cond.end16
  %bd_device = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %bd_device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_device, align 4
  %call19 = tail call i32 @sysfs_create_link(ptr noundef nonnull %5, ptr noundef %bd_device, ptr noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then.if.end23_crit_edge, label %cleanup

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_info, align 4
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  %20 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %devid, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %19, ptr noundef nonnull @.str.10, i64 noundef %21, i32 noundef %call19) #20
  br label %out

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %cond.end16.if.end23_crit_edge
  %kobj_unregister = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 31
  %22 = ptrtoint ptr %kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 31, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @init_completion.__key) #14
  %devid_kobj = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 32
  %devid24 = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  %23 = ptrtoint ptr %devid24 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %devid24, align 8
  %call25 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %devid_kobj, ptr noundef nonnull @devid_ktype, ptr noundef nonnull %7, ptr noundef nonnull @.str.11, i64 noundef %24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.out_crit_edge, label %if.then27

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_put(ptr noundef %devid_kobj) #14
  %25 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info, align 4
  %27 = ptrtoint ptr %devid24 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %devid24, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %26, ptr noundef nonnull @.str.12, i64 noundef %28, i32 noundef %call25) #20
  br label %out

out:                                              ; preds = %if.then27, %if.end23.out_crit_edge, %cleanup
  %ret.0 = phi i32 [ %call19, %cleanup ], [ %call25, %if.then27 ], [ 0, %if.end23.out_crit_edge ]
  %and.i = and i32 %13, 262144
  %29 = tail call i32 @llvm.read_register.i32(metadata !426) #14
  %and.i.i57 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i57 to ptr
  %task.i58 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i58, align 8
  %flags1.i59 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags1.i59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags1.i59, align 4
  %and.i60 = and i32 %34, -262145
  %or.i61 = or i32 %and.i60, %and.i
  store i32 %or.i61, ptr %flags1.i59, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_kobject_uevent(ptr nocapture noundef readonly %bdev, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  %call = tail call i32 @kobject_uevent(ptr noundef %bd_device, i32 noundef %action) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %part02 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part02 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part02, align 4
  %bd_device3 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %bd_device3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_device3, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %action, ptr noundef %9, ptr noundef %bd_device3) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_update_sprout_fsid(ptr noundef %fs_devices) local_unnamed_addr #0 align 64 {
entry:
  %fsid_buf = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %fsid_buf) #14
  %0 = call ptr @memset(ptr %fsid_buf, i32 255, i32 37)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fsid_buf, i32 noundef 37, ptr noundef nonnull @.str.15, ptr noundef %fs_devices)
  %fsid_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 20
  %call3 = call i32 @kobject_rename(ptr noundef %fsid_kobj, ptr noundef nonnull %fsid_buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devices, i32 0, i32 19
  %1 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_info, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %2, ptr noundef nonnull @.str.16) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %fsid_buf) #14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_update_devid(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #14
  %devid = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 13
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 24)
  %1 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %devid, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 24, ptr noundef nonnull @.str.11, i64 noundef %2)
  %devid_kobj = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 32
  %call2 = call i32 @kobject_rename(ptr noundef %devid_kobj, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_devices = getelementptr inbounds %struct.btrfs_device, ptr %device, i32 0, i32 3
  %3 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_devices, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_fs_devices, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fs_info, align 4
  %7 = ptrtoint ptr %devid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %devid, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %6, ptr noundef nonnull @.str.17, i64 noundef %8) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sysfs_add_fsid(ptr noundef %fs_devs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_unregister = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 23
  %0 = ptrtoint ptr %kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @init_completion.__key) #14
  %1 = load ptr, ptr @btrfs_kset, align 4
  %fsid_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 20
  %kset = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %kset, align 8
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %fsid_kobj, ptr noundef nonnull @btrfs_ktype, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef %fs_devs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_put(ptr noundef %fsid_kobj) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.18, ptr noundef %fsid_kobj) #14
  %devices_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 21
  %3 = ptrtoint ptr %devices_kobj to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %devices_kobj, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %fs_info = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 19
  %4 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %5, ptr noundef nonnull @.str.19) #20
  %call.i = tail call ptr @btrfs_get_fs_uuids() #17
  %tobool.not.i = icmp eq ptr %fs_devs, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then.i

for.cond.preheader.i:                             ; preds = %if.then7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn11.i = load ptr, ptr %call.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %call.i
  br i1 %cmp.not12.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef nonnull %fs_devs) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %fs_devs.addr.0.i = getelementptr i8, ptr %.pn13.i, i32 -36
  tail call fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef %fs_devs.addr.0.i) #14
  %7 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %call.i
  br i1 %cmp.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.20, ptr noundef %fsid_kobj) #14
  %devinfo_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 22
  %8 = ptrtoint ptr %devinfo_kobj to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %devinfo_kobj, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.end8
  %fs_info14 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %fs_devs, i32 0, i32 19
  %9 = ptrtoint ptr %fs_info14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info14, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull @.str.21) #20
  %call.i31 = tail call ptr @btrfs_get_fs_uuids() #17
  %tobool.not.i32 = icmp eq ptr %fs_devs, null
  br i1 %tobool.not.i32, label %for.cond.preheader.i35, label %if.then.i36

for.cond.preheader.i35:                           ; preds = %if.then13
  %11 = ptrtoint ptr %call.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn11.i33 = load ptr, ptr %call.i31, align 4
  %cmp.not12.i34 = icmp eq ptr %.pn11.i33, %call.i31
  br i1 %cmp.not12.i34, label %for.cond.preheader.i35.cleanup_crit_edge, label %for.cond.preheader.i35.for.body.i41_crit_edge

for.cond.preheader.i35.for.body.i41_crit_edge:    ; preds = %for.cond.preheader.i35
  br label %for.body.i41

for.cond.preheader.i35.cleanup_crit_edge:         ; preds = %for.cond.preheader.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i36:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef nonnull %fs_devs) #14
  br label %cleanup

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %for.cond.preheader.i35.for.body.i41_crit_edge
  %.pn13.i37 = phi ptr [ %.pn.i39, %for.body.i41.for.body.i41_crit_edge ], [ %.pn11.i33, %for.cond.preheader.i35.for.body.i41_crit_edge ]
  %fs_devs.addr.0.i38 = getelementptr i8, ptr %.pn13.i37, i32 -36
  tail call fastcc void @__btrfs_sysfs_remove_fsid(ptr noundef %fs_devs.addr.0.i38) #14
  %12 = ptrtoint ptr %.pn13.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i39 = load ptr, ptr %.pn13.i37, align 4
  %cmp.not.i40 = icmp eq ptr %.pn.i39, %call.i31
  br i1 %cmp.not.i40, label %for.body.i41.cleanup_crit_edge, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i41

for.body.i41.cleanup_crit_edge:                   ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.i41.cleanup_crit_edge, %if.then.i36, %for.cond.preheader.i35.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then.i, %for.cond.preheader.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %for.cond.preheader.i.cleanup_crit_edge ], [ -12, %if.then.i ], [ -12, %for.cond.preheader.i35.cleanup_crit_edge ], [ -12, %if.then.i36 ], [ -12, %for.body.i.cleanup_crit_edge ], [ -12, %for.body.i41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sysfs_add_mounted(ptr nocapture noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %0 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_devices, align 8
  %fsid_kobj1 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %1, i32 0, i32 20
  %devices.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %1, i32 0, i32 13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %device.0.in.i = phi ptr [ %devices.i, %entry ], [ %device.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %device.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %device.0.i = load ptr, ptr %device.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %device.0.i, %devices.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %call.i = tail call i32 @btrfs_sysfs_add_device(ptr noundef %device.0.i) #14
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.btrfs_sysfs_add_fs_devices.exit_crit_edge

for.body.i.btrfs_sysfs_add_fs_devices.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_add_fs_devices.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %seed_list.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %seed_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn63.i = load ptr, ptr %seed_list.i, align 8
  %cmp14.not64.i = icmp eq ptr %.pn63.i, %seed_list.i
  br i1 %cmp14.not64.i, label %for.end.i.if.end_crit_edge, label %for.end.i.for.body16.i_crit_edge

for.end.i.for.body16.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body16.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond11.loopexit.i:                            ; preds = %for.cond22.i
  %4 = ptrtoint ptr %.pn65.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn65.i, align 8
  %cmp14.not.i = icmp eq ptr %.pn.i, %seed_list.i
  br i1 %cmp14.not.i, label %for.cond11.loopexit.i.if.end_crit_edge, label %for.cond11.loopexit.i.for.body16.i_crit_edge

for.cond11.loopexit.i.for.body16.i_crit_edge:     ; preds = %for.cond11.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i

for.cond11.loopexit.i.if.end_crit_edge:           ; preds = %for.cond11.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body16.i:                                     ; preds = %for.cond11.loopexit.i.for.body16.i_crit_edge, %for.end.i.for.body16.i_crit_edge
  %.pn65.i = phi ptr [ %.pn.i, %for.cond11.loopexit.i.for.body16.i_crit_edge ], [ %.pn63.i, %for.end.i.for.body16.i_crit_edge ]
  %devices18.i = getelementptr i8, ptr %.pn65.i, i32 -16
  br label %for.cond22.i

for.cond22.i:                                     ; preds = %for.body27.i.for.cond22.i_crit_edge, %for.body16.i
  %device.1.in.i = phi ptr [ %devices18.i, %for.body16.i ], [ %device.1.i, %for.body27.i.for.cond22.i_crit_edge ]
  %5 = ptrtoint ptr %device.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %device.1.i = load ptr, ptr %device.1.in.i, align 8
  %cmp25.not.i = icmp eq ptr %device.1.i, %devices18.i
  br i1 %cmp25.not.i, label %for.cond11.loopexit.i, label %for.body27.i

for.body27.i:                                     ; preds = %for.cond22.i
  %call28.i = tail call i32 @btrfs_sysfs_add_device(ptr noundef %device.1.i) #14
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.body27.i.for.cond22.i_crit_edge, label %for.body27.i.btrfs_sysfs_add_fs_devices.exit_crit_edge

for.body27.i.btrfs_sysfs_add_fs_devices.exit_crit_edge: ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_add_fs_devices.exit

for.body27.i.for.cond22.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond22.i

btrfs_sysfs_add_fs_devices.exit:                  ; preds = %for.body27.i.btrfs_sysfs_add_fs_devices.exit_crit_edge, %for.body.i.btrfs_sysfs_add_fs_devices.exit_crit_edge
  %ret.0.i = phi i32 [ %call28.i, %for.body27.i.btrfs_sysfs_add_fs_devices.exit_crit_edge ], [ %call.i, %for.body.i.btrfs_sysfs_add_fs_devices.exit_crit_edge ]
  tail call fastcc void @btrfs_sysfs_remove_fs_devices(ptr noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %for.cond11.loopexit.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %call2 = tail call i32 @sysfs_create_files(ptr noundef %fsid_kobj1, ptr noundef nonnull @btrfs_attrs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @btrfs_sysfs_remove_fs_devices(ptr noundef %1)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @sysfs_create_group(ptr noundef %fsid_kobj1, ptr noundef nonnull @btrfs_feature_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.failure_crit_edge

if.end5.failure_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.22, ptr noundef %fsid_kobj1) #14
  %debug_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 186
  %6 = ptrtoint ptr %debug_kobj to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %debug_kobj, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end9.failure_crit_edge, label %if.end14

if.end9.failure_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end14:                                         ; preds = %if.end9
  %call16 = tail call i32 @sysfs_create_files(ptr noundef nonnull %call10, ptr noundef nonnull @btrfs_debug_mount_attrs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.failure_crit_edge

if.end14.failure_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end19:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %debug_kobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debug_kobj, align 4
  %call21 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.23, ptr noundef %8) #14
  %discard_debug_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 187
  %9 = ptrtoint ptr %discard_debug_kobj to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %discard_debug_kobj, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end19.failure_crit_edge, label %if.end25

if.end19.failure_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end25:                                         ; preds = %if.end19
  %call27 = tail call i32 @sysfs_create_files(ptr noundef nonnull %call21, ptr noundef nonnull @discard_debug_attrs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.failure_crit_edge

if.end25.failure_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end30:                                         ; preds = %if.end25
  %call31 = tail call fastcc i32 @addrm_unknown_feature_attrs(ptr noundef %fs_info, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.failure_crit_edge

if.end30.failure_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end34:                                         ; preds = %if.end30
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 45
  %10 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb, align 8
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdi, align 8
  %dev = getelementptr inbounds %struct.backing_dev_info, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call35 = tail call i32 @sysfs_create_link(ptr noundef %fsid_kobj1, ptr noundef %15, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.failure_crit_edge

if.end34.failure_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end38:                                         ; preds = %if.end34
  %call39 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.24, ptr noundef %fsid_kobj1) #14
  %space_info_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 92
  %16 = ptrtoint ptr %space_info_kobj to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call39, ptr %space_info_kobj, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end38.failure_crit_edge, label %if.end43

if.end38.failure_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end43:                                         ; preds = %if.end38
  %call45 = tail call i32 @sysfs_create_files(ptr noundef nonnull %call39, ptr noundef nonnull @allocation_attrs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.end43.failure_crit_edge

if.end43.failure_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %failure

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

failure:                                          ; preds = %if.end43.failure_crit_edge, %if.end38.failure_crit_edge, %if.end34.failure_crit_edge, %if.end30.failure_crit_edge, %if.end25.failure_crit_edge, %if.end19.failure_crit_edge, %if.end14.failure_crit_edge, %if.end9.failure_crit_edge, %if.end5.failure_crit_edge
  %error.0 = phi i32 [ %call6, %if.end5.failure_crit_edge ], [ %call16, %if.end14.failure_crit_edge ], [ %call27, %if.end25.failure_crit_edge ], [ %call31, %if.end30.failure_crit_edge ], [ %call35, %if.end34.failure_crit_edge ], [ %call45, %if.end43.failure_crit_edge ], [ -12, %if.end9.failure_crit_edge ], [ -12, %if.end19.failure_crit_edge ], [ -12, %if.end38.failure_crit_edge ]
  tail call void @btrfs_sysfs_remove_mounted(ptr noundef %fs_info)
  br label %cleanup

cleanup:                                          ; preds = %failure, %if.end43.cleanup_crit_edge, %if.then4, %btrfs_sysfs_add_fs_devices.exit
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %error.0, %failure ], [ %ret.0.i, %btrfs_sysfs_add_fs_devices.exit ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sysfs_add_one_qgroup(ptr noundef %fs_info, ptr noundef %qgroup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qgroups_kobj1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 93
  %0 = ptrtoint ptr %qgroups_kobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qgroups_kobj1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %2 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fs_state, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup, i32 0, i32 17
  %state_initialized = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup, i32 0, i32 17, i32 8
  %5 = ptrtoint ptr %state_initialized to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %state_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %qgroup to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %qgroup, align 8
  %shr.i25 = lshr i64 %7, 48
  %conv.i = trunc i64 %shr.i25 to i32
  %and.i = and i64 %7, 281474976710655
  %call12 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @qgroup_ktype, ptr noundef nonnull %1, ptr noundef nonnull @.str.25, i32 noundef %conv.i, i64 noundef %and.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_put(ptr noundef %kobj) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12, %if.then14 ], [ %call12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_del_qgroups(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %0 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fs_state, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %qgroup_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 137
  %call1 = tail call ptr @rb_first_postorder(ptr noundef %qgroup_tree) #14
  %tobool2.not = icmp eq ptr %call1, null
  %add.ptr = getelementptr i8, ptr %call1, i32 -128
  %tobool4.not3638 = icmp eq ptr %add.ptr, null
  %tobool4.not36 = or i1 %tobool2.not, %tobool4.not3638
  br i1 %tobool4.not36, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs:                                         ; preds = %btrfs_sysfs_del_one_qgroup.exit.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %qgroup.037 = phi ptr [ %add.ptr12, %btrfs_sysfs_del_one_qgroup.exit.land.rhs_crit_edge ], [ %add.ptr, %if.end.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup.037, i32 0, i32 14
  %call6 = tail call ptr @rb_next_postorder(ptr noundef %node) #14
  %tobool8.not = icmp eq ptr %call6, null
  %add.ptr12 = getelementptr i8, ptr %call6, i32 -128
  %3 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %fs_state, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.btrfs_sysfs_del_one_qgroup.exit_crit_edge

land.rhs.btrfs_sysfs_del_one_qgroup.exit_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_del_one_qgroup.exit

if.end.i:                                         ; preds = %land.rhs
  %state_initialized.i = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup.037, i32 0, i32 17, i32 8
  %6 = ptrtoint ptr %state_initialized.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %state_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end.i.btrfs_sysfs_del_one_qgroup.exit_crit_edge, label %if.then2.i

if.end.i.btrfs_sysfs_del_one_qgroup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_del_one_qgroup.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %kobj.i = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup.037, i32 0, i32 17
  tail call void @kobject_del(ptr noundef %kobj.i) #14
  tail call void @kobject_put(ptr noundef %kobj.i) #14
  br label %btrfs_sysfs_del_one_qgroup.exit

btrfs_sysfs_del_one_qgroup.exit:                  ; preds = %if.then2.i, %if.end.i.btrfs_sysfs_del_one_qgroup.exit_crit_edge, %land.rhs.btrfs_sysfs_del_one_qgroup.exit_crit_edge
  %tobool4.not39 = icmp eq ptr %add.ptr12, null
  %tobool4.not = or i1 %tobool8.not, %tobool4.not39
  br i1 %tobool4.not, label %btrfs_sysfs_del_one_qgroup.exit.for.end_crit_edge, label %btrfs_sysfs_del_one_qgroup.exit.land.rhs_crit_edge

btrfs_sysfs_del_one_qgroup.exit.land.rhs_crit_edge: ; preds = %btrfs_sysfs_del_one_qgroup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

btrfs_sysfs_del_one_qgroup.exit.for.end_crit_edge: ; preds = %btrfs_sysfs_del_one_qgroup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %btrfs_sysfs_del_one_qgroup.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %qgroups_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 93
  %7 = ptrtoint ptr %qgroups_kobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qgroups_kobj, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %for.end.cleanup_crit_edge, label %if.then19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_del(ptr noundef nonnull %8) #14
  %9 = ptrtoint ptr %qgroups_kobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qgroups_kobj, align 4
  tail call void @kobject_put(ptr noundef %10) #14
  %11 = ptrtoint ptr %qgroups_kobj to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %qgroups_kobj, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_del_one_qgroup(ptr noundef %fs_info, ptr noundef %qgroup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %0 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fs_state, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end:                                           ; preds = %entry
  %state_initialized = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %state_initialized to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %state_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %kobj = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup, i32 0, i32 17
  tail call void @kobject_del(ptr noundef %kobj) #14
  tail call void @kobject_put(ptr noundef %kobj) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sysfs_add_qgroups(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %0 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_devices, align 8
  %fsid_kobj1 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %1, i32 0, i32 20
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %2 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fs_state, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %fsid_kobj1, null
  br i1 %tobool2.not, label %cond.false, label %cond.end, !prof !436

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.26, i32 noundef 1955) #21
  unreachable

cond.end:                                         ; preds = %if.end
  %qgroups_kobj = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 93
  %5 = ptrtoint ptr %qgroups_kobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qgroups_kobj, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end7, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  %call8 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.27, ptr noundef nonnull %fsid_kobj1) #14
  %7 = ptrtoint ptr %qgroups_kobj to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %qgroups_kobj, align 4
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %if.end7.if.then38_crit_edge, label %if.end13

if.end7.if.then38_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.end13:                                         ; preds = %if.end7
  %qgroup_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 137
  %call14 = tail call ptr @rb_first_postorder(ptr noundef %qgroup_tree) #14
  %tobool15.not = icmp eq ptr %call14, null
  %add.ptr = getelementptr i8, ptr %call14, i32 -128
  %tobool20.not6669 = icmp eq ptr %add.ptr, null
  %tobool20.not66 = or i1 %tobool15.not, %tobool20.not6669
  br i1 %tobool20.not66, label %if.end13.cleanup_crit_edge, label %if.end13.land.rhs_crit_edge

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  br label %land.rhs

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs:                                         ; preds = %btrfs_sysfs_add_one_qgroup.exit.land.rhs_crit_edge, %if.end13.land.rhs_crit_edge
  %qgroup.067 = phi ptr [ %add.ptr28, %btrfs_sysfs_add_one_qgroup.exit.land.rhs_crit_edge ], [ %add.ptr, %if.end13.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup.067, i32 0, i32 14
  %call22 = tail call ptr @rb_next_postorder(ptr noundef %node) #14
  %tobool24.not = icmp eq ptr %call22, null
  %add.ptr28 = getelementptr i8, ptr %call22, i32 -128
  %8 = ptrtoint ptr %qgroups_kobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qgroups_kobj, align 4
  %10 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fs_state, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.btrfs_sysfs_add_one_qgroup.exit_crit_edge

land.rhs.btrfs_sysfs_add_one_qgroup.exit_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_add_one_qgroup.exit

if.end.i:                                         ; preds = %land.rhs
  %kobj.i = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup.067, i32 0, i32 17
  %state_initialized.i = getelementptr inbounds %struct.btrfs_qgroup, ptr %qgroup.067, i32 0, i32 17, i32 8
  %13 = ptrtoint ptr %state_initialized.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %state_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge

if.end.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_add_one_qgroup.exit

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.end4.i.if.then38_crit_edge, label %if.end7.i

if.end4.i.if.then38_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.end7.i:                                        ; preds = %if.end4.i
  %14 = ptrtoint ptr %qgroup.067 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %qgroup.067, align 8
  %shr.i25.i = lshr i64 %15, 48
  %conv.i.i = trunc i64 %shr.i25.i to i32
  %and.i.i = and i64 %15, 281474976710655
  %call12.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj.i, ptr noundef nonnull @qgroup_ktype, ptr noundef nonnull %9, ptr noundef nonnull @.str.25, i32 noundef %conv.i.i, i64 noundef %and.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %if.then14.i, label %if.end7.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge

if.end7.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_sysfs_add_one_qgroup.exit

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kobject_put(ptr noundef %kobj.i) #14
  br label %if.then38

btrfs_sysfs_add_one_qgroup.exit:                  ; preds = %if.end7.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge, %if.end.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge, %land.rhs.btrfs_sysfs_add_one_qgroup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %land.rhs.btrfs_sysfs_add_one_qgroup.exit_crit_edge ], [ 0, %if.end.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge ], [ %call12.i, %if.end7.i.btrfs_sysfs_add_one_qgroup.exit_crit_edge ]
  %tobool20.not71 = icmp eq ptr %add.ptr28, null
  %tobool20.not = or i1 %tobool24.not, %tobool20.not71
  br i1 %tobool20.not, label %btrfs_sysfs_add_one_qgroup.exit.cleanup_crit_edge, label %btrfs_sysfs_add_one_qgroup.exit.land.rhs_crit_edge

btrfs_sysfs_add_one_qgroup.exit.land.rhs_crit_edge: ; preds = %btrfs_sysfs_add_one_qgroup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

btrfs_sysfs_add_one_qgroup.exit.cleanup_crit_edge: ; preds = %btrfs_sysfs_add_one_qgroup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then38:                                        ; preds = %if.then14.i, %if.end4.i.if.then38_crit_edge, %if.end7.if.then38_crit_edge
  %ret.1.ph = phi i32 [ -12, %if.end7.if.then38_crit_edge ], [ %call12.i, %if.then14.i ], [ -22, %if.end4.i.if.then38_crit_edge ]
  tail call void @btrfs_sysfs_del_qgroups(ptr noundef %fs_info)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %btrfs_sysfs_add_one_qgroup.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ %ret.1.ph, %if.then38 ], [ 0, %if.end13.cleanup_crit_edge ], [ %retval.0.i, %btrfs_sysfs_add_one_qgroup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_sysfs_feature_update(ptr noundef readonly %fs_info, i64 noundef %bit, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fs_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i64], ptr @supported_feature_masks, i32 0, i32 %set
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %and = and i64 %1, %bit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %cond.false, label %cond.end, !prof !436

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.28, i32 noundef 2009) #21
  unreachable

cond.end:                                         ; preds = %if.end
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %2 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_devices, align 8
  %state_initialized = getelementptr inbounds %struct.btrfs_fs_devices, ptr %3, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %state_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %state_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %if.end7

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %fsid_kobj4 = getelementptr inbounds %struct.btrfs_fs_devices, ptr %3, i32 0, i32 20
  tail call void @sysfs_remove_group(ptr noundef %fsid_kobj4, ptr noundef nonnull @btrfs_feature_attr_group) #14
  %call8 = tail call i32 @sysfs_create_group(ptr noundef %fsid_kobj4, ptr noundef nonnull @btrfs_feature_attr_group) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_init_sysfs() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef %0) #14
  store ptr %call, ptr @btrfs_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr @btrfs_feature_attrs, i32 0, i32 7680)
  %2 = call ptr @memset(ptr @btrfs_unknown_feature_names, i32 0, i32 2496)
  %3 = load ptr, ptr @btrfs_supported_feature_attrs, align 4
  %tobool.not73.i = icmp eq ptr %3, null
  br i1 %tobool.not73.i, label %if.end.for.body23.i.preheader_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.body23.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23.i.preheader

for.body.i:                                       ; preds = %cond.end11.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %4 = phi ptr [ %15, %cond.end11.i.for.body.i_crit_edge ], [ %3, %if.end.for.body.i_crit_edge ]
  %i.074.i = phi i32 [ %inc.i, %cond.end11.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %feature_bit.i = getelementptr inbounds %struct.btrfs_feature_attr, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %feature_bit.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %feature_bit.i, align 8
  %shr.i.i.i = lshr i64 %6, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #14, !range !438
  %add.i.i.i = sub nuw nsw i32 64, %7
  br label %cond.end11.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i.i.i = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #14, !range !438
  %sub.i6.i.i.i = sub nuw nsw i32 32, %8
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %feature_set.i = getelementptr inbounds %struct.btrfs_feature_attr, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %feature_set.i, align 4
  %arrayidx14.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 %10, i32 %sub.i.i
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 8
  %13 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx14.i, align 8
  %inc.i = add i32 %i.074.i, 1
  %arrayidx.i = getelementptr [16 x ptr], ptr @btrfs_supported_feature_attrs, i32 0, i32 %inc.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %cond.end11.i.for.body23.i.preheader_crit_edge, label %cond.end11.i.for.body.i_crit_edge

cond.end11.i.for.body.i_crit_edge:                ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cond.end11.i.for.body23.i.preheader_crit_edge:    ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23.i.preheader

for.body23.i.preheader:                           ; preds = %cond.end11.i.for.body23.i.preheader_crit_edge, %if.end.for.body23.i.preheader_crit_edge
  br label %for.body23.i

for.body23.i:                                     ; preds = %cleanup.i.for.body23.i_crit_edge, %for.body23.i.preheader
  %i.175.i = phi i32 [ %inc43.i, %cleanup.i.for.body23.i_crit_edge ], [ 0, %for.body23.i.preheader ]
  %arrayidx28.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 0, i32 %i.175.i
  %16 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx28.i, align 8
  %tobool32.not.i = icmp eq ptr %17, null
  br i1 %tobool32.not.i, label %if.end.i, label %for.body23.i.cleanup.i_crit_edge

for.body23.i.cleanup.i_crit_edge:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx26.i = getelementptr [3 x [64 x [13 x i8]]], ptr @btrfs_unknown_feature_names, i32 0, i32 0, i32 %i.175.i
  %call34.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx26.i, i32 noundef 13, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.94, i32 noundef %i.175.i) #14
  %18 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx26.i, ptr %arrayidx28.i, align 8
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx28.i, i32 0, i32 1
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 292, ptr %mode.i, align 4
  %feature_set40.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 0, i32 %i.175.i, i32 1
  %20 = ptrtoint ptr %feature_set40.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %feature_set40.i, align 4
  %sh_prom.i = zext i32 %i.175.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %feature_bit41.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 0, i32 %i.175.i, i32 2
  %21 = ptrtoint ptr %feature_bit41.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl.i, ptr %feature_bit41.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body23.i.cleanup.i_crit_edge
  %inc43.i = add nuw nsw i32 %i.175.i, 1
  %exitcond.not.i = icmp eq i32 %inc43.i, 64
  br i1 %exitcond.not.i, label %cleanup.i.for.body23.1.i_crit_edge, label %cleanup.i.for.body23.i_crit_edge

cleanup.i.for.body23.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23.i

cleanup.i.for.body23.1.i_crit_edge:               ; preds = %cleanup.i
  br label %for.body23.1.i

for.body23.1.i:                                   ; preds = %cleanup.1.i.for.body23.1.i_crit_edge, %cleanup.i.for.body23.1.i_crit_edge
  %i.175.1.i = phi i32 [ %inc43.1.i, %cleanup.1.i.for.body23.1.i_crit_edge ], [ 0, %cleanup.i.for.body23.1.i_crit_edge ]
  %arrayidx28.1.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 1, i32 %i.175.1.i
  %22 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28.1.i, align 8
  %tobool32.not.1.i = icmp eq ptr %23, null
  br i1 %tobool32.not.1.i, label %if.end.1.i, label %for.body23.1.i.cleanup.1.i_crit_edge

for.body23.1.i.cleanup.1.i_crit_edge:             ; preds = %for.body23.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %for.body23.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx26.1.i = getelementptr [3 x [64 x [13 x i8]]], ptr @btrfs_unknown_feature_names, i32 0, i32 1, i32 %i.175.1.i
  %call34.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx26.1.i, i32 noundef 13, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.95, i32 noundef %i.175.1.i) #14
  %24 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx26.1.i, ptr %arrayidx28.1.i, align 8
  %mode.1.i = getelementptr inbounds %struct.attribute, ptr %arrayidx28.1.i, i32 0, i32 1
  %25 = ptrtoint ptr %mode.1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 292, ptr %mode.1.i, align 4
  %feature_set40.1.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 1, i32 %i.175.1.i, i32 1
  %26 = ptrtoint ptr %feature_set40.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %feature_set40.1.i, align 4
  %sh_prom.1.i = zext i32 %i.175.1.i to i64
  %shl.1.i = shl nuw i64 1, %sh_prom.1.i
  %feature_bit41.1.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 1, i32 %i.175.1.i, i32 2
  %27 = ptrtoint ptr %feature_bit41.1.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shl.1.i, ptr %feature_bit41.1.i, align 8
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %for.body23.1.i.cleanup.1.i_crit_edge
  %inc43.1.i = add nuw nsw i32 %i.175.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc43.1.i, 64
  br i1 %exitcond.1.not.i, label %cleanup.1.i.for.body23.2.i_crit_edge, label %cleanup.1.i.for.body23.1.i_crit_edge

cleanup.1.i.for.body23.1.i_crit_edge:             ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23.1.i

cleanup.1.i.for.body23.2.i_crit_edge:             ; preds = %cleanup.1.i
  br label %for.body23.2.i

for.body23.2.i:                                   ; preds = %cleanup.2.i.for.body23.2.i_crit_edge, %cleanup.1.i.for.body23.2.i_crit_edge
  %i.175.2.i = phi i32 [ %inc43.2.i, %cleanup.2.i.for.body23.2.i_crit_edge ], [ 0, %cleanup.1.i.for.body23.2.i_crit_edge ]
  %arrayidx28.2.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 2, i32 %i.175.2.i
  %28 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx28.2.i, align 8
  %tobool32.not.2.i = icmp eq ptr %29, null
  br i1 %tobool32.not.2.i, label %if.end.2.i, label %for.body23.2.i.cleanup.2.i_crit_edge

for.body23.2.i.cleanup.2.i_crit_edge:             ; preds = %for.body23.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %for.body23.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx26.2.i = getelementptr [3 x [64 x [13 x i8]]], ptr @btrfs_unknown_feature_names, i32 0, i32 2, i32 %i.175.2.i
  %call34.2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx26.2.i, i32 noundef 13, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.96, i32 noundef %i.175.2.i) #14
  %30 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx26.2.i, ptr %arrayidx28.2.i, align 8
  %mode.2.i = getelementptr inbounds %struct.attribute, ptr %arrayidx28.2.i, i32 0, i32 1
  %31 = ptrtoint ptr %mode.2.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 292, ptr %mode.2.i, align 4
  %feature_set40.2.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 2, i32 %i.175.2.i, i32 1
  %32 = ptrtoint ptr %feature_set40.2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %feature_set40.2.i, align 4
  %sh_prom.2.i = zext i32 %i.175.2.i to i64
  %shl.2.i = shl nuw i64 1, %sh_prom.2.i
  %feature_bit41.2.i = getelementptr [3 x [64 x %struct.btrfs_feature_attr]], ptr @btrfs_feature_attrs, i32 0, i32 2, i32 %i.175.2.i, i32 2
  %33 = ptrtoint ptr %feature_bit41.2.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %shl.2.i, ptr %feature_bit41.2.i, align 8
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end.2.i, %for.body23.2.i.cleanup.2.i_crit_edge
  %inc43.2.i = add nuw nsw i32 %i.175.2.i, 1
  %exitcond.2.not.i = icmp eq i32 %inc43.2.i, 64
  br i1 %exitcond.2.not.i, label %init_feature_attrs.exit, label %cleanup.2.i.for.body23.2.i_crit_edge

cleanup.2.i.for.body23.2.i_crit_edge:             ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23.2.i

init_feature_attrs.exit:                          ; preds = %cleanup.2.i
  %34 = load ptr, ptr @btrfs_kset, align 4
  %kobj = getelementptr inbounds %struct.kset, ptr %34, i32 0, i32 2
  %call1 = tail call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @btrfs_feature_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %init_feature_attrs.exit.out2_crit_edge

init_feature_attrs.exit.out2_crit_edge:           ; preds = %init_feature_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out2

if.end4:                                          ; preds = %init_feature_attrs.exit
  %35 = load ptr, ptr @btrfs_kset, align 4
  %kobj5 = getelementptr inbounds %struct.kset, ptr %35, i32 0, i32 2
  %call6 = tail call i32 @sysfs_merge_group(ptr noundef %kobj5, ptr noundef nonnull @btrfs_static_feature_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %36 = load ptr, ptr @btrfs_kset, align 4
  %kobj10 = getelementptr inbounds %struct.kset, ptr %36, i32 0, i32 2
  br i1 %tobool7.not, label %if.end9, label %out_remove_group

if.end9:                                          ; preds = %if.end4
  %call11 = tail call i32 @sysfs_create_group(ptr noundef %kobj10, ptr noundef nonnull @btrfs_debug_feature_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end9.out2_crit_edge

if.end9.out2_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out2

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_remove_group:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sysfs_remove_group(ptr noundef %kobj10, ptr noundef nonnull @btrfs_feature_attr_group) #14
  br label %out2

out2:                                             ; preds = %out_remove_group, %if.end9.out2_crit_edge, %init_feature_attrs.exit.out2_crit_edge
  %ret.0 = phi i32 [ %call1, %init_feature_attrs.exit.out2_crit_edge ], [ %call6, %out_remove_group ], [ %call11, %if.end9.out2_crit_edge ]
  %37 = load ptr, ptr @btrfs_kset, align 4
  tail call void @kset_unregister(ptr noundef %37) #14
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_exit_sysfs() local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @btrfs_kset, align 4
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2
  tail call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef nonnull @btrfs_static_feature_attr_group) #14
  %1 = load ptr, ptr @btrfs_kset, align 4
  %kobj1 = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2
  tail call void @sysfs_remove_group(ptr noundef %kobj1, ptr noundef nonnull @btrfs_feature_attr_group) #14
  %2 = load ptr, ptr @btrfs_kset, align 4
  %kobj2 = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 2
  tail call void @sysfs_remove_group(ptr noundef %kobj2, ptr noundef nonnull @btrfs_debug_feature_attr_group) #14
  %3 = load ptr, ptr @btrfs_kset, align 4
  tail call void @kset_unregister(ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @global_rsv_reserved_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %3, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 20, i32 1
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 20, i32 3
  %tobool.not.i = icmp eq ptr %lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reserved, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %lock) #14
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %reserved, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %10 = phi i64 [ %7, %if.end.thread.i ], [ %9, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %10) #14
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @global_rsv_size_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %ka, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %3, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 20
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 20, i32 3
  %tobool.not.i = icmp eq ptr %lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %global_block_rsv, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %lock) #14
  %8 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %global_block_rsv, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %10 = phi i64 [ %7, %if.end.thread.i ], [ %9, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %10) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discardable_bytes_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %discardable_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discardable_bytes, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %discardable_bytes) #14
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i64 noundef %call.i) #14
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discardable_extents_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %discardable_extents = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discardable_extents, i32 noundef 4) #14
  %8 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %discardable_extents, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %9) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_bitmap_bytes_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %discard_bitmap_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 14
  %8 = ptrtoint ptr %discard_bitmap_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %discard_bitmap_bytes, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %9) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_bytes_saved_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %discard_bytes_saved = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discard_bytes_saved, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %discard_bytes_saved) #14
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i64 noundef %call.i) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_extent_bytes_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %discard_extent_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 13
  %8 = ptrtoint ptr %discard_extent_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %discard_extent_bytes, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %9) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_iops_limit_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %iops_limit = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 11
  %8 = ptrtoint ptr %iops_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %iops_limit, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %9) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_iops_limit_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %iops_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iops_limit) #14
  %8 = ptrtoint ptr %iops_limit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %iops_limit, align 4, !annotation !439
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %iops_limit) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body5, label %to_fs_info.exit.cleanup_crit_edge

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body5:                                         ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %discard_ctl2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134
  %9 = ptrtoint ptr %iops_limit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iops_limit, align 4
  %iops_limit6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 11
  %11 = ptrtoint ptr %iops_limit6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %iops_limit6, align 8
  call void @btrfs_discard_calc_delay(ptr noundef %discard_ctl2) #14
  call void @btrfs_discard_schedule_work(ptr noundef %discard_ctl2, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %to_fs_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %do.body5 ], [ -22, %to_fs_info.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iops_limit) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_calc_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_schedule_work(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_kbps_limit_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %kbps_limit = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 12
  %8 = ptrtoint ptr %kbps_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %kbps_limit, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %9) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_kbps_limit_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %kbps_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kbps_limit) #14
  %8 = ptrtoint ptr %kbps_limit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %kbps_limit, align 4, !annotation !439
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %kbps_limit) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body5, label %to_fs_info.exit.cleanup_crit_edge

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body5:                                         ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %discard_ctl2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134
  %9 = ptrtoint ptr %kbps_limit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %kbps_limit, align 4
  %kbps_limit6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 12
  %11 = ptrtoint ptr %kbps_limit6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %kbps_limit6, align 4
  call void @btrfs_discard_schedule_work(ptr noundef %discard_ctl2, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %to_fs_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %do.body5 ], [ -22, %to_fs_info.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kbps_limit) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_max_discard_size_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %max_discard_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 9
  %8 = ptrtoint ptr %max_discard_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load volatile i64, ptr %max_discard_size, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %9) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_discard_max_discard_size_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %max_discard_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_discard_size) #14
  %8 = ptrtoint ptr %max_discard_size to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %max_discard_size, align 8, !annotation !439
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %max_discard_size) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body5, label %to_fs_info.exit.cleanup_crit_edge

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body5:                                         ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %max_discard_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %max_discard_size, align 8
  %max_discard_size6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 134, i32 9
  %11 = ptrtoint ptr %max_discard_size6 to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %10, ptr %max_discard_size6, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %to_fs_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %do.body5 ], [ -22, %to_fs_info.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_discard_size) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @btrfs_feature_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %to_fs_info.exit, label %to_fs_info.exit.thread

to_fs_info.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mode119 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode119 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode119, align 4
  br label %if.end11

to_fs_info.exit:                                  ; preds = %entry
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %4 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info.i, align 4
  %mode1 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %to_fs_info.exit.if.end11_crit_edge, label %if.then

to_fs_info.exit.if.end11_crit_edge:               ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %to_fs_info.exit
  %feature_set = getelementptr inbounds %struct.btrfs_feature_attr, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %feature_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %feature_set, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 43
  %10 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %super_copy.i, align 8
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %9, label %get_features.exit [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %compat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 20
  br label %get_features.exit.thread

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 21
  br label %get_features.exit.thread

get_features.exit.thread:                         ; preds = %if.then2.i, %if.then.i
  %incompat_flags.i.sink.i.ph = phi ptr [ %compat_flags.i.i, %if.then.i ], [ %compat_ro_flags.i.i, %if.then2.i ]
  %13 = ptrtoint ptr %incompat_flags.i.sink.i.ph to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %incompat_flags.i.sink.i.ph, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #14
  br label %can_modify_feature.exit

get_features.exit:                                ; preds = %if.then
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 22
  %16 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %incompat_flags.i.i, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cond = icmp eq i32 %9, 2
  br i1 %cond, label %get_features.exit.can_modify_feature.exit_crit_edge, label %can_modify_feature.exit.thread

get_features.exit.can_modify_feature.exit_crit_edge: ; preds = %get_features.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %can_modify_feature.exit

can_modify_feature.exit.thread:                   ; preds = %get_features.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %9) #20
  br label %if.else

can_modify_feature.exit:                          ; preds = %get_features.exit.can_modify_feature.exit_crit_edge, %get_features.exit.thread
  %19 = phi i64 [ %15, %get_features.exit.thread ], [ %18, %get_features.exit.can_modify_feature.exit_crit_edge ]
  %set.0.i = phi i64 [ 0, %get_features.exit.thread ], [ 64, %get_features.exit.can_modify_feature.exit_crit_edge ]
  %feature_bit.i = getelementptr inbounds %struct.btrfs_feature_attr, ptr %attr, i32 0, i32 2
  %20 = ptrtoint ptr %feature_bit.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %feature_bit.i, align 8
  %and.i = and i64 %21, %set.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool5.not = icmp eq i64 %and.i, 0
  br i1 %tobool5.not, label %can_modify_feature.exit.if.else_crit_edge, label %if.then6

can_modify_feature.exit.if.else_crit_edge:        ; preds = %can_modify_feature.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then6:                                         ; preds = %can_modify_feature.exit
  call void @__sanitizer_cov_trace_pc() #16
  %22 = or i16 %7, 128
  br label %if.end11

if.else:                                          ; preds = %can_modify_feature.exit.if.else_crit_edge, %can_modify_feature.exit.thread
  %23 = phi i64 [ %18, %can_modify_feature.exit.thread ], [ %19, %can_modify_feature.exit.if.else_crit_edge ]
  %feature_bit = getelementptr inbounds %struct.btrfs_feature_attr, ptr %attr, i32 0, i32 2
  %24 = ptrtoint ptr %feature_bit to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %feature_bit, align 8
  %and = and i64 %25, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool8.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool8.not, i16 0, i16 %7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6, %to_fs_info.exit.if.end11_crit_edge, %to_fs_info.exit.thread
  %mode.1 = phi i16 [ %7, %to_fs_info.exit.if.end11_crit_edge ], [ %22, %if.then6 ], [ %spec.select, %if.else ], [ %3, %to_fs_info.exit.thread ]
  ret i16 %mode.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_feature_attr_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %to_fs_info.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

to_fs_info.exit:                                  ; preds = %entry
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_fs_info.exit.if.else_crit_edge, label %if.then

to_fs_info.exit.if.else_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %to_fs_info.exit
  %feature_set = getelementptr inbounds %struct.btrfs_feature_attr, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %feature_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feature_set, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %6 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %super_copy.i, align 8
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %5, label %if.else4.i [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %compat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 20
  br label %get_features.exit

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 21
  br label %get_features.exit

if.else4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 22
  br label %get_features.exit

get_features.exit:                                ; preds = %if.else4.i, %if.then2.i, %if.then.i
  %incompat_flags.i.sink.i = phi ptr [ %incompat_flags.i.i, %if.else4.i ], [ %compat_ro_flags.i.i, %if.then2.i ], [ %compat_flags.i.i, %if.then.i ]
  %9 = ptrtoint ptr %incompat_flags.i.sink.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %incompat_flags.i.sink.i, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #14
  %feature_bit = getelementptr inbounds %struct.btrfs_feature_attr, ptr %a, i32 0, i32 2
  %12 = ptrtoint ptr %feature_bit to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %feature_bit, align 8
  %and = and i64 %11, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp ne i64 %and, 0
  %spec.select = zext i1 %tobool3.not to i32
  br label %if.end6

if.else:                                          ; preds = %to_fs_info.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %feature_set.i = getelementptr inbounds %struct.btrfs_feature_attr, ptr %a, i32 0, i32 1
  %14 = ptrtoint ptr %feature_set.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %feature_set.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %15, label %do.end.i [
    i32 0, label %if.else.sw.epilog.i_crit_edge
    i32 1, label %if.else.sw.epilog.i_crit_edge14
    i32 2, label %sw.bb2.i
  ]

if.else.sw.epilog.i_crit_edge14:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %15) #20
  br label %if.end6

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.else.sw.epilog.i_crit_edge, %if.else.sw.epilog.i_crit_edge14
  %set.0.i = phi i64 [ 64, %sw.bb2.i ], [ 0, %if.else.sw.epilog.i_crit_edge ], [ 0, %if.else.sw.epilog.i_crit_edge14 ]
  %feature_bit.i = getelementptr inbounds %struct.btrfs_feature_attr, ptr %a, i32 0, i32 2
  %17 = ptrtoint ptr %feature_bit.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %feature_bit.i, align 8
  %and.i = and i64 %18, %set.0.i
  %and.lobit.i = lshr exact i64 %and.i, 6
  %19 = trunc i64 %and.lobit.i to i32
  br label %if.end6

if.end6:                                          ; preds = %sw.epilog.i, %do.end.i, %get_features.exit
  %val.1 = phi i32 [ %spec.select, %get_features.exit ], [ 0, %do.end.i ], [ %19, %sw.epilog.i ]
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %val.1) #14
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_feature_attr_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !439
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %1 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %2, @btrfs_ktype
  br i1 %cmp.not.i, label %to_fs_info.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

to_fs_info.exit:                                  ; preds = %entry
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %3 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_info.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %to_fs_info.exit.cleanup_crit_edge, label %if.end

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %to_fs_info.exit
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @skip_spaces(ptr noundef %buf) #14
  %call.i = call i32 @_kstrtoul(ptr noundef %call5, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %feature_set = getelementptr inbounds %struct.btrfs_feature_attr, ptr %a, i32 0, i32 1
  %9 = ptrtoint ptr %feature_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %feature_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp ult i32 %10, 2
  %spec.select = select i1 %switch, i64 0, i64 64
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 43
  %11 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %super_copy.i, align 8
  %13 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %10, label %if.else4.i [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %compat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %12, i32 0, i32 20
  br label %get_features.exit

if.then2.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %12, i32 0, i32 21
  br label %get_features.exit

if.else4.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %12, i32 0, i32 22
  br label %get_features.exit

get_features.exit:                                ; preds = %if.else4.i, %if.then2.i, %if.then.i
  %incompat_flags.i.sink.i = phi ptr [ %incompat_flags.i.i, %if.else4.i ], [ %compat_ro_flags.i.i, %if.then2.i ], [ %compat_flags.i.i, %if.then.i ]
  %14 = ptrtoint ptr %incompat_flags.i.sink.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %incompat_flags.i.sink.i, align 1
  %16 = call i64 @llvm.bswap.i64(i64 %15) #14
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  %feature_bit23 = getelementptr inbounds %struct.btrfs_feature_attr, ptr %a, i32 0, i32 2
  %19 = ptrtoint ptr %feature_bit23 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %feature_bit23, align 8
  %and24 = and i64 %20, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool19.not, label %land.lhs.true22, label %land.lhs.true

land.lhs.true:                                    ; preds = %get_features.exit
  br i1 %tobool25.not, label %land.lhs.true29, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true22:                                  ; preds = %get_features.exit
  br i1 %tobool25.not, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.then39_crit_edge

land.lhs.true22.if.then39_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %feature_bit23 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %feature_bit23, align 8
  %and31 = and i64 %22, %spec.select
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true29.if.then39_crit_edge, label %if.end41

land.lhs.true29.if.then39_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

if.then39:                                        ; preds = %land.lhs.true29.if.then39_crit_edge, %land.lhs.true22.if.then39_crit_edge
  %cond = phi ptr [ @.str.50, %land.lhs.true22.if.then39_crit_edge ], [ @.str.49, %land.lhs.true29.if.then39_crit_edge ]
  %23 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %a, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef nonnull %4, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, ptr noundef %24) #20
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true29
  %25 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %a, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef nonnull %4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %26) #20
  %super_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 42
  call void @_raw_spin_lock(ptr noundef %super_lock) #14
  %27 = ptrtoint ptr %feature_set to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %feature_set, align 4
  %29 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %super_copy.i, align 8
  %31 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %28, label %if.else4.i99 [
    i32 0, label %if.then.i95
    i32 1, label %if.then2.i97
  ]

if.then.i95:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %compat_flags.i.i94 = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 20
  br label %get_features.exit101

if.then2.i97:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %compat_ro_flags.i.i96 = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 21
  br label %get_features.exit101

if.else4.i99:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %incompat_flags.i.i98 = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 22
  br label %get_features.exit101

get_features.exit101:                             ; preds = %if.else4.i99, %if.then2.i97, %if.then.i95
  %incompat_flags.i.sink.i100 = phi ptr [ %incompat_flags.i.i98, %if.else4.i99 ], [ %compat_ro_flags.i.i96, %if.then2.i97 ], [ %compat_flags.i.i94, %if.then.i95 ]
  %32 = ptrtoint ptr %incompat_flags.i.sink.i100 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %incompat_flags.i.sink.i100, align 1
  %34 = call i64 @llvm.bswap.i64(i64 %33) #14
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %feature_bit23 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %feature_bit23, align 8
  br i1 %tobool49.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %get_features.exit101
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i64 %38, %34
  br label %if.end55

if.else52:                                        ; preds = %get_features.exit101
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i64 %38, -1
  %and54 = and i64 %34, %neg
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then50
  %features.0 = phi i64 [ %or, %if.then50 ], [ %and54, %if.else52 ]
  %39 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %28, label %if.else3.i [
    i32 0, label %if.then.i104
    i32 1, label %if.then2.i106
  ]

if.then.i104:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %compat_flags.i.i103 = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 20
  br label %set_features.exit

if.then2.i106:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %compat_ro_flags.i.i105 = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 21
  br label %set_features.exit

if.else3.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %incompat_flags.i.i107 = getelementptr inbounds %struct.btrfs_super_block, ptr %30, i32 0, i32 22
  br label %set_features.exit

set_features.exit:                                ; preds = %if.else3.i, %if.then2.i106, %if.then.i104
  %compat_ro_flags.i.sink.i = phi ptr [ %compat_ro_flags.i.i105, %if.then2.i106 ], [ %incompat_flags.i.i107, %if.else3.i ], [ %compat_flags.i.i103, %if.then.i104 ]
  %40 = call i64 @llvm.bswap.i64(i64 %features.0) #14
  %41 = ptrtoint ptr %compat_ro_flags.i.sink.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %compat_ro_flags.i.sink.i, align 1
  call void @_raw_spin_unlock(ptr noundef %super_lock) #14
  %pending_changes = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 32
  call void @_set_bit(i32 noundef 0, ptr noundef %pending_changes) #14
  %transaction_kthread = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 89
  %42 = ptrtoint ptr %transaction_kthread to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %transaction_kthread, align 4
  %call58 = call i32 @wake_up_process(ptr noundef %43) #14
  br label %cleanup

cleanup:                                          ; preds = %set_features.exit, %if.then39, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_fs_info.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %set_features.exit ], [ -1, %if.then39 ], [ -1, %to_fs_info.exit.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %count, %land.lhs.true22.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_label_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 43
  %4 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %super_copy, align 8
  %label1 = getelementptr inbounds %struct.btrfs_super_block, ptr %5, i32 0, i32 28
  %super_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock) #14
  %6 = ptrtoint ptr %label1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %label1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.5, ptr @.str.69
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %cond, ptr noundef %label1) #14
  tail call void @_raw_spin_unlock(ptr noundef %super_lock) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_label_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %to_fs_info.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

to_fs_info.exit:                                  ; preds = %entry
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_fs_info.exit.cleanup_crit_edge, label %if.end

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %to_fs_info.exit
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strcspn(ptr noundef %buf, ptr noundef nonnull @.str.70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call4)
  %cmp = icmp ugt i32 %call4, 255
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %super_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock) #14
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %8 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %super_copy, align 8
  %label = getelementptr inbounds %struct.btrfs_super_block, ptr %9, i32 0, i32 28
  %10 = call ptr @memset(ptr %label, i32 0, i32 256)
  %11 = load ptr, ptr %super_copy, align 8
  %label8 = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 28
  %12 = call ptr @memcpy(ptr %label8, ptr %buf, i32 %call4)
  tail call void @_raw_spin_unlock(ptr noundef %super_lock) #14
  %pending_changes = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending_changes) #14
  %transaction_kthread = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 89
  %13 = ptrtoint ptr %transaction_kthread to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transaction_kthread, align 4
  %call11 = tail call i32 @wake_up_process(ptr noundef %14) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_fs_info.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end6 ], [ -1, %to_fs_info.exit.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_nodesize_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 43
  %4 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %super_copy, align 8
  %nodesize = getelementptr inbounds %struct.btrfs_super_block, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %nodesize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nodesize, align 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %7) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_sectorsize_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 43
  %4 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %super_copy, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_super_block, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %sectorsize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %sectorsize, align 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %7) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_clone_alignment_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 43
  %4 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %super_copy, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_super_block, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %sectorsize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %sectorsize, align 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %7) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_override_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %5, 10
  %and1.i = and i32 %shr.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %and1.i) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quota_override_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %knob = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %to_fs_info.exit, label %to_fs_info.exit.thread

to_fs_info.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %knob) #14
  br label %cleanup

to_fs_info.exit:                                  ; preds = %entry
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %knob) #14
  %4 = ptrtoint ptr %knob to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %knob, align 4, !annotation !439
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_fs_info.exit.cleanup_crit_edge, label %if.end

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %to_fs_info.exit
  %call1 = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %knob) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %knob to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %knob, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  %flags12 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 1
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 10, ptr noundef %flags12) #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 10, ptr noundef %flags12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_fs_info.exit.cleanup_crit_edge, %to_fs_info.exit.thread
  %retval.0 = phi i32 [ -1, %to_fs_info.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %len, %if.else ], [ %len, %if.then11 ], [ -1, %to_fs_info.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %knob) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_metadata_uuid_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 100
  %4 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_devices, align 8
  %metadata_uuid = getelementptr inbounds %struct.btrfs_fs_devices, ptr %5, i32 0, i32 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.75, ptr noundef %metadata_uuid) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_checksum_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 43
  %4 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %super_copy, align 8
  %csum_type.i = getelementptr inbounds %struct.btrfs_super_block, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %csum_type.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %csum_type.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #14
  %call2 = tail call ptr @btrfs_super_csum_name(i16 noundef zeroext %8) #14
  %csum_shash = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 174
  %9 = ptrtoint ptr %csum_shash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csum_shash, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 9
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.77, ptr noundef %call2, ptr noundef %cra_driver_name.i.i) #14
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_super_csum_name(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_exclusive_operation_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %exclusive_operation = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 175
  %4 = ptrtoint ptr %exclusive_operation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %exclusive_operation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %switch.lookup, label %to_fs_info.exit.sw.epilog_crit_edge

to_fs_info.exit.sw.epilog_crit_edge:              ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.btrfs_exclusive_operation_show, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %to_fs_info.exit.sw.epilog_crit_edge
  %str.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.86, %to_fs_info.exit.sw.epilog_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %str.0) #14
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_generation_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %generation = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 26
  %4 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %generation, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %5) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_read_policy_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -240
  %retval.0.i = select i1 %cmp.not.i, ptr %add.ptr.i, ptr null
  %read_policy = getelementptr inbounds %struct.btrfs_fs_devices, ptr %retval.0.i, i32 0, i32 25
  %2 = ptrtoint ptr %read_policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  %.str.89..str.1 = select i1 %cmp1, ptr @.str.89, ptr @.str.1
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.89..str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.91) #14
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %call3
  %sub12 = sub i32 4096, %call3
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.70) #14
  %add14 = add i32 %call13, %call3
  ret i32 %add14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_read_policy_store(ptr nocapture noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -240
  %retval.0.i = select i1 %cmp.not.i, ptr %add.ptr.i, ptr null
  %call1.i = tail call ptr @skip_spaces(ptr noundef %buf) #14
  %call2.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.91, ptr noundef %call1.i, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %add.ptr.i15 = getelementptr i8, ptr %call1.i, i32 3
  %call3.i = tail call ptr @skip_spaces(ptr noundef %add.ptr.i15) #14
  %2 = ptrtoint ptr %call3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %char0.i = load i8, ptr %call3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %cmp5.i = icmp eq i8 %char0.i, 0
  br i1 %cmp5.i, label %if.then, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.i
  %read_policy = getelementptr inbounds %struct.btrfs_fs_devices, ptr %retval.0.i, i32 0, i32 25
  %3 = ptrtoint ptr %read_policy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not = icmp eq i32 %4, 0
  br i1 %cmp2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %read_policy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %read_policy, align 4
  %fs_info = getelementptr inbounds %struct.btrfs_fs_devices, ptr %retval.0.i, i32 0, i32 19
  %6 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %7, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.then3 ], [ %len, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_bg_reclaim_threshold_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  %bg_reclaim_threshold = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 161
  %4 = ptrtoint ptr %bg_reclaim_threshold to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bg_reclaim_threshold, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %5) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_bg_reclaim_threshold_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %thresh = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  br i1 %cmp.not.i, label %if.end.i, label %entry.to_fs_info.exit_crit_edge

entry.to_fs_info.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %to_fs_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 4
  br label %to_fs_info.exit

to_fs_info.exit:                                  ; preds = %if.end.i, %entry.to_fs_info.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.to_fs_info.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thresh) #14
  %4 = ptrtoint ptr %thresh to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %thresh, align 4, !annotation !439
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %thresh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %to_fs_info.exit.cleanup_crit_edge

to_fs_info.exit.cleanup_crit_edge:                ; preds = %to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %to_fs_info.exit
  %5 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp ne i32 %6, 0
  %7 = add i32 %6, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -50, i32 %7)
  %8 = icmp ult i32 %7, -50
  %or.cond = and i1 %cmp.not, %8
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bg_reclaim_threshold = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i, i32 0, i32 161
  %9 = ptrtoint ptr %bg_reclaim_threshold to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %6, ptr %bg_reclaim_threshold, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %if.end.cleanup_crit_edge, %to_fs_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %do.body7 ], [ %call1, %to_fs_info.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_raid_kobj(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_bytes_show(ptr nocapture noundef readonly %kobj, ptr noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -8
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr3, align 8
  %call = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %3) #17
  %groups_sem = getelementptr i8, ptr %1, i32 -168
  tail call void @down_read(ptr noundef %groups_sem) #14
  %block_groups = getelementptr i8, ptr %1, i32 -72
  %arrayidx = getelementptr [9 x %struct.list_head], ptr %block_groups, i32 0, i32 %call
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn30 = load ptr, ptr %arrayidx, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %arrayidx
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp10 = icmp eq ptr %attr, @btrfs_attr_raid_total_bytes
  %.pn29.in.v = select i1 %cmp10, i32 -220, i32 -196
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn33 = phi ptr [ %.pn30, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %val.032 = phi i64 [ 0, %for.body.lr.ph ], [ %val.1, %for.body.for.body_crit_edge ]
  %.pn29.in = getelementptr i8, ptr %.pn33, i32 %.pn29.in.v
  %5 = ptrtoint ptr %.pn29.in to i32
  call void @__asan_load8_noabort(i32 %5)
  %.pn29 = load i64, ptr %.pn29.in, align 8
  %val.1 = add i64 %.pn29, %val.032
  %6 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %val.1, %for.body.for.end_crit_edge ]
  tail call void @up_read(ptr noundef %groups_sem) #14
  %call18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %val.0.lcssa) #14
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @space_info_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_flags(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %flags = getelementptr i8, ptr %kobj, i32 -224
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_total_bytes(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %total_bytes = getelementptr i8, ptr %kobj, i32 -320
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %total_bytes, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_bytes, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_bytes_used(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %bytes_used = getelementptr i8, ptr %kobj, i32 -312
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_used, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_used, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_bytes_pinned(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %bytes_pinned = getelementptr i8, ptr %kobj, i32 -304
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_pinned, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_pinned, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_bytes_reserved(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %bytes_reserved = getelementptr i8, ptr %kobj, i32 -296
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_reserved, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_reserved, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_bytes_may_use(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %bytes_may_use = getelementptr i8, ptr %kobj, i32 -288
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_may_use, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_may_use, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_bytes_readonly(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %bytes_readonly = getelementptr i8, ptr %kobj, i32 -280
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_readonly, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_readonly, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_bytes_zone_unusable(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %bytes_zone_unusable = getelementptr i8, ptr %kobj, i32 -272
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %bytes_zone_unusable to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_zone_unusable, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %bytes_zone_unusable to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_zone_unusable, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_disk_used(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %disk_used = getelementptr i8, ptr %kobj, i32 -240
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %disk_used to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %disk_used, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %disk_used to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %disk_used, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_space_info_show_disk_total(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -368
  %disk_total = getelementptr i8, ptr %kobj, i32 -232
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %disk_total to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %disk_total, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %add.ptr) #14
  %2 = ptrtoint ptr %disk_total to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %disk_total, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %4 = phi i64 [ %1, %if.end.thread.i ], [ %3, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_release_devid_kobj(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %kobj, i32 0, i32 136)
  %kobj_unregister = getelementptr i8, ptr %kobj, i32 -56
  tail call void @complete(ptr noundef %kobj_unregister) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_error_stats_show(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_stats_valid = getelementptr i8, ptr %kobj, i32 -160
  %0 = ptrtoint ptr %dev_stats_valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_stats_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.118) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev_stat_values.i = getelementptr i8, ptr %kobj, i32 -152
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev_stat_values.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %dev_stat_values.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_stat_values.i, align 4
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -148
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %kobj, i32 -144
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i16, i32 noundef 4) #14
  %6 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i16, align 4
  %add.ptr.i19 = getelementptr i8, ptr %kobj, i32 -140
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i19, i32 noundef 4) #14
  %8 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr.i19, align 4
  %add.ptr.i22 = getelementptr i8, ptr %kobj, i32 -136
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i22, i32 noundef 4) #14
  %10 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %add.ptr.i22, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_fsid_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_devices = getelementptr i8, ptr %kobj, i32 -392
  %0 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_devices, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.75, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_in_fs_metadata_show(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %kobj, i32 -356
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_state, align 4
  %2 = lshr i32 %1, 1
  %.lobit = and i32 %2, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %.lobit) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_missing_show(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %kobj, i32 -356
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_state, align 4
  %2 = lshr i32 %1, 2
  %.lobit = and i32 %2, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %.lobit) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_replace_target_show(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %kobj, i32 -356
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_state, align 4
  %2 = lshr i32 %1, 3
  %.lobit = and i32 %2, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %.lobit) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_scrub_speed_max_show(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub_speed_max = getelementptr i8, ptr %kobj, i32 136
  %0 = ptrtoint ptr %scrub_speed_max to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %scrub_speed_max, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %1) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_scrub_speed_max_store(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef returned %len) #0 align 64 {
entry:
  %endptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endptr) #14
  %0 = ptrtoint ptr %endptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endptr, align 4, !annotation !439
  %call = call i64 @memparse(ptr noundef %buf, ptr noundef nonnull %endptr) #14
  %scrub_speed_max = getelementptr i8, ptr %kobj, i32 136
  %1 = ptrtoint ptr %scrub_speed_max to i32
  call void @__asan_store8_noabort(i32 %1)
  store volatile i64 %call, ptr %scrub_speed_max, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr) #14
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_devinfo_writeable_show(ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %kobj, i32 -356
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_state, align 4
  %and1.i = and i32 %1, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %and1.i) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_release_fsid_kobj(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ktype.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype.i, align 4
  %cmp.not.i = icmp eq ptr %1, @btrfs_ktype
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -240
  %retval.0.i = select i1 %cmp.not.i, ptr %add.ptr.i, ptr null
  %fsid_kobj = getelementptr inbounds %struct.btrfs_fs_devices, ptr %retval.0.i, i32 0, i32 20
  %2 = call ptr @memset(ptr %fsid_kobj, i32 0, i32 136)
  %kobj_unregister = getelementptr inbounds %struct.btrfs_fs_devices, ptr %retval.0.i, i32 0, i32 23
  tail call void @complete(ptr noundef %kobj_unregister) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qgroup_release(ptr nocapture noundef writeonly %kobj) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %kobj, i32 0, i32 136)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_show_rfer(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %rfer = getelementptr i8, ptr %qgroup_kobj, i32 -152
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %rfer to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rfer, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %rfer to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rfer, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_show_excl(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %excl = getelementptr i8, ptr %qgroup_kobj, i32 -136
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %excl to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %excl, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %excl to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %excl, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_show_max_rfer(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %max_rfer = getelementptr i8, ptr %qgroup_kobj, i32 -112
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %max_rfer to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_rfer, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %max_rfer to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max_rfer, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_show_max_excl(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %max_excl = getelementptr i8, ptr %qgroup_kobj, i32 -104
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %max_excl to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_excl, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %max_excl to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max_excl, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_show_lim_flags(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %lim_flags = getelementptr i8, ptr %qgroup_kobj, i32 -120
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %lim_flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lim_flags, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %lim_flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lim_flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_rsv_show_data(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %rsv = getelementptr i8, ptr %qgroup_kobj, i32 -80
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %rsv to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rsv, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %rsv to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rsv, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_rsv_show_meta_pertrans(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %arrayidx = getelementptr i8, ptr %qgroup_kobj, i32 -72
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_qgroup_rsv_show_meta_prealloc(ptr nocapture noundef readonly %qgroup_kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %qgroup_kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 4
  %ktype.i.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ktype.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ktype.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, @btrfs_ktype
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.qgroup_kobj_to_fs_info.exit_crit_edge

entry.qgroup_kobj_to_fs_info.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qgroup_kobj_to_fs_info.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info.i.i, align 4
  br label %qgroup_kobj_to_fs_info.exit

qgroup_kobj_to_fs_info.exit:                      ; preds = %if.end.i.i, %entry.qgroup_kobj_to_fs_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ null, %entry.qgroup_kobj_to_fs_info.exit_crit_edge ]
  %arrayidx = getelementptr i8, ptr %qgroup_kobj, i32 -64
  %qgroup_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %retval.0.i.i, i32 0, i32 138
  %tobool.not.i = icmp eq ptr %qgroup_lock, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.then2.i

if.end.thread.i:                                  ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  br label %btrfs_show_u64.exit

if.then2.i:                                       ; preds = %qgroup_kobj_to_fs_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull %qgroup_lock) #14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %qgroup_lock) #14
  br label %btrfs_show_u64.exit

btrfs_show_u64.exit:                              ; preds = %if.then2.i, %if.end.thread.i
  %12 = phi i64 [ %9, %if.end.thread.i ], [ %11, %if.then2.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %12) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmdir_subvol_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %ka, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.136) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supported_checksums_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btrfs_get_num_csums() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14.not = icmp eq i32 %call, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ret.015 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.016)
  %cmp1 = icmp eq i32 %i.016, 0
  %cond = select i1 %cmp1, ptr @.str.3, ptr @.str.90
  %conv = trunc i32 %i.016 to i16
  %call2 = tail call ptr @btrfs_super_csum_name(i16 noundef zeroext %conv) #14
  %call3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %ret.015, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef %call2) #14
  %add = add i32 %call3, %ret.015
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %ret.0.lcssa, ptr noundef nonnull @.str.70) #14
  %add5 = add i32 %call4, %ret.0.lcssa
  ret i32 %add5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @btrfs_get_num_csums() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_stream_version_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %ka, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supported_rescue_options_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.140) #14
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.141) #14
  %add.1 = add i32 %call.1, %call
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.142) #14
  %add.2 = add i32 %call.2, %add.1
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.143) #14
  %add.3 = add i32 %call.3, %add.2
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.144) #14
  %add.4 = add i32 %call.4, %add.3
  %call1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.4, ptr noundef nonnull @.str.70) #14
  %add2 = add i32 %call1, %add.4
  ret i32 %add2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supported_sectorsizes_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.146, i32 noundef 4096) #14
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { cold noreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !74, !76, !78, !79, !81, !83, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !102, !103, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !177, !179, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !197, !199, !200, !202, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !226, !227, !229, !231, !233, !235, !237, !239, !240, !242, !244, !246, !248, !250, !252, !253, !255, !257, !258, !260, !261, !263, !265, !266, !268, !270, !271, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !301, !303, !305, !307, !309, !310, !311, !312, !313, !315, !316, !318, !320, !321, !323, !325, !326, !328, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !352, !354, !355, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !385, !387, !389, !391, !393, !394, !396, !398, !399, !401, !402, !404, !405, !407, !409, !411, !413, !415, !417, !419, !420, !422, !424}
!llvm.named.register.sp = !{!426}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433, !434}
!llvm.ident = !{!435}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/sysfs.c", i32 1208, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/sysfs.c", i32 1263, i32 46}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/sysfs.c", i32 1264, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/sysfs.c", i32 1264, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/sysfs.c", i32 1339, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/sysfs.c", i32 1366, i32 53}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/sysfs.c", i32 1374, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/sysfs.c", i32 1448, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/btrfs/sysfs.c", i32 1624, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/sysfs.c", i32 1633, i32 4}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/sysfs.c", i32 1642, i32 22}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/sysfs.c", i32 1645, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/sysfs.c", i32 1688, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @btrfs_kobject_uevent._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @btrfs_kobject_uevent._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/sysfs.c", i32 1702, i32 47}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/sysfs.c", i32 1704, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/sysfs.c", i32 1715, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/sysfs.c", i32 1742, i32 49}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/sysfs.c", i32 1745, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/sysfs.c", i32 1751, i32 49}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/sysfs.c", i32 1754, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/sysfs.c", i32 1785, i32 47}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/sysfs.c", i32 1796, i32 55}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/btrfs/sysfs.c", i32 1817, i32 52}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/sysfs.c", i32 1918, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/sysfs.c", i32 1955, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/sysfs.c", i32 1959, i32 49}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/sysfs.c", i32 2009, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/sysfs.c", i32 2029, i32 35}
!60 = !{ptr @btrfs_feature_attrs, !61, !"btrfs_feature_attrs", i1 false, i1 false}
!61 = !{!"../fs/btrfs/sysfs.c", i32 1105, i32 34}
!62 = !{ptr @btrfs_kset, !63, !"btrfs_kset", i1 false, i1 false}
!63 = !{!"../fs/btrfs/sysfs.c", i32 1721, i32 21}
!64 = !{ptr @allocation_attrs, !65, !"allocation_attrs", i1 false, i1 false}
!65 = !{!"../fs/btrfs/sysfs.c", i32 759, i32 32}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/btrfs/sysfs.c", i32 648, i32 1}
!68 = !{ptr @btrfs_attr_allocation_global_rsv_reserved, !67, !"btrfs_attr_allocation_global_rsv_reserved", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/btrfs/sysfs.c", i32 629, i32 25}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/btrfs/sysfs.c", i32 639, i32 1}
!73 = !{ptr @btrfs_attr_allocation_global_rsv_size, !72, !"btrfs_attr_allocation_global_rsv_size", i1 false, i1 false}
!74 = !{ptr @discard_debug_attrs, !75, !"discard_debug_attrs", i1 false, i1 false}
!75 = !{!"../fs/btrfs/sysfs.c", i32 584, i32 32}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/sysfs.c", i32 442, i32 1}
!78 = !{ptr @btrfs_attr_discard_discardable_bytes, !77, !"btrfs_attr_discard_discardable_bytes", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/btrfs/sysfs.c", i32 439, i32 25}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/sysfs.c", i32 453, i32 1}
!83 = !{ptr @btrfs_attr_discard_discardable_extents, !82, !"btrfs_attr_discard_discardable_extents", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/sysfs.c", i32 450, i32 25}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/sysfs.c", i32 464, i32 1}
!88 = !{ptr @btrfs_attr_discard_discard_bitmap_bytes, !87, !"btrfs_attr_discard_discard_bitmap_bytes", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/btrfs/sysfs.c", i32 475, i32 1}
!91 = !{ptr @btrfs_attr_discard_discard_bytes_saved, !90, !"btrfs_attr_discard_discard_bytes_saved", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/btrfs/sysfs.c", i32 486, i32 1}
!94 = !{ptr @btrfs_attr_discard_discard_extent_bytes, !93, !"btrfs_attr_discard_discard_extent_bytes", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/btrfs/sysfs.c", i32 516, i32 1}
!97 = !{ptr @btrfs_attr_discard_iops_limit, !96, !"btrfs_attr_discard_iops_limit", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/btrfs/sysfs.c", i32 494, i32 25}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/sysfs.c", i32 546, i32 1}
!102 = !{ptr @btrfs_attr_discard_kbps_limit, !101, !"btrfs_attr_discard_kbps_limit", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/btrfs/sysfs.c", i32 576, i32 1}
!105 = !{ptr @btrfs_attr_discard_max_discard_size, !104, !"btrfs_attr_discard_max_discard_size", i1 false, i1 false}
!106 = !{ptr @btrfs_debug_mount_attrs, !107, !"btrfs_debug_mount_attrs", i1 false, i1 false}
!107 = !{!"../fs/btrfs/sysfs.c", i32 601, i32 32}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/btrfs/sysfs.c", i32 1121, i32 12}
!110 = !{ptr @btrfs_feature_attr_group, !111, !"btrfs_feature_attr_group", i1 false, i1 false}
!111 = !{!"../fs/btrfs/sysfs.c", i32 324, i32 37}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/btrfs/sysfs.c", i32 154, i32 3}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @can_modify_feature._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @can_modify_feature._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @btrfs_supported_feature_attrs, !118, !"btrfs_supported_feature_attrs", i1 false, i1 false}
!118 = !{!"../fs/btrfs/sysfs.c", i32 301, i32 26}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/btrfs/sysfs.c", i32 273, i32 1}
!121 = !{ptr @btrfs_attr_features_mixed_backref, !120, !"btrfs_attr_features_mixed_backref", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/btrfs/sysfs.c", i32 224, i32 3}
!124 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/btrfs/sysfs.c", i32 230, i32 2}
!128 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/btrfs/sysfs.c", i32 274, i32 1}
!132 = !{ptr @btrfs_attr_features_default_subvol, !131, !"btrfs_attr_features_default_subvol", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/btrfs/sysfs.c", i32 275, i32 1}
!135 = !{ptr @btrfs_attr_features_mixed_groups, !134, !"btrfs_attr_features_mixed_groups", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/btrfs/sysfs.c", i32 276, i32 1}
!138 = !{ptr @btrfs_attr_features_compress_lzo, !137, !"btrfs_attr_features_compress_lzo", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/btrfs/sysfs.c", i32 277, i32 1}
!141 = !{ptr @btrfs_attr_features_compress_zstd, !140, !"btrfs_attr_features_compress_zstd", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/btrfs/sysfs.c", i32 278, i32 1}
!144 = !{ptr @btrfs_attr_features_big_metadata, !143, !"btrfs_attr_features_big_metadata", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/btrfs/sysfs.c", i32 279, i32 1}
!147 = !{ptr @btrfs_attr_features_extended_iref, !146, !"btrfs_attr_features_extended_iref", i1 false, i1 false}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/btrfs/sysfs.c", i32 280, i32 1}
!150 = !{ptr @btrfs_attr_features_raid56, !149, !"btrfs_attr_features_raid56", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/btrfs/sysfs.c", i32 281, i32 1}
!153 = !{ptr @btrfs_attr_features_skinny_metadata, !152, !"btrfs_attr_features_skinny_metadata", i1 false, i1 false}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/btrfs/sysfs.c", i32 282, i32 1}
!156 = !{ptr @btrfs_attr_features_no_holes, !155, !"btrfs_attr_features_no_holes", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/btrfs/sysfs.c", i32 283, i32 1}
!159 = !{ptr @btrfs_attr_features_metadata_uuid, !158, !"btrfs_attr_features_metadata_uuid", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/btrfs/sysfs.c", i32 284, i32 1}
!162 = !{ptr @btrfs_attr_features_free_space_tree, !161, !"btrfs_attr_features_free_space_tree", i1 false, i1 false}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/btrfs/sysfs.c", i32 285, i32 1}
!165 = !{ptr @btrfs_attr_features_raid1c34, !164, !"btrfs_attr_features_raid1c34", i1 false, i1 false}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/btrfs/sysfs.c", i32 288, i32 1}
!168 = !{ptr @btrfs_attr_features_zoned, !167, !"btrfs_attr_features_zoned", i1 false, i1 false}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/btrfs/sysfs.c", i32 291, i32 1}
!171 = !{ptr @btrfs_attr_features_verity, !170, !"btrfs_attr_features_verity", i1 false, i1 false}
!172 = !{ptr @btrfs_attrs, !173, !"btrfs_attrs", i1 false, i1 false}
!173 = !{!"../fs/btrfs/sysfs.c", i32 1060, i32 32}
!174 = !{ptr @.str.68, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/btrfs/sysfs.c", i32 814, i32 1}
!176 = !{ptr @btrfs_attr__label, !175, !"btrfs_attr__label", i1 false, i1 false}
!177 = !{ptr @.str.69, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/btrfs/sysfs.c", i32 773, i32 35}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/btrfs/sysfs.c", i32 796, i32 23}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/btrfs/sysfs.c", i32 824, i32 1}
!183 = !{ptr @btrfs_attr__nodesize, !182, !"btrfs_attr__nodesize", i1 false, i1 false}
!184 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/btrfs/sysfs.c", i32 834, i32 1}
!186 = !{ptr @btrfs_attr__sectorsize, !185, !"btrfs_attr__sectorsize", i1 false, i1 false}
!187 = !{ptr @.str.73, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/btrfs/sysfs.c", i32 844, i32 1}
!189 = !{ptr @btrfs_attr__clone_alignment, !188, !"btrfs_attr__clone_alignment", i1 false, i1 false}
!190 = !{ptr @.str.74, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/btrfs/sysfs.c", i32 884, i32 1}
!192 = !{ptr @btrfs_attr__quota_override, !191, !"btrfs_attr__quota_override", i1 false, i1 false}
!193 = !{ptr @btrfs_attr__metadata_uuid, !194, !"btrfs_attr__metadata_uuid", i1 false, i1 false}
!194 = !{!"../fs/btrfs/sysfs.c", i32 894, i32 1}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/btrfs/sysfs.c", i32 891, i32 25}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/btrfs/sysfs.c", i32 907, i32 1}
!199 = !{ptr @btrfs_attr__checksum, !198, !"btrfs_attr__checksum", i1 false, i1 false}
!200 = !{ptr @.str.77, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/btrfs/sysfs.c", i32 902, i32 25}
!202 = !{ptr @.str.78, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/btrfs/sysfs.c", i32 943, i32 1}
!204 = !{ptr @btrfs_attr__exclusive_operation, !203, !"btrfs_attr__exclusive_operation", i1 false, i1 false}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/btrfs/sysfs.c", i32 917, i32 10}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/btrfs/sysfs.c", i32 920, i32 10}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/btrfs/sysfs.c", i32 923, i32 10}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/btrfs/sysfs.c", i32 926, i32 10}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/btrfs/sysfs.c", i32 929, i32 10}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/btrfs/sysfs.c", i32 932, i32 10}
!217 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/btrfs/sysfs.c", i32 935, i32 10}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/btrfs/sysfs.c", i32 938, i32 10}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/btrfs/sysfs.c", i32 952, i32 1}
!223 = !{ptr @btrfs_attr__generation, !222, !"btrfs_attr__generation", i1 false, i1 false}
!224 = !{ptr @.str.88, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/btrfs/sysfs.c", i32 1019, i32 1}
!226 = !{ptr @btrfs_attr__read_policy, !225, !"btrfs_attr__read_policy", i1 false, i1 false}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/btrfs/sysfs.c", i32 984, i32 49}
!229 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/btrfs/sysfs.c", i32 985, i32 24}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/btrfs/sysfs.c", i32 973, i32 56}
!233 = distinct !{null, !234, !"btrfs_read_policy_name", i1 false, i1 false}
!234 = !{!"../fs/btrfs/sysfs.c", i32 973, i32 27}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/btrfs/sysfs.c", i32 1009, i32 5}
!237 = !{ptr @.str.93, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/btrfs/sysfs.c", i32 1052, i32 1}
!239 = !{ptr @btrfs_attr__bg_reclaim_threshold, !238, !"btrfs_attr__bg_reclaim_threshold", i1 false, i1 false}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/btrfs/sysfs.c", i32 1235, i32 19}
!242 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/btrfs/sysfs.c", i32 1236, i32 21}
!244 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/btrfs/sysfs.c", i32 1237, i32 21}
!246 = !{ptr @btrfs_feature_set_names, !247, !"btrfs_feature_set_names", i1 false, i1 false}
!247 = !{!"../fs/btrfs/sysfs.c", i32 1234, i32 27}
!248 = !{ptr @btrfs_raid_ktype, !249, !"btrfs_raid_ktype", i1 false, i1 false}
!249 = !{!"../fs/btrfs/sysfs.c", i32 695, i32 25}
!250 = !{ptr @raid_groups, !251, !"raid_groups", i1 false, i1 false}
!251 = !{!"../fs/btrfs/sysfs.c", i32 688, i32 1}
!252 = !{ptr @raid_group, !251, !"raid_group", i1 false, i1 false}
!253 = !{ptr @raid_attrs, !254, !"raid_attrs", i1 false, i1 false}
!254 = !{!"../fs/btrfs/sysfs.c", i32 683, i32 26}
!255 = !{ptr @.str.97, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/btrfs/sysfs.c", i32 655, i32 1}
!257 = !{ptr @btrfs_attr_raid_total_bytes, !256, !"btrfs_attr_raid_total_bytes", i1 false, i1 false}
!258 = !{ptr @.str.98, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/btrfs/sysfs.c", i32 656, i32 1}
!260 = !{ptr @btrfs_attr_raid_used_bytes, !259, !"btrfs_attr_raid_used_bytes", i1 false, i1 false}
!261 = !{ptr @space_info_ktype, !262, !"space_info_ktype", i1 false, i1 false}
!262 = !{!"../fs/btrfs/sysfs.c", i32 748, i32 25}
!263 = !{ptr @space_info_groups, !264, !"space_info_groups", i1 false, i1 false}
!264 = !{!"../fs/btrfs/sysfs.c", i32 740, i32 1}
!265 = !{ptr @space_info_group, !264, !"space_info_group", i1 false, i1 false}
!266 = !{ptr @space_info_attrs, !267, !"space_info_attrs", i1 false, i1 false}
!267 = !{!"../fs/btrfs/sysfs.c", i32 727, i32 26}
!268 = !{ptr @.str.99, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/btrfs/sysfs.c", i32 711, i32 1}
!270 = !{ptr @btrfs_attr_space_info_flags, !269, !"btrfs_attr_space_info_flags", i1 false, i1 false}
!271 = !{ptr @btrfs_attr_space_info_total_bytes, !272, !"btrfs_attr_space_info_total_bytes", i1 false, i1 false}
!272 = !{!"../fs/btrfs/sysfs.c", i32 712, i32 1}
!273 = !{ptr @.str.100, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/btrfs/sysfs.c", i32 713, i32 1}
!275 = !{ptr @btrfs_attr_space_info_bytes_used, !274, !"btrfs_attr_space_info_bytes_used", i1 false, i1 false}
!276 = !{ptr @.str.101, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/btrfs/sysfs.c", i32 714, i32 1}
!278 = !{ptr @btrfs_attr_space_info_bytes_pinned, !277, !"btrfs_attr_space_info_bytes_pinned", i1 false, i1 false}
!279 = !{ptr @.str.102, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/btrfs/sysfs.c", i32 715, i32 1}
!281 = !{ptr @btrfs_attr_space_info_bytes_reserved, !280, !"btrfs_attr_space_info_bytes_reserved", i1 false, i1 false}
!282 = !{ptr @.str.103, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/btrfs/sysfs.c", i32 716, i32 1}
!284 = !{ptr @btrfs_attr_space_info_bytes_may_use, !283, !"btrfs_attr_space_info_bytes_may_use", i1 false, i1 false}
!285 = !{ptr @.str.104, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/btrfs/sysfs.c", i32 717, i32 1}
!287 = !{ptr @btrfs_attr_space_info_bytes_readonly, !286, !"btrfs_attr_space_info_bytes_readonly", i1 false, i1 false}
!288 = !{ptr @.str.105, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/btrfs/sysfs.c", i32 718, i32 1}
!290 = !{ptr @btrfs_attr_space_info_bytes_zone_unusable, !289, !"btrfs_attr_space_info_bytes_zone_unusable", i1 false, i1 false}
!291 = !{ptr @.str.106, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/btrfs/sysfs.c", i32 719, i32 1}
!293 = !{ptr @btrfs_attr_space_info_disk_used, !292, !"btrfs_attr_space_info_disk_used", i1 false, i1 false}
!294 = !{ptr @.str.107, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/btrfs/sysfs.c", i32 720, i32 1}
!296 = !{ptr @btrfs_attr_space_info_disk_total, !295, !"btrfs_attr_space_info_disk_total", i1 false, i1 false}
!297 = !{ptr @.str.108, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/btrfs/sysfs.c", i32 1406, i32 10}
!299 = !{ptr @.str.109, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/btrfs/sysfs.c", i32 1408, i32 10}
!301 = !{ptr @.str.110, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/btrfs/sysfs.c", i32 1410, i32 10}
!303 = !{ptr @.str.111, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/btrfs/sysfs.c", i32 1412, i32 10}
!305 = !{ptr @.str.112, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/btrfs/sysfs.c", i32 1415, i32 10}
!307 = !{ptr @.str.113, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!309 = !{ptr @.str.114, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.115, !308, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @assertfail._entry, !308, !"_entry", i1 false, i1 false}
!312 = !{ptr @assertfail._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @init_completion.__key, !314, !"__key", i1 false, i1 false}
!314 = !{!"../include/linux/completion.h", i32 87, i32 2}
!315 = !{ptr @.str.116, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @devid_ktype, !317, !"devid_ktype", i1 false, i1 false}
!317 = !{!"../fs/btrfs/sysfs.c", i32 1604, i32 25}
!318 = !{ptr @devid_groups, !319, !"devid_groups", i1 false, i1 false}
!319 = !{!"../fs/btrfs/sysfs.c", i32 1593, i32 1}
!320 = !{ptr @devid_group, !319, !"devid_group", i1 false, i1 false}
!321 = !{ptr @devid_attrs, !322, !"devid_attrs", i1 false, i1 false}
!322 = !{!"../fs/btrfs/sysfs.c", i32 1583, i32 26}
!323 = !{ptr @.str.117, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/btrfs/sysfs.c", i32 1576, i32 1}
!325 = !{ptr @btrfs_attr_devid_error_stats, !324, !"btrfs_attr_devid_error_stats", i1 false, i1 false}
!326 = !{ptr @.str.118, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/btrfs/sysfs.c", i32 1557, i32 26}
!328 = !{ptr @.str.119, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/btrfs/sysfs.c", i32 1565, i32 3}
!330 = !{ptr @.str.120, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/btrfs/sysfs.c", i32 1548, i32 1}
!332 = !{ptr @btrfs_attr_devid_fsid, !331, !"btrfs_attr_devid_fsid", i1 false, i1 false}
!333 = !{ptr @.str.121, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/btrfs/sysfs.c", i32 1472, i32 1}
!335 = !{ptr @btrfs_attr_devid_in_fs_metadata, !334, !"btrfs_attr_devid_in_fs_metadata", i1 false, i1 false}
!336 = !{ptr @.str.122, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/btrfs/sysfs.c", i32 1485, i32 1}
!338 = !{ptr @btrfs_attr_devid_missing, !337, !"btrfs_attr_devid_missing", i1 false, i1 false}
!339 = !{ptr @.str.123, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/btrfs/sysfs.c", i32 1499, i32 1}
!341 = !{ptr @btrfs_attr_devid_replace_target, !340, !"btrfs_attr_devid_replace_target", i1 false, i1 false}
!342 = !{ptr @.str.124, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/btrfs/sysfs.c", i32 1524, i32 1}
!344 = !{ptr @btrfs_attr_devid_scrub_speed_max, !343, !"btrfs_attr_devid_scrub_speed_max", i1 false, i1 false}
!345 = !{ptr @.str.125, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/btrfs/sysfs.c", i32 1538, i32 1}
!347 = !{ptr @btrfs_attr_devid_writeable, !346, !"btrfs_attr_devid_writeable", i1 false, i1 false}
!348 = !{ptr @btrfs_ktype, !349, !"btrfs_ktype", i1 false, i1 false}
!349 = !{!"../fs/btrfs/sysfs.c", i32 1083, i32 25}
!350 = !{ptr @qgroup_ktype, !351, !"qgroup_ktype", i1 false, i1 false}
!351 = !{!"../fs/btrfs/sysfs.c", i32 1898, i32 25}
!352 = !{ptr @qgroup_groups, !353, !"qgroup_groups", i1 false, i1 false}
!353 = !{!"../fs/btrfs/sysfs.c", i32 1889, i32 1}
!354 = !{ptr @qgroup_group, !353, !"qgroup_group", i1 false, i1 false}
!355 = !{ptr @qgroup_attrs, !356, !"qgroup_attrs", i1 false, i1 false}
!356 = !{!"../fs/btrfs/sysfs.c", i32 1878, i32 26}
!357 = !{ptr @.str.126, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/btrfs/sysfs.c", i32 1864, i32 1}
!359 = !{ptr @btrfs_attr_qgroup_referenced, !358, !"btrfs_attr_qgroup_referenced", i1 false, i1 false}
!360 = !{ptr @.str.127, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/btrfs/sysfs.c", i32 1865, i32 1}
!362 = !{ptr @btrfs_attr_qgroup_exclusive, !361, !"btrfs_attr_qgroup_exclusive", i1 false, i1 false}
!363 = !{ptr @.str.128, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/btrfs/sysfs.c", i32 1866, i32 1}
!365 = !{ptr @btrfs_attr_qgroup_max_referenced, !364, !"btrfs_attr_qgroup_max_referenced", i1 false, i1 false}
!366 = !{ptr @.str.129, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../fs/btrfs/sysfs.c", i32 1867, i32 1}
!368 = !{ptr @btrfs_attr_qgroup_max_exclusive, !367, !"btrfs_attr_qgroup_max_exclusive", i1 false, i1 false}
!369 = !{ptr @.str.130, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/btrfs/sysfs.c", i32 1868, i32 1}
!371 = !{ptr @btrfs_attr_qgroup_limit_flags, !370, !"btrfs_attr_qgroup_limit_flags", i1 false, i1 false}
!372 = !{ptr @.str.131, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/btrfs/sysfs.c", i32 1869, i32 1}
!374 = !{ptr @btrfs_attr_qgroup_rsv_data, !373, !"btrfs_attr_qgroup_rsv_data", i1 false, i1 false}
!375 = !{ptr @.str.132, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/btrfs/sysfs.c", i32 1870, i32 1}
!377 = !{ptr @btrfs_attr_qgroup_rsv_meta_pertrans, !376, !"btrfs_attr_qgroup_rsv_meta_pertrans", i1 false, i1 false}
!378 = !{ptr @.str.133, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/btrfs/sysfs.c", i32 1871, i32 1}
!380 = !{ptr @btrfs_attr_qgroup_rsv_meta_prealloc, !379, !"btrfs_attr_qgroup_rsv_meta_prealloc", i1 false, i1 false}
!381 = !{ptr @supported_feature_masks, !382, !"supported_feature_masks", i1 false, i1 false}
!382 = !{!"../fs/btrfs/sysfs.c", i32 1107, i32 18}
!383 = !{ptr @.str.134, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../fs/btrfs/sysfs.c", i32 1303, i32 43}
!385 = !{ptr @btrfs_unknown_feature_names, !386, !"btrfs_unknown_feature_names", i1 false, i1 false}
!386 = !{!"../fs/btrfs/sysfs.c", i32 1104, i32 13}
!387 = !{ptr @btrfs_static_feature_attr_group, !388, !"btrfs_static_feature_attr_group", i1 false, i1 false}
!388 = !{!"../fs/btrfs/sysfs.c", i32 421, i32 37}
!389 = !{ptr @btrfs_supported_static_feature_attrs, !390, !"btrfs_supported_static_feature_attrs", i1 false, i1 false}
!390 = !{!"../fs/btrfs/sysfs.c", i32 412, i32 26}
!391 = !{ptr @.str.135, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../fs/btrfs/sysfs.c", i32 335, i32 1}
!393 = !{ptr @btrfs_attr_static_feature_rmdir_subvol, !392, !"btrfs_attr_static_feature_rmdir_subvol", i1 false, i1 false}
!394 = !{ptr @.str.136, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/btrfs/sysfs.c", i32 333, i32 25}
!396 = !{ptr @.str.137, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/btrfs/sysfs.c", i32 356, i32 1}
!398 = !{ptr @btrfs_attr_static_feature_supported_checksums, !397, !"btrfs_attr_static_feature_supported_checksums", i1 false, i1 false}
!399 = !{ptr @.str.138, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../fs/btrfs/sysfs.c", i32 363, i32 1}
!401 = !{ptr @btrfs_attr_static_feature_send_stream_version, !400, !"btrfs_attr_static_feature_send_stream_version", i1 false, i1 false}
!402 = !{ptr @.str.139, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/btrfs/sysfs.c", i32 385, i32 1}
!404 = !{ptr @btrfs_attr_static_feature_supported_rescue_options, !403, !"btrfs_attr_static_feature_supported_rescue_options", i1 false, i1 false}
!405 = !{ptr @.str.140, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/btrfs/sysfs.c", i32 366, i32 2}
!407 = !{ptr @.str.141, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/btrfs/sysfs.c", i32 367, i32 2}
!409 = !{ptr @.str.142, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../fs/btrfs/sysfs.c", i32 368, i32 2}
!411 = !{ptr @.str.143, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../fs/btrfs/sysfs.c", i32 369, i32 2}
!413 = !{ptr @.str.144, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../fs/btrfs/sysfs.c", i32 370, i32 2}
!415 = distinct !{null, !416, !"rescue_opts", i1 false, i1 false}
!416 = !{!"../fs/btrfs/sysfs.c", i32 365, i32 20}
!417 = !{ptr @.str.145, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../fs/btrfs/sysfs.c", i32 403, i32 1}
!419 = !{ptr @btrfs_attr_static_feature_supported_sectorsizes, !418, !"btrfs_attr_static_feature_supported_sectorsizes", i1 false, i1 false}
!420 = !{ptr @.str.146, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../fs/btrfs/sysfs.c", i32 399, i32 33}
!422 = !{ptr @btrfs_debug_feature_attr_group, !423, !"btrfs_debug_feature_attr_group", i1 false, i1 false}
!423 = !{!"../fs/btrfs/sysfs.c", i32 614, i32 37}
!424 = !{ptr @btrfs_debug_feature_attrs, !425, !"btrfs_debug_feature_attrs", i1 false, i1 false}
!425 = !{!"../fs/btrfs/sysfs.c", i32 610, i32 26}
!426 = !{!"sp"}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 1, !"min_enum_size", i32 4}
!429 = !{i32 8, !"branch-target-enforcement", i32 0}
!430 = !{i32 8, !"sign-return-address", i32 0}
!431 = !{i32 8, !"sign-return-address-all", i32 0}
!432 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!433 = !{i32 7, !"uwtable", i32 1}
!434 = !{i32 7, !"frame-pointer", i32 2}
!435 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!436 = !{!"branch_weights", i32 1, i32 2000}
!437 = !{i64 2158433664, i64 2158434146, i64 2158433701, i64 2158433757, i64 2158433791, i64 2158433815, i64 2158433856, i64 2158433877, i64 2158433905, i64 2158433939}
!438 = !{i32 0, i32 33}
!439 = !{!"auto-init"}
