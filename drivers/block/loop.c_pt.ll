; ModuleID = '/llk/IR_all_yes/drivers/block/loop.c_pt.bc'
source_filename = "../drivers/block/loop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.loop_device = type { i32, %struct.atomic_t, i64, i64, i32, [64 x i8], ptr, ptr, i32, %struct.spinlock, i32, %struct.spinlock, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.timer_list, i8, i8, ptr, %struct.blk_mq_tag_set, ptr, %struct.mutex, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.41, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.49, ptr, ptr }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.43 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.44 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, %struct.list_head, ptr }
%union.anon.49 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.loop_cmd = type { %struct.list_head, i8, %struct.atomic_t, i32, %struct.kiocb, ptr, ptr, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.atomic64_t = type { i64 }
%struct.loop_worker = type { %struct.rb_node, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, ptr, i32 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.75, %union.anon.76 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.82, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.82 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { %struct.callback_head }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.88 = type { ptr }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.loop_info64 = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, [64 x i8], [64 x i8], [32 x i8], [2 x i64] }
%struct.loop_info = type { i32, i16, i32, i16, i32, i32, i32, i32, [64 x i8], [32 x i8], [2 x i32], [4 x i8] }
%struct.loop_config = type { i32, i32, %struct.loop_info64, [8 x i64] }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }

@__param_str_max_loop = internal constant [14 x i8] c"loop.max_loop\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_loop = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_loop = internal constant %struct.kernel_param { ptr @__param_str_max_loop, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @max_loop } }, section "__param", align 4
@__UNIQUE_ID_max_looptype334 = internal constant [27 x i8] c"loop.parmtype=max_loop:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_loop335 = internal constant [50 x i8] c"loop.parm=max_loop:Maximum number of loop devices\00", section ".modinfo", align 1
@__param_str_max_part = internal constant [14 x i8] c"loop.max_part\00", align 1
@max_part = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_part = internal constant %struct.kernel_param { ptr @__param_str_max_part, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @max_part } }, section "__param", align 4
@__UNIQUE_ID_max_parttype336 = internal constant [27 x i8] c"loop.parmtype=max_part:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_part337 = internal constant [64 x i8] c"loop.parm=max_part:Maximum number of partitions per loop device\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [29 x i8] c"loop.file=drivers/block/loop\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [17 x i8] c"loop.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias340 = internal constant [27 x i8] c"loop.alias=block-major-7-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [29 x i8] c"loop.alias=char-major-10-237\00", section ".modinfo", align 1
@__UNIQUE_ID_alias342 = internal constant [32 x i8] c"loop.alias=devname:loop-control\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"loop\00", [27 x i8] zeroinitializer }, align 32
@loop_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 237, ptr @.str.1, ptr @loop_ctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@loop_index_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_loop__343_2280_loop_init6 = internal global ptr @loop_init, section ".initcall6.init", align 4
@__exitcall_loop_exit = internal global ptr @loop_exit, section ".exitcall.exit", align 4
@__setup_str_max_loop_setup = internal constant [10 x i8] c"max_loop=\00", section ".init.rodata", align 1
@__setup_max_loop_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_max_loop_setup, ptr @max_loop_setup, i32 0 }, section ".init.setup", align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"loop-control\00", [19 x i8] zeroinitializer }, align 32
@loop_ctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loop_control_ioctl, ptr @loop_control_ioctl, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@loop_ctl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @loop_ctl_mutex, i64 52), ptr getelementptr (i8, ptr @loop_ctl_mutex, i64 52) }, ptr @loop_ctl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@loop_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @loop_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lo_complete_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@loop_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@part_shift = internal global { i32, [28 x i8] } zeroinitializer, align 32
@loop_add.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&lo->lo_mutex\00", [18 x i8] zeroinitializer }, align 32
@loop_add.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&lo->lo_lock\00", [19 x i8] zeroinitializer }, align 32
@loop_add.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lo->lo_work_lock\00", [46 x i8] zeroinitializer }, align 32
@lo_fops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @lo_open, ptr @lo_release, ptr null, ptr @lo_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loop%d\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"loop_ctl_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"loop_ctl_mutex\00", [17 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys = external dso_local global %struct.cgroup_subsys, align 4
@loop_queue_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&worker->work)\00", [63 x i8] zeroinitializer }, align 32
@blkcg_root_css = external dso_local local_unnamed_addr constant ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/block/loop.c\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@int_active_memcg = external dso_local global ptr, section ".data..percpu", align 4
@do_req_filebacked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lo_write_bvec._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.lo_write_bvec = private unnamed_addr constant [14 x i8] c"lo_write_bvec\00", align 1
@lo_write_bvec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.lo_write_bvec, ptr @.str.15, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013loop: Write error at byte offset %llu, length %i.\0A\00", [43 x i8] zeroinitializer }, align 32
@lo_write_bvec._entry_ptr = internal global ptr @lo_write_bvec._entry, section ".printk_index", align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@loop_validate_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @loop_validate_mutex, i64 52), ptr getelementptr (i8, ptr @loop_validate_mutex, i64 52) }, ptr @loop_validate_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__loop_clr_fd._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.15, i32 1177, ptr null, ptr null }, align 1
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: partition scan of loop%d failed (rc=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__loop_clr_fd\00", [18 x i8] zeroinitializer }, align 32
@__loop_clr_fd._entry_ptr = internal global ptr @__loop_clr_fd._entry, section ".printk_index", align 4
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"loop_validate_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loop_validate_mutex\00", [44 x i8] zeroinitializer }, align 32
@loop_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @loop_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@loop_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @loop_attr_backing_file, ptr @loop_attr_offset, ptr @loop_attr_sizelimit, ptr @loop_attr_autoclear, ptr @loop_attr_partscan, ptr @loop_attr_dio, ptr null], [36 x i8] zeroinitializer }, align 32
@loop_attr_backing_file = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @loop_attr_do_show_backing_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@loop_attr_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @loop_attr_do_show_offset, ptr null }, [36 x i8] zeroinitializer }, align 32
@loop_attr_sizelimit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @loop_attr_do_show_sizelimit, ptr null }, [36 x i8] zeroinitializer }, align 32
@loop_attr_autoclear = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @loop_attr_do_show_autoclear, ptr null }, [36 x i8] zeroinitializer }, align 32
@loop_attr_partscan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @loop_attr_do_show_partscan, ptr null }, [36 x i8] zeroinitializer }, align 32
@loop_attr_dio = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @loop_attr_do_show_dio, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"backing_file\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sizelimit\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autoclear\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"partscan\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dio\00", [28 x i8] zeroinitializer }, align 32
@loop_configure.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&lo->rootcg_work)\00", [60 x i8] zeroinitializer }, align 32
@loop_configure.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&lo->timer)\00", [19 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@loop_set_status_from_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.15, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014support for the xor transformation has been removed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"loop_set_status_from_info\00", [38 x i8] zeroinitializer }, align 32
@loop_set_status_from_info._entry_ptr = internal global ptr @loop_set_status_from_info._entry, section ".printk_index", align 4
@loop_set_status_from_info._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.15, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014support for cryptoloop has been removed.  Use dm-crypt instead.\0A\00", [61 x i8] zeroinitializer }, align 32
@loop_set_status_from_info._entry_ptr.42 = internal global ptr @loop_set_status_from_info._entry.40, section ".printk_index", align 4
@loop_reread_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.15, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: partition scan of loop%d (%s) failed (rc=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"loop_reread_partitions\00", [41 x i8] zeroinitializer }, align 32
@loop_reread_partitions._entry_ptr = internal global ptr @loop_reread_partitions._entry, section ".printk_index", align 4
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@loop_set_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.15, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: loop%d (%s) has still dirty pages (nrpages=%lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"loop_set_status\00", [16 x i8] zeroinitializer }, align 32
@loop_set_status._entry_ptr = internal global ptr @loop_set_status._entry, section ".printk_index", align 4
@loop_set_block_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.15, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loop_set_block_size\00", [44 x i8] zeroinitializer }, align 32
@loop_set_block_size._entry_ptr = internal global ptr @loop_set_block_size._entry, section ".printk_index", align 4
@loop_control_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@loop_control_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.15, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014deleting an unspecified loop device is not supported.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loop_control_remove\00", [44 x i8] zeroinitializer }, align 32
@loop_control_remove._entry_ptr = internal global ptr @loop_control_remove._entry, section ".printk_index", align 4
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"loop_index_idr.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@loop_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.15, i32 2251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016loop: module loaded\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"loop_init\00", [22 x i8] zeroinitializer }, align 32
@loop_init._entry_ptr = internal global ptr @loop_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 19584, i64 19585, i64 19586]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967274]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967274]
@__sancov_gen_cov_switch_values.60 = internal global [13 x i64] [i64 11, i64 32, i64 19456, i64 19457, i64 19458, i64 19459, i64 19460, i64 19461, i64 19462, i64 19463, i64 19464, i64 19465, i64 19466]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 19463, i64 19464, i64 19465]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 18]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 18]
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"max_loop\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1784, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"max_part\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 134, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2265, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"loop_misc\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2185, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"loop_index_idr\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2187, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"loop_ctl_fops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2177, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"loop_ctl_mutex\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"loop_mq_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1947, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1994, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"part_shift\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 135, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2032, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2034, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2035, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [8 x i8] c"lo_fops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1771, i32 45 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2044, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 91, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 871, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 695, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 723, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1893, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 250, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 49, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 34, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c"loop_validate_mutex\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1176, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 92, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant [21 x i8] c"loop_attribute_group\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 730, i32 31 }
@___asan_gen_.184 = private unnamed_addr constant [11 x i8] c"loop_attrs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 720, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant [23 x i8] c"loop_attr_backing_file\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"loop_attr_offset\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"loop_attr_sizelimit\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"loop_attr_autoclear\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"loop_attr_partscan\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"loop_attr_dio\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 713, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 714, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 684, i32 22 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 715, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 716, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 696, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 696, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 696, i32 48 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 717, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 718, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1027, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1031, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 934, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 937, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 521, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 156, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1264, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1484, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2100, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 90, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [24 x i8] c"../drivers/block/loop.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2251, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_alias340, ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_alias342, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__UNIQUE_ID_max_loop335, ptr @__UNIQUE_ID_max_looptype334, ptr @__UNIQUE_ID_max_part337, ptr @__UNIQUE_ID_max_parttype336, ptr @__exitcall_loop_exit, ptr @__initcall__kmod_loop__343_2280_loop_init6, ptr @__loop_clr_fd._entry, ptr @__loop_clr_fd._entry_ptr, ptr @__param_max_loop, ptr @__param_max_part, ptr @__setup_max_loop_setup, ptr @lo_write_bvec._entry, ptr @lo_write_bvec._entry_ptr, ptr @loop_control_remove._entry, ptr @loop_control_remove._entry_ptr, ptr @loop_exit, ptr @loop_init._entry, ptr @loop_init._entry_ptr, ptr @loop_reread_partitions._entry, ptr @loop_reread_partitions._entry_ptr, ptr @loop_set_block_size._entry, ptr @loop_set_block_size._entry_ptr, ptr @loop_set_status._entry, ptr @loop_set_status._entry_ptr, ptr @loop_set_status_from_info._entry, ptr @loop_set_status_from_info._entry.40, ptr @loop_set_status_from_info._entry_ptr, ptr @loop_set_status_from_info._entry_ptr.42, ptr @max_loop, ptr @max_part, ptr @.str, ptr @loop_misc, ptr @loop_index_idr, ptr @.str.1, ptr @loop_ctl_fops, ptr @loop_ctl_mutex, ptr @loop_mq_ops, ptr @loop_add.__key, ptr @part_shift, ptr @loop_add.__key.2, ptr @.str.3, ptr @loop_add.__key.4, ptr @.str.5, ptr @loop_add.__key.6, ptr @.str.7, ptr @lo_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @loop_queue_work.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @lo_write_bvec._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @loop_validate_mutex, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @loop_attribute_group, ptr @loop_attrs, ptr @loop_attr_backing_file, ptr @loop_attr_offset, ptr @loop_attr_sizelimit, ptr @loop_attr_autoclear, ptr @loop_attr_partscan, ptr @loop_attr_dio, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @loop_configure.__key, ptr @.str.35, ptr @loop_configure.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_loop to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_part to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_index_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_ctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_ctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_shift to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_add.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_add.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_add.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_fops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_queue_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_write_bvec._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_write_bvec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_validate_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attr_backing_file to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attr_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attr_sizelimit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attr_autoclear to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attr_partscan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_attr_dio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_configure.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_configure.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_set_status_from_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_set_status_from_info._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_reread_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_set_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_set_block_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_control_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @loop_exit() #0 section ".exit.text" align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #15
  tail call void @unregister_blkdev(i32 noundef 7, ptr noundef nonnull @.str) #15
  tail call void @misc_deregister(ptr noundef nonnull @loop_misc) #15
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call1 = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %id) #15
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call3 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %lo_disk.i = getelementptr inbounds %struct.loop_device, ptr %call3, i32 0, i32 22
  %1 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lo_disk.i, align 8
  call void @del_gendisk(ptr noundef %2) #15
  %3 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lo_disk.i, align 8
  call void @blk_cleanup_disk(ptr noundef %4) #15
  %tag_set.i = getelementptr inbounds %struct.loop_device, ptr %call3, i32 0, i32 21
  call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #15
  call void @mutex_lock_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call3, align 8
  %call.i = call ptr @idr_remove(ptr noundef nonnull @loop_index_idr, i32 noundef %6) #15
  call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %lo_mutex.i = getelementptr inbounds %struct.loop_device, ptr %call3, i32 0, i32 23
  call void @mutex_destroy(ptr noundef %lo_mutex.i) #15
  call void @kfree(ptr noundef nonnull %call3) #15
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %add = add i32 %8, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %id) #15
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @idr_destroy(ptr noundef nonnull @loop_index_idr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @part_shift, align 4
  %0 = load i32, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #15, !range !189
  %sub.i = sub nuw nsw i32 32, %1
  store i32 %sub.i, ptr @part_shift, align 4
  %notmask = shl nsw i32 -1, %sub.i
  %sub = xor i32 %notmask, -1
  store i32 %sub, ptr @max_part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %cmp2 = icmp ugt i32 %0, 255
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %2 = phi i32 [ %sub.i, %if.end.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %3 = load i32, ptr @max_loop, align 4
  %sub5 = sub nuw nsw i32 20, %2
  %shl6 = shl nuw nsw i32 1, %sub5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl6)
  %cmp7 = icmp ugt i32 %3, %shl6
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 8, i32 %3
  %call12 = tail call i32 @misc_register(ptr noundef nonnull @loop_misc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call16 = tail call i32 @__register_blkdev(i32 noundef 7, ptr noundef nonnull @.str, ptr noundef nonnull @loop_probe) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond.preheader, label %if.then18

for.cond.preheader:                               ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.)
  %cmp2030 = icmp sgt i32 %., 0
  br i1 %cmp2030, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @misc_deregister(ptr noundef nonnull @loop_misc) #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call21 = tail call fastcc i32 @loop_add(i32 noundef %i.031)
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.body.do.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %for.body.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then18, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call12, %if.end9.cleanup_crit_edge ], [ -5, %if.then18 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max_loop_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtol(ptr noundef %str, ptr noundef null, i32 noundef 0) #15
  store i32 %call, ptr @max_loop, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_control_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %parm) #3 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 19584, label %sw.bb
    i32 19585, label %sw.bb1
    i32 19586, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @loop_add(i32 noundef %parm)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parm)
  %cmp.i = icmp slt i32 %parm, 0
  br i1 %cmp.i, label %land.end.i, label %if.end13.i

land.end.i:                                       ; preds = %sw.bb1
  %.b59.i = load i1, ptr @loop_control_remove.__already_done, align 1
  br i1 %.b59.i, label %land.end.i.return_crit_edge, label %if.then5.i, !prof !190

land.end.i.return_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @loop_control_remove.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #18
  br label %return

if.end13.i:                                       ; preds = %sw.bb1
  %call14.i = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.return_crit_edge

if.end13.i.return_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end17.i:                                       ; preds = %if.end13.i
  %call18.i = tail call ptr @idr_find(ptr noundef nonnull @loop_index_idr, i32 noundef %parm) #15
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.thread.i_crit_edge, label %lor.lhs.false.i

if.end17.i.if.end23.thread.i_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.thread.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %idr_visible.i = getelementptr inbounds %struct.loop_device, ptr %call18.i, i32 0, i32 24
  %1 = ptrtoint ptr %idr_visible.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %idr_visible.i, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool20.not.i = icmp eq i8 %2, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.if.end23.thread.i_crit_edge, label %if.end26.i

lor.lhs.false.i.if.end23.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.thread.i

if.end23.thread.i:                                ; preds = %lor.lhs.false.i.if.end23.thread.i_crit_edge, %if.end17.i.if.end23.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %return

if.end26.i:                                       ; preds = %lor.lhs.false.i
  %3 = ptrtoint ptr %idr_visible.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %idr_visible.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %lo_mutex.i = getelementptr inbounds %struct.loop_device, ptr %call18.i, i32 0, i32 23
  %call27.i = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.mark_visible.i_crit_edge

if.end26.i.mark_visible.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mark_visible.i

if.end30.i:                                       ; preds = %if.end26.i
  %lo_state.i = getelementptr inbounds %struct.loop_device, ptr %call18.i, i32 0, i32 10
  %4 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lo_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.not.i = icmp eq i32 %5, 0
  br i1 %cmp31.not.i, label %lor.lhs.false32.i, label %if.end30.i.if.then35.i_crit_edge

if.end30.i.if.then35.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

lor.lhs.false32.i:                                ; preds = %if.end30.i
  %lo_refcnt.i = getelementptr inbounds %struct.loop_device, ptr %call18.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lo_refcnt.i, i32 noundef 4) #15
  %6 = ptrtoint ptr %lo_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lo_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp34.i = icmp sgt i32 %7, 0
  br i1 %cmp34.i, label %lor.lhs.false32.i.if.then35.i_crit_edge, label %if.end37.i

lor.lhs.false32.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false32.i.if.then35.i_crit_edge, %if.end30.i.if.then35.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  br label %mark_visible.i

if.end37.i:                                       ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %lo_state.i, align 4
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  %lo_disk.i = getelementptr inbounds %struct.loop_device, ptr %call18.i, i32 0, i32 22
  %9 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lo_disk.i, align 8
  tail call void @del_gendisk(ptr noundef %10) #15
  %11 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lo_disk.i, align 8
  tail call void @blk_cleanup_disk(ptr noundef %12) #15
  %tag_set.i = getelementptr inbounds %struct.loop_device, ptr %call18.i, i32 0, i32 21
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  %13 = ptrtoint ptr %call18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call18.i, align 8
  %call.i11 = tail call ptr @idr_remove(ptr noundef nonnull @loop_index_idr, i32 noundef %14) #15
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  tail call void @mutex_destroy(ptr noundef %lo_mutex.i) #15
  tail call void @kfree(ptr noundef nonnull %call18.i) #15
  br label %return

mark_visible.i:                                   ; preds = %if.then35.i, %if.end26.i.mark_visible.i_crit_edge
  %ret.1.i = phi i32 [ %call27.i, %if.end26.i.mark_visible.i_crit_edge ], [ -16, %if.then35.i ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  %15 = ptrtoint ptr %idr_visible.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %idr_visible.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #15
  %call.i7 = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %sw.bb3.loop_control_get_free.exit_crit_edge

sw.bb3.loop_control_get_free.exit_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_control_get_free.exit

for.cond.preheader.i:                             ; preds = %sw.bb3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %id.i, align 4
  %call11.i = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %id.i) #15
  %cmp.not2.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not2.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call13.i = phi ptr [ %call1.i, %for.inc.i.for.body.i_crit_edge ], [ %call11.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %idr_visible.i8 = getelementptr inbounds %struct.loop_device, ptr %call13.i, i32 0, i32 24
  %17 = ptrtoint ptr %idr_visible.i8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %idr_visible.i8, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %lo_state.i9 = getelementptr inbounds %struct.loop_device, ptr %call13.i, i32 0, i32 10
  %19 = ptrtoint ptr %lo_state.i9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lo_state.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i = icmp eq i32 %20, 0
  br i1 %cmp4.i, label %found.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i, align 4
  %add.i = add i32 %22, 1
  store i32 %add.i, ptr %id.i, align 4
  %call1.i = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %id.i) #15
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %call7.i = call fastcc i32 @loop_add(i32 noundef -1) #15
  br label %loop_control_get_free.exit

found.i:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 4
  br label %loop_control_get_free.exit

loop_control_get_free.exit:                       ; preds = %found.i, %for.end.i, %sw.bb3.loop_control_get_free.exit_crit_edge
  %retval.0.i10 = phi i32 [ %24, %found.i ], [ %call7.i, %for.end.i ], [ %call.i7, %sw.bb3.loop_control_get_free.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #15
  br label %return

return:                                           ; preds = %loop_control_get_free.exit, %mark_visible.i, %if.end37.i, %if.end23.thread.i, %if.end13.i.return_crit_edge, %if.then5.i, %land.end.i.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i10, %loop_control_get_free.exit ], [ %call, %sw.bb ], [ -38, %entry.return_crit_edge ], [ %ret.1.i, %mark_visible.i ], [ 0, %if.end37.i ], [ -22, %if.then5.i ], [ -22, %land.end.i.return_crit_edge ], [ %call14.i, %if.end13.i.return_crit_edge ], [ -19, %if.end23.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @loop_add(i32 noundef %i) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 608) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %lo_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %lo_state, align 4
  %call1 = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_dev_crit_edge

if.end.out_free_dev_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dev

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i)
  %cmp = icmp sgt i32 %i, -1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  %add = add nuw i32 %i, 1
  %call6 = tail call i32 @idr_alloc(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %call7.i.i, i32 noundef %i, i32 noundef %add, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -28
  br i1 %cmp7, label %if.then5.out_free_dev.sink.split_crit_edge, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then5.out_free_dev.sink.split_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dev.sink.split

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @idr_alloc(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #15
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5.if.end11_crit_edge
  %err.0 = phi i32 [ %call6, %if.then5.if.end11_crit_edge ], [ %call10, %if.else ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp12 = icmp slt i32 %err.0, 0
  br i1 %cmp12, label %if.end11.out_free_dev_crit_edge, label %if.end14

if.end11.out_free_dev_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dev

if.end14:                                         ; preds = %if.end11
  %tag_set = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21
  %ops = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @loop_mq_ops, ptr %ops, align 8
  %nr_hw_queues = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 3
  %3 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %nr_hw_queues, align 4
  %queue_depth = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 4
  %4 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %queue_depth, align 8
  %numa_node = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 7
  %5 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %numa_node, align 4
  %cmd_size = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 6
  %6 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 80, ptr %cmd_size, align 8
  %flags = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 133, ptr %flags, align 4
  %driver_data = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 21, i32 10
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data, align 8
  %call22 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end14.out_free_idr_crit_edge

if.end14.out_free_idr_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_idr

if.end25:                                         ; preds = %if.end14
  %call27 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @loop_add.__key) #15
  %lo_disk = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 22
  %9 = ptrtoint ptr %lo_disk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %lo_disk, align 8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call27 to i32
  br label %out_cleanup_tags

if.end31:                                         ; preds = %if.end25
  %queue = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 9
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 20
  %13 = ptrtoint ptr %lo_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %lo_queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %12, i32 noundef 2560) #15
  %14 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 3, ptr noundef %15) #15
  %16 = load i32, ptr @part_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool35.not = icmp eq i32 %16, 0
  br i1 %tobool35.not, label %if.then36, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %flags37 = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 11
  %17 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags37, align 4
  %or = or i32 %18, 4
  store i32 %or, ptr %flags37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31.if.end38_crit_edge
  %lo_refcnt = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lo_refcnt, i32 noundef 4) #15
  %19 = ptrtoint ptr %lo_refcnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %lo_refcnt, align 4
  %lo_mutex = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %lo_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @loop_add.__key.2) #15
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %err.0, ptr %call7.i.i, align 8
  %lo_lock = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lo_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @loop_add.__key.4, i16 noundef signext 3) #15
  %lo_work_lock = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lo_work_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @loop_add.__key.6, i16 noundef signext 3) #15
  %21 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %call27, align 8
  %22 = load i32, ptr @part_shift, align 4
  %shl = shl i32 %err.0, %22
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 1
  %23 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %first_minor, align 4
  %shl47 = shl nuw i32 1, %22
  %minors = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 2
  %24 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl47, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 8
  %25 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @lo_fops, ptr %fops, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 10
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %private_data, align 8
  %27 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lo_queue, align 4
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %queue, align 4
  %events = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 4
  %30 = ptrtoint ptr %events to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %events, align 4
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 5
  %31 = ptrtoint ptr %event_flags to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %event_flags, align 2
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 3
  %call50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.8, i32 noundef %err.0)
  %call.i = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %call27, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not = icmp eq i32 %call.i, 0
  br i1 %tobool52.not, label %if.end54, label %out_cleanup_disk

if.end54:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  %idr_visible = getelementptr inbounds %struct.loop_device, ptr %call7.i.i, i32 0, i32 24
  %32 = ptrtoint ptr %idr_visible to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %idr_visible, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %cleanup

out_cleanup_disk:                                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_cleanup_disk(ptr noundef %call27) #15
  br label %out_cleanup_tags

out_cleanup_tags:                                 ; preds = %out_cleanup_disk, %if.then29
  %err.1 = phi i32 [ %10, %if.then29 ], [ %call.i, %out_cleanup_disk ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #15
  br label %out_free_idr

out_free_idr:                                     ; preds = %out_cleanup_tags, %if.end14.out_free_idr_crit_edge
  %err.2 = phi i32 [ %call22, %if.end14.out_free_idr_crit_edge ], [ %err.1, %out_cleanup_tags ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @loop_ctl_mutex, i32 noundef 0) #15
  %call56 = tail call ptr @idr_remove(ptr noundef nonnull @loop_index_idr, i32 noundef %err.0) #15
  br label %out_free_dev.sink.split

out_free_dev.sink.split:                          ; preds = %out_free_idr, %if.then5.out_free_dev.sink.split_crit_edge
  %err.3.ph = phi i32 [ %err.2, %out_free_idr ], [ -17, %if.then5.out_free_dev.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %out_free_dev

out_free_dev:                                     ; preds = %out_free_dev.sink.split, %if.end11.out_free_dev_crit_edge, %if.end.out_free_dev_crit_edge
  %err.3 = phi i32 [ %call1, %if.end.out_free_dev_crit_edge ], [ %err.0, %if.end11.out_free_dev_crit_edge ], [ %err.3.ph, %out_free_dev.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free_dev, %if.end54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end54 ], [ %err.3, %out_free_dev ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @loop_queue_rq(ptr nocapture noundef readnone %hctx, ptr nocapture noundef readonly %bd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queuedata, align 4
  tail call void @blk_mq_start_request(ptr noundef %1) #15
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_flags, align 4
  %trunc = trunc i32 %9 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %trunc, label %sw.default [
    i8 2, label %if.end.sw.epilog_crit_edge
    i8 3, label %if.end.sw.epilog_crit_edge38
    i8 9, label %if.end.sw.epilog_crit_edge39
  ]

if.end.sw.epilog_crit_edge39:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.sw.epilog_crit_edge38:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %use_dio = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 18
  %11 = ptrtoint ptr %use_dio to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_dio, align 8, !range !191
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge38, %if.end.sw.epilog_crit_edge39
  %.sink = phi i8 [ %12, %sw.default ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge38 ], [ 0, %if.end.sw.epilog_crit_edge39 ]
  %use_aio2 = getelementptr %struct.request, ptr %1, i32 1, i32 2
  %13 = ptrtoint ptr %use_aio2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %use_aio2, align 8
  %blkcg_css = getelementptr inbounds %struct.loop_cmd, ptr %add.ptr.i, i32 0, i32 6
  %14 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %blkcg_css, align 4
  %memcg_css = getelementptr %struct.request, ptr %1, i32 1, i32 14
  %15 = ptrtoint ptr %memcg_css to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %memcg_css, align 8
  %bio = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bio, align 8
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %sw.epilog.if.end13_crit_edge, label %land.lhs.true

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true:                                    ; preds = %sw.epilog
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_blkg, align 8
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %bio_blkcg.exit

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

bio_blkcg.exit:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %blkcg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %blkcg.i, align 4
  %22 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %blkcg_css, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %21, align 8
  %call11 = tail call ptr @cgroup_get_e_css(ptr noundef %24, ptr noundef nonnull @memory_cgrp_subsys) #15
  %25 = ptrtoint ptr %memcg_css to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call11, ptr %memcg_css, align 8
  br label %if.end13

if.end13:                                         ; preds = %bio_blkcg.exit, %land.lhs.true.if.end13_crit_edge, %sw.epilog.if.end13_crit_edge
  %lo_work_lock.i = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lo_work_lock.i) #15
  %26 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blkcg_css, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end13.if.else49.i_crit_edge, label %queue_on_root_worker.exit.i

if.end13.if.else49.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else49.i

queue_on_root_worker.exit.i:                      ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blkcg_root_css to i32))
  %28 = load ptr, ptr @blkcg_root_css, align 4
  %cmp.i.not.i = icmp eq ptr %28, %27
  br i1 %cmp.i.not.i, label %queue_on_root_worker.exit.i.if.else49.i_crit_edge, label %if.end.i

queue_on_root_worker.exit.i.if.else49.i_crit_edge: ; preds = %queue_on_root_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else49.i

if.end.i:                                         ; preds = %queue_on_root_worker.exit.i
  %worker_tree.i = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 16
  %29 = ptrtoint ptr %worker_tree.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %worker_tree.i, align 4
  %tobool1.not113.i = icmp eq ptr %30, null
  br i1 %tobool1.not113.i, label %if.end.i.if.end14.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %31 = phi ptr [ %35, %if.else.i.while.body.i_crit_edge ], [ %30, %if.end.i.while.body.i_crit_edge ]
  %blkcg_css2.i = getelementptr inbounds %struct.loop_worker, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %blkcg_css2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blkcg_css2.i, align 4
  %cmp.i = icmp eq ptr %33, %27
  br i1 %cmp.i, label %while.body.i.if.then40.i_crit_edge, label %if.else.i

while.body.i.if.then40.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40.i

if.else.i:                                        ; preds = %while.body.i
  %cmp7.i = icmp slt ptr %33, %27
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 1
  %node.1.i = select i1 %cmp7.i, ptr %rb_left.i, ptr %rb_right.i
  %34 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node.1.i, align 4
  %tobool1.not.i31 = icmp eq ptr %35, null
  br i1 %tobool1.not.i31, label %while.cond.if.end14_crit_edge.i, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.if.end14_crit_edge.i:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i = ptrtoint ptr %31 to i32
  br label %if.end14.i

if.end14.i:                                       ; preds = %while.cond.if.end14_crit_edge.i, %if.end.i.if.end14.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.if.end14_crit_edge.i ], [ 0, %if.end.i.if.end14.i_crit_edge ]
  %node.0.lcssa.i = phi ptr [ %node.1.i, %while.cond.if.end14_crit_edge.i ], [ %worker_tree.i, %if.end.i.if.end14.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 10496, i32 noundef 84) #19
  %tobool16.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end24.i

if.then17.i:                                      ; preds = %if.end14.i
  %37 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %blkcg_css, align 4
  %38 = ptrtoint ptr %memcg_css to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %memcg_css, align 8
  %tobool19.not.i = icmp eq ptr %39, null
  br i1 %tobool19.not.i, label %if.then17.i.if.end22.i_crit_edge, label %if.then20.i

if.then17.i.if.end22.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @css_put(ptr noundef nonnull %39) #15
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.then17.i.if.end22.i_crit_edge
  %40 = ptrtoint ptr %memcg_css to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %memcg_css, align 8
  br label %if.else49.i

if.end24.i:                                       ; preds = %if.end14.i
  %41 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %blkcg_css, align 4
  %blkcg_css26.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %blkcg_css26.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %blkcg_css26.i, align 4
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %42, i32 0, i32 7
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i96.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i96.i, label %if.then.i.i, label %if.end24.i.css_get.exit.i_crit_edge

if.end24.i.css_get.exit.i_crit_edge:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %css_get.exit.i

if.then.i.i:                                      ; preds = %if.end24.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %42, i32 0, i32 2
  %46 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i.i.i, label %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %50 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %refcnt.i.i, align 4
  %and.i.i.i.i.i = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i, !prof !190

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %53 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i2.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %58, %51
  %59 = inttoptr i32 %add.i.i.i.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add15.i.i.i.i = add i32 %61, 1
  store i32 %add15.i.i.i.i, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i.i.i.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !195

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #15, !srcloc !196
  br label %if.end38.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %42, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %64, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %64, i32 1, i32 3, i32 1) #15
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #15, !srcloc !197
  br label %if.end38.i.i.i.i

if.end38.i.i.i.i:                                 ; preds = %if.else.i.i.i.i, %do.end31.i.i.i.i
  %call.i3.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i.i.i.i, label %if.end38.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end38.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge: ; preds = %if.end38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_get.exit.i.i

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end38.i.i.i.i
  %call1.i4.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_get.exit.i.i

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_get.exit.i.i

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #15
  br label %percpu_ref_get.exit.i.i

percpu_ref_get.exit.i.i:                          ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge, %if.end38.i.i.i.i.percpu_ref_get.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !198
  %66 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i10.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %css_get.exit.i

css_get.exit.i:                                   ; preds = %percpu_ref_get.exit.i.i, %if.end24.i.css_get.exit.i_crit_edge
  %work28.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work28.i, i32 noundef 0) #15
  %70 = ptrtoint ptr %work28.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -64, ptr %work28.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @loop_queue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry32.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %entry32.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %entry32.i, ptr %entry32.i, align 8
  %prev.i.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %entry32.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @loop_workfn, ptr %func.i, align 8
  %cmd_list34.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %cmd_list34.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %cmd_list34.i, ptr %cmd_list34.i, align 8
  %prev.i97.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %prev.i97.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cmd_list34.i, ptr %prev.i97.i, align 4
  %idle_list.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %idle_list.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %idle_list.i, ptr %idle_list.i, align 8
  %prev.i98.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %prev.i98.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %idle_list.i, ptr %prev.i98.i, align 4
  %lo35.i = getelementptr inbounds %struct.loop_worker, ptr %call7.i.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %lo35.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %5, ptr %lo35.i, align 8
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_left.i.i, align 8
  %82 = ptrtoint ptr %node.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i, ptr %node.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %worker_tree.i) #15
  br label %if.then40.i

if.then40.i:                                      ; preds = %css_get.exit.i, %while.body.i.if.then40.i_crit_edge
  %worker.1.i = phi ptr [ %call7.i.i.i, %css_get.exit.i ], [ %31, %while.body.i.if.then40.i_crit_edge ]
  %idle_list41.i = getelementptr inbounds %struct.loop_worker, ptr %worker.1.i, i32 0, i32 3
  %83 = ptrtoint ptr %idle_list41.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %idle_list41.i, align 4
  %cmp.i99.not.i = icmp eq ptr %84, %idle_list41.i
  br i1 %cmp.i99.not.i, label %if.then40.i.if.end46.i_crit_edge, label %if.then44.i

if.then40.i.if.end46.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.then40.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %idle_list41.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then44.i.list_del_init.exit.i_crit_edge

if.then44.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.loop_worker, ptr %worker.1.i, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i, align 4
  %87 = ptrtoint ptr %idle_list41.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %idle_list41.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then44.i.list_del_init.exit.i_crit_edge
  %91 = ptrtoint ptr %idle_list41.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %idle_list41.i, ptr %idle_list41.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.loop_worker, ptr %worker.1.i, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %idle_list41.i, ptr %prev.i3.i.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %list_del_init.exit.i, %if.then40.i.if.end46.i_crit_edge
  %work47.i = getelementptr inbounds %struct.loop_worker, ptr %worker.1.i, i32 0, i32 1
  %cmd_list48.i = getelementptr inbounds %struct.loop_worker, ptr %worker.1.i, i32 0, i32 2
  br label %if.end50.i

if.else49.i:                                      ; preds = %if.end22.i, %queue_on_root_worker.exit.i.if.else49.i_crit_edge, %if.end13.if.else49.i_crit_edge
  %rootcg_work.i = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 13
  %rootcg_cmd_list.i = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 14
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else49.i, %if.end46.i
  %work.0.i = phi ptr [ %work47.i, %if.end46.i ], [ %rootcg_work.i, %if.else49.i ]
  %cmd_list.0.i = phi ptr [ %cmd_list48.i, %if.end46.i ], [ %rootcg_cmd_list.i, %if.else49.i ]
  %prev.i100.i = getelementptr inbounds %struct.list_head, ptr %cmd_list.0.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i100.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i100.i, align 4
  %call.i.i101.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %94, ptr noundef %cmd_list.0.i) #15
  br i1 %call.i.i101.i, label %if.end.i.i102.i, label %if.end50.i.loop_queue_work.exit_crit_edge

if.end50.i.loop_queue_work.exit_crit_edge:        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_queue_work.exit

if.end.i.i102.i:                                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %prev.i100.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i, ptr %prev.i100.i, align 4
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %cmd_list.0.i, ptr %add.ptr.i, align 4
  %prev3.i.i.i = getelementptr %struct.request, ptr %1, i32 1, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %add.ptr.i, ptr %94, align 4
  br label %loop_queue_work.exit

loop_queue_work.exit:                             ; preds = %if.end.i.i102.i, %if.end50.i.loop_queue_work.exit_crit_edge
  %workqueue.i = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 12
  %99 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %workqueue.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %100, ptr noundef %work.0.i) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lo_work_lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %loop_queue_work.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %loop_queue_work.exit ], [ 10, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lo_complete_rq(ptr noundef %rq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %use_aio = getelementptr %struct.request, ptr %rq, i32 1, i32 2
  %0 = ptrtoint ptr %use_aio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_aio, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ret1 = getelementptr %struct.request, ptr %rq, i32 1, i32 4
  %2 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %4 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5 = icmp eq i32 %3, %5
  br i1 %cmp5, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false6

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %if.end13, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ret8 = getelementptr %struct.request, ptr %rq, i32 1, i32 4
  %8 = ptrtoint ptr %ret8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ret8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.then.end_io_crit_edge

if.then.end_io_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_io

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %9) #15
  br label %end_io

if.end13:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not = icmp eq i32 %3, 0
  br i1 %tobool15.not, label %if.then22, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call zeroext i1 @blk_update_request(ptr noundef %rq, i8 noundef zeroext 0, i32 noundef %3) #15
  %10 = ptrtoint ptr %ret1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ret1, align 8
  tail call void @blk_mq_requeue_request(ptr noundef %rq, i1 noundef zeroext true) #15
  br label %if.end26

if.then22:                                        ; preds = %if.end13
  %bio23 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %11 = ptrtoint ptr %bio23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bio.045 = load ptr, ptr %bio23, align 8
  %tobool24.not46 = icmp eq ptr %bio.045, null
  br i1 %tobool24.not46, label %if.then22.end_io_crit_edge, label %if.then22.while.body_crit_edge

if.then22.while.body_crit_edge:                   ; preds = %if.then22
  br label %while.body

if.then22.end_io_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_io

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then22.while.body_crit_edge
  %bio.047 = phi ptr [ %bio.0, %while.body.while.body_crit_edge ], [ %bio.045, %if.then22.while.body_crit_edge ]
  tail call void @zero_fill_bio(ptr noundef nonnull %bio.047) #15
  %12 = ptrtoint ptr %bio.047 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bio.0 = load ptr, ptr %bio.047, align 8
  %tobool24.not = icmp eq ptr %bio.0, null
  br i1 %tobool24.not, label %while.body.end_io_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.end_io_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_io

end_io:                                           ; preds = %while.body.end_io_crit_edge, %if.then22.end_io_crit_edge, %if.then10, %if.then.end_io_crit_edge
  %ret.0 = phi i8 [ %call12, %if.then10 ], [ 0, %if.then.end_io_crit_edge ], [ 10, %if.then22.end_io_crit_edge ], [ 10, %while.body.end_io_crit_edge ]
  tail call void @blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext %ret.0) #15
  br label %if.end26

if.end26:                                         ; preds = %end_io, %if.then16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_get_e_css(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @css_put(ptr noundef %css) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !190

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %9 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i2.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i = add i32 %17, -1
  store i32 %add15.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !195

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #15, !srcloc !196
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #15
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #15, !srcloc !200
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !195

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i, align 4
  tail call void %25(ptr noundef %refcnt) #15
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #15
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !198
  %26 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i10.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end

if.end:                                           ; preds = %percpu_ref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loop_workfn(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %cmd_list = getelementptr i8, ptr %work, i32 44
  %lo = getelementptr i8, ptr %work, i32 60
  %0 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo, align 4
  tail call fastcc void @loop_process_work(ptr noundef %add.ptr, ptr noundef %cmd_list, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loop_process_work(ptr noundef %worker, ptr noundef %cmd_list, ptr noundef %lo) unnamed_addr #3 align 64 {
entry:
  %pos.addr.i100.i.i = alloca i64, align 8
  %bvec.i101.i.i = alloca %struct.bio_vec, align 4
  %i.i.i.i = alloca %struct.iov_iter, align 8
  %i.i.i.i.i = alloca %struct.iov_iter, align 8
  %pos.addr.i.i.i = alloca i64, align 8
  %bvec.i.i.i = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1572864
  store i32 %or, ptr %flags, align 4
  %lo_work_lock = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lo_work_lock) #15
  %6 = ptrtoint ptr %cmd_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cmd_list, align 4
  %cmp.i.not37 = icmp eq ptr %7, %cmd_list
  br i1 %cmp.i.not37, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %8 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i101.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i101.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i.i.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %loop_handle_cmd.exit.while.body_crit_edge, %while.body.lr.ph
  %12 = phi ptr [ %7, %while.body.lr.ph ], [ %337, %loop_handle_cmd.exit.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lo_work_lock) #15
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -192
  %cmd_flags.i = getelementptr i8, ptr %12, i32 -180
  %21 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 8
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queuedata.i, align 4
  br i1 %tobool.i.not.i, label %list_del.exit.if.end.i_crit_edge, label %land.lhs.true.i

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %list_del.exit
  %lo_flags.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lo_flags.i, align 8
  %and2.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %list_del.exit.if.end.i_crit_edge
  %blkcg_css.i = getelementptr inbounds %struct.loop_cmd, ptr %12, i32 0, i32 6
  %29 = ptrtoint ptr %blkcg_css.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %blkcg_css.i, align 4
  %tobool4.not.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kthread_associate_blkcg(ptr noundef nonnull %30) #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %memcg_css.i = getelementptr inbounds %struct.loop_cmd, ptr %12, i32 0, i32 7
  %31 = ptrtoint ptr %memcg_css.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memcg_css.i, align 8
  %tobool8.not.i = icmp eq ptr %32, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then9.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end7.i
  %33 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i60.i = and i32 %36, 15728640
  %37 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i78.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i78.i.i to ptr
  %preempt_count.i79.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i79.i.i, align 4
  %and2.i.i = and i32 %40, 983040
  %or.i.i = or i32 %and2.i.i, %and.i60.i
  %41 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i80.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i80.i.i to ptr
  %preempt_count.i81.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i81.i.i, align 4
  %and5.i.i = and i32 %44, 256
  %or6.i.i = or i32 %or.i.i, %and5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i.i)
  %tobool.not.i.i = icmp eq i32 %or6.i.i, 0
  %45 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i85.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i85.i.i to ptr
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then9.i
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !202
  %49 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %54, ptrtoint (ptr @int_active_memcg to i32)
  %55 = inttoptr i32 %add.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %55, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !203
  %58 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i82.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i82.i.i to ptr
  %preempt_count.i.i83.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i83.i.i, align 4
  %sub.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i83.i.i, align 4
  %62 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %63 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i, align 4
  %arrayidx47.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx47.i.i, align 4
  %add48.i.i = add i32 %66, ptrtoint (ptr @int_active_memcg to i32)
  %67 = inttoptr i32 %add48.i.i to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %32, ptr %67, align 4
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i84.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i.i)
  %tobool59.not.i.i = icmp eq i32 %and.i.i84.i.i, 0
  br i1 %tobool59.not.i.i, label %if.then63.i.i, label %if.then.i.i.do.end65.i.i_crit_edge, !prof !195

if.then.i.i.do.end65.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65.i.i

if.then63.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then63.i.i, %if.then.i.i.do.end65.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #15, !srcloc !196
  br label %if.end13.i

if.else.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %70 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i.i, align 8
  %active_memcg.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 206
  %72 = ptrtoint ptr %active_memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %active_memcg.i.i, align 8
  store ptr %32, ptr %active_memcg.i.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i.i, %do.end65.i.i, %if.end7.i.if.end13.i_crit_edge
  %old_memcg.0.i = phi ptr [ null, %if.end7.i.if.end13.i_crit_edge ], [ %57, %do.end65.i.i ], [ %73, %if.else.i.i ]
  %__sector.i.i.i = getelementptr i8, ptr %12, i32 -152
  %74 = ptrtoint ptr %__sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %__sector.i.i.i, align 8
  %shl.i.i = shl i64 %75, 9
  %lo_offset.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 2
  %76 = ptrtoint ptr %lo_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %lo_offset.i.i, align 8
  %add.i61.i = add i64 %shl.i.i, %77
  %78 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cmd_flags.i, align 4
  %trunc.i.i = trunc i32 %79 to i8
  %80 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %trunc.i.i, label %land.end.i.i [
    i8 2, label %sw.bb.i.i
    i8 9, label %sw.bb3.i.i
    i8 3, label %sw.bb7.i.i
    i8 1, label %sw.bb9.i.i
    i8 0, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %lo_backing_file.i.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 6
  %81 = ptrtoint ptr %lo_backing_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lo_backing_file.i.i.i, align 4
  %call.i.i.i = call i32 @vfs_fsync(ptr noundef %82, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 0, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i.i)
  %switch.selectcmp1.i.i.i = icmp eq i32 %call.i.i.i, -22
  %switch.select2.i.i.i = select i1 %switch.selectcmp1.i.i.i, i32 -22, i32 %switch.select.i.i.i
  br label %do_req_filebacked.exit.i

sw.bb3.i.i:                                       ; preds = %if.end13.i
  %lo_backing_file.i82.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 6
  %83 = ptrtoint ptr %lo_backing_file.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lo_backing_file.i82.i.i, align 4
  %lo_queue.i.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 20
  %85 = ptrtoint ptr %lo_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lo_queue.i.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %89 = and i32 %88, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i, label %sw.bb3.i.i.do_req_filebacked.exit.i_crit_edge, label %if.end.i.i.i

sw.bb3.i.i.do_req_filebacked.exit.i_crit_edge:    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb3.i.i
  %90 = and i32 %79, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i62.i = icmp eq i32 %90, 0
  %or.i.i.i = select i1 %tobool.not.i62.i, i32 3, i32 17
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %84, i32 0, i32 3
  %91 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %f_op.i.i.i, align 4
  %fallocate.i.i.i = getelementptr inbounds %struct.file_operations, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %fallocate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fallocate.i.i.i, align 4
  %__data_len.i.i.i.i = getelementptr i8, ptr %12, i32 -160
  %95 = ptrtoint ptr %__data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %__data_len.i.i.i.i, align 8
  %conv.i.i.i = zext i32 %96 to i64
  %call2.i.i.i = call i32 %94(ptr noundef %84, i32 noundef %or.i.i.i, i64 noundef %add.i61.i, i64 noundef %conv.i.i.i) #15
  %97 = zext i32 %call2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call2.i.i.i, label %if.then9.critedge.i.i.i [
    i32 0, label %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge
    i32 -22, label %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge61
    i32 -95, label %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge62
  ]

if.end.i.i.i.do_req_filebacked.exit.i_crit_edge62: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.end.i.i.i.do_req_filebacked.exit.i_crit_edge61: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.end.i.i.i.do_req_filebacked.exit.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.then9.critedge.i.i.i:                          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

sw.bb7.i.i:                                       ; preds = %if.end13.i
  %lo_backing_file.i83.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 6
  %98 = ptrtoint ptr %lo_backing_file.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lo_backing_file.i83.i.i, align 4
  %lo_queue.i84.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 20
  %100 = ptrtoint ptr %lo_queue.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lo_queue.i84.i.i, align 4
  %queue_flags.i85.i.i = getelementptr inbounds %struct.request_queue, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %queue_flags.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %queue_flags.i85.i.i, align 4
  %104 = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i86.i.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i86.i.i, label %sw.bb7.i.i.do_req_filebacked.exit.i_crit_edge, label %if.end.i92.i.i

sw.bb7.i.i.do_req_filebacked.exit.i_crit_edge:    ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.end.i92.i.i:                                   ; preds = %sw.bb7.i.i
  %f_op.i87.i.i = getelementptr inbounds %struct.file, ptr %99, i32 0, i32 3
  %105 = ptrtoint ptr %f_op.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %f_op.i87.i.i, align 4
  %fallocate.i88.i.i = getelementptr inbounds %struct.file_operations, ptr %106, i32 0, i32 27
  %107 = ptrtoint ptr %fallocate.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fallocate.i88.i.i, align 4
  %__data_len.i.i89.i.i = getelementptr i8, ptr %12, i32 -160
  %109 = ptrtoint ptr %__data_len.i.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %__data_len.i.i89.i.i, align 8
  %conv.i90.i.i = zext i32 %110 to i64
  %call2.i91.i.i = call i32 %108(ptr noundef %99, i32 noundef 3, i64 noundef %add.i61.i, i64 noundef %conv.i90.i.i) #15
  %111 = zext i32 %call2.i91.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call2.i91.i.i, label %if.then9.critedge.i93.i.i [
    i32 0, label %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge
    i32 -22, label %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge63
    i32 -95, label %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge64
  ]

if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge64: ; preds = %if.end.i92.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge63: ; preds = %if.end.i92.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge: ; preds = %if.end.i92.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.then9.critedge.i93.i.i:                        ; preds = %if.end.i92.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

sw.bb9.i.i:                                       ; preds = %if.end13.i
  %use_aio.i.i = getelementptr i8, ptr %12, i32 8
  %112 = ptrtoint ptr %use_aio.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %use_aio.i.i, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool10.not.i.i = icmp eq i8 %113, 0
  br i1 %tobool10.not.i.i, label %if.else.i64.i, label %if.then.i63.i

if.then.i63.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call11.i.i = call fastcc i32 @lo_rw_aio(ptr noundef %26, ptr noundef %12, i64 noundef %add.i61.i, i1 noundef zeroext true) #15
  br label %do_req_filebacked.exit.i

if.else.i64.i:                                    ; preds = %sw.bb9.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i.i.i) #15
  %114 = ptrtoint ptr %pos.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %add.i61.i, ptr %pos.addr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i.i.i) #15
  %115 = ptrtoint ptr %bvec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvec.i.i.i, align 4, !annotation !204
  %116 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %10, align 4, !annotation !204
  %117 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %11, align 4, !annotation !204
  %bio.i.i.i = getelementptr i8, ptr %12, i32 -144
  %118 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i96.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i96.i.i, label %if.else.i64.i.lo_write_simple.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.else.i64.i.lo_write_simple.exit.i.i_crit_edge: ; preds = %if.else.i64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_write_simple.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.else.i64.i
  %lo_backing_file.i97.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 6
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc64.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %ret.0105.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %ret.2.i.i.i, %for.inc64.i.i.i.for.body.i.i.i_crit_edge ]
  %storemerge102.i.i.i = phi ptr [ %119, %for.body.lr.ph.i.i.i ], [ %235, %for.inc64.i.i.i.for.body.i.i.i_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %storemerge102.i.i.i, i32 0, i32 8, i32 1
  %120 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %iter.sroa.6.0.copyload.i.i.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i.i.i)
  %tobool9.not97.i.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i.i.i, 0
  br i1 %tobool9.not97.i.i.i, label %for.body.i.i.i.for.inc64.i.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

for.body.i.i.i.for.inc64.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64.i.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %for.body.i.i.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %storemerge102.i.i.i, i32 0, i32 8, i32 3
  %121 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %iter.sroa.16.0.copyload.i.i.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %storemerge102.i.i.i, i32 0, i32 8, i32 2
  %122 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %iter.sroa.10.0.copyload.i.i.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i.i, align 4
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %storemerge102.i.i.i, i32 0, i32 20
  %bi_opf.i.i.i.i.i = getelementptr inbounds %struct.bio, ptr %storemerge102.i.i.i, i32 0, i32 2
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %iter.sroa.6.0100.i.i.i = phi i32 [ %iter.sroa.6.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %sub.i.i.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %iter.sroa.10.099.i.i.i = phi i32 [ %iter.sroa.10.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %iter.sroa.10.2.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %iter.sroa.16.098.i.i.i = phi i32 [ %iter.sroa.16.0.copyload.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %iter.sroa.16.1.i.i.i, %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge ]
  %123 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.bio_vec, ptr %124, i32 %iter.sroa.10.099.i.i.i
  %125 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.bio_vec, ptr %124, i32 %iter.sroa.10.099.i.i.i, i32 2
  %127 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i.i65.i = add i32 %128, %iter.sroa.16.098.i.i.i
  %div77.i.i.i = lshr i32 %add.i.i65.i, 12
  %add.ptr.i98.i.i = getelementptr %struct.page, ptr %126, i32 %div77.i.i.i
  %bv_len26.i.i.i = getelementptr %struct.bio_vec, ptr %124, i32 %iter.sroa.10.099.i.i.i, i32 1
  %129 = ptrtoint ptr %bv_len26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bv_len26.i.i.i, align 4
  %sub.i.i66.i = sub i32 %130, %iter.sroa.16.098.i.i.i
  %131 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0100.i.i.i, i32 %sub.i.i66.i) #15
  %rem.i.i.i = and i32 %add.i.i65.i, 4095
  %sub38.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %132 = call i32 @llvm.umin.i32(i32 %131, i32 %sub38.i.i.i) #15
  %133 = ptrtoint ptr %bvec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i98.i.i, ptr %bvec.i.i.i, align 4
  %134 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %132, ptr %10, align 4
  %135 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %rem.i.i.i, ptr %11, align 4
  %136 = ptrtoint ptr %lo_backing_file.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %lo_backing_file.i97.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i.i.i.i.i) #15
  %138 = call ptr @memset(ptr %i.i.i.i.i, i32 255, i32 24)
  call void @iov_iter_bvec(ptr noundef nonnull %i.i.i.i.i, i32 noundef 1, ptr noundef nonnull %bvec.i.i.i, i32 noundef 1, i32 noundef %132) #15
  %f_inode.i.i.i.i.i.i = getelementptr inbounds %struct.file, ptr %137, i32 0, i32 2
  %139 = ptrtoint ptr %f_inode.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %f_inode.i.i.i.i.i.i, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %140, align 8
  %143 = and i16 %142, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %143)
  %cmp.i.i.i.i.i = icmp eq i16 %143, -32768
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i.i.i, label %land.rhs.i.i.i.file_start_write.exit.i.i.i.i_crit_edge

land.rhs.i.i.i.file_start_write.exit.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_start_write.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %i_sb.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 8
  %144 = ptrtoint ptr %i_sb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i_sb.i.i.i.i.i, align 4
  %add.ptr1.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %145, i32 0, i32 32, i32 2
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 49) #15
  %dep_map.i.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %145, i32 0, i32 32, i32 2, i32 0, i32 5
  %146 = call ptr @llvm.returnaddress(i32 0) #15
  %147 = ptrtoint ptr %146 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %147) #15
  %148 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i.i.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i.i = add i32 %151, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !205
  %call.i.i.i.i.i.i.i.i.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i.i.i:                  ; preds = %if.end.i.i.i.i.i
  %call1.i.i.i.i.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.i.i.i.i:                 ; preds = %land.lhs.true.i.i.i.i.i.i.i.i.i
  %.b8.i.i.i.i.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %land.lhs.true3.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 35, ptr noundef nonnull @.str.20) #15
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i:            ; preds = %if.then.i.i.i.i.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i_crit_edge
  %152 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %add.ptr1.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool7.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %153, 0
  br i1 %tobool7.not.i.i.i.i.i.i.i.i.i, label %do.body7.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.i, !prof !190

do.body7.i.i.i.i.i.i.i.i:                         ; preds = %rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i
  %154 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %read_count.i.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %145, i32 0, i32 32, i32 2, i32 0, i32 1
  %155 = ptrtoint ptr %read_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read_count.i.i.i.i.i.i.i.i, align 4
  %157 = ptrtoint ptr %156 to i32
  %158 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i.i.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %cpu.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cpu.i.i.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %161
  %162 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i = add i32 %163, %157
  %164 = inttoptr i32 %add.i.i.i.i.i.i.i.i to ptr
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %add21.i.i.i.i.i.i.i.i = add i32 %166, 1
  store i32 %add21.i.i.i.i.i.i.i.i, ptr %164, align 4
  %167 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i.i.i.i.i, label %if.then41.i.i.i.i.i.i.i.i, label %do.body7.i.i.i.i.i.i.i.i.do.end43.i.i.i.i.i.i.i.i_crit_edge, !prof !195

do.body7.i.i.i.i.i.i.i.i.do.end43.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body7.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end43.i.i.i.i.i.i.i.i

if.then41.i.i.i.i.i.i.i.i:                        ; preds = %do.body7.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end43.i.i.i.i.i.i.i.i

do.end43.i.i.i.i.i.i.i.i:                         ; preds = %if.then41.i.i.i.i.i.i.i.i, %do.body7.i.i.i.i.i.i.i.i.do.end43.i.i.i.i.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %154) #15, !srcloc !196
  br label %sb_start_write.exit.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i:                          ; preds = %rcu_sync_is_idle.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call50.i.i.i.i.i.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i.i.i.i.i.i, i1 noundef zeroext false) #15
  br label %sb_start_write.exit.i.i.i.i.i

sb_start_write.exit.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.i.i.i, %do.end43.i.i.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !206
  %168 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i58.i.i.i.i.i.i.i.i = and i32 %168, -16384
  %169 = inttoptr i32 %and.i.i.i58.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i59.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i59.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i59.i.i.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i.i = add i32 %171, -1
  store volatile i32 %sub.i.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i59.i.i.i.i.i.i.i.i, align 4
  br label %file_start_write.exit.i.i.i.i

file_start_write.exit.i.i.i.i:                    ; preds = %sb_start_write.exit.i.i.i.i.i, %land.rhs.i.i.i.file_start_write.exit.i.i.i.i_crit_edge
  %call.i.i.i.i = call i32 @vfs_iter_write(ptr noundef %137, ptr noundef nonnull %i.i.i.i.i, ptr noundef nonnull %pos.addr.i.i.i, i32 noundef 0) #15
  %172 = ptrtoint ptr %f_inode.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %f_inode.i.i.i.i.i.i, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %173, align 8
  %176 = and i16 %175, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %176)
  %cmp.i22.i.i.i.i = icmp eq i16 %176, -32768
  br i1 %cmp.i22.i.i.i.i, label %if.end.i26.i.i.i.i, label %file_start_write.exit.i.i.i.i.file_end_write.exit.i.i.i.i_crit_edge

file_start_write.exit.i.i.i.i.file_end_write.exit.i.i.i.i_crit_edge: ; preds = %file_start_write.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_end_write.exit.i.i.i.i

if.end.i26.i.i.i.i:                               ; preds = %file_start_write.exit.i.i.i.i
  %i_sb.i23.i.i.i.i = getelementptr inbounds %struct.inode, ptr %173, i32 0, i32 8
  %177 = ptrtoint ptr %i_sb.i23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i_sb.i23.i.i.i.i, align 4
  %add.ptr1.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %178, i32 0, i32 32, i32 2
  %dep_map.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %178, i32 0, i32 32, i32 2, i32 0, i32 5
  %179 = call ptr @llvm.returnaddress(i32 0) #15
  %180 = ptrtoint ptr %179 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i.i, i32 noundef %180) #15
  %181 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i24.i.i.i.i = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i.i.i.i24.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i25.i.i.i.i = add i32 %184, 1
  store volatile i32 %add.i.i.i.i25.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !207
  %call.i.i.i.i.i.i.i.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.i.i, label %if.end.i26.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge

if.end.i26.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i.i:                    ; preds = %if.end.i26.i.i.i.i
  %call1.i.i.i.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i.i.i.i.i
  %.b8.i.i.i.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i:                          ; preds = %land.lhs.true3.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 35, ptr noundef nonnull @.str.20) #15
  br label %rcu_sync_is_idle.exit.i.i.i.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i.i.i.i:              ; preds = %if.then.i.i.i.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge, %if.end.i26.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i.i.i.i_crit_edge
  %185 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %add.ptr1.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool7.not.i.i.i.i.i.i.i.i = icmp eq i32 %186, 0
  br i1 %tobool7.not.i.i.i.i.i.i.i.i, label %do.body3.i.i.i.i.i.i.i, label %do.end49.i.i.i.i.i.i.i, !prof !190

do.body3.i.i.i.i.i.i.i:                           ; preds = %rcu_sync_is_idle.exit.i.i.i.i.i.i.i
  %187 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %read_count.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %178, i32 0, i32 32, i32 2, i32 0, i32 1
  %188 = ptrtoint ptr %read_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read_count.i.i.i.i.i.i.i, align 4
  %190 = ptrtoint ptr %189 to i32
  %191 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %cpu.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cpu.i.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %194
  %195 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %196, %190
  %197 = inttoptr i32 %add.i.i.i.i.i.i.i to ptr
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 4
  %add17.i.i.i.i.i.i.i = add i32 %199, -1
  store i32 %add17.i.i.i.i.i.i.i, ptr %197, align 4
  %200 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i.i.i.i27.i.i.i.i = and i32 %200, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i27.i.i.i.i)
  %tobool28.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i.i.i.i, label %if.then37.i.i.i.i.i.i.i, label %do.body3.i.i.i.i.i.i.i.do.end39.i.i.i.i.i.i.i_crit_edge, !prof !195

do.body3.i.i.i.i.i.i.i.do.end39.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body3.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39.i.i.i.i.i.i.i

if.then37.i.i.i.i.i.i.i:                          ; preds = %do.body3.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end39.i.i.i.i.i.i.i

do.end39.i.i.i.i.i.i.i:                           ; preds = %if.then37.i.i.i.i.i.i.i, %do.body3.i.i.i.i.i.i.i.do.end39.i.i.i.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %187) #15, !srcloc !196
  br label %__sb_end_write.exit.i.i.i.i.i

do.end49.i.i.i.i.i.i.i:                           ; preds = %rcu_sync_is_idle.exit.i.i.i.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  %201 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %read_count75.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %178, i32 0, i32 32, i32 2, i32 0, i32 1
  %202 = ptrtoint ptr %read_count75.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read_count75.i.i.i.i.i.i.i, align 4
  %204 = ptrtoint ptr %203 to i32
  %205 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i122.i.i.i.i.i.i.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i122.i.i.i.i.i.i.i to ptr
  %cpu78.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %cpu78.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cpu78.i.i.i.i.i.i.i, align 4
  %arrayidx79.i.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %208
  %209 = ptrtoint ptr %arrayidx79.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx79.i.i.i.i.i.i.i, align 4
  %add80.i.i.i.i.i.i.i = add i32 %210, %204
  %211 = inttoptr i32 %add80.i.i.i.i.i.i.i to ptr
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %211, align 4
  %add81.i.i.i.i.i.i.i = add i32 %213, -1
  store i32 %add81.i.i.i.i.i.i.i, ptr %211, align 4
  %214 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i123.i.i.i.i.i.i.i = and i32 %214, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i.i.i.i.i)
  %tobool92.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i123.i.i.i.i.i.i.i, 0
  br i1 %tobool92.not.i.i.i.i.i.i.i, label %if.then101.i.i.i.i.i.i.i, label %do.end49.i.i.i.i.i.i.i.do.end104.i.i.i.i.i.i.i_crit_edge, !prof !195

do.end49.i.i.i.i.i.i.i.do.end104.i.i.i.i.i.i.i_crit_edge: ; preds = %do.end49.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end104.i.i.i.i.i.i.i

if.then101.i.i.i.i.i.i.i:                         ; preds = %do.end49.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end104.i.i.i.i.i.i.i

do.end104.i.i.i.i.i.i.i:                          ; preds = %if.then101.i.i.i.i.i.i.i, %do.end49.i.i.i.i.i.i.i.do.end104.i.i.i.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %201) #15, !srcloc !196
  %writer.i.i.i.i.i.i.i = getelementptr %struct.super_block, ptr %178, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i.i.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i.i.i.i.i) #15
  br label %__sb_end_write.exit.i.i.i.i.i

__sb_end_write.exit.i.i.i.i.i:                    ; preds = %do.end104.i.i.i.i.i.i.i, %do.end39.i.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !209
  %215 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i120.i.i.i.i.i.i.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i.i120.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i121.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %preempt_count.i.i121.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %preempt_count.i.i121.i.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = add i32 %218, -1
  store volatile i32 %sub.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i121.i.i.i.i.i.i.i, align 4
  br label %file_end_write.exit.i.i.i.i

file_end_write.exit.i.i.i.i:                      ; preds = %__sb_end_write.exit.i.i.i.i.i, %file_start_write.exit.i.i.i.i.file_end_write.exit.i.i.i.i_crit_edge
  %219 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %220)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i, %220
  br i1 %cmp.i.i.i.i, label %if.end.i99.i.i, label %if.end.i.i.i.i, !prof !190

if.end.i.i.i.i:                                   ; preds = %file_end_write.exit.i.i.i.i
  %call3.i.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @lo_write_bvec._rs, ptr noundef nonnull @__func__.lo_write_bvec) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge, label %do.end.i.i.i.i

if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %221 = ptrtoint ptr %pos.addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %pos.addr.i.i.i, align 8
  %223 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %10, align 4
  %call7.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i64 noundef %222, i32 noundef %224) #18
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %do.end.i.i.i.i, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp9.i.i.i.i = icmp sgt i32 %call.i.i.i.i, -1
  %spec.select.i.i.i = select i1 %cmp9.i.i.i.i, i32 -5, i32 %call.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i.i.i.i.i) #15
  br label %for.inc64.i.i.i

if.end.i99.i.i:                                   ; preds = %file_end_write.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i.i.i.i.i) #15
  call void @__might_resched(ptr noundef nonnull @.str.15, i32 noundef 269, i32 noundef 0) #15
  %call.i78.i.i.i = call i32 @__cond_resched() #15
  %225 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %10, align 4
  %227 = ptrtoint ptr %bi_opf.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %bi_opf.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %228, 255
  %229 = add nsw i32 %and.i.i.i.i.i, -3
  %switch.and.i.i.i.i.i = and i32 %229, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i.i)
  %switch.selectcmp.i.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i.i.i, label %if.end.i99.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

if.end.i99.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge: ; preds = %if.end.i99.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_advance_iter_single.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i99.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %230 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %add.i.i.i.i.i = add i32 %226, %iter.sroa.16.098.i.i.i
  %bv_len.i.i.i.i.i = getelementptr %struct.bio_vec, ptr %231, i32 %iter.sroa.10.099.i.i.i, i32 1
  %232 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bv_len.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %233)
  %cmp.i.i79.i.i.i = icmp eq i32 %add.i.i.i.i.i, %233
  %spec.select94.i.i.i = select i1 %cmp.i.i79.i.i.i, i32 0, i32 %add.i.i.i.i.i
  %inc.i.i.i.i.i = zext i1 %cmp.i.i79.i.i.i to i32
  %spec.select95.i.i.i = add i32 %iter.sroa.10.099.i.i.i, %inc.i.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i.i

bio_advance_iter_single.exit.i.i.i:               ; preds = %if.else.i.i.i.i, %if.end.i99.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge
  %iter.sroa.16.1.i.i.i = phi i32 [ %iter.sroa.16.098.i.i.i, %if.end.i99.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge ], [ %spec.select94.i.i.i, %if.else.i.i.i.i ]
  %iter.sroa.10.2.i.i.i = phi i32 [ %iter.sroa.10.099.i.i.i, %if.end.i99.i.i.bio_advance_iter_single.exit.i.i.i_crit_edge ], [ %spec.select95.i.i.i, %if.else.i.i.i.i ]
  %sub.i.i.i.i.i = sub i32 %iter.sroa.6.0100.i.i.i, %226
  %tobool9.not.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %bio_advance_iter_single.exit.i.i.i.for.inc64.i.i.i_crit_edge, label %bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge

bio_advance_iter_single.exit.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i.i

bio_advance_iter_single.exit.i.i.i.for.inc64.i.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64.i.i.i

for.inc64.i.i.i:                                  ; preds = %bio_advance_iter_single.exit.i.i.i.for.inc64.i.i.i_crit_edge, %if.end8.i.i.i.i, %for.body.i.i.i.for.inc64.i.i.i_crit_edge
  %ret.2.i.i.i = phi i32 [ %spec.select.i.i.i, %if.end8.i.i.i.i ], [ %ret.0105.i.i.i, %for.body.i.i.i.for.inc64.i.i.i_crit_edge ], [ 0, %bio_advance_iter_single.exit.i.i.i.for.inc64.i.i.i_crit_edge ]
  %234 = ptrtoint ptr %storemerge102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %storemerge102.i.i.i, align 8
  %tobool4.not.i.i.i = icmp eq ptr %235, null
  br i1 %tobool4.not.i.i.i, label %for.inc64.i.i.i.lo_write_simple.exit.i.i_crit_edge, label %for.inc64.i.i.i.for.body.i.i.i_crit_edge

for.inc64.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc64.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.inc64.i.i.i.lo_write_simple.exit.i.i_crit_edge: ; preds = %for.inc64.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_write_simple.exit.i.i

lo_write_simple.exit.i.i:                         ; preds = %for.inc64.i.i.i.lo_write_simple.exit.i.i_crit_edge, %if.else.i64.i.lo_write_simple.exit.i.i_crit_edge
  %ret.3.i.i.i = phi i32 [ 0, %if.else.i64.i.lo_write_simple.exit.i.i_crit_edge ], [ %ret.2.i.i.i, %for.inc64.i.i.i.lo_write_simple.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i.i.i) #15
  br label %do_req_filebacked.exit.i

sw.bb13.i.i:                                      ; preds = %if.end13.i
  %use_aio14.i.i = getelementptr i8, ptr %12, i32 8
  %236 = ptrtoint ptr %use_aio14.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %use_aio14.i.i, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool15.not.i.i = icmp eq i8 %237, 0
  br i1 %tobool15.not.i.i, label %if.else18.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call17.i.i = call fastcc i32 @lo_rw_aio(ptr noundef %26, ptr noundef %12, i64 noundef %add.i61.i, i1 noundef zeroext false) #15
  br label %do_req_filebacked.exit.i

if.else18.i.i:                                    ; preds = %sw.bb13.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i100.i.i) #15
  %238 = ptrtoint ptr %pos.addr.i100.i.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %add.i61.i, ptr %pos.addr.i100.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i101.i.i) #15
  %239 = ptrtoint ptr %bvec.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvec.i101.i.i, align 4, !annotation !204
  %240 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 -1, ptr %8, align 4, !annotation !204
  %241 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 -1, ptr %9, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i.i.i.i) #15
  %242 = call ptr @memset(ptr %i.i.i.i, i32 255, i32 24)
  %bio.i102.i.i = getelementptr i8, ptr %12, i32 -144
  %243 = ptrtoint ptr %bio.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bio.i102.i.i, align 8
  %tobool.not.i103.i.i = icmp eq ptr %244, null
  br i1 %tobool.not.i103.i.i, label %if.else18.i.i.lo_read_simple.exit.i.i_crit_edge, label %for.body.lr.ph.i105.i.i

if.else18.i.i.lo_read_simple.exit.i.i_crit_edge:  ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_read_simple.exit.i.i

for.body.lr.ph.i105.i.i:                          ; preds = %if.else18.i.i
  %lo_backing_file.i104.i.i = getelementptr inbounds %struct.loop_device, ptr %26, i32 0, i32 6
  br label %for.body.i108.i.i

for.body.i108.i.i:                                ; preds = %for.inc81.i.i.i.for.body.i108.i.i_crit_edge, %for.body.lr.ph.i105.i.i
  %storemerge127.i.i.i = phi ptr [ %244, %for.body.lr.ph.i105.i.i ], [ %281, %for.inc81.i.i.i.for.body.i108.i.i_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx.i106.i.i = getelementptr inbounds %struct.bio, ptr %storemerge127.i.i.i, i32 0, i32 8, i32 1
  %245 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %iter.sroa.6.0.copyload.i107.i.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i106.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i107.i.i)
  %tobool9.not120.i.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i107.i.i, 0
  br i1 %tobool9.not120.i.i.i, label %for.body.i108.i.i.for.inc81.i.i.i_crit_edge, label %land.rhs.lr.ph.i115.i.i

for.body.i108.i.i.for.inc81.i.i.i_crit_edge:      ; preds = %for.body.i108.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc81.i.i.i

land.rhs.lr.ph.i115.i.i:                          ; preds = %for.body.i108.i.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i109.i.i = getelementptr inbounds %struct.bio, ptr %storemerge127.i.i.i, i32 0, i32 8, i32 3
  %246 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %iter.sroa.16.0.copyload.i110.i.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i109.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i111.i.i = getelementptr inbounds %struct.bio, ptr %storemerge127.i.i.i, i32 0, i32 8, i32 2
  %247 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %iter.sroa.10.0.copyload.i112.i.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i111.i.i, align 4
  %bi_io_vec.i113.i.i = getelementptr inbounds %struct.bio, ptr %storemerge127.i.i.i, i32 0, i32 20
  %bi_opf.i.i.i114.i.i = getelementptr inbounds %struct.bio, ptr %storemerge127.i.i.i, i32 0, i32 2
  br label %land.rhs.i125.i.i

land.rhs.i125.i.i:                                ; preds = %bio_advance_iter_single.exit.i141.i.i.land.rhs.i125.i.i_crit_edge, %land.rhs.lr.ph.i115.i.i
  %iter.sroa.6.0123.i.i.i = phi i32 [ %iter.sroa.6.0.copyload.i107.i.i, %land.rhs.lr.ph.i115.i.i ], [ %sub.i.i.i139.i.i, %bio_advance_iter_single.exit.i141.i.i.land.rhs.i125.i.i_crit_edge ]
  %iter.sroa.10.0122.i.i.i = phi i32 [ %iter.sroa.10.0.copyload.i112.i.i, %land.rhs.lr.ph.i115.i.i ], [ %iter.sroa.10.2.i138.i.i, %bio_advance_iter_single.exit.i141.i.i.land.rhs.i125.i.i_crit_edge ]
  %iter.sroa.16.0121.i.i.i = phi i32 [ %iter.sroa.16.0.copyload.i110.i.i, %land.rhs.lr.ph.i115.i.i ], [ %iter.sroa.16.1.i137.i.i, %bio_advance_iter_single.exit.i141.i.i.land.rhs.i125.i.i_crit_edge ]
  %248 = ptrtoint ptr %bi_io_vec.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bi_io_vec.i113.i.i, align 8
  %arrayidx.i116.i.i = getelementptr %struct.bio_vec, ptr %249, i32 %iter.sroa.10.0122.i.i.i
  %250 = ptrtoint ptr %arrayidx.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx.i116.i.i, align 4
  %bv_offset.i117.i.i = getelementptr %struct.bio_vec, ptr %249, i32 %iter.sroa.10.0122.i.i.i, i32 2
  %252 = ptrtoint ptr %bv_offset.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %bv_offset.i117.i.i, align 4
  %add.i118.i.i = add i32 %253, %iter.sroa.16.0121.i.i.i
  %div104.i.i.i = lshr i32 %add.i118.i.i, 12
  %add.ptr.i119.i.i = getelementptr %struct.page, ptr %251, i32 %div104.i.i.i
  %bv_len26.i120.i.i = getelementptr %struct.bio_vec, ptr %249, i32 %iter.sroa.10.0122.i.i.i, i32 1
  %254 = ptrtoint ptr %bv_len26.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %bv_len26.i120.i.i, align 4
  %sub.i121.i.i = sub i32 %255, %iter.sroa.16.0121.i.i.i
  %256 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0123.i.i.i, i32 %sub.i121.i.i) #15
  %rem.i122.i.i = and i32 %add.i118.i.i, 4095
  %sub38.i123.i.i = sub nuw nsw i32 4096, %rem.i122.i.i
  %257 = call i32 @llvm.umin.i32(i32 %256, i32 %sub38.i123.i.i) #15
  %258 = ptrtoint ptr %bvec.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %add.ptr.i119.i.i, ptr %bvec.i101.i.i, align 4
  %259 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %257, ptr %8, align 4
  %260 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %rem.i122.i.i, ptr %9, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %i.i.i.i, i32 noundef 0, ptr noundef nonnull %bvec.i101.i.i, i32 noundef 1, i32 noundef %257) #15
  %261 = ptrtoint ptr %lo_backing_file.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %lo_backing_file.i104.i.i, align 4
  %call.i124.i.i = call i32 @vfs_iter_read(ptr noundef %262, ptr noundef nonnull %i.i.i.i, ptr noundef nonnull %pos.addr.i100.i.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i.i)
  %cmp58.i.i.i = icmp slt i32 %call.i124.i.i, 0
  br i1 %cmp58.i.i.i, label %land.rhs.i125.i.i.lo_read_simple.exit.i.i_crit_edge, label %if.end.i126.i.i

land.rhs.i125.i.i.lo_read_simple.exit.i.i_crit_edge: ; preds = %land.rhs.i125.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_read_simple.exit.i.i

if.end.i126.i.i:                                  ; preds = %land.rhs.i125.i.i
  %263 = ptrtoint ptr %bvec.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %bvec.i101.i.i, align 4
  call void @flush_dcache_page(ptr noundef %264) #15
  %265 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i124.i.i, i32 %266)
  %cmp62.not.i.i.i = icmp eq i32 %call.i124.i.i, %266
  br i1 %cmp62.not.i.i.i, label %if.end73.i.i.i, label %if.then63.i.i.i

if.then63.i.i.i:                                  ; preds = %if.end.i126.i.i
  %267 = ptrtoint ptr %bio.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %bio.i102.i.i, align 8
  %tobool66.not.i.i.i = icmp eq ptr %268, null
  br i1 %tobool66.not.i.i.i, label %if.then63.i.i.i.for.inc81.i.i.i_crit_edge, label %if.then63.i.i.i.for.body71.i.i.i_crit_edge

if.then63.i.i.i.for.body71.i.i.i_crit_edge:       ; preds = %if.then63.i.i.i
  br label %for.body71.i.i.i

if.then63.i.i.i.for.inc81.i.i.i_crit_edge:        ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc81.i.i.i

for.body71.i.i.i:                                 ; preds = %for.body71.i.i.i.for.body71.i.i.i_crit_edge, %if.then63.i.i.i.for.body71.i.i.i_crit_edge
  %bio64.0125.i.i.i = phi ptr [ %270, %for.body71.i.i.i.for.body71.i.i.i_crit_edge ], [ %268, %if.then63.i.i.i.for.body71.i.i.i_crit_edge ]
  call void @zero_fill_bio(ptr noundef nonnull %bio64.0125.i.i.i) #15
  %269 = ptrtoint ptr %bio64.0125.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %bio64.0125.i.i.i, align 8
  %tobool70.not.i.i.i = icmp eq ptr %270, null
  br i1 %tobool70.not.i.i.i, label %for.body71.i.i.i.for.inc81.i.i.i_crit_edge, label %for.body71.i.i.i.for.body71.i.i.i_crit_edge

for.body71.i.i.i.for.body71.i.i.i_crit_edge:      ; preds = %for.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body71.i.i.i

for.body71.i.i.i.for.inc81.i.i.i_crit_edge:       ; preds = %for.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc81.i.i.i

if.end73.i.i.i:                                   ; preds = %if.end.i126.i.i
  call void @__might_resched(ptr noundef nonnull @.str.15, i32 noundef 298, i32 noundef 0) #15
  %call.i.i127.i.i = call i32 @__cond_resched() #15
  %271 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %8, align 4
  %273 = ptrtoint ptr %bi_opf.i.i.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %bi_opf.i.i.i114.i.i, align 8
  %and.i.i.i128.i.i = and i32 %274, 255
  %275 = add nsw i32 %and.i.i.i128.i.i, -3
  %switch.and.i.i.i129.i.i = and i32 %275, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i129.i.i)
  %switch.selectcmp.i.i.i130.i.i = icmp eq i32 %switch.and.i.i.i129.i.i, 0
  br i1 %switch.selectcmp.i.i.i130.i.i, label %if.end73.i.i.i.bio_advance_iter_single.exit.i141.i.i_crit_edge, label %if.else.i.i136.i.i

if.end73.i.i.i.bio_advance_iter_single.exit.i141.i.i_crit_edge: ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_advance_iter_single.exit.i141.i.i

if.else.i.i136.i.i:                               ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %276 = ptrtoint ptr %bi_io_vec.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bi_io_vec.i113.i.i, align 8
  %add.i.i.i131.i.i = add i32 %272, %iter.sroa.16.0121.i.i.i
  %bv_len.i.i.i132.i.i = getelementptr %struct.bio_vec, ptr %277, i32 %iter.sroa.10.0122.i.i.i, i32 1
  %278 = ptrtoint ptr %bv_len.i.i.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %bv_len.i.i.i132.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i131.i.i, i32 %279)
  %cmp.i.i.i133.i.i = icmp eq i32 %add.i.i.i131.i.i, %279
  %spec.select.i134.i.i = select i1 %cmp.i.i.i133.i.i, i32 0, i32 %add.i.i.i131.i.i
  %inc.i.i.i135.i.i = zext i1 %cmp.i.i.i133.i.i to i32
  %spec.select116.i.i.i = add i32 %iter.sroa.10.0122.i.i.i, %inc.i.i.i135.i.i
  br label %bio_advance_iter_single.exit.i141.i.i

bio_advance_iter_single.exit.i141.i.i:            ; preds = %if.else.i.i136.i.i, %if.end73.i.i.i.bio_advance_iter_single.exit.i141.i.i_crit_edge
  %iter.sroa.16.1.i137.i.i = phi i32 [ %iter.sroa.16.0121.i.i.i, %if.end73.i.i.i.bio_advance_iter_single.exit.i141.i.i_crit_edge ], [ %spec.select.i134.i.i, %if.else.i.i136.i.i ]
  %iter.sroa.10.2.i138.i.i = phi i32 [ %iter.sroa.10.0122.i.i.i, %if.end73.i.i.i.bio_advance_iter_single.exit.i141.i.i_crit_edge ], [ %spec.select116.i.i.i, %if.else.i.i136.i.i ]
  %sub.i.i.i139.i.i = sub i32 %iter.sroa.6.0123.i.i.i, %272
  %tobool9.not.i140.i.i = icmp eq i32 %sub.i.i.i139.i.i, 0
  br i1 %tobool9.not.i140.i.i, label %bio_advance_iter_single.exit.i141.i.i.for.inc81.i.i.i_crit_edge, label %bio_advance_iter_single.exit.i141.i.i.land.rhs.i125.i.i_crit_edge

bio_advance_iter_single.exit.i141.i.i.land.rhs.i125.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i141.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i125.i.i

bio_advance_iter_single.exit.i141.i.i.for.inc81.i.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i141.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc81.i.i.i

for.inc81.i.i.i:                                  ; preds = %bio_advance_iter_single.exit.i141.i.i.for.inc81.i.i.i_crit_edge, %for.body71.i.i.i.for.inc81.i.i.i_crit_edge, %if.then63.i.i.i.for.inc81.i.i.i_crit_edge, %for.body.i108.i.i.for.inc81.i.i.i_crit_edge
  %280 = ptrtoint ptr %storemerge127.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %storemerge127.i.i.i, align 8
  %tobool4.not.i142.i.i = icmp eq ptr %281, null
  br i1 %tobool4.not.i142.i.i, label %for.inc81.i.i.i.lo_read_simple.exit.i.i_crit_edge, label %for.inc81.i.i.i.for.body.i108.i.i_crit_edge

for.inc81.i.i.i.for.body.i108.i.i_crit_edge:      ; preds = %for.inc81.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i108.i.i

for.inc81.i.i.i.lo_read_simple.exit.i.i_crit_edge: ; preds = %for.inc81.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_read_simple.exit.i.i

lo_read_simple.exit.i.i:                          ; preds = %for.inc81.i.i.i.lo_read_simple.exit.i.i_crit_edge, %land.rhs.i125.i.i.lo_read_simple.exit.i.i_crit_edge, %if.else18.i.i.lo_read_simple.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.else18.i.i.lo_read_simple.exit.i.i_crit_edge ], [ %call.i124.i.i, %land.rhs.i125.i.i.lo_read_simple.exit.i.i_crit_edge ], [ 0, %for.inc81.i.i.i.lo_read_simple.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i101.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i100.i.i) #15
  br label %do_req_filebacked.exit.i

land.end.i.i:                                     ; preds = %if.end13.i
  %.b81.i.i = load i1, ptr @do_req_filebacked.__already_done, align 1
  br i1 %.b81.i.i, label %land.end.i.i.do_req_filebacked.exit.i_crit_edge, label %if.then26.i.i, !prof !190

land.end.i.i.do_req_filebacked.exit.i_crit_edge:  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_req_filebacked.exit.i

if.then26.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @do_req_filebacked.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 502, i32 noundef 9, ptr noundef null) #15
  br label %do_req_filebacked.exit.i

do_req_filebacked.exit.i:                         ; preds = %if.then26.i.i, %land.end.i.i.do_req_filebacked.exit.i_crit_edge, %lo_read_simple.exit.i.i, %if.then16.i.i, %lo_write_simple.exit.i.i, %if.then.i63.i, %if.then9.critedge.i93.i.i, %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge, %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge63, %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge64, %sw.bb7.i.i.do_req_filebacked.exit.i_crit_edge, %if.then9.critedge.i.i.i, %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge, %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge61, %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge62, %sw.bb3.i.i.do_req_filebacked.exit.i_crit_edge, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %call17.i.i, %if.then16.i.i ], [ %retval.0.i.i.i, %lo_read_simple.exit.i.i ], [ %call11.i.i, %if.then.i63.i ], [ %ret.3.i.i.i, %lo_write_simple.exit.i.i ], [ %switch.select2.i.i.i, %sw.bb.i.i ], [ -5, %if.then26.i.i ], [ -5, %land.end.i.i.do_req_filebacked.exit.i_crit_edge ], [ -5, %if.then9.critedge.i.i.i ], [ -95, %sw.bb3.i.i.do_req_filebacked.exit.i_crit_edge ], [ %call2.i.i.i, %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge ], [ %call2.i.i.i, %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge61 ], [ %call2.i.i.i, %if.end.i.i.i.do_req_filebacked.exit.i_crit_edge62 ], [ -5, %if.then9.critedge.i93.i.i ], [ -95, %sw.bb7.i.i.do_req_filebacked.exit.i_crit_edge ], [ %call2.i91.i.i, %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge ], [ %call2.i91.i.i, %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge63 ], [ %call2.i91.i.i, %if.end.i92.i.i.do_req_filebacked.exit.i_crit_edge64 ]
  %282 = ptrtoint ptr %blkcg_css.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %blkcg_css.i, align 4
  %tobool16.not.i = icmp eq ptr %283, null
  br i1 %tobool16.not.i, label %do_req_filebacked.exit.i.if.end18.i_crit_edge, label %if.then17.i

do_req_filebacked.exit.i.if.end18.i_crit_edge:    ; preds = %do_req_filebacked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then17.i:                                      ; preds = %do_req_filebacked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kthread_associate_blkcg(ptr noundef null) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %do_req_filebacked.exit.i.if.end18.i_crit_edge
  %284 = ptrtoint ptr %memcg_css.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %memcg_css.i, align 8
  %tobool20.not.i = icmp eq ptr %285, null
  br i1 %tobool20.not.i, label %if.end18.i.failed.i_crit_edge, label %if.then21.i

if.end18.i.failed.i_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.i

if.then21.i:                                      ; preds = %if.end18.i
  %286 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i67.i = and i32 %286, -16384
  %287 = inttoptr i32 %and.i.i.i67.i to ptr
  %preempt_count.i.i68.i = getelementptr inbounds %struct.thread_info, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %preempt_count.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load volatile i32, ptr %preempt_count.i.i68.i, align 4
  %and.i69.i = and i32 %289, 15728640
  %290 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i78.i70.i = and i32 %290, -16384
  %291 = inttoptr i32 %and.i.i78.i70.i to ptr
  %preempt_count.i79.i71.i = getelementptr inbounds %struct.thread_info, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %preempt_count.i79.i71.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load volatile i32, ptr %preempt_count.i79.i71.i, align 4
  %and2.i72.i = and i32 %293, 983040
  %or.i73.i = or i32 %and2.i72.i, %and.i69.i
  %294 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i80.i74.i = and i32 %294, -16384
  %295 = inttoptr i32 %and.i.i80.i74.i to ptr
  %preempt_count.i81.i75.i = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %preempt_count.i81.i75.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile i32, ptr %preempt_count.i81.i75.i, align 4
  %and5.i76.i = and i32 %297, 256
  %or6.i77.i = or i32 %or.i73.i, %and5.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i77.i)
  %tobool.not.i78.i = icmp eq i32 %or6.i77.i, 0
  %298 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i85.i79.i = and i32 %298, -16384
  %299 = inttoptr i32 %and.i85.i79.i to ptr
  br i1 %tobool.not.i78.i, label %if.else.i98.i, label %if.then.i93.i

if.then.i93.i:                                    ; preds = %if.then21.i
  %preempt_count.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %preempt_count.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %preempt_count.i.i.i80.i, align 4
  %add.i.i81.i = add i32 %301, 1
  store volatile i32 %add.i.i81.i, ptr %preempt_count.i.i.i80.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !202
  %302 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i82.i = and i32 %302, -16384
  %303 = inttoptr i32 %and.i.i82.i to ptr
  %cpu.i83.i = getelementptr inbounds %struct.thread_info, ptr %303, i32 0, i32 3
  %304 = ptrtoint ptr %cpu.i83.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %cpu.i83.i, align 4
  %arrayidx.i84.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %305
  %306 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx.i84.i, align 4
  %add.i85.i = add i32 %307, ptrtoint (ptr @int_active_memcg to i32)
  %308 = inttoptr i32 %add.i85.i to ptr
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile ptr, ptr %308, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !203
  %311 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i82.i86.i = and i32 %311, -16384
  %312 = inttoptr i32 %and.i.i.i82.i86.i to ptr
  %preempt_count.i.i83.i87.i = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %preempt_count.i.i83.i87.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load volatile i32, ptr %preempt_count.i.i83.i87.i, align 4
  %sub.i.i88.i = add i32 %314, -1
  store volatile i32 %sub.i.i88.i, ptr %preempt_count.i.i83.i87.i, align 4
  %315 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %316 = ptrtoint ptr %cpu.i83.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %cpu.i83.i, align 4
  %arrayidx47.i89.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %317
  %318 = ptrtoint ptr %arrayidx47.i89.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx47.i89.i, align 4
  %add48.i90.i = add i32 %319, ptrtoint (ptr @int_active_memcg to i32)
  %320 = inttoptr i32 %add48.i90.i to ptr
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %old_memcg.0.i, ptr %320, align 4
  %322 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i84.i91.i = and i32 %322, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i91.i)
  %tobool59.not.i92.i = icmp eq i32 %and.i.i84.i91.i, 0
  br i1 %tobool59.not.i92.i, label %if.then63.i94.i, label %if.then.i93.i.do.end65.i95.i_crit_edge, !prof !195

if.then.i93.i.do.end65.i95.i_crit_edge:           ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65.i95.i

if.then63.i94.i:                                  ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end65.i95.i

do.end65.i95.i:                                   ; preds = %if.then63.i94.i, %if.then.i93.i.do.end65.i95.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %315) #15, !srcloc !196
  br label %set_active_memcg.exit100.i

if.else.i98.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  %task.i96.i = getelementptr inbounds %struct.thread_info, ptr %299, i32 0, i32 2
  %323 = ptrtoint ptr %task.i96.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %task.i96.i, align 8
  %active_memcg.i97.i = getelementptr inbounds %struct.task_struct, ptr %324, i32 0, i32 206
  %325 = ptrtoint ptr %active_memcg.i97.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %old_memcg.0.i, ptr %active_memcg.i97.i, align 8
  br label %set_active_memcg.exit100.i

set_active_memcg.exit100.i:                       ; preds = %if.else.i98.i, %do.end65.i95.i
  %326 = ptrtoint ptr %memcg_css.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %memcg_css.i, align 8
  call fastcc void @css_put(ptr noundef %327) #15
  br label %failed.i

failed.i:                                         ; preds = %set_active_memcg.exit100.i, %if.end18.i.failed.i_crit_edge
  %use_aio.i = getelementptr inbounds %struct.loop_cmd, ptr %12, i32 0, i32 1
  %328 = ptrtoint ptr %use_aio.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %use_aio.i, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool25.not.i = icmp ne i8 %329, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool26.not.i = icmp eq i32 %retval.0.i.i, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond.i, label %failed.i.loop_handle_cmd.exit_crit_edge, label %if.then27.i

failed.i.loop_handle_cmd.exit_crit_edge:          ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_handle_cmd.exit

if.then27.i:                                      ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i.i)
  %cmp.i27 = icmp eq i32 %retval.0.i.i, -95
  %spec.select.i = select i1 %tobool26.not.i, i32 0, i32 -5
  %spec.select132.i = select i1 %cmp.i27, i32 -95, i32 %spec.select.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end32.i_crit_edge
  %.sink.i = phi i32 [ -5, %land.lhs.true.i.if.end32.i_crit_edge ], [ %spec.select132.i, %if.then27.i ]
  %ret31.i = getelementptr inbounds %struct.loop_cmd, ptr %12, i32 0, i32 3
  %330 = ptrtoint ptr %ret31.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %.sink.i, ptr %ret31.i, align 8
  %331 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %add.ptr.i.i, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %332, i32 0, i32 11
  %333 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load volatile i32, ptr %queue_flags.i.i, align 4
  %335 = and i32 %334, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool.not.i101.i = icmp eq i32 %335, 0
  br i1 %tobool.not.i101.i, label %if.end32.i.if.then38.i_crit_edge, label %blk_should_fake_timeout.exit.i

if.end32.i.if.then38.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i

blk_should_fake_timeout.exit.i:                   ; preds = %if.end32.i
  %call1.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %332) #15
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.loop_handle_cmd.exit_crit_edge, label %blk_should_fake_timeout.exit.i.if.then38.i_crit_edge, !prof !195

blk_should_fake_timeout.exit.i.if.then38.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i

blk_should_fake_timeout.exit.i.loop_handle_cmd.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_handle_cmd.exit

if.then38.i:                                      ; preds = %blk_should_fake_timeout.exit.i.if.then38.i_crit_edge, %if.end32.i.if.then38.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %add.ptr.i.i) #15
  br label %loop_handle_cmd.exit

loop_handle_cmd.exit:                             ; preds = %if.then38.i, %blk_should_fake_timeout.exit.i.loop_handle_cmd.exit_crit_edge, %failed.i.loop_handle_cmd.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.15, i32 noundef 1893, i32 noundef 0) #15
  %call.i = call i32 @__cond_resched() #15
  call void @_raw_spin_lock_irq(ptr noundef %lo_work_lock) #15
  %336 = ptrtoint ptr %cmd_list to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile ptr, ptr %cmd_list, align 4
  %cmp.i.not = icmp eq ptr %337, %cmd_list
  br i1 %cmp.i.not, label %loop_handle_cmd.exit.while.end_crit_edge, label %loop_handle_cmd.exit.while.body_crit_edge

loop_handle_cmd.exit.while.body_crit_edge:        ; preds = %loop_handle_cmd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

loop_handle_cmd.exit.while.end_crit_edge:         ; preds = %loop_handle_cmd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %loop_handle_cmd.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool10.not = icmp eq ptr %worker, null
  br i1 %tobool10.not, label %while.end.if.end_crit_edge, label %land.lhs.true

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %while.end
  %work = getelementptr inbounds %struct.loop_worker, ptr %worker, i32 0, i32 1
  %338 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %339, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %340 = load volatile i32, ptr @jiffies, align 128
  %last_ran_at = getelementptr inbounds %struct.loop_worker, ptr %worker, i32 0, i32 6
  %341 = ptrtoint ptr %last_ran_at to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %last_ran_at, align 4
  %idle_list = getelementptr inbounds %struct.loop_worker, ptr %worker, i32 0, i32 3
  %idle_worker_list = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 15
  %prev.i28 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 15, i32 1
  %342 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %prev.i28, align 4
  %call.i.i29 = call zeroext i1 @__list_add_valid(ptr noundef %idle_list, ptr noundef %343, ptr noundef %idle_worker_list) #15
  br i1 %call.i.i29, label %if.end.i.i30, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i30:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %344 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %idle_list, ptr %prev.i28, align 4
  %345 = ptrtoint ptr %idle_list to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %idle_worker_list, ptr %idle_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.loop_worker, ptr %worker, i32 0, i32 3, i32 1
  %346 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %343, ptr %prev3.i.i, align 4
  %347 = ptrtoint ptr %343 to i32
  call void @__asan_store4_noabort(i32 %347)
  store volatile ptr %idle_list, ptr %343, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i30, %if.then.list_add_tail.exit_crit_edge
  %timer.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %348 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %348, 6000
  %call.i31 = call i32 @timer_reduce(ptr noundef %timer.i, i32 noundef %add.i) #15
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %land.lhs.true.if.end_crit_edge, %while.end.if.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lo_work_lock) #15
  %349 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %task, align 8
  %flags16 = getelementptr inbounds %struct.task_struct, ptr %350, i32 0, i32 3
  %351 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %5, ptr %flags16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_associate_blkcg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lo_rw_aio(ptr nocapture noundef readonly %lo, ptr noundef %cmd, i64 noundef %pos, i1 noundef zeroext %rw) unnamed_addr #3 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #15
  %0 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %add.ptr.i = getelementptr i8, ptr %cmd, i32 -192
  %bio1 = getelementptr i8, ptr %cmd, i32 -144
  %1 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bio1, align 8
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %3 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lo_backing_file, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %entry.for.body_crit_edge
  %nr_bvec.0266 = phi i32 [ %nr_bvec.1.lcssa, %for.inc37.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %storemerge195264 = phi ptr [ %17, %for.inc37.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %rq_iter.sroa.9.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge195264, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %rq_iter.sroa.9.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %rq_iter.sroa.9.0.copyload = load i32, ptr %rq_iter.sroa.9.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rq_iter.sroa.9.0.copyload)
  %tobool11.not258 = icmp eq i32 %rq_iter.sroa.9.0.copyload, 0
  br i1 %tobool11.not258, label %for.body.for.inc37_crit_edge, label %land.rhs.lr.ph

for.body.for.inc37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc37

land.rhs.lr.ph:                                   ; preds = %for.body
  %rq_iter.sroa.24.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge195264, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %rq_iter.sroa.24.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %rq_iter.sroa.24.0.copyload = load i32, ptr %rq_iter.sroa.24.0.bi_iter.sroa_idx, align 8
  %rq_iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge195264, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %rq_iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %rq_iter.sroa.16.0.copyload = load i32, ptr %rq_iter.sroa.16.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %storemerge195264, i32 0, i32 20
  %8 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_io_vec, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %storemerge195264, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %11, 255
  %12 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %12, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %nr_bvec.1262 = phi i32 [ %nr_bvec.0266, %land.rhs.lr.ph ], [ %inc, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %rq_iter.sroa.9.0261 = phi i32 [ %rq_iter.sroa.9.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %rq_iter.sroa.16.0260 = phi i32 [ %rq_iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %rq_iter.sroa.16.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %rq_iter.sroa.24.0259 = phi i32 [ %rq_iter.sroa.24.0.copyload, %land.rhs.lr.ph ], [ %rq_iter.sroa.24.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %bv_len22 = getelementptr %struct.bio_vec, ptr %9, i32 %rq_iter.sroa.16.0260, i32 1
  %13 = ptrtoint ptr %bv_len22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bv_len22, align 4
  %sub = sub i32 %14, %rq_iter.sroa.24.0259
  %15 = tail call i32 @llvm.umin.i32(i32 %rq_iter.sroa.9.0261, i32 %sub)
  %inc = add i32 %nr_bvec.1262, 1
  br i1 %switch.selectcmp.i.i, label %land.rhs.bio_advance_iter_single.exit_crit_edge, label %if.else.i

land.rhs.bio_advance_iter_single.exit_crit_edge:  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %add.i.i = add i32 %15, %rq_iter.sroa.24.0259
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %14)
  %cmp.i.i = icmp eq i32 %add.i.i, %14
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select255 = add i32 %rq_iter.sroa.16.0260, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %land.rhs.bio_advance_iter_single.exit_crit_edge
  %rq_iter.sroa.24.1 = phi i32 [ %rq_iter.sroa.24.0259, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %rq_iter.sroa.16.2 = phi i32 [ %rq_iter.sroa.16.0260, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select255, %if.else.i ]
  %sub.i.i = sub i32 %rq_iter.sroa.9.0261, %15
  %tobool11.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool11.not, label %bio_advance_iter_single.exit.for.inc37_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

bio_advance_iter_single.exit.for.inc37_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc37

for.inc37:                                        ; preds = %bio_advance_iter_single.exit.for.inc37_crit_edge, %for.body.for.inc37_crit_edge
  %nr_bvec.1.lcssa = phi i32 [ %nr_bvec.0266, %for.body.for.inc37_crit_edge ], [ %inc, %bio_advance_iter_single.exit.for.inc37_crit_edge ]
  %16 = ptrtoint ptr %storemerge195264 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %storemerge195264, align 8
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %for.inc37.if.end_crit_edge, label %for.inc37.for.body_crit_edge

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc37.if.end_crit_edge:                       ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.inc37.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_bvec.2 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %nr_bvec.1.lcssa, %for.inc37.if.end_crit_edge ]
  %biotail = getelementptr i8, ptr %cmd, i32 -140
  %18 = ptrtoint ptr %biotail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %biotail, align 4
  %cmp42.not = icmp eq ptr %2, %19
  br i1 %cmp42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_bvec.2, i32 12) #15
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.then43.cleanup_crit_edge, label %if.end7.i, !prof !195

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.i:                                        ; preds = %if.then43
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3072) #20
  %tobool45.not = icmp eq ptr %call8.i, null
  br i1 %tobool45.not, label %if.end7.i.cleanup_crit_edge, label %if.end47

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end47:                                         ; preds = %if.end7.i
  %bvec48 = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 5
  %23 = ptrtoint ptr %bvec48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i, ptr %bvec48, align 8
  %24 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bio1, align 8
  %tobool50.not = icmp eq ptr %25, null
  br i1 %tobool50.not, label %if.end47.if.end114_crit_edge, label %if.end47.for.body57_crit_edge

if.end47.for.body57_crit_edge:                    ; preds = %if.end47
  br label %for.body57

if.end47.if.end114_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114

for.body57:                                       ; preds = %for.inc109.for.body57_crit_edge, %if.end47.for.body57_crit_edge
  %bvec.0277 = phi ptr [ %bvec.1.lcssa, %for.inc109.for.body57_crit_edge ], [ %call8.i, %if.end47.for.body57_crit_edge ]
  %storemerge275 = phi ptr [ %49, %for.inc109.for.body57_crit_edge ], [ %25, %if.end47.for.body57_crit_edge ]
  %rq_iter.sroa.9.0.bi_iter60.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge275, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %rq_iter.sroa.9.0.bi_iter60.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %rq_iter.sroa.9.0.copyload229 = load i32, ptr %rq_iter.sroa.9.0.bi_iter60.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rq_iter.sroa.9.0.copyload229)
  %tobool64.not268 = icmp eq i32 %rq_iter.sroa.9.0.copyload229, 0
  br i1 %tobool64.not268, label %for.body57.for.inc109_crit_edge, label %land.rhs65.lr.ph

for.body57.for.inc109_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc109

land.rhs65.lr.ph:                                 ; preds = %for.body57
  %rq_iter.sroa.24.0.bi_iter60.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge275, i32 0, i32 8, i32 3
  %27 = ptrtoint ptr %rq_iter.sroa.24.0.bi_iter60.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %rq_iter.sroa.24.0.copyload238 = load i32, ptr %rq_iter.sroa.24.0.bi_iter60.sroa_idx, align 8
  %rq_iter.sroa.16.0.bi_iter60.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge275, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %rq_iter.sroa.16.0.bi_iter60.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %rq_iter.sroa.16.0.copyload233 = load i32, ptr %rq_iter.sroa.16.0.bi_iter60.sroa_idx, align 4
  %bi_io_vec69 = getelementptr inbounds %struct.bio, ptr %storemerge275, i32 0, i32 20
  %bi_opf.i.i201 = getelementptr inbounds %struct.bio, ptr %storemerge275, i32 0, i32 2
  br label %land.rhs65

land.rhs65:                                       ; preds = %bio_advance_iter_single.exit219.land.rhs65_crit_edge, %land.rhs65.lr.ph
  %bvec.1272 = phi ptr [ %bvec.0277, %land.rhs65.lr.ph ], [ %incdec.ptr, %bio_advance_iter_single.exit219.land.rhs65_crit_edge ]
  %rq_iter.sroa.9.1271 = phi i32 [ %rq_iter.sroa.9.0.copyload229, %land.rhs65.lr.ph ], [ %sub.i.i217, %bio_advance_iter_single.exit219.land.rhs65_crit_edge ]
  %rq_iter.sroa.16.3270 = phi i32 [ %rq_iter.sroa.16.0.copyload233, %land.rhs65.lr.ph ], [ %rq_iter.sroa.16.5, %bio_advance_iter_single.exit219.land.rhs65_crit_edge ]
  %rq_iter.sroa.24.2269 = phi i32 [ %rq_iter.sroa.24.0.copyload238, %land.rhs65.lr.ph ], [ %rq_iter.sroa.24.3, %bio_advance_iter_single.exit219.land.rhs65_crit_edge ]
  %29 = ptrtoint ptr %bi_io_vec69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_io_vec69, align 8
  %arrayidx72 = getelementptr %struct.bio_vec, ptr %30, i32 %rq_iter.sroa.16.3270
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx72, align 4
  %bv_len82 = getelementptr %struct.bio_vec, ptr %30, i32 %rq_iter.sroa.16.3270, i32 1
  %33 = ptrtoint ptr %bv_len82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_len82, align 4
  %sub85 = sub i32 %34, %rq_iter.sroa.24.2269
  %35 = tail call i32 @llvm.umin.i32(i32 %rq_iter.sroa.9.1271, i32 %sub85)
  %bv_offset98 = getelementptr %struct.bio_vec, ptr %30, i32 %rq_iter.sroa.16.3270, i32 2
  %36 = ptrtoint ptr %bv_offset98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_offset98, align 4
  %add101 = add i32 %37, %rq_iter.sroa.24.2269
  %38 = ptrtoint ptr %bvec.1272 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %bvec.1272, align 4
  %tmp.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %bvec.1272, i32 4
  %39 = ptrtoint ptr %tmp.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %tmp.sroa.6.0..sroa_idx, align 4
  %tmp.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %bvec.1272, i32 8
  %40 = ptrtoint ptr %tmp.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add101, ptr %tmp.sroa.11.0..sroa_idx, align 4
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %bvec.1272, i32 1
  %41 = ptrtoint ptr %bi_opf.i.i201 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_opf.i.i201, align 8
  %and.i.i202 = and i32 %42, 255
  %43 = add nsw i32 %and.i.i202, -3
  %switch.and.i.i203 = and i32 %43, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i203)
  %switch.selectcmp.i.i204 = icmp eq i32 %switch.and.i.i203, 0
  br i1 %switch.selectcmp.i.i204, label %land.rhs65.bio_advance_iter_single.exit219_crit_edge, label %if.else.i211

land.rhs65.bio_advance_iter_single.exit219_crit_edge: ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_advance_iter_single.exit219

if.else.i211:                                     ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %bi_io_vec69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bi_io_vec69, align 8
  %add.i.i207 = add i32 %35, %rq_iter.sroa.24.2269
  %bv_len.i.i209 = getelementptr %struct.bio_vec, ptr %45, i32 %rq_iter.sroa.16.3270, i32 1
  %46 = ptrtoint ptr %bv_len.i.i209 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bv_len.i.i209, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i207, i32 %47)
  %cmp.i.i210 = icmp eq i32 %add.i.i207, %47
  %spec.select256 = select i1 %cmp.i.i210, i32 0, i32 %add.i.i207
  %inc.i.i212 = zext i1 %cmp.i.i210 to i32
  %spec.select257 = add i32 %rq_iter.sroa.16.3270, %inc.i.i212
  br label %bio_advance_iter_single.exit219

bio_advance_iter_single.exit219:                  ; preds = %if.else.i211, %land.rhs65.bio_advance_iter_single.exit219_crit_edge
  %rq_iter.sroa.24.3 = phi i32 [ %rq_iter.sroa.24.2269, %land.rhs65.bio_advance_iter_single.exit219_crit_edge ], [ %spec.select256, %if.else.i211 ]
  %rq_iter.sroa.16.5 = phi i32 [ %rq_iter.sroa.16.3270, %land.rhs65.bio_advance_iter_single.exit219_crit_edge ], [ %spec.select257, %if.else.i211 ]
  %sub.i.i217 = sub i32 %rq_iter.sroa.9.1271, %35
  %tobool64.not = icmp eq i32 %sub.i.i217, 0
  br i1 %tobool64.not, label %bio_advance_iter_single.exit219.for.inc109_crit_edge, label %bio_advance_iter_single.exit219.land.rhs65_crit_edge

bio_advance_iter_single.exit219.land.rhs65_crit_edge: ; preds = %bio_advance_iter_single.exit219
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs65

bio_advance_iter_single.exit219.for.inc109_crit_edge: ; preds = %bio_advance_iter_single.exit219
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc109

for.inc109:                                       ; preds = %bio_advance_iter_single.exit219.for.inc109_crit_edge, %for.body57.for.inc109_crit_edge
  %bvec.1.lcssa = phi ptr [ %bvec.0277, %for.body57.for.inc109_crit_edge ], [ %incdec.ptr, %bio_advance_iter_single.exit219.for.inc109_crit_edge ]
  %48 = ptrtoint ptr %storemerge275 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %storemerge275, align 8
  %tobool56.not = icmp eq ptr %49, null
  br i1 %tobool56.not, label %for.inc109.if.end114_crit_edge, label %for.inc109.for.body57_crit_edge

for.inc109.for.body57_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body57

for.inc109.if.end114_crit_edge:                   ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114

if.end114:                                        ; preds = %for.inc109.if.end114_crit_edge, %if.end47.if.end114_crit_edge
  %50 = ptrtoint ptr %bvec48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bvec48, align 8
  br label %if.end122

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bi_bvec_done117 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 3
  %52 = ptrtoint ptr %bi_bvec_done117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_bvec_done117, align 8
  %bi_io_vec118 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 20
  %54 = ptrtoint ptr %bi_io_vec118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bi_io_vec118, align 8
  %bi_idx120 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %bi_idx120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_idx120, align 4
  %arrayidx121 = getelementptr %struct.bio_vec, ptr %55, i32 %57
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.end114
  %offset.0 = phi i32 [ 0, %if.end114 ], [ %53, %if.else ]
  %bvec.2 = phi ptr [ %51, %if.end114 ], [ %arrayidx121, %if.else ]
  %ref = getelementptr %struct.loop_cmd, ptr %cmd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #15
  %58 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 2, ptr %ref, align 4
  %conv = zext i1 %rw to i32
  %__data_len.i = getelementptr i8, ptr %cmd, i32 -160
  %59 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %__data_len.i, align 8
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef %conv, ptr noundef %bvec.2, i32 noundef %nr_bvec.2, i32 noundef %60) #15
  %iov_offset = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 3
  %61 = ptrtoint ptr %iov_offset to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %offset.0, ptr %iov_offset, align 4
  %iocb = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 4
  %ki_pos = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %pos, ptr %ki_pos, align 8
  %63 = ptrtoint ptr %iocb to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %4, ptr %iocb, align 8
  %ki_complete = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 4, i32 2
  %64 = ptrtoint ptr %ki_complete to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @lo_rw_aio_complete, ptr %ki_complete, align 8
  %ki_flags = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %ki_flags to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 131072, ptr %ki_flags, align 8
  %ki_ioprio = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %ki_ioprio to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %ki_ioprio, align 2
  %f_op.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %67 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_op.i, align 4
  %read_iter.i = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 4
  %write_iter.i = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 5
  %read_iter.i.sink = select i1 %rw, ptr %write_iter.i, ptr %read_iter.i
  %69 = ptrtoint ptr %read_iter.i.sink to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_iter.i.sink, align 4
  %call.i221 = call i32 %70(ptr noundef %iocb, ptr noundef nonnull %iter) #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #15
  %71 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #15, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %71, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i222 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i222, label %if.end.i223, label %if.end122.lo_rw_aio_do_completion.exit_crit_edge

if.end122.lo_rw_aio_do_completion.exit_crit_edge: ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_rw_aio_do_completion.exit

if.end.i223:                                      ; preds = %if.end122
  %bvec.i = getelementptr inbounds %struct.loop_cmd, ptr %cmd, i32 0, i32 5
  %72 = ptrtoint ptr %bvec.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bvec.i, align 8
  call void @kfree(ptr noundef %73) #15
  %74 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %bvec.i, align 8
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %queue_flags.i.i, align 4
  %79 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i, label %if.end.i223.if.then6.i_crit_edge, label %blk_should_fake_timeout.exit.i

if.end.i223.if.then6.i_crit_edge:                 ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

blk_should_fake_timeout.exit.i:                   ; preds = %if.end.i223
  %call1.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %76) #15
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.lo_rw_aio_do_completion.exit_crit_edge, label %blk_should_fake_timeout.exit.i.if.then6.i_crit_edge, !prof !195

blk_should_fake_timeout.exit.i.if.then6.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

blk_should_fake_timeout.exit.i.lo_rw_aio_do_completion.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_rw_aio_do_completion.exit

if.then6.i:                                       ; preds = %blk_should_fake_timeout.exit.i.if.then6.i_crit_edge, %if.end.i223.if.then6.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %add.ptr.i) #15
  br label %lo_rw_aio_do_completion.exit

lo_rw_aio_do_completion.exit:                     ; preds = %if.then6.i, %blk_should_fake_timeout.exit.i.lo_rw_aio_do_completion.exit_crit_edge, %if.end122.lo_rw_aio_do_completion.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call.i221)
  %cmp140.not = icmp eq i32 %call.i221, -529
  br i1 %cmp140.not, label %lo_rw_aio_do_completion.exit.cleanup_crit_edge, label %if.then142

lo_rw_aio_do_completion.exit.cleanup_crit_edge:   ; preds = %lo_rw_aio_do_completion.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then142:                                       ; preds = %lo_rw_aio_do_completion.exit
  %ret1.i = getelementptr %struct.loop_cmd, ptr %cmd, i32 0, i32 3
  %80 = ptrtoint ptr %ret1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call.i221, ptr %ret1.i, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #15
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #15, !srcloc !200
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %81, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i225, label %if.then142.cleanup_crit_edge

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i225:                                    ; preds = %if.then142
  %bvec.i.i = getelementptr %struct.loop_cmd, ptr %cmd, i32 0, i32 5
  %82 = ptrtoint ptr %bvec.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bvec.i.i, align 8
  call void @kfree(ptr noundef %83) #15
  %84 = ptrtoint ptr %bvec.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %bvec.i.i, align 8
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %89 = and i32 %88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i224 = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i224, label %if.end.i.i225.if.then6.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

if.end.i.i225.if.then6.i.i_crit_edge:             ; preds = %if.end.i.i225
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %if.end.i.i225
  %call1.i.i.i226 = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %86) #15
  br i1 %call1.i.i.i226, label %blk_should_fake_timeout.exit.i.i.cleanup_crit_edge, label %blk_should_fake_timeout.exit.i.i.if.then6.i.i_crit_edge, !prof !195

blk_should_fake_timeout.exit.i.i.if.then6.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i.i

blk_should_fake_timeout.exit.i.i.cleanup_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.i.i:                                     ; preds = %blk_should_fake_timeout.exit.i.i.if.then6.i.i_crit_edge, %if.end.i.i225.if.then6.i.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %add.ptr.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i.i, %blk_should_fake_timeout.exit.i.i.cleanup_crit_edge, %if.then142.cleanup_crit_edge, %lo_rw_aio_do_completion.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end7.i.cleanup_crit_edge ], [ 0, %lo_rw_aio_do_completion.exit.cleanup_crit_edge ], [ 0, %if.then142.cleanup_crit_edge ], [ 0, %blk_should_fake_timeout.exit.i.i.cleanup_crit_edge ], [ 0, %if.then6.i.i ], [ -5, %if.then43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lo_rw_aio_complete(ptr noundef %iocb, i32 noundef %ret) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ret1 = getelementptr i8, ptr %iocb, i32 -8
  %0 = ptrtoint ptr %ret1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ret, ptr %ret1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %iocb, i32 -216
  %ref.i = getelementptr i8, ptr %iocb, i32 -12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #15, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %entry.lo_rw_aio_do_completion.exit_crit_edge

entry.lo_rw_aio_do_completion.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_rw_aio_do_completion.exit

if.end.i:                                         ; preds = %entry
  %bvec.i = getelementptr i8, ptr %iocb, i32 40
  %2 = ptrtoint ptr %bvec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bvec.i, align 8
  tail call void @kfree(ptr noundef %3) #15
  %4 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bvec.i, align 8
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags.i.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.then6.i_crit_edge, label %blk_should_fake_timeout.exit.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

blk_should_fake_timeout.exit.i:                   ; preds = %if.end.i
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %6) #15
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.lo_rw_aio_do_completion.exit_crit_edge, label %blk_should_fake_timeout.exit.i.if.then6.i_crit_edge, !prof !195

blk_should_fake_timeout.exit.i.if.then6.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

blk_should_fake_timeout.exit.i.lo_rw_aio_do_completion.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lo_rw_aio_do_completion.exit

if.then6.i:                                       ; preds = %blk_should_fake_timeout.exit.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  tail call void @blk_mq_complete_request(ptr noundef %add.ptr.i.i) #15
  br label %lo_rw_aio_do_completion.exit

lo_rw_aio_do_completion.exit:                     ; preds = %if.then6.i, %blk_should_fake_timeout.exit.i.lo_rw_aio_do_completion.exit_crit_edge, %entry.lo_rw_aio_do_completion.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lo_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lo_mutex = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 23
  %call = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.end.if.end2_crit_edge, label %if.else

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %lo_refcnt = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lo_refcnt, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %lo_refcnt, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lo_refcnt, ptr %lo_refcnt, i32 1, ptr elementtype(i32) %lo_refcnt) #15, !srcloc !197
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.end.if.end2_crit_edge
  %err.0 = phi i32 [ 0, %if.else ], [ -6, %if.end.if.end2_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lo_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %lo_mutex = getelementptr inbounds %struct.loop_device, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lo_mutex, i32 noundef 0) #15
  %lo_refcnt = getelementptr inbounds %struct.loop_device, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lo_refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  tail call void @llvm.prefetch.p0(ptr %lo_refcnt, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lo_refcnt, ptr %lo_refcnt, i32 1, ptr elementtype(i32) %lo_refcnt) #15, !srcloc !200
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end:                                           ; preds = %entry
  %lo_flags = getelementptr inbounds %struct.loop_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lo_flags, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %lo_state7 = getelementptr inbounds %struct.loop_device, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %lo_state7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lo_state7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp8 = icmp eq i32 %6, 1
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %cmp8, label %if.end4, label %if.then2.out_unlock_crit_edge

if.then2.out_unlock_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end4:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %lo_state7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %lo_state7, align 4
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  tail call fastcc void @__loop_clr_fd(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp8, label %if.then9, label %if.else.out_unlock_crit_edge

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %9) #15
  %10 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %11) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.then9, %if.else.out_unlock_crit_edge, %if.then2.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lo_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %info64.i121 = alloca %struct.loop_info64, align 8
  %info64.i102 = alloca %struct.loop_info64, align 8
  %info.i77 = alloca %struct.loop_info, align 4
  %info64.i78 = alloca %struct.loop_info64, align 8
  %info.i = alloca %struct.loop_info, align 4
  %info64.i = alloca %struct.loop_info64, align 8
  %config = alloca %struct.loop_config, align 8
  %config2 = alloca %struct.loop_config, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = inttoptr i32 %arg to ptr
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %cmd, label %entry.sw.default_crit_edge [
    i32 19456, label %sw.bb
    i32 19466, label %sw.bb1
    i32 19462, label %sw.bb5
    i32 19457, label %sw.bb7
    i32 19458, label %sw.bb9
    i32 19459, label %sw.bb15
    i32 19460, label %sw.bb17
    i32 19461, label %sw.bb25
    i32 19463, label %entry.sw.bb27_crit_edge
    i32 19464, label %entry.sw.bb27_crit_edge152
    i32 19465, label %entry.sw.bb27_crit_edge153
  ]

entry.sw.bb27_crit_edge153:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

entry.sw.bb27_crit_edge152:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %config) #15
  %6 = call ptr @memset(ptr %config, i32 0, i32 304)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %arg, ptr %config, align 8
  %call = call i32 @loop_configure(ptr noundef %3, i32 noundef %mode, ptr noundef %bdev, ptr noundef nonnull %config)
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %config) #15
  br label %cleanup34

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %config2) #15
  %8 = call ptr @memset(ptr %config2, i32 255, i32 304)
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %sw.bb1.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb1.if.then11.i.i_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb1
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 304, i32 -1226833920) #21, !srcloc !210
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !190

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config2, i32 noundef 304) #15
  %10 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !211
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config2, ptr noundef %4, i32 noundef 304) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !190

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb1.if.then11.i.i_crit_edge
  %res.0.i.i149 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 304, %sw.bb1.if.then11.i.i_crit_edge ], [ 304, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 304, %res.0.i.i149
  %add.ptr.i.i = getelementptr i8, ptr %config2, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i149)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = call i32 @loop_configure(ptr noundef %3, i32 noundef %mode, ptr noundef %bdev, ptr noundef nonnull %config2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call4, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %config2) #15
  br label %cleanup34

sw.bb5:                                           ; preds = %entry
  %call.i = tail call ptr @fget(i32 noundef %arg) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb5.cleanup34_crit_edge, label %if.end.i

sw.bb5.cleanup34_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

if.end.i:                                         ; preds = %sw.bb5
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_mapping.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end3.i.i_crit_edge, label %land.lhs.true.i.i61

if.end.i.if.end3.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i

land.lhs.true.i.i61:                              ; preds = %if.end.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %20)
  %cmp.i.i60 = icmp eq i16 %20, 24576
  br i1 %cmp.i.i60, label %is_loop_device.exit.i, label %land.lhs.true.i.i61.if.end3.i.i_crit_edge

land.lhs.true.i.i61.if.end3.i.i_crit_edge:        ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i

is_loop_device.exit.i:                            ; preds = %land.lhs.true.i.i61
  %i_rdev.i.i.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 13
  %21 = ptrtoint ptr %i_rdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_rdev.i.i.i, align 8
  %shr.i.mask.i.i = and i32 %22, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %shr.i.mask.i.i)
  %cmp2.i.i = icmp eq i32 %shr.i.mask.i.i, 7340032
  br i1 %cmp2.i.i, label %if.then.i.i63, label %is_loop_device.exit.i.if.end3.i.i_crit_edge

is_loop_device.exit.i.if.end3.i.i_crit_edge:      ; preds = %is_loop_device.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i

if.then.i.i63:                                    ; preds = %is_loop_device.exit.i
  %call.i.i62 = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @loop_validate_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool1.not.i.i = icmp eq i32 %call.i.i62, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i63.if.end3.i.i_crit_edge, label %if.then.i.i63.out_putf.i_crit_edge

if.then.i.i63.out_putf.i_crit_edge:               ; preds = %if.then.i.i63
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf.i

if.then.i.i63.if.end3.i.i_crit_edge:              ; preds = %if.then.i.i63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i63.if.end3.i.i_crit_edge, %is_loop_device.exit.i.if.end3.i.i_crit_edge, %land.lhs.true.i.i61.if.end3.i.i_crit_edge, %if.end.i.if.end3.i.i_crit_edge
  %tobool291.i = phi i1 [ true, %if.then.i.i63.if.end3.i.i_crit_edge ], [ false, %is_loop_device.exit.i.if.end3.i.i_crit_edge ], [ false, %land.lhs.true.i.i61.if.end3.i.i_crit_edge ], [ false, %if.end.i.if.end3.i.i_crit_edge ]
  %lo_mutex.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 23
  %call4.i.i = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex.i.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp ne i32 %call4.i.i, 0
  %23 = and i1 %tobool291.i, %tobool5.not.i.i
  br i1 %23, label %if.end3.i.i.out_putf.sink.split.i_crit_edge, label %loop_global_lock_killable.exit.i

if.end3.i.i.out_putf.sink.split.i_crit_edge:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf.sink.split.i

loop_global_lock_killable.exit.i:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %loop_global_lock_killable.exit.i.out_putf.i_crit_edge

loop_global_lock_killable.exit.i.out_putf.i_crit_edge: ; preds = %loop_global_lock_killable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf.i

if.end7.i:                                        ; preds = %loop_global_lock_killable.exit.i
  %lo_state.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %lo_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lo_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 1
  br i1 %cmp.not.i, label %if.end9.i, label %if.end7.i.out_err.i_crit_edge

if.end7.i.out_err.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end9.i:                                        ; preds = %if.end7.i
  %lo_flags.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lo_flags.i, align 8
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.out_err.i_crit_edge, label %if.end12.i

if.end9.i.out_err.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end12.i:                                       ; preds = %if.end9.i
  %call13.i = tail call fastcc i32 @loop_validate_file(ptr noundef nonnull %call.i, ptr noundef %bdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.out_err.i_crit_edge

if.end12.i.out_err.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end16.i:                                       ; preds = %if.end12.i
  %lo_backing_file.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %lo_backing_file.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lo_backing_file.i, align 4
  %lo_offset.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %lo_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lo_offset.i.i, align 8
  %lo_sizelimit.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %lo_sizelimit.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lo_sizelimit.i.i, align 8
  %call.i78.i = tail call fastcc i64 @get_size(i64 noundef %31, i64 noundef %33, ptr noundef nonnull %call.i) #15
  %34 = ptrtoint ptr %lo_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %lo_offset.i.i, align 8
  %36 = ptrtoint ptr %lo_sizelimit.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lo_sizelimit.i.i, align 8
  %call.i81.i = tail call fastcc i64 @get_size(i64 noundef %35, i64 noundef %37, ptr noundef %29) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i78.i, i64 %call.i81.i)
  %cmp19.not.i = icmp eq i64 %call.i78.i, %call.i81.i
  br i1 %cmp19.not.i, label %if.end21.i, label %if.end16.i.out_err.i_crit_edge

if.end16.i.out_err.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end21.i:                                       ; preds = %if.end16.i
  %lo_disk.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 22
  %38 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lo_disk.i, align 8
  %call22.i = tail call zeroext i1 @disk_force_media_change(ptr noundef %39, i32 noundef 1) #15
  %lo_queue.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 20
  %40 = ptrtoint ptr %lo_queue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lo_queue.i, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %41) #15
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 18
  %42 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f_mapping.i, align 4
  %old_gfp_mask.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %old_gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old_gfp_mask.i, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %gfp_mask.i.i, align 4
  %47 = ptrtoint ptr %lo_backing_file.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %lo_backing_file.i, align 4
  %48 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %f_mapping.i.i, align 4
  %gfp_mask.i82.i = getelementptr inbounds %struct.address_space, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %gfp_mask.i82.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gfp_mask.i82.i, align 4
  store i32 %51, ptr %old_gfp_mask.i, align 4
  %52 = load ptr, ptr %f_mapping.i.i, align 4
  %and29.i = and i32 %51, -193
  %gfp_mask.i83.i = getelementptr inbounds %struct.address_space, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %gfp_mask.i83.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and29.i, ptr %gfp_mask.i83.i, align 4
  %54 = load ptr, ptr %lo_backing_file.i, align 4
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = and i32 %56, 65536
  %use_dio.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 18
  %57 = ptrtoint ptr %use_dio.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %use_dio.i.i, align 8, !range !191
  %59 = zext i8 %58 to i32
  %or.i.i = or i32 %and.i.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool1.i.i = icmp ne i32 %or.i.i, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %3, i1 noundef zeroext %tobool1.i.i) #15
  %60 = ptrtoint ptr %lo_queue.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lo_queue.i, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %61) #15
  %62 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lo_flags.i, align 8
  %and32.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i.i) #15
  br i1 %tobool291.i, label %if.end21.i.if.end38.i_crit_edge, label %if.then37.i

if.end21.i.if.end38.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @loop_validate_mutex, i32 noundef 0) #15
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.end21.i.if.end38.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  tail call void @fput(ptr noundef %29) #15
  br i1 %tobool33.not.i, label %if.end38.i.cleanup34_crit_edge, label %if.then40.i

if.end38.i.cleanup34_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @loop_reread_partitions(ptr noundef %3) #15
  br label %cleanup34

out_err.i:                                        ; preds = %if.end16.i.out_err.i_crit_edge, %if.end12.i.out_err.i_crit_edge, %if.end9.i.out_err.i_crit_edge, %if.end7.i.out_err.i_crit_edge
  %error.0.i = phi i32 [ -6, %if.end7.i.out_err.i_crit_edge ], [ %call13.i, %if.end12.i.out_err.i_crit_edge ], [ -22, %if.end16.i.out_err.i_crit_edge ], [ -22, %if.end9.i.out_err.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i.i) #15
  br i1 %tobool291.i, label %out_err.i.out_putf.sink.split.i_crit_edge, label %out_err.i.out_putf.i_crit_edge

out_err.i.out_putf.i_crit_edge:                   ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf.i

out_err.i.out_putf.sink.split.i_crit_edge:        ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf.sink.split.i

out_putf.sink.split.i:                            ; preds = %out_err.i.out_putf.sink.split.i_crit_edge, %if.end3.i.i.out_putf.sink.split.i_crit_edge
  %error.1.ph.i = phi i32 [ %call4.i.i, %if.end3.i.i.out_putf.sink.split.i_crit_edge ], [ %error.0.i, %out_err.i.out_putf.sink.split.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %out_putf.i

out_putf.i:                                       ; preds = %out_putf.sink.split.i, %out_err.i.out_putf.i_crit_edge, %loop_global_lock_killable.exit.i.out_putf.i_crit_edge, %if.then.i.i63.out_putf.i_crit_edge
  %error.1.i = phi i32 [ %call4.i.i, %loop_global_lock_killable.exit.i.out_putf.i_crit_edge ], [ %error.0.i, %out_err.i.out_putf.i_crit_edge ], [ %call.i.i62, %if.then.i.i63.out_putf.i_crit_edge ], [ %error.1.ph.i, %out_putf.sink.split.i ]
  tail call void @fput(ptr noundef nonnull %call.i) #15
  br label %cleanup34

sw.bb7:                                           ; preds = %entry
  %lo_mutex.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 23
  %call.i64 = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %if.end.i68, label %sw.bb7.cleanup34_crit_edge

sw.bb7.cleanup34_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

if.end.i68:                                       ; preds = %sw.bb7
  %lo_state.i66 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  %64 = ptrtoint ptr %lo_state.i66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lo_state.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.not.i67 = icmp eq i32 %65, 1
  br i1 %cmp.not.i67, label %if.end3.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  br label %cleanup34

if.end3.i:                                        ; preds = %if.end.i68
  %lo_refcnt.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 1
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %lo_refcnt.i, i32 noundef 4) #15
  %66 = ptrtoint ptr %lo_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %lo_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp5.i = icmp sgt i32 %67, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %lo_flags.i70 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 4
  %68 = ptrtoint ptr %lo_flags.i70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lo_flags.i70, align 8
  %or.i = or i32 %69, 4
  store i32 %or.i, ptr %lo_flags.i70, align 8
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  br label %cleanup34

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %lo_state.i66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %lo_state.i66, align 4
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  tail call fastcc void @__loop_clr_fd(ptr noundef %3, i1 noundef zeroext false) #15
  br label %cleanup34

sw.bb9:                                           ; preds = %entry
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %sw.bb9.if.then12_crit_edge

sw.bb9.if.then12_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

lor.lhs.false:                                    ; preds = %sw.bb9
  %call11 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call11, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.cleanup34_crit_edge

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %sw.bb9.if.then12_crit_edge
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %info.i) #15
  %71 = call ptr @memset(ptr %info.i, i32 255, i32 140)
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %info64.i) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #15
  %call.i.i.i72 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i72, label %if.then12.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then12.if.then11.i.i.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then12
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 140, i32 -1226833920) #21, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !190

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 140) #15
  %73 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !211
  %and.i.i.i.i.i = and i32 %75, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %4, i32 noundef 140) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #15, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i75, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !190

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then12.if.then11.i.i.i_crit_edge
  %res.0.i.i5.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 140, %if.then12.if.then11.i.i.i_crit_edge ], [ 140, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 140, %res.0.i.i5.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i, i32 %sub.i.i.i
  %76 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i5.i)
  br label %loop_set_status_old.exit

if.end.i75:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = getelementptr inbounds i8, ptr %info64.i, i32 40
  %78 = call ptr @memset(ptr %77, i32 0, i32 192)
  %79 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %info.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %77, align 8
  %lo_device.i.i = getelementptr inbounds %struct.loop_info, ptr %info.i, i32 0, i32 1
  %82 = ptrtoint ptr %lo_device.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %lo_device.i.i, align 4
  %conv.i.i = zext i16 %83 to i64
  %84 = ptrtoint ptr %info64.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv.i.i, ptr %info64.i, align 8
  %lo_inode.i.i = getelementptr inbounds %struct.loop_info, ptr %info.i, i32 0, i32 2
  %85 = ptrtoint ptr %lo_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lo_inode.i.i, align 4
  %conv3.i.i = zext i32 %86 to i64
  %lo_inode4.i.i = getelementptr inbounds %struct.loop_info64, ptr %info64.i, i32 0, i32 1
  %87 = ptrtoint ptr %lo_inode4.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv3.i.i, ptr %lo_inode4.i.i, align 8
  %lo_rdevice.i.i = getelementptr inbounds %struct.loop_info, ptr %info.i, i32 0, i32 3
  %88 = ptrtoint ptr %lo_rdevice.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %lo_rdevice.i.i, align 4
  %conv5.i.i = zext i16 %89 to i64
  %lo_rdevice6.i.i = getelementptr inbounds %struct.loop_info64, ptr %info64.i, i32 0, i32 2
  %90 = ptrtoint ptr %lo_rdevice6.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv5.i.i, ptr %lo_rdevice6.i.i, align 8
  %lo_offset.i.i73 = getelementptr inbounds %struct.loop_info, ptr %info.i, i32 0, i32 4
  %91 = ptrtoint ptr %lo_offset.i.i73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lo_offset.i.i73, align 4
  %conv7.i.i = sext i32 %92 to i64
  %lo_offset8.i.i = getelementptr inbounds %struct.loop_info64, ptr %info64.i, i32 0, i32 3
  %93 = ptrtoint ptr %lo_offset8.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv7.i.i, ptr %lo_offset8.i.i, align 8
  %lo_sizelimit.i.i74 = getelementptr inbounds %struct.loop_info64, ptr %info64.i, i32 0, i32 4
  %94 = ptrtoint ptr %lo_sizelimit.i.i74 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %lo_sizelimit.i.i74, align 8
  %lo_flags.i.i = getelementptr inbounds %struct.loop_info, ptr %info.i, i32 0, i32 7
  %95 = ptrtoint ptr %lo_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lo_flags.i.i, align 4
  %lo_flags9.i.i = getelementptr inbounds %struct.loop_info64, ptr %info64.i, i32 0, i32 8
  %97 = ptrtoint ptr %lo_flags9.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %lo_flags9.i.i, align 4
  %lo_file_name.i.i = getelementptr inbounds %struct.loop_info64, ptr %info64.i, i32 0, i32 9
  %lo_name.i.i = getelementptr inbounds %struct.loop_info, ptr %info.i, i32 0, i32 8
  %98 = call ptr @memcpy(ptr %lo_file_name.i.i, ptr %lo_name.i.i, i32 64)
  %call1.i = call fastcc i32 @loop_set_status(ptr noundef %3, ptr noundef nonnull %info64.i) #15
  br label %loop_set_status_old.exit

loop_set_status_old.exit:                         ; preds = %if.end.i75, %if.then11.i.i.i
  %retval.0.i76 = phi i32 [ %call1.i, %if.end.i75 ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info64.i) #15
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %info.i) #15
  br label %cleanup34

sw.bb15:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %info.i77) #15
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %info64.i78) #15
  %99 = call ptr @memset(ptr %info64.i78, i32 255, i32 232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i79 = icmp eq i32 %arg, 0
  br i1 %tobool.not.i79, label %sw.bb15.loop_get_status_old.exit_crit_edge, label %if.end.i81

sw.bb15.loop_get_status_old.exit_crit_edge:       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status_old.exit

if.end.i81:                                       ; preds = %sw.bb15
  %call.i80 = call fastcc i32 @loop_get_status(ptr noundef %3, ptr noundef nonnull %info64.i78) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool1.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i81.loop_get_status_old.exit_crit_edge

if.end.i81.loop_get_status_old.exit_crit_edge:    ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status_old.exit

if.then2.i:                                       ; preds = %if.end.i81
  %100 = getelementptr inbounds i8, ptr %info.i77, i32 4
  %101 = call ptr @memset(ptr %100, i32 0, i32 136)
  %lo_number.i.i = getelementptr inbounds %struct.loop_info64, ptr %info64.i78, i32 0, i32 5
  %102 = ptrtoint ptr %lo_number.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %lo_number.i.i, align 8
  %104 = ptrtoint ptr %info.i77 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %info.i77, align 4
  %105 = ptrtoint ptr %info64.i78 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %info64.i78, align 8
  %conv.i.i82 = trunc i64 %106 to i16
  %107 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv.i.i82, ptr %100, align 4
  %lo_inode.i.i83 = getelementptr inbounds %struct.loop_info64, ptr %info64.i78, i32 0, i32 1
  %108 = ptrtoint ptr %lo_inode.i.i83 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %lo_inode.i.i83, align 8
  %conv3.i.i84 = trunc i64 %109 to i32
  %lo_inode4.i.i85 = getelementptr inbounds %struct.loop_info, ptr %info.i77, i32 0, i32 2
  %110 = ptrtoint ptr %lo_inode4.i.i85 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv3.i.i84, ptr %lo_inode4.i.i85, align 4
  %lo_rdevice.i.i86 = getelementptr inbounds %struct.loop_info64, ptr %info64.i78, i32 0, i32 2
  %111 = ptrtoint ptr %lo_rdevice.i.i86 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %lo_rdevice.i.i86, align 8
  %conv5.i.i87 = trunc i64 %112 to i16
  %lo_rdevice6.i.i88 = getelementptr inbounds %struct.loop_info, ptr %info.i77, i32 0, i32 3
  %113 = ptrtoint ptr %lo_rdevice6.i.i88 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv5.i.i87, ptr %lo_rdevice6.i.i88, align 4
  %lo_offset.i.i89 = getelementptr inbounds %struct.loop_info64, ptr %info64.i78, i32 0, i32 3
  %114 = ptrtoint ptr %lo_offset.i.i89 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %lo_offset.i.i89, align 8
  %conv7.i.i90 = trunc i64 %115 to i32
  %lo_offset8.i.i91 = getelementptr inbounds %struct.loop_info, ptr %info.i77, i32 0, i32 4
  %116 = ptrtoint ptr %lo_offset8.i.i91 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv7.i.i90, ptr %lo_offset8.i.i91, align 4
  %lo_flags.i.i92 = getelementptr inbounds %struct.loop_info64, ptr %info64.i78, i32 0, i32 8
  %117 = ptrtoint ptr %lo_flags.i.i92 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %lo_flags.i.i92, align 4
  %lo_flags9.i.i93 = getelementptr inbounds %struct.loop_info, ptr %info.i77, i32 0, i32 7
  %119 = ptrtoint ptr %lo_flags9.i.i93 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %lo_flags9.i.i93, align 4
  %lo_name.i.i94 = getelementptr inbounds %struct.loop_info, ptr %info.i77, i32 0, i32 8
  %lo_file_name.i.i95 = getelementptr inbounds %struct.loop_info64, ptr %info64.i78, i32 0, i32 9
  %120 = call ptr @memcpy(ptr %lo_name.i.i94, ptr %lo_file_name.i.i95, i32 64)
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %106)
  %121 = icmp ult i64 %106, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %112)
  %122 = icmp ult i64 %112, 65536
  %or.cond.i = select i1 %121, i1 %122, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %109)
  %123 = icmp ult i64 %109, 4294967296
  %or.cond19.i = select i1 %or.cond.i, i1 %123, i1 false
  %conv28.i.i = sext i32 %conv7.i.i90 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %conv28.i.i)
  %cmp30.not.i.i = icmp eq i64 %115, %conv28.i.i
  %or.cond20.i = select i1 %or.cond19.i, i1 %cmp30.not.i.i, i1 false
  br i1 %or.cond20.i, label %if.end59.i.i.i, label %if.then2.i.loop_get_status_old.exit_crit_edge

if.then2.i.loop_get_status_old.exit_crit_edge:    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status_old.exit

if.end59.i.i.i:                                   ; preds = %if.then2.i
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 174) #15
  %call.i.i.i96 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i96, label %if.end59.i.i.i.loop_get_status_old.exit_crit_edge, label %if.end.i.i.i99

if.end59.i.i.i.loop_get_status_old.exit_crit_edge: ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status_old.exit

if.end.i.i.i99:                                   ; preds = %if.end59.i.i.i
  %124 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 140, i32 -1226833920) #21, !srcloc !214
  %asmresult.i.i.i97 = extractvalue { i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i97)
  %cmp.i6.i.i98 = icmp eq i32 %asmresult.i.i.i97, 0
  br i1 %cmp.i6.i.i98, label %copy_to_user.exit.i, label %if.end.i.i.i99.loop_get_status_old.exit_crit_edge

if.end.i.i.i99.loop_get_status_old.exit_crit_edge: ; preds = %if.end.i.i.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status_old.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i99
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i100 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i77, i32 noundef 140) #15
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %4, ptr noundef nonnull %info.i77, i32 noundef 140) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 0, i32 -14
  br label %loop_get_status_old.exit

loop_get_status_old.exit:                         ; preds = %copy_to_user.exit.i, %if.end.i.i.i99.loop_get_status_old.exit_crit_edge, %if.end59.i.i.i.loop_get_status_old.exit_crit_edge, %if.then2.i.loop_get_status_old.exit_crit_edge, %if.end.i81.loop_get_status_old.exit_crit_edge, %sw.bb15.loop_get_status_old.exit_crit_edge
  %retval.0.i101 = phi i32 [ -22, %sw.bb15.loop_get_status_old.exit_crit_edge ], [ -75, %if.then2.i.loop_get_status_old.exit_crit_edge ], [ %call.i80, %if.end.i81.loop_get_status_old.exit_crit_edge ], [ -14, %if.end59.i.i.i.loop_get_status_old.exit_crit_edge ], [ -14, %if.end.i.i.i99.loop_get_status_old.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info64.i78) #15
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %info.i77) #15
  br label %cleanup34

sw.bb17:                                          ; preds = %entry
  %and18 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %sw.bb17.if.then22_crit_edge

sw.bb17.if.then22_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

lor.lhs.false20:                                  ; preds = %sw.bb17
  %call21 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call21, label %lor.lhs.false20.if.then22_crit_edge, label %lor.lhs.false20.cleanup34_crit_edge

lor.lhs.false20.cleanup34_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

lor.lhs.false20.if.then22_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false20.if.then22_crit_edge, %sw.bb17.if.then22_crit_edge
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %info64.i102) #15
  %125 = call ptr @memset(ptr %info64.i102, i32 255, i32 232)
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #15
  %call.i.i.i103 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i103, label %if.then22.if.then11.i.i.i117_crit_edge, label %land.lhs.true.i.i.i106

if.then22.if.then11.i.i.i117_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i117

land.lhs.true.i.i.i106:                           ; preds = %if.then22
  %126 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 232, i32 -1226833920) #21, !srcloc !210
  %asmresult.i.i.i104 = extractvalue { i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i104)
  %cmp.i6.i.i105 = icmp eq i32 %asmresult.i.i.i104, 0
  br i1 %cmp.i6.i.i105, label %if.end.i.i.i114, label %land.lhs.true.i.i.i106.if.then11.i.i.i117_crit_edge, !prof !190

land.lhs.true.i.i.i106.if.then11.i.i.i117_crit_edge: ; preds = %land.lhs.true.i.i.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i117

if.end.i.i.i114:                                  ; preds = %land.lhs.true.i.i.i106
  %call.i.i.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info64.i102, i32 noundef 232) #15
  %127 = call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i.i.i.i108 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i.i108 to ptr
  %cpu_domain.i.i.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 4
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i109) #9, !srcloc !211
  %and.i.i.i.i.i110 = and i32 %129, -13
  %or.i.i.i.i.i111 = or i32 %and.i.i.i.i.i110, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i111) #15, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  %call1.i.i.i.i112 = call i32 @arm_copy_from_user(ptr noundef nonnull %info64.i102, ptr noundef %4, i32 noundef 232) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #15, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i112)
  %tobool4.not.i.i.i113 = icmp eq i32 %call1.i.i.i.i112, 0
  br i1 %tobool4.not.i.i.i113, label %if.end.i119, label %if.end.i.i.i114.if.then11.i.i.i117_crit_edge, !prof !190

if.end.i.i.i114.if.then11.i.i.i117_crit_edge:     ; preds = %if.end.i.i.i114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i117

if.then11.i.i.i117:                               ; preds = %if.end.i.i.i114.if.then11.i.i.i117_crit_edge, %land.lhs.true.i.i.i106.if.then11.i.i.i117_crit_edge, %if.then22.if.then11.i.i.i117_crit_edge
  %res.0.i.i4.i = phi i32 [ %call1.i.i.i.i112, %if.end.i.i.i114.if.then11.i.i.i117_crit_edge ], [ 232, %if.then22.if.then11.i.i.i117_crit_edge ], [ 232, %land.lhs.true.i.i.i106.if.then11.i.i.i117_crit_edge ]
  %sub.i.i.i115 = sub i32 232, %res.0.i.i4.i
  %add.ptr.i.i.i116 = getelementptr i8, ptr %info64.i102, i32 %sub.i.i.i115
  %130 = call ptr @memset(ptr %add.ptr.i.i.i116, i32 0, i32 %res.0.i.i4.i)
  br label %loop_set_status64.exit

if.end.i119:                                      ; preds = %if.end.i.i.i114
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i118 = call fastcc i32 @loop_set_status(ptr noundef %3, ptr noundef nonnull %info64.i102) #15
  br label %loop_set_status64.exit

loop_set_status64.exit:                           ; preds = %if.end.i119, %if.then11.i.i.i117
  %retval.0.i120 = phi i32 [ %call1.i118, %if.end.i119 ], [ -14, %if.then11.i.i.i117 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info64.i102) #15
  br label %cleanup34

sw.bb25:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %info64.i121) #15
  %131 = call ptr @memset(ptr %info64.i121, i32 255, i32 232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i122 = icmp eq i32 %arg, 0
  br i1 %tobool.not.i122, label %sw.bb25.loop_get_status64.exit_crit_edge, label %if.end.i125

sw.bb25.loop_get_status64.exit_crit_edge:         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status64.exit

if.end.i125:                                      ; preds = %sw.bb25
  %call.i123 = call fastcc i32 @loop_get_status(ptr noundef %3, ptr noundef nonnull %info64.i121) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool1.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool1.not.i124, label %if.end59.i.i.i127, label %if.end.i125.loop_get_status64.exit_crit_edge

if.end.i125.loop_get_status64.exit_crit_edge:     ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status64.exit

if.end59.i.i.i127:                                ; preds = %if.end.i125
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 174) #15
  %call.i.i.i126 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i126, label %if.end59.i.i.i127.loop_get_status64.exit_crit_edge, label %if.end.i.i.i130

if.end59.i.i.i127.loop_get_status64.exit_crit_edge: ; preds = %if.end59.i.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status64.exit

if.end.i.i.i130:                                  ; preds = %if.end59.i.i.i127
  %132 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 232, i32 -1226833920) #21, !srcloc !214
  %asmresult.i.i.i128 = extractvalue { i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i128)
  %cmp.i6.i.i129 = icmp eq i32 %asmresult.i.i.i128, 0
  br i1 %cmp.i6.i.i129, label %copy_to_user.exit.i134, label %if.end.i.i.i130.loop_get_status64.exit_crit_edge

if.end.i.i.i130.loop_get_status64.exit_crit_edge: ; preds = %if.end.i.i.i130
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_get_status64.exit

copy_to_user.exit.i134:                           ; preds = %if.end.i.i.i130
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i131 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info64.i121, i32 noundef 232) #15
  %call.i12.i.i.i132 = call i32 @arm_copy_to_user(ptr noundef nonnull %4, ptr noundef nonnull %info64.i121, i32 noundef 232) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i132)
  %tobool3.not.i = icmp eq i32 %call.i12.i.i.i132, 0
  %spec.select.i133 = select i1 %tobool3.not.i, i32 0, i32 -14
  br label %loop_get_status64.exit

loop_get_status64.exit:                           ; preds = %copy_to_user.exit.i134, %if.end.i.i.i130.loop_get_status64.exit_crit_edge, %if.end59.i.i.i127.loop_get_status64.exit_crit_edge, %if.end.i125.loop_get_status64.exit_crit_edge, %sw.bb25.loop_get_status64.exit_crit_edge
  %retval.0.i135 = phi i32 [ -22, %sw.bb25.loop_get_status64.exit_crit_edge ], [ %call.i123, %if.end.i125.loop_get_status64.exit_crit_edge ], [ -14, %if.end59.i.i.i127.loop_get_status64.exit_crit_edge ], [ -14, %if.end.i.i.i130.loop_get_status64.exit_crit_edge ], [ %spec.select.i133, %copy_to_user.exit.i134 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %info64.i121) #15
  br label %cleanup34

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge152, %entry.sw.bb27_crit_edge153
  %and28 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %sw.bb27.sw.default_crit_edge

sw.bb27.sw.default_crit_edge:                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

land.lhs.true:                                    ; preds = %sw.bb27
  %call30 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call30, label %land.lhs.true.sw.default_crit_edge, label %land.lhs.true.cleanup34_crit_edge

land.lhs.true.cleanup34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

land.lhs.true.sw.default_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.default:                                       ; preds = %land.lhs.true.sw.default_crit_edge, %sw.bb27.sw.default_crit_edge, %entry.sw.default_crit_edge
  %lo_mutex.i136 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 23
  %call.i137 = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex.i136, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end.i139, label %sw.default.cleanup34_crit_edge

sw.default.cleanup34_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup34

if.end.i139:                                      ; preds = %sw.default
  %133 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %if.end.i139.sw.epilog.i_crit_edge [
    i32 19463, label %sw.bb.i
    i32 19464, label %sw.bb2.i
    i32 19465, label %sw.bb4.i
  ]

if.end.i139.sw.epilog.i_crit_edge:                ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i139
  %lo_state.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  %134 = ptrtoint ptr %lo_state.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %lo_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.not.i.i = icmp eq i32 %135, 1
  br i1 %cmp.not.i.i, label %if.end.i.i141, label %sw.bb.i.sw.epilog.i_crit_edge, !prof !190

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end.i.i141:                                    ; preds = %sw.bb.i
  %lo_backing_file.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 6
  %136 = ptrtoint ptr %lo_backing_file.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %lo_backing_file.i.i, align 4
  %lo_offset.i.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 2
  %138 = ptrtoint ptr %lo_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %lo_offset.i.i.i, align 8
  %lo_sizelimit.i.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 3
  %140 = ptrtoint ptr %lo_sizelimit.i.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %lo_sizelimit.i.i.i, align 8
  %call.i.i.i140 = tail call fastcc i64 @get_size(i64 noundef %139, i64 noundef %141, ptr noundef %137) #15
  %lo_disk.i.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 22
  %142 = ptrtoint ptr %lo_disk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %lo_disk.i.i.i, align 8
  %call.i5.i.i = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %143, i64 noundef %call.i.i.i140) #15
  br i1 %call.i5.i.i, label %if.end.i.i141.sw.epilog.i_crit_edge, label %if.then.i.i.i

if.end.i.i141.sw.epilog.i_crit_edge:              ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.then.i.i.i:                                    ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #17
  %144 = ptrtoint ptr %lo_disk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lo_disk.i.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %145, i32 0, i32 7
  %146 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %part0.i.i.i, align 4
  %bd_device.i.i.i = getelementptr inbounds %struct.block_device, ptr %147, i32 0, i32 10
  %call2.i.i.i = tail call i32 @kobject_uevent(ptr noundef %bd_device.i.i.i, i32 noundef 2) #15
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i139
  %lo_state.i14.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  %148 = ptrtoint ptr %lo_state.i14.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %lo_state.i14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp.not.i15.i = icmp eq i32 %149, 1
  br i1 %cmp.not.i15.i, label %if.end.i16.i, label %sw.bb2.i.out.i.i_crit_edge

sw.bb2.i.out.i.i_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i.i

if.end.i16.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.i.i = icmp ne i32 %arg, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %3, i1 noundef zeroext %tobool.i.i) #15
  %use_dio.i.i142 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 18
  %150 = ptrtoint ptr %use_dio.i.i142 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %use_dio.i.i142, align 8, !range !191
  %152 = zext i1 %tobool.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %151, i8 %152)
  %cmp6.i.i = icmp eq i8 %151, %152
  br i1 %cmp6.i.i, label %if.end.i16.i.sw.epilog.i_crit_edge, label %if.end.i16.i.out.i.i_crit_edge

if.end.i16.i.out.i.i_crit_edge:                   ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i.i

if.end.i16.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

out.i.i:                                          ; preds = %if.end.i16.i.out.i.i_crit_edge, %sw.bb2.i.out.i.i_crit_edge
  %error.0.i.i = phi i32 [ -6, %sw.bb2.i.out.i.i_crit_edge ], [ -22, %if.end.i16.i.out.i.i_crit_edge ]
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i139
  %lo_state.i18.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  %153 = ptrtoint ptr %lo_state.i18.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %lo_state.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp.not.i19.i = icmp eq i32 %154, 1
  br i1 %cmp.not.i19.i, label %if.end.i20.i, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end.i20.i:                                     ; preds = %sw.bb4.i
  %155 = add i32 %arg, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3585, i32 %155)
  %156 = icmp ult i32 %155, 3585
  %157 = tail call i32 @llvm.ctpop.i32(i32 %arg) #15, !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %157)
  %cmp1.i.i.i.i = icmp ult i32 %157, 2
  %or.cond.i.i = and i1 %156, %cmp1.i.i.i.i
  br i1 %or.cond.i.i, label %if.end2.i.i, label %if.end.i20.i.sw.epilog.i_crit_edge

if.end.i20.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end2.i.i:                                      ; preds = %if.end.i20.i
  %lo_queue.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 20
  %158 = ptrtoint ptr %lo_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lo_queue.i.i, align 4
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %159, i32 0, i32 37, i32 9
  %160 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %arg)
  %cmp3.i.i = icmp eq i32 %161, %arg
  br i1 %cmp3.i.i, label %if.end2.i.i.sw.epilog.i_crit_edge, label %if.end5.i.i

if.end2.i.i.sw.epilog.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

if.end5.i.i:                                      ; preds = %if.end2.i.i
  %lo_device.i.i143 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 7
  %162 = ptrtoint ptr %lo_device.i.i143 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %lo_device.i.i143, align 8
  %call6.i.i = tail call i32 @sync_blockdev(ptr noundef %163) #15
  %164 = ptrtoint ptr %lo_device.i.i143 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %lo_device.i.i143, align 8
  tail call void @invalidate_bdev(ptr noundef %165) #15
  %166 = ptrtoint ptr %lo_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lo_queue.i.i, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %167) #15
  %168 = ptrtoint ptr %lo_device.i.i143 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %lo_device.i.i143, align 8
  %bd_inode.i.i = getelementptr inbounds %struct.block_device, ptr %169, i32 0, i32 7
  %170 = ptrtoint ptr %bd_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bd_inode.i.i, align 4
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %171, i32 0, i32 9
  %172 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_mapping.i.i, align 8
  %nrpages.i.i = getelementptr inbounds %struct.address_space, ptr %173, i32 0, i32 7
  %174 = ptrtoint ptr %nrpages.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %nrpages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool10.not.i.i = icmp eq i32 %175, 0
  br i1 %tobool10.not.i.i, label %if.end17.i.i, label %if.then11.i.i145

if.then11.i.i145:                                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %176 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %3, align 8
  %lo_file_name.i.i144 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 5
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.50, i32 noundef %177, ptr noundef %lo_file_name.i.i144, i32 noundef %175) #18
  br label %out_unfreeze.i.i

if.end17.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %178 = ptrtoint ptr %lo_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %lo_queue.i.i, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %179, i32 noundef %arg) #15
  %180 = ptrtoint ptr %lo_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lo_queue.i.i, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %181, i32 noundef %arg) #15
  %182 = ptrtoint ptr %lo_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %lo_queue.i.i, align 4
  tail call void @blk_queue_io_min(ptr noundef %183, i32 noundef %arg) #15
  %lo_backing_file.i.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 6
  %184 = ptrtoint ptr %lo_backing_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %lo_backing_file.i.i.i, align 4
  %f_flags.i.i.i = getelementptr inbounds %struct.file, ptr %185, i32 0, i32 7
  %186 = ptrtoint ptr %f_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %f_flags.i.i.i, align 4
  %and.i.i.i = and i32 %187, 65536
  %use_dio.i.i.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 18
  %188 = ptrtoint ptr %use_dio.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %use_dio.i.i.i, align 8, !range !191
  %190 = zext i8 %189 to i32
  %or.i.i.i = or i32 %and.i.i.i, %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %tobool1.i.i.i = icmp ne i32 %or.i.i.i, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %3, i1 noundef zeroext %tobool1.i.i.i) #15
  br label %out_unfreeze.i.i

out_unfreeze.i.i:                                 ; preds = %if.end17.i.i, %if.then11.i.i145
  %err.0.i.i = phi i32 [ -11, %if.then11.i.i145 ], [ 0, %if.end17.i.i ]
  %191 = ptrtoint ptr %lo_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %lo_queue.i.i, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %192) #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %out_unfreeze.i.i, %if.end2.i.i.sw.epilog.i_crit_edge, %if.end.i20.i.sw.epilog.i_crit_edge, %sw.bb4.i.sw.epilog.i_crit_edge, %out.i.i, %if.end.i16.i.sw.epilog.i_crit_edge, %if.then.i.i.i, %if.end.i.i141.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.i139.sw.epilog.i_crit_edge
  %err.0.i = phi i32 [ -22, %if.end.i139.sw.epilog.i_crit_edge ], [ -6, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %if.end.i.i141.sw.epilog.i_crit_edge ], [ 0, %if.then.i.i.i ], [ %error.0.i.i, %out.i.i ], [ 0, %if.end.i16.i.sw.epilog.i_crit_edge ], [ %err.0.i.i, %out_unfreeze.i.i ], [ -6, %sw.bb4.i.sw.epilog.i_crit_edge ], [ 0, %if.end2.i.i.sw.epilog.i_crit_edge ], [ -22, %if.end.i20.i.sw.epilog.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i136) #15
  br label %cleanup34

cleanup34:                                        ; preds = %sw.epilog.i, %sw.default.cleanup34_crit_edge, %land.lhs.true.cleanup34_crit_edge, %loop_get_status64.exit, %loop_set_status64.exit, %lor.lhs.false20.cleanup34_crit_edge, %loop_get_status_old.exit, %loop_set_status_old.exit, %lor.lhs.false.cleanup34_crit_edge, %if.end8.i, %if.then6.i, %if.then1.i, %sw.bb7.cleanup34_crit_edge, %out_putf.i, %if.then40.i, %if.end38.i.cleanup34_crit_edge, %sw.bb5.cleanup34_crit_edge, %cleanup, %sw.bb
  %retval.1 = phi i32 [ %retval.0.i135, %loop_get_status64.exit ], [ %retval.0.i101, %loop_get_status_old.exit ], [ %retval.0, %cleanup ], [ %call, %sw.bb ], [ -1, %land.lhs.true.cleanup34_crit_edge ], [ %retval.0.i120, %loop_set_status64.exit ], [ -1, %lor.lhs.false20.cleanup34_crit_edge ], [ %retval.0.i76, %loop_set_status_old.exit ], [ -1, %lor.lhs.false.cleanup34_crit_edge ], [ %error.1.i, %out_putf.i ], [ -9, %sw.bb5.cleanup34_crit_edge ], [ 0, %if.then40.i ], [ 0, %if.end38.i.cleanup34_crit_edge ], [ -6, %if.then1.i ], [ 0, %if.then6.i ], [ 0, %if.end8.i ], [ %call.i64, %sw.bb7.cleanup34_crit_edge ], [ %err.0.i, %sw.epilog.i ], [ %call.i137, %sw.default.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__loop_clr_fd(ptr noundef %lo, i1 noundef zeroext %release) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %old_gfp_mask = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 8
  %0 = ptrtoint ptr %old_gfp_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old_gfp_mask, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @loop_validate_mutex, i32 noundef 0) #15
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  %lo_mutex = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lo_mutex, i32 noundef 0) #15
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 10
  %2 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !190

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/loop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1115, 0\0A.popsection", ""() #15, !srcloc !215
  unreachable

do.end7:                                          ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %4 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lo_queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queue_flags, align 4
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_queue_write_cache(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  %9 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %10) #15
  %workqueue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 12
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %12) #15
  %lo_work_lock = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lo_work_lock) #15
  %idle_worker_list = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 15
  %13 = ptrtoint ptr %idle_worker_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idle_worker_list, align 4
  %cmp20.not122 = icmp eq ptr %14, %idle_worker_list
  br i1 %cmp20.not122, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %worker_tree = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in123 = phi ptr [ %14, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %worker.0 = getelementptr i8, ptr %.pn.in123, i32 -64
  %15 = ptrtoint ptr %.pn.in123 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in123, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in123) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in123, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in123 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in123, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in123 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in123, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in123, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @rb_erase(ptr noundef %worker.0, ptr noundef %worker_tree) #15
  %blkcg_css = getelementptr i8, ptr %.pn.in123, i32 12
  %24 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blkcg_css, align 4
  tail call fastcc void @css_put(ptr noundef %25)
  tail call void @kfree(ptr noundef %worker.0) #15
  %cmp20.not = icmp eq ptr %.pn, %idle_worker_list
  br i1 %cmp20.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end12.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lo_work_lock) #15
  %timer = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 17
  %call30 = tail call i32 @del_timer_sync(ptr noundef %timer) #15
  %lo_lock = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %lo_lock) #15
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %26 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lo_backing_file, align 4
  store ptr null, ptr %lo_backing_file, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lo_lock) #15
  %lo_device = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 7
  %28 = ptrtoint ptr %lo_device to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %lo_device, align 8
  %lo_offset = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 2
  %lo_file_name = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 5
  %29 = call ptr @memset(ptr %lo_file_name, i32 0, i32 64)
  %30 = call ptr @memset(ptr %lo_offset, i32 0, i32 16)
  %31 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %32, i32 noundef 512) #15
  %33 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %34, i32 noundef 512) #15
  %35 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_queue_io_min(ptr noundef %36, i32 noundef 512) #15
  %lo_disk = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 22
  %37 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lo_disk, align 8
  tail call void @invalidate_disk(ptr noundef %38) #15
  %sysfs_inited.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 19
  %39 = ptrtoint ptr %sysfs_inited.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sysfs_inited.i, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %for.end.loop_sysfs_exit.exit_crit_edge, label %if.then.i

for.end.loop_sysfs_exit.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_sysfs_exit.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lo_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %44, i32 0, i32 10
  tail call void @sysfs_remove_group(ptr noundef %bd_device.i, ptr noundef nonnull @loop_attribute_group) #15
  br label %loop_sysfs_exit.exit

loop_sysfs_exit.exit:                             ; preds = %if.then.i, %for.end.loop_sysfs_exit.exit_crit_edge
  %45 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lo_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 10
  %call37 = tail call i32 @kobject_uevent(ptr noundef %bd_device, i32 noundef 2) #15
  %f_mapping = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 18
  %49 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %f_mapping, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %1, ptr %gfp_mask.i, align 4
  tail call void @module_put(ptr noundef null) #15
  %52 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %53) #15
  %54 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lo_disk, align 8
  %call40 = tail call zeroext i1 @disk_force_media_change(ptr noundef %55, i32 noundef 1) #15
  %lo_flags = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %56 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lo_flags, align 8
  %and = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %loop_sysfs_exit.exit.if.end62_crit_edge, label %if.then42

loop_sysfs_exit.exit.if.end62_crit_edge:          ; preds = %loop_sysfs_exit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then42:                                        ; preds = %loop_sysfs_exit.exit
  %58 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lo_disk, align 8
  br i1 %release, label %if.end46.thread, label %if.then50

if.end46.thread:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %call48120 = tail call i32 @bdev_disk_changed(ptr noundef %59, i1 noundef zeroext false) #15
  br label %if.end53

if.then50:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %59, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #15
  %60 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lo_disk, align 8
  %call48 = tail call i32 @bdev_disk_changed(ptr noundef %61, i1 noundef zeroext false) #15
  %62 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lo_disk, align 8
  %open_mutex52 = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %open_mutex52) #15
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46.thread
  %call48121 = phi i32 [ %call48120, %if.end46.thread ], [ %call48, %if.then50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48121)
  %tobool54.not = icmp eq i32 %call48121, 0
  br i1 %tobool54.not, label %if.end53.if.end62_crit_edge, label %do.end58

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

do.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lo, align 8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %65, i32 noundef %call48121) #18
  br label %if.end62

if.end62:                                         ; preds = %do.end58, %if.end53.if.end62_crit_edge, %loop_sysfs_exit.exit.if.end62_crit_edge
  %66 = ptrtoint ptr %lo_flags to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %lo_flags, align 8
  %67 = load i32, ptr @part_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool64.not = icmp eq i32 %67, 0
  br i1 %tobool64.not, label %if.then65, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lo_disk, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %or = or i32 %71, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lo_mutex, i32 noundef 0) #15
  %72 = ptrtoint ptr %lo_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %lo_state, align 4
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  tail call void @fput(ptr noundef %27) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @disk_force_media_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_disk_changed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_backing_file(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %d, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %lo_lock.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %lo_lock.i) #15
  %lo_backing_file.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %lo_backing_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lo_backing_file.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i1 = tail call ptr @file_path(ptr noundef nonnull %5, ptr noundef %b, i32 noundef 4095) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %p.0.i = phi ptr [ %call.i1, %if.then.i ], [ null, %entry.if.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lo_lock.i) #15
  %tobool.not.i.i = icmp eq ptr %p.0.i, null
  %cmp.i.i = icmp ugt ptr %p.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %p.0.i to i32
  br label %loop_attr_backing_file_show.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i = tail call i32 @strlen(ptr noundef nonnull %p.0.i) #22
  %7 = call ptr @memmove(ptr %b, ptr %p.0.i, i32 %call6.i)
  %inc.i = add i32 %call6.i, 1
  %arrayidx.i = getelementptr i8, ptr %b, i32 %call6.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %arrayidx.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %b, i32 %inc.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx7.i, align 1
  br label %loop_attr_backing_file_show.exit

loop_attr_backing_file_show.exit:                 ; preds = %if.else.i, %if.then4.i
  %ret.0.i = phi i32 [ %6, %if.then4.i ], [ %inc.i, %if.else.i ]
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_offset(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %d, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %lo_offset.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %lo_offset.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lo_offset.i, align 8
  %call.i1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.27, i64 noundef %5) #15
  ret i32 %call.i1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_sizelimit(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %d, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %lo_sizelimit.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %lo_sizelimit.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lo_sizelimit.i, align 8
  %call.i1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.27, i64 noundef %5) #15
  ret i32 %call.i1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_autoclear(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %d, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %lo_flags.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lo_flags.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.32, ptr @.str.31
  %call.i1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i) #15
  ret i32 %call.i1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_partscan(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %d, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %lo_flags.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lo_flags.i, align 8
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.32, ptr @.str.31
  %call.i1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i) #15
  ret i32 %call.i1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_dio(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %b) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk.i = getelementptr i8, ptr %d, i32 992
  %0 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %lo_flags.i = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lo_flags.i, align 8
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.32, ptr @.str.31
  %call.i1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i) #15
  ret i32 %call.i1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loop_configure(ptr noundef %lo, i32 noundef %mode, ptr noundef %bdev, ptr nocapture noundef readonly %config) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 8
  %call = tail call ptr @fget(i32 noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.is_loop_device.exit_crit_edge, label %land.lhs.true.i

if.end.is_loop_device.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_loop_device.exit

land.lhs.true.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %8)
  %cmp.i = icmp eq i16 %8, 24576
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.is_loop_device.exit_crit_edge

land.lhs.true.i.is_loop_device.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_loop_device.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_rdev.i.i, align 8
  %shr.i.mask.i = and i32 %10, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %shr.i.mask.i)
  %cmp2.i = icmp eq i32 %shr.i.mask.i, 7340032
  %phi.cast.i = zext i1 %cmp2.i to i32
  br label %is_loop_device.exit

is_loop_device.exit:                              ; preds = %land.rhs.i, %land.lhs.true.i.is_loop_device.exit_crit_edge, %if.end.is_loop_device.exit_crit_edge
  %11 = phi i32 [ 0, %land.lhs.true.i.is_loop_device.exit_crit_edge ], [ 0, %if.end.is_loop_device.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2 = icmp ne i32 %11, 0
  tail call void @__module_get(ptr noundef null) #15
  %and = and i32 %mode, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %is_loop_device.exit.if.end9_crit_edge

is_loop_device.exit.if.end9_crit_edge:            ; preds = %is_loop_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then4:                                         ; preds = %is_loop_device.exit
  %call5 = tail call i32 @bd_prepare_to_claim(ptr noundef %bdev, ptr noundef nonnull @loop_configure) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then4.out_putf_crit_edge

if.then4.out_putf_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %is_loop_device.exit.if.end9_crit_edge
  br i1 %tobool2, label %if.then.i, label %if.end9.if.end3.i_crit_edge

if.end9.if.end3.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end9
  %call.i = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @loop_validate_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.out_bdev_crit_edge

if.then.i.out_bdev_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_bdev

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end9.if.end3.i_crit_edge
  %lo_mutex.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 23
  %call4.i = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp ne i32 %call4.i, 0
  %12 = and i1 %tobool2, %tobool5.not.i
  br i1 %12, label %if.end3.i.out_bdev.sink.split_crit_edge, label %loop_global_lock_killable.exit

if.end3.i.out_bdev.sink.split_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_bdev.sink.split

loop_global_lock_killable.exit:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool12.not = icmp eq i32 %call4.i, 0
  br i1 %tobool12.not, label %if.end14, label %loop_global_lock_killable.exit.out_bdev_crit_edge

loop_global_lock_killable.exit.out_bdev_crit_edge: ; preds = %loop_global_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_bdev

if.end14:                                         ; preds = %loop_global_lock_killable.exit
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 10
  %13 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end16, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end16:                                         ; preds = %if.end14
  %call17 = tail call fastcc i32 @loop_validate_file(ptr noundef nonnull %call, ptr noundef %bdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_unlock_crit_edge

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end20:                                         ; preds = %if.end16
  %15 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_mapping.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %info = getelementptr inbounds %struct.loop_config, ptr %config, i32 0, i32 2
  %lo_flags = getelementptr inbounds %struct.loop_config, ptr %config, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lo_flags, align 4
  %and21 = and i32 %20, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.out_unlock_crit_edge

if.end20.out_unlock_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end24:                                         ; preds = %if.end20
  %block_size = getelementptr inbounds %struct.loop_config, ptr %config, i32 0, i32 1
  %21 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %if.then26

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %23 = add i32 %22, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3585, i32 %23)
  %24 = icmp ult i32 %23, 3585
  %25 = tail call i32 @llvm.ctpop.i32(i32 %22) #15, !range !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp1.i.i = icmp ult i32 %25, 2
  %or.cond241 = and i1 %24, %cmp1.i.i
  br i1 %or.cond241, label %if.then26.if.end32_crit_edge, label %if.then26.out_unlock_crit_edge

if.then26.out_unlock_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %call34 = tail call fastcc i32 @loop_set_status_from_info(ptr noundef %lo, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.out_unlock_crit_edge

if.end32.out_unlock_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end37:                                         ; preds = %if.end32
  %f_mode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 8
  %26 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_mode, align 8
  %28 = and i32 %mode, 2
  %29 = and i32 %28, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %.not.not = icmp eq i32 %29, 0
  br i1 %.not.not, label %if.end37.if.then44_crit_edge, label %lor.lhs.false42

if.end37.if.then44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

lor.lhs.false42:                                  ; preds = %if.end37
  %f_op = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_iter, align 4
  %tobool43.not = icmp eq ptr %33, null
  br i1 %tobool43.not, label %lor.lhs.false42.if.then44_crit_edge, label %lor.lhs.false42.if.end46_crit_edge

lor.lhs.false42.if.end46_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

lor.lhs.false42.if.then44_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false42.if.then44_crit_edge, %if.end37.if.then44_crit_edge
  %lo_flags45 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %34 = ptrtoint ptr %lo_flags45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lo_flags45, align 8
  %or = or i32 %35, 1
  store i32 %or, ptr %lo_flags45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %lor.lhs.false42.if.end46_crit_edge
  %36 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lo, align 8
  %call47 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 0, i32 noundef %37) #15
  %workqueue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 12
  %38 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call47, ptr %workqueue, align 4
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %if.end46.out_unlock_crit_edge, label %if.end51

if.end46.out_unlock_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end51:                                         ; preds = %if.end46
  %lo_disk = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 22
  %39 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lo_disk, align 8
  %call52 = tail call zeroext i1 @disk_force_media_change(ptr noundef %40, i32 noundef 1) #15
  %41 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lo_disk, align 8
  %lo_flags54 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %43 = ptrtoint ptr %lo_flags54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lo_flags54, align 8
  %and55 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56 = icmp ne i32 %and55, 0
  tail call void @set_disk_ro(ptr noundef %42, i1 noundef zeroext %cmp56) #15
  %rootcg_work = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 13
  tail call void @__init_work(ptr noundef %rootcg_work, i32 noundef 0) #15
  %45 = ptrtoint ptr %rootcg_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %rootcg_work, align 8
  %lockdep_map = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @loop_configure.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry60 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 13, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry60, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 13, i32 2
  %48 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @loop_rootcg_workfn, ptr %func, align 4
  %rootcg_cmd_list = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 14
  %49 = ptrtoint ptr %rootcg_cmd_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %rootcg_cmd_list, ptr %rootcg_cmd_list, align 4
  %prev.i223 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %prev.i223 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rootcg_cmd_list, ptr %prev.i223, align 4
  %idle_worker_list = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 15
  %51 = ptrtoint ptr %idle_worker_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %idle_worker_list, ptr %idle_worker_list, align 4
  %prev.i224 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 15, i32 1
  %52 = ptrtoint ptr %prev.i224 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %idle_worker_list, ptr %prev.i224, align 4
  %worker_tree = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 16
  %53 = ptrtoint ptr %worker_tree to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %worker_tree, align 4
  %timer = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @loop_free_idle_workers, i32 noundef 524288, ptr noundef nonnull @.str.37, ptr noundef nonnull @loop_configure.__key.36) #15
  %54 = ptrtoint ptr %lo_flags54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lo_flags54, align 8
  %use_dio = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 18
  %56 = trunc i32 %55 to i8
  %57 = lshr i8 %56, 4
  %58 = and i8 %57, 1
  %59 = ptrtoint ptr %use_dio to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %use_dio, align 8
  %lo_device = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 7
  %60 = ptrtoint ptr %lo_device to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %bdev, ptr %lo_device, align 8
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %61 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call, ptr %lo_backing_file, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 3
  %62 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gfp_mask.i, align 4
  %old_gfp_mask = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 8
  %64 = ptrtoint ptr %old_gfp_mask to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %old_gfp_mask, align 4
  %and72 = and i32 %63, -193
  store i32 %and72, ptr %gfp_mask.i, align 4
  %65 = load i32, ptr %lo_flags54, align 8
  %and74 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %land.lhs.true, label %if.end51.if.end79_crit_edge

if.end51.if.end79_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end51
  %f_op76 = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 3
  %66 = ptrtoint ptr %f_op76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %f_op76, align 4
  %fsync = getelementptr inbounds %struct.file_operations, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %fsync to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fsync, align 4
  %tobool77.not = icmp eq ptr %69, null
  br i1 %tobool77.not, label %land.lhs.true.if.end79_crit_edge, label %if.then78

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %70 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_queue_write_cache(ptr noundef %71, i1 noundef zeroext true, i1 noundef zeroext false) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %land.lhs.true.if.end79_crit_edge, %if.end51.if.end79_crit_edge
  %72 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool81.not = icmp eq i32 %73, 0
  br i1 %tobool81.not, label %if.else, label %if.end79.if.end96_crit_edge

if.end79.if.end96_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.else:                                          ; preds = %if.end79
  %74 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lo_backing_file, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %f_flags, align 4
  %and85 = and i32 %77, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else.if.end96_crit_edge, label %land.lhs.true87

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

land.lhs.true87:                                  ; preds = %if.else
  %i_sb = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %78 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 26
  %80 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_bdev, align 4
  %tobool88.not = icmp eq ptr %81, null
  br i1 %tobool88.not, label %land.lhs.true87.if.end96_crit_edge, label %if.then89

land.lhs.true87.if.end96_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then89:                                        ; preds = %land.lhs.true87
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %81, i32 0, i32 18
  %82 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.then89.if.end96_crit_edge, label %land.lhs.true.i.i

if.then89.if.end96_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

land.lhs.true.i.i:                                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %83, i32 0, i32 37, i32 9
  %84 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool2.not.i.i = icmp eq i32 %85, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %85
  br label %if.end96

if.end96:                                         ; preds = %land.lhs.true.i.i, %if.then89.if.end96_crit_edge, %land.lhs.true87.if.end96_crit_edge, %if.else.if.end96_crit_edge, %if.end79.if.end96_crit_edge
  %bsize.0 = phi i32 [ %73, %if.end79.if.end96_crit_edge ], [ 512, %land.lhs.true87.if.end96_crit_edge ], [ 512, %if.else.if.end96_crit_edge ], [ 512, %if.then89.if.end96_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %lo_queue97 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %86 = ptrtoint ptr %lo_queue97 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lo_queue97, align 4
  %conv98 = and i32 %bsize.0, 65535
  tail call void @blk_queue_logical_block_size(ptr noundef %87, i32 noundef %conv98) #15
  %88 = ptrtoint ptr %lo_queue97 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lo_queue97, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %89, i32 noundef %conv98) #15
  %90 = ptrtoint ptr %lo_queue97 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lo_queue97, align 4
  tail call void @blk_queue_io_min(ptr noundef %91, i32 noundef %conv98) #15
  tail call fastcc void @loop_config_discard(ptr noundef %lo)
  tail call fastcc void @loop_update_rotational(ptr noundef %lo)
  %92 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lo_backing_file, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %95, 65536
  %96 = ptrtoint ptr %use_dio to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %use_dio, align 8, !range !191
  %98 = zext i8 %97 to i32
  %or.i = or i32 %and.i, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool1.i = icmp ne i32 %or.i, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %lo, i1 noundef zeroext %tobool1.i) #15
  %99 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lo_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %102, i32 0, i32 10
  %call.i226 = tail call i32 @sysfs_create_group(ptr noundef %bd_device.i, ptr noundef nonnull @loop_attribute_group) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool.not.i227 = icmp eq i32 %call.i226, 0
  %sysfs_inited.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 19
  %frombool.i = zext i1 %tobool.not.i227 to i8
  %103 = ptrtoint ptr %sysfs_inited.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %frombool.i, ptr %sysfs_inited.i, align 1
  %lo_offset.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 2
  %104 = ptrtoint ptr %lo_offset.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %lo_offset.i, align 8
  %lo_sizelimit.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 3
  %106 = ptrtoint ptr %lo_sizelimit.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %lo_sizelimit.i, align 8
  %call.i228 = tail call fastcc i64 @get_size(i64 noundef %105, i64 noundef %107, ptr noundef nonnull %call) #15
  tail call fastcc void @loop_set_size(ptr noundef %lo, i64 noundef %call.i228)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !216
  tail call void @arm_heavy_mb() #15
  %108 = ptrtoint ptr %lo_state to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %lo_state, align 4
  %109 = load i32, ptr @part_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool108.not = icmp eq i32 %109, 0
  br i1 %tobool108.not, label %if.end96.if.end112_crit_edge, label %if.then109

if.end96.if.end112_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then109:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %lo_flags54 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lo_flags54, align 8
  %or111 = or i32 %111, 8
  store i32 %or111, ptr %lo_flags54, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end96.if.end112_crit_edge
  %112 = ptrtoint ptr %lo_flags54 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %lo_flags54, align 8
  %and114 = and i32 %113, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end125.critedge, label %if.then118

if.then118:                                       ; preds = %if.end112
  %114 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %lo_disk, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags, align 4
  %and120 = and i32 %117, -5
  store i32 %and120, ptr %flags, align 4
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  br i1 %tobool2, label %if.then.i230, label %if.then118.loop_global_unlock.exit_crit_edge

if.then118.loop_global_unlock.exit_crit_edge:     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop_global_unlock.exit

if.then.i230:                                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %loop_global_unlock.exit

loop_global_unlock.exit:                          ; preds = %if.then.i230, %if.then118.loop_global_unlock.exit_crit_edge
  tail call fastcc void @loop_reread_partitions(ptr noundef %lo)
  br label %if.end125

if.end125.critedge:                               ; preds = %if.end112
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  br i1 %tobool2, label %if.then.i232, label %if.end125.critedge.if.end125_crit_edge

if.end125.critedge.if.end125_crit_edge:           ; preds = %if.end125.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then.i232:                                     ; preds = %if.end125.critedge
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %if.end125

if.end125:                                        ; preds = %if.then.i232, %if.end125.critedge.if.end125_crit_edge, %loop_global_unlock.exit
  br i1 %tobool3.not, label %if.then128, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bd_abort_claiming(ptr noundef %bdev, ptr noundef nonnull @loop_configure) #15
  br label %cleanup

out_unlock:                                       ; preds = %if.end46.out_unlock_crit_edge, %if.end32.out_unlock_crit_edge, %if.then26.out_unlock_crit_edge, %if.end20.out_unlock_crit_edge, %if.end16.out_unlock_crit_edge, %if.end14.out_unlock_crit_edge
  %error.0 = phi i32 [ -16, %if.end14.out_unlock_crit_edge ], [ %call17, %if.end16.out_unlock_crit_edge ], [ %call34, %if.end32.out_unlock_crit_edge ], [ -22, %if.end20.out_unlock_crit_edge ], [ -12, %if.end46.out_unlock_crit_edge ], [ -22, %if.then26.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lo_mutex.i) #15
  br i1 %tobool2, label %out_unlock.out_bdev.sink.split_crit_edge, label %out_unlock.out_bdev_crit_edge

out_unlock.out_bdev_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_bdev

out_unlock.out_bdev.sink.split_crit_edge:         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_bdev.sink.split

out_bdev.sink.split:                              ; preds = %out_unlock.out_bdev.sink.split_crit_edge, %if.end3.i.out_bdev.sink.split_crit_edge
  %error.1.ph = phi i32 [ %call4.i, %if.end3.i.out_bdev.sink.split_crit_edge ], [ %error.0, %out_unlock.out_bdev.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %out_bdev

out_bdev:                                         ; preds = %out_bdev.sink.split, %out_unlock.out_bdev_crit_edge, %loop_global_lock_killable.exit.out_bdev_crit_edge, %if.then.i.out_bdev_crit_edge
  %error.1 = phi i32 [ %call4.i, %loop_global_lock_killable.exit.out_bdev_crit_edge ], [ %error.0, %out_unlock.out_bdev_crit_edge ], [ %call.i, %if.then.i.out_bdev_crit_edge ], [ %error.1.ph, %out_bdev.sink.split ]
  br i1 %tobool3.not, label %if.then133, label %out_bdev.out_putf_crit_edge

out_bdev.out_putf_crit_edge:                      ; preds = %out_bdev
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_putf

if.then133:                                       ; preds = %out_bdev
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bd_abort_claiming(ptr noundef %bdev, ptr noundef nonnull @loop_configure) #15
  br label %out_putf

out_putf:                                         ; preds = %if.then133, %out_bdev.out_putf_crit_edge, %if.then4.out_putf_crit_edge
  %error.2 = phi i32 [ %error.1, %out_bdev.out_putf_crit_edge ], [ %error.1, %if.then133 ], [ %call5, %if.then4.out_putf_crit_edge ]
  tail call void @fput(ptr noundef nonnull %call) #15
  tail call void @module_put(ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %out_putf, %if.then128, %if.end125.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_putf ], [ -9, %entry.cleanup_crit_edge ], [ 0, %if.then128 ], [ 0, %if.end125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bd_prepare_to_claim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @loop_validate_file(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %bdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i59 = icmp eq ptr %3, null
  br i1 %tobool.not.i59, label %entry.while.end_crit_edge, label %land.lhs.true.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.lhs.true.i.lr.ph:                            ; preds = %entry
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cleanup.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %4 = phi ptr [ %3, %land.lhs.true.i.lr.ph ], [ %30, %cleanup.land.lhs.true.i_crit_edge ]
  %f_mapping.i60 = phi ptr [ %f_mapping, %land.lhs.true.i.lr.ph ], [ %f_mapping.i, %cleanup.land.lhs.true.i_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %7)
  %cmp.i = icmp eq i16 %7, 24576
  br i1 %cmp.i, label %is_loop_device.exit, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

is_loop_device.exit:                              ; preds = %land.lhs.true.i
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  %8 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_rdev.i.i, align 8
  %shr.i.mask.i = and i32 %9, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %shr.i.mask.i)
  %cmp2.i.not = icmp eq i32 %shr.i.mask.i, 7340032
  br i1 %cmp2.i.not, label %while.body, label %is_loop_device.exit.while.end_crit_edge

is_loop_device.exit.while.end_crit_edge:          ; preds = %is_loop_device.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %is_loop_device.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %while.body
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @loop_validate_mutex, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !195

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 541, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %while.body.if.end_crit_edge
  %11 = ptrtoint ptr %f_mapping.i60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping.i60, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_rdev, align 8
  %17 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bd_dev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp28 = icmp eq i32 %16, %18
  br i1 %cmp28, label %if.end.cleanup46_crit_edge, label %if.end30

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup46

if.end30:                                         ; preds = %if.end
  %call33 = tail call ptr @I_BDEV(ptr noundef %14) #15
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %call33, i32 0, i32 17
  %19 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data, align 8
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp34.not = icmp eq i32 %24, 1
  br i1 %cmp34.not, label %cleanup, label %if.end30.cleanup46_crit_edge

if.end30.cleanup46_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup46

cleanup:                                          ; preds = %if.end30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !217
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lo_backing_file, align 4
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_mapping.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %cleanup.while.end_crit_edge, label %cleanup.land.lhs.true.i_crit_edge

cleanup.land.lhs.true.i_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %is_loop_device.exit.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %entry.while.end_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %3, align 8
  %33 = and i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %33)
  %switch.selectcmp.case1 = icmp eq i16 %33, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %33)
  %switch.selectcmp.case2 = icmp eq i16 %33, 24576
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %34 = select i1 %switch.selectcmp, i32 0, i32 -22
  br label %cleanup46

cleanup46:                                        ; preds = %while.end, %if.end30.cleanup46_crit_edge, %if.end.cleanup46_crit_edge
  %retval.2 = phi i32 [ %34, %while.end ], [ -9, %if.end.cleanup46_crit_edge ], [ -22, %if.end30.cleanup46_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @loop_set_status_from_info(ptr nocapture noundef writeonly %lo, ptr nocapture noundef readonly %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_encrypt_key_size = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %lo_encrypt_key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lo_encrypt_key_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %lo_encrypt_type = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %lo_encrypt_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lo_encrypt_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 0, label %sw.epilog
    i32 1, label %do.end
    i32 18, label %do.end3
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #18
  br label %return

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %lo_offset = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %lo_offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lo_offset, align 8
  %lo_offset6 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 2
  %7 = ptrtoint ptr %lo_offset6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %lo_offset6, align 8
  %lo_sizelimit = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %lo_sizelimit to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lo_sizelimit, align 8
  %lo_sizelimit7 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 3
  %10 = ptrtoint ptr %lo_sizelimit7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %lo_sizelimit7, align 8
  %lo_file_name = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 5
  %lo_file_name8 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 9
  %11 = call ptr @memcpy(ptr %lo_file_name, ptr %lo_file_name8, i32 64)
  %arrayidx = getelementptr %struct.loop_device, ptr %lo, i32 0, i32 5, i32 63
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %lo_flags = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 8
  %13 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lo_flags, align 4
  %lo_flags11 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %15 = ptrtoint ptr %lo_flags11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lo_flags11, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %do.end3, %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3 ], [ -22, %do.end ], [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loop_rootcg_workfn(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -200
  %rootcg_cmd_list = getelementptr i8, ptr %work, i32 44
  tail call fastcc void @loop_process_work(ptr noundef null, ptr noundef %rootcg_cmd_list, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loop_free_idle_workers(ptr noundef %timer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_work_lock = getelementptr i8, ptr %timer, i32 -112
  tail call void @_raw_spin_lock_irq(ptr noundef %lo_work_lock) #15
  %idle_worker_list = getelementptr i8, ptr %timer, i32 -12
  %0 = ptrtoint ptr %idle_worker_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle_worker_list, align 4
  %cmp.not37 = icmp eq ptr %1, %idle_worker_list
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %worker_tree = getelementptr i8, ptr %timer, i32 -4
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in38 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn41, %list_del.exit.for.body_crit_edge ]
  %worker.040 = getelementptr i8, ptr %.pn.in38, i32 -64
  %2 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn41 = load ptr, ptr %.pn.in38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_ran_at = getelementptr i8, ptr %.pn.in38, i32 16
  %4 = ptrtoint ptr %last_ran_at to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_ran_at, align 4
  %add.neg = add i32 %3, -6000
  %sub = sub i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in38, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in38, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @rb_erase(ptr noundef %worker.040, ptr noundef %worker_tree) #15
  %blkcg_css = getelementptr i8, ptr %.pn.in38, i32 12
  %14 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %blkcg_css, align 4
  tail call fastcc void @css_put(ptr noundef %15)
  tail call void @kfree(ptr noundef %worker.040) #15
  %cmp.not = icmp eq ptr %.pn41, %idle_worker_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = ptrtoint ptr %idle_worker_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %idle_worker_list, align 4
  %cmp.i.not = icmp eq ptr %17, %idle_worker_list
  br i1 %cmp.i.not, label %for.end.if.end19_crit_edge, label %if.then18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %18, 6000
  %call.i = tail call i32 @timer_reduce(ptr noundef %timer, i32 noundef %add.i) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.end.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lo_work_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loop_config_discard(ptr nocapture noundef readonly %lo) unnamed_addr #3 align 64 {
entry:
  %sbuf = alloca %struct.kstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %0 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo_backing_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %6 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lo_queue, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %10)
  %cmp = icmp eq i16 %10, 24576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call ptr @I_BDEV(ptr noundef %5) #15
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_queue.i, align 4
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 16
  %13 = ptrtoint ptr %max_write_zeroes_sectors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_write_zeroes_sectors, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 18
  %15 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %discard_granularity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %cond.false, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %physical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 8
  %17 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %physical_block_size.i, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_op, align 4
  %fallocate = getelementptr inbounds %struct.file_operations, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %fallocate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fallocate, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %if.else.if.else18_crit_edge, label %if.else7

if.else.if.else18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else18

if.else7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sbuf) #15
  %23 = call ptr @memset(ptr %sbuf, i32 255, i32 88)
  %f_path = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %call8 = call i32 @vfs_statfs(ptr noundef %f_path, ptr noundef nonnull %sbuf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else7.if.end_crit_edge

if.else7.if.end_crit_edge:                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %sbuf, i32 0, i32 1
  %24 = ptrtoint ptr %f_bsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_bsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else7.if.end_crit_edge
  %granularity.0 = phi i32 [ %25, %if.then10 ], [ -1, %if.else7.if.end_crit_edge ]
  %max_discard_sectors.0 = phi i32 [ 8388607, %if.then10 ], [ 0, %if.else7.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sbuf) #15
  br label %if.end13

if.end13:                                         ; preds = %if.end, %cond.false, %if.then.if.end13_crit_edge
  %granularity.1 = phi i32 [ %granularity.0, %if.end ], [ %18, %cond.false ], [ %16, %if.then.if.end13_crit_edge ]
  %max_discard_sectors.1 = phi i32 [ %max_discard_sectors.0, %if.end ], [ %14, %cond.false ], [ %14, %if.then.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_discard_sectors.1)
  %tobool14.not = icmp eq i32 %max_discard_sectors.1, 0
  br i1 %tobool14.not, label %if.end13.if.else18_crit_edge, label %if.then15

if.end13.if.else18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %discard_granularity17 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 18
  %26 = ptrtoint ptr %discard_granularity17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %granularity.1, ptr %discard_granularity17, align 4
  call void @blk_queue_max_discard_sectors(ptr noundef %7, i32 noundef %max_discard_sectors.1) #15
  call void @blk_queue_max_write_zeroes_sectors(ptr noundef %7, i32 noundef %max_discard_sectors.1) #15
  call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %7) #15
  br label %if.end21

if.else18:                                        ; preds = %if.end13.if.else18_crit_edge, %if.else.if.else18_crit_edge
  %discard_granularity20 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 18
  %27 = ptrtoint ptr %discard_granularity20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %discard_granularity20, align 4
  call void @blk_queue_max_discard_sectors(ptr noundef %7, i32 noundef 0) #15
  call void @blk_queue_max_write_zeroes_sectors(ptr noundef %7, i32 noundef 0) #15
  call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %7) #15
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  %discard_alignment = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 19
  %28 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %discard_alignment, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loop_update_rotational(ptr nocapture noundef readonly %lo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %0 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo_backing_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %10 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lo_queue, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.then

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then:                                          ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %queue_flags, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %if.else, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then4:                                         ; preds = %if.then.if.then4_crit_edge, %entry.if.then4_crit_edge
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %11) #15
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_queue_flag_clear(i32 noundef 6, ptr noundef %11) #15
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loop_set_size(ptr nocapture noundef readonly %lo, i64 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_disk = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 22
  %0 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo_disk, align 8
  %call = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %1, i64 noundef %size) #15
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lo_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  %call2 = tail call i32 @kobject_uevent(ptr noundef %bd_device, i32 noundef 2) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @loop_reread_partitions(ptr noundef %lo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_disk = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 22
  %0 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo_disk, align 8
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #15
  %2 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lo_disk, align 8
  %call = tail call i32 @bdev_disk_changed(ptr noundef %3, i1 noundef zeroext false) #15
  %4 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lo_disk, align 8
  %open_mutex3 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %open_mutex3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lo, align 8
  %lo_file_name = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %7, ptr noundef %lo_file_name, i32 noundef %call) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bd_abort_claiming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__loop_update_dio(ptr nocapture noundef %lo, i1 noundef zeroext %dio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %0 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lo_backing_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.then.bdev_logical_block_size.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 9
  %12 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  %.op = and i32 %13, 65535
  %phi.bo = select i1 %tobool2.not.i.i, i32 512, i32 %.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.then.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.then.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i ]
  %sub = add nsw i32 %retval1.0.i.i, -1
  br label %if.end

if.end:                                           ; preds = %bdev_logical_block_size.exit, %entry.if.end_crit_edge
  %sb_bsize.0 = phi i32 [ %retval1.0.i.i, %bdev_logical_block_size.exit ], [ 0, %entry.if.end_crit_edge ]
  %dio_align.0 = phi i32 [ %sub, %bdev_logical_block_size.exit ], [ 0, %entry.if.end_crit_edge ]
  br i1 %dio, label %if.then5, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %14 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lo_queue, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then5.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

if.then5.queue_logical_block_size.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 9
  %16 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 512, i32 %17
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %if.then5.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 512, %if.then5.queue_logical_block_size.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval1.0.i, i32 %sb_bsize.0)
  %cmp.not = icmp ult i32 %retval1.0.i, %sb_bsize.0
  br i1 %cmp.not, label %queue_logical_block_size.exit.if.else_crit_edge, label %land.lhs.true

queue_logical_block_size.exit.if.else_crit_edge:  ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %queue_logical_block_size.exit
  %lo_offset = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 2
  %18 = ptrtoint ptr %lo_offset to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lo_offset, align 8
  %conv9 = zext i32 %dio_align.0 to i64
  %and = and i64 %19, %conv9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true
  %a_ops = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a_ops, align 4
  %direct_IO = getelementptr inbounds %struct.address_space_operations, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %direct_IO to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %direct_IO, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %land.lhs.true11.if.else_crit_edge, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %queue_logical_block_size.exit.if.else_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %if.else, %land.lhs.true11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %use_dio.0.off0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true11.if.end16_crit_edge ], [ false, %if.end.if.end16_crit_edge ]
  %use_dio17 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 18
  %24 = ptrtoint ptr %use_dio17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_dio17, align 8, !range !191
  %26 = zext i1 %use_dio.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp22 = icmp eq i8 %25, %26
  br i1 %cmp22, label %if.end16.cleanup_crit_edge, label %if.end25

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %call26 = tail call i32 @vfs_fsync(ptr noundef %1, i32 noundef 0) #15
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 10
  %27 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp27 = icmp eq i32 %28, 1
  br i1 %cmp27, label %if.then29, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %lo_queue30 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %29 = ptrtoint ptr %lo_queue30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lo_queue30, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %30) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  %31 = ptrtoint ptr %use_dio17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %26, ptr %use_dio17, align 8
  %lo_queue37 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %32 = ptrtoint ptr %lo_queue37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lo_queue37, align 4
  br i1 %use_dio.0.off0, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_queue_flag_clear(i32 noundef 3, ptr noundef %33) #15
  %lo_flags = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %34 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lo_flags, align 8
  %or = or i32 %35, 16
  store i32 %or, ptr %lo_flags, align 8
  br label %if.end42

if.else38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_queue_flag_set(i32 noundef 3, ptr noundef %33) #15
  %lo_flags40 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %36 = ptrtoint ptr %lo_flags40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lo_flags40, align 8
  %and41 = and i32 %37, -17
  store i32 %and41, ptr %lo_flags40, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then36
  %38 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp44 = icmp eq i32 %39, 1
  br i1 %cmp44, label %if.then46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %lo_queue47 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %40 = ptrtoint ptr %lo_queue47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lo_queue47, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %41) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end42.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_size(i64 noundef %offset, i64 noundef %sizelimit, ptr nocapture noundef readonly %file) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !193
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %5 = tail call ptr @llvm.returnaddress(i32 0) #15
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %6) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %6) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = tail call ptr @llvm.returnaddress(i32 0) #15
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !194
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !195

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #15, !srcloc !196
  %10 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !218
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !219
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %11, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %13, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !220
  %14 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !221
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %17, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %18 = tail call i64 @llvm.smax.i64(i64 %offset, i64 0)
  %spec.select = sub i64 %15, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp1 = icmp slt i64 %spec.select, 0
  br i1 %cmp1, label %i_size_read.exit.cleanup_crit_edge, label %if.end3

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sizelimit)
  %cmp4 = icmp sgt i64 %sizelimit, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %sizelimit)
  %cmp5 = icmp sgt i64 %spec.select, %sizelimit
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  %loopsize.1 = select i1 %or.cond, i64 %sizelimit, i64 %spec.select
  %shr14 = lshr i64 %loopsize.1, 9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ %shr14, %if.end3 ], [ 0, %i_size_read.exit.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @loop_set_status(ptr noundef %lo, ptr nocapture noundef readonly %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lo_mutex = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 23
  %call = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 10
  %0 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end2, label %if.end.out_unlock.thread_crit_edge

if.end.out_unlock.thread_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.thread

if.end2:                                          ; preds = %if.end
  %lo_offset = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 2
  %2 = ptrtoint ptr %lo_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lo_offset, align 8
  %lo_offset3 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %lo_offset3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lo_offset3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp4.not = icmp eq i64 %3, %5
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end2.land.lhs.true_crit_edge

if.end2.land.lhs.true_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end2
  %lo_sizelimit = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 3
  %6 = ptrtoint ptr %lo_sizelimit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lo_sizelimit, align 8
  %lo_sizelimit5 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %lo_sizelimit5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lo_sizelimit5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp6.not = icmp eq i64 %7, %9
  br i1 %cmp6.not, label %if.end10, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %lo_queue = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %10 = ptrtoint ptr %lo_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lo_queue, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %11) #15
  br label %if.end20

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end2.land.lhs.true_crit_edge
  %lo_device = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 7
  %12 = ptrtoint ptr %lo_device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lo_device, align 8
  %call8 = tail call i32 @sync_blockdev(ptr noundef %13) #15
  %14 = ptrtoint ptr %lo_device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lo_device, align 8
  tail call void @invalidate_bdev(ptr noundef %15) #15
  %lo_queue101 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 20
  %16 = ptrtoint ptr %lo_queue101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lo_queue101, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %17) #15
  %18 = ptrtoint ptr %lo_device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lo_device, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end20_crit_edge, label %if.then14

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lo, align 8
  %lo_file_name = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 5
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %27, ptr noundef %lo_file_name, i32 noundef %25) #18
  br label %out_unfreeze.thread

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end10
  %lo_queue105 = phi ptr [ %lo_queue101, %land.lhs.true.if.end20_crit_edge ], [ %lo_queue, %if.end10 ]
  %size_changed.0.off0102 = phi i1 [ true, %land.lhs.true.if.end20_crit_edge ], [ false, %if.end10 ]
  %lo_flags = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %28 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lo_flags, align 8
  %lo_encrypt_key_size.i = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 7
  %30 = ptrtoint ptr %lo_encrypt_key_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lo_encrypt_key_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %cmp.i = icmp ugt i32 %31, 32
  br i1 %cmp.i, label %if.end20.out_unfreeze.thread_crit_edge, label %if.end.i

if.end20.out_unfreeze.thread_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unfreeze.thread

if.end.i:                                         ; preds = %if.end20
  %lo_encrypt_type.i = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 6
  %32 = ptrtoint ptr %lo_encrypt_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lo_encrypt_type.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %33, label %if.end.i.out_unfreeze.thread_crit_edge [
    i32 0, label %if.end24
    i32 1, label %do.end.i
    i32 18, label %do.end3.i
  ]

if.end.i.out_unfreeze.thread_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unfreeze.thread

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #18
  br label %out_unfreeze.thread

do.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  br label %out_unfreeze.thread

if.end24:                                         ; preds = %if.end.i
  %35 = ptrtoint ptr %lo_offset3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lo_offset3, align 8
  %37 = ptrtoint ptr %lo_offset to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %lo_offset, align 8
  %lo_sizelimit.i = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 4
  %38 = ptrtoint ptr %lo_sizelimit.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lo_sizelimit.i, align 8
  %lo_sizelimit7.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 3
  %40 = ptrtoint ptr %lo_sizelimit7.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %lo_sizelimit7.i, align 8
  %lo_file_name.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 5
  %lo_file_name8.i = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 9
  %41 = call ptr @memcpy(ptr %lo_file_name.i, ptr %lo_file_name8.i, i32 64)
  %arrayidx.i = getelementptr %struct.loop_device, ptr %lo, i32 0, i32 5, i32 63
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx.i, align 1
  %lo_flags.i = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 8
  %43 = ptrtoint ptr %lo_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lo_flags.i, align 4
  %and = and i32 %44, 12
  %or = and i32 %29, -5
  %or30 = or i32 %or, %and
  %45 = ptrtoint ptr %lo_flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or30, ptr %lo_flags, align 8
  br i1 %size_changed.0.off0102, label %if.then32, label %if.end24.land.lhs.true40_crit_edge

if.end24.land.lhs.true40_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true40

if.then32:                                        ; preds = %if.end24
  %46 = ptrtoint ptr %lo_offset to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lo_offset, align 8
  %48 = ptrtoint ptr %lo_sizelimit7.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %lo_sizelimit7.i, align 8
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %50 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lo_backing_file, align 4
  %call35 = tail call fastcc i64 @get_size(i64 noundef %47, i64 noundef %49, ptr noundef %51), !range !222
  %lo_disk.i = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 22
  %52 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lo_disk.i, align 8
  %call.i93 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %53, i64 noundef %call35) #15
  br i1 %call.i93, label %if.then32.land.lhs.true40_crit_edge, label %if.then.i

if.then32.land.lhs.true40_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true40

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %lo_disk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lo_disk.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  %call2.i = tail call i32 @kobject_uevent(ptr noundef %bd_device.i, i32 noundef 2) #15
  br label %land.lhs.true40

out_unfreeze.thread:                              ; preds = %do.end3.i, %do.end.i, %if.end.i.out_unfreeze.thread_crit_edge, %if.end20.out_unfreeze.thread_crit_edge, %if.then14
  %lo_queue104.ph = phi ptr [ %lo_queue101, %if.then14 ], [ %lo_queue105, %do.end3.i ], [ %lo_queue105, %do.end.i ], [ %lo_queue105, %if.end20.out_unfreeze.thread_crit_edge ], [ %lo_queue105, %if.end.i.out_unfreeze.thread_crit_edge ]
  %err.0.ph = phi i32 [ -11, %if.then14 ], [ -22, %do.end3.i ], [ -22, %do.end.i ], [ -22, %if.end20.out_unfreeze.thread_crit_edge ], [ -22, %if.end.i.out_unfreeze.thread_crit_edge ]
  %58 = ptrtoint ptr %lo_queue104.ph to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lo_queue104.ph, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %59) #15
  br label %out_unlock.thread

land.lhs.true40:                                  ; preds = %if.then.i, %if.then32.land.lhs.true40_crit_edge, %if.end24.land.lhs.true40_crit_edge
  tail call fastcc void @loop_config_discard(ptr noundef %lo)
  %use_dio = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 18
  %60 = ptrtoint ptr %use_dio to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_dio, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool37 = icmp ne i8 %61, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %lo, i1 noundef zeroext %tobool37)
  %62 = ptrtoint ptr %lo_queue105 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lo_queue105, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %63) #15
  %64 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lo_flags, align 8
  %and42 = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp ne i32 %and42, 0
  %and45 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond = select i1 %tobool43.not, i1 %tobool46.not, i1 false
  br i1 %or.cond, label %if.then52, label %land.lhs.true40.out_unlock.thread_crit_edge

land.lhs.true40.out_unlock.thread_crit_edge:      ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %land.lhs.true40.out_unlock.thread_crit_edge, %out_unfreeze.thread, %if.end.out_unlock.thread_crit_edge
  %err.1.ph = phi i32 [ %err.0.ph, %out_unfreeze.thread ], [ -6, %if.end.out_unlock.thread_crit_edge ], [ 0, %land.lhs.true40.out_unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true40
  %lo_disk = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 22
  %66 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lo_disk, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and48 = and i32 %69, -5
  store i32 %and48, ptr %flags, align 4
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  %70 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lo_disk, align 8
  %open_mutex.i = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #15
  %72 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lo_disk, align 8
  %call.i96 = tail call i32 @bdev_disk_changed(ptr noundef %73, i1 noundef zeroext false) #15
  %74 = ptrtoint ptr %lo_disk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lo_disk, align 8
  %open_mutex3.i = getelementptr inbounds %struct.gendisk, ptr %75, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %open_mutex3.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %if.then52.cleanup_crit_edge, label %do.end.i98

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i98:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lo, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %77, ptr noundef %lo_file_name.i, i32 noundef %call.i96) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end.i98, %if.then52.cleanup_crit_edge, %out_unlock.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.1.ph, %out_unlock.thread ], [ 0, %if.then52.cleanup_crit_edge ], [ 0, %do.end.i98 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @loop_get_status(ptr noundef %lo, ptr nocapture noundef writeonly %info) unnamed_addr #3 align 64 {
entry:
  %path = alloca %struct.path, align 8
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #15
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %lo_mutex = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 23
  %call = tail call i32 @mutex_lock_killable_nested(ptr noundef %lo_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lo_state = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 10
  %1 = ptrtoint ptr %lo_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lo_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lo_mutex) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = call ptr @memset(ptr %info, i32 0, i32 232)
  %4 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lo, align 8
  %lo_number4 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %lo_number4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %lo_number4, align 8
  %lo_offset = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 2
  %7 = ptrtoint ptr %lo_offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lo_offset, align 8
  %lo_offset5 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %lo_offset5 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %lo_offset5, align 8
  %lo_sizelimit = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 3
  %10 = ptrtoint ptr %lo_sizelimit to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lo_sizelimit, align 8
  %lo_sizelimit6 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 4
  %12 = ptrtoint ptr %lo_sizelimit6 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %lo_sizelimit6, align 8
  %lo_flags = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 4
  %13 = ptrtoint ptr %lo_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lo_flags, align 8
  %lo_flags7 = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 8
  %15 = ptrtoint ptr %lo_flags7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lo_flags7, align 4
  %lo_file_name = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 9
  %lo_file_name8 = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %lo_file_name, ptr %lo_file_name8, i32 64)
  %lo_backing_file = getelementptr inbounds %struct.loop_device, ptr %lo, i32 0, i32 6
  %17 = ptrtoint ptr %lo_backing_file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lo_backing_file, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %f_path, align 8
  %21 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %path, align 8
  call void @path_get(ptr noundef nonnull %path) #15
  call void @mutex_unlock(ptr noundef %lo_mutex) #15
  %call11 = call i32 @vfs_getattr(ptr noundef nonnull %path, ptr noundef nonnull %stat, i32 noundef 256, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev, align 8
  %and1.i.i = and i32 %23, 255
  %24 = lshr i32 %23, 12
  %shl.i.i = and i32 %24, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %23, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv.i = zext i32 %or4.i.i to i64
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv.i, ptr %info, align 8
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %26 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ino, align 8
  %lo_inode = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 1
  %28 = ptrtoint ptr %lo_inode to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %lo_inode, align 8
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %29 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rdev, align 4
  %and1.i.i39 = and i32 %30, 255
  %31 = lshr i32 %30, 12
  %shl.i.i40 = and i32 %31, 1048320
  %or.i.i41 = or i32 %shl.i.i40, %and1.i.i39
  %and2.i.i42 = shl i32 %30, 12
  %shl3.i.i43 = and i32 %and2.i.i42, -1048576
  %or4.i.i44 = or i32 %or.i.i41, %shl3.i.i43
  %conv.i45 = zext i32 %or4.i.i44 to i64
  %lo_rdevice = getelementptr inbounds %struct.loop_info64, ptr %info, i32 0, i32 2
  %32 = ptrtoint ptr %lo_rdevice to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv.i45, ptr %lo_rdevice, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end3.if.end16_crit_edge
  call void @path_put(ptr noundef nonnull %path) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.then1 ], [ %call11, %if.end16 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loop_probe(i32 noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dev, 1048575
  %0 = load i32, ptr @part_shift, align 4
  %shr = lshr i32 %and, %0
  %1 = load i32, ptr @max_loop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %1)
  %cmp.not = icmp slt i32 %shr, %1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @loop_add(i32 noundef %shr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !56, !58, !60, !61, !63, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !78, !79, !81, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !105, !107, !108, !110, !112, !113, !115, !116, !118, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !170, !172, !173, !175, !176, !177, !178}
!llvm.named.register.sp = !{!179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__param_max_loop, !1, !"__param_max_loop", i1 false, i1 false}
!1 = !{!"../drivers/block/loop.c", i32 1785, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_looptype334, !1, !"__UNIQUE_ID_max_looptype334", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_loop335, !4, !"__UNIQUE_ID_max_loop335", i1 false, i1 false}
!4 = !{!"../drivers/block/loop.c", i32 1786, i32 1}
!5 = !{ptr @__param_max_part, !6, !"__param_max_part", i1 false, i1 false}
!6 = !{!"../drivers/block/loop.c", i32 1787, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_parttype336, !6, !"__UNIQUE_ID_max_parttype336", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_part337, !9, !"__UNIQUE_ID_max_part337", i1 false, i1 false}
!9 = !{!"../drivers/block/loop.c", i32 1788, i32 1}
!10 = !{ptr @__UNIQUE_ID_file338, !11, !"__UNIQUE_ID_file338", i1 false, i1 false}
!11 = !{!"../drivers/block/loop.c", i32 1789, i32 1}
!12 = !{ptr @__UNIQUE_ID_license339, !11, !"__UNIQUE_ID_license339", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias340, !14, !"__UNIQUE_ID_alias340", i1 false, i1 false}
!14 = !{!"../drivers/block/loop.c", i32 1790, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias341, !16, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!16 = !{!"../drivers/block/loop.c", i32 2191, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias342, !18, !"__UNIQUE_ID_alias342", i1 false, i1 false}
!18 = !{!"../drivers/block/loop.c", i32 2192, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/loop.c", i32 2265, i32 32}
!21 = !{ptr @__initcall__kmod_loop__343_2280_loop_init6, !22, !"__initcall__kmod_loop__343_2280_loop_init6", i1 false, i1 false}
!22 = !{!"../drivers/block/loop.c", i32 2280, i32 1}
!23 = !{ptr @__exitcall_loop_exit, !24, !"__exitcall_loop_exit", i1 false, i1 false}
!24 = !{!"../drivers/block/loop.c", i32 2281, i32 1}
!25 = !{ptr @__setup_max_loop_setup, !26, !"__setup_max_loop_setup", i1 false, i1 false}
!26 = !{!"../drivers/block/loop.c", i32 2290, i32 1}
!27 = !{ptr @max_part, !28, !"max_part", i1 false, i1 false}
!28 = !{!"../drivers/block/loop.c", i32 134, i32 12}
!29 = !{ptr @max_loop, !30, !"max_loop", i1 false, i1 false}
!30 = !{!"../drivers/block/loop.c", i32 1784, i32 12}
!31 = !{ptr @__param_str_max_loop, !1, !"__param_str_max_loop", i1 false, i1 false}
!32 = !{ptr @__param_str_max_part, !6, !"__param_str_max_part", i1 false, i1 false}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/loop.c", i32 2187, i32 11}
!35 = !{ptr @loop_misc, !36, !"loop_misc", i1 false, i1 false}
!36 = !{!"../drivers/block/loop.c", i32 2185, i32 26}
!37 = !{ptr @loop_ctl_fops, !38, !"loop_ctl_fops", i1 false, i1 false}
!38 = !{!"../drivers/block/loop.c", i32 2177, i32 37}
!39 = !{ptr @loop_add.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/block/loop.c", i32 1994, i32 23}
!41 = !{ptr @loop_add.__key.2, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/block/loop.c", i32 2032, i32 2}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @loop_add.__key.4, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/block/loop.c", i32 2034, i32 2}
!46 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @loop_add.__key.6, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/block/loop.c", i32 2035, i32 2}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/loop.c", i32 2044, i32 27}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/block/loop.c", i32 91, i32 8}
!54 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @loop_ctl_mutex, !53, !"loop_ctl_mutex", i1 false, i1 false}
!56 = !{ptr @loop_mq_ops, !57, !"loop_mq_ops", i1 false, i1 false}
!57 = !{!"../drivers/block/loop.c", i32 1947, i32 32}
!58 = !{ptr @loop_queue_work.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/block/loop.c", i32 871, i32 2}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/block/loop.c", i32 1893, i32 3}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/block/loop.c", i32 502, i32 3}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/loop.c", i32 250, i32 2}
!74 = !{ptr @lo_write_bvec._rs, !73, !"_rs", i1 false, i1 false}
!75 = !{ptr @__func__.lo_write_bvec, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lo_write_bvec._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @lo_write_bvec._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!83 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @part_shift, !86, !"part_shift", i1 false, i1 false}
!86 = !{!"../drivers/block/loop.c", i32 135, i32 12}
!87 = !{ptr @lo_fops, !88, !"lo_fops", i1 false, i1 false}
!88 = !{!"../drivers/block/loop.c", i32 1771, i32 45}
!89 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/block/loop.c", i32 1176, i32 4}
!91 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__loop_clr_fd._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @__loop_clr_fd._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/block/loop.c", i32 92, i32 8}
!96 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @loop_validate_mutex, !95, !"loop_validate_mutex", i1 false, i1 false}
!98 = !{ptr @loop_attribute_group, !99, !"loop_attribute_group", i1 false, i1 false}
!99 = !{!"../drivers/block/loop.c", i32 730, i32 31}
!100 = !{ptr @loop_attrs, !101, !"loop_attrs", i1 false, i1 false}
!101 = !{!"../drivers/block/loop.c", i32 720, i32 26}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/block/loop.c", i32 713, i32 1}
!104 = !{ptr @loop_attr_backing_file, !103, !"loop_attr_backing_file", i1 false, i1 false}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/loop.c", i32 714, i32 1}
!107 = !{ptr @loop_attr_offset, !106, !"loop_attr_offset", i1 false, i1 false}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/block/loop.c", i32 684, i32 22}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/block/loop.c", i32 715, i32 1}
!112 = !{ptr @loop_attr_sizelimit, !111, !"loop_attr_sizelimit", i1 false, i1 false}
!113 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/block/loop.c", i32 716, i32 1}
!115 = !{ptr @loop_attr_autoclear, !114, !"loop_attr_autoclear", i1 false, i1 false}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/loop.c", i32 696, i32 22}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/block/loop.c", i32 696, i32 42}
!120 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/block/loop.c", i32 696, i32 48}
!122 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/block/loop.c", i32 717, i32 1}
!124 = !{ptr @loop_attr_partscan, !123, !"loop_attr_partscan", i1 false, i1 false}
!125 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/loop.c", i32 718, i32 1}
!127 = !{ptr @loop_attr_dio, !126, !"loop_attr_dio", i1 false, i1 false}
!128 = !{ptr @loop_configure.__key, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/block/loop.c", i32 1027, i32 2}
!130 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @loop_configure.__key.36, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/block/loop.c", i32 1031, i32 2}
!133 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/loop.c", i32 934, i32 3}
!136 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @loop_set_status_from_info._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @loop_set_status_from_info._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/loop.c", i32 937, i32 3}
!141 = !{ptr @loop_set_status_from_info._entry.40, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @loop_set_status_from_info._entry_ptr.42, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/block/loop.c", i32 521, i32 3}
!145 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @loop_reread_partitions._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @loop_reread_partitions._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!150 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!153 = !{ptr @.str.47, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!155 = !{ptr @.str.48, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/block/loop.c", i32 1264, i32 3}
!157 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @loop_set_status._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @loop_set_status._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.50, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/loop.c", i32 1484, i32 3}
!162 = !{ptr @loop_set_block_size._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @loop_set_block_size._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../drivers/block/loop.c", i32 2100, i32 3}
!166 = !{ptr @.str.51, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @loop_control_remove._entry, !165, !"_entry", i1 false, i1 false}
!169 = !{ptr @loop_control_remove._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.53, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/block/loop.c", i32 90, i32 8}
!172 = !{ptr @loop_index_idr, !171, !"loop_index_idr", i1 false, i1 false}
!173 = !{ptr @.str.54, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/block/loop.c", i32 2251, i32 2}
!175 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @loop_init._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @loop_init._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @__setup_str_max_loop_setup, !26, !"__setup_str_max_loop_setup", i1 false, i1 false}
!179 = !{!"sp"}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i32 0, i32 33}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i8 0, i8 2}
!192 = !{i64 2149413366}
!193 = !{i64 800907, i64 800968}
!194 = !{i64 803639}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 803924}
!197 = !{i64 2148397207, i64 2148397233, i64 2148397262, i64 2148397296, i64 2148397327, i64 2148397350}
!198 = !{i64 2149413632}
!199 = !{i64 2148485683}
!200 = !{i64 2148400392, i64 2148400424, i64 2148400453, i64 2148400487, i64 2148400518, i64 2148400541}
!201 = !{i64 2148485912}
!202 = !{i64 2155237428}
!203 = !{i64 2155254201}
!204 = !{!"auto-init"}
!205 = !{i64 2152596581}
!206 = !{i64 2152605431}
!207 = !{i64 2152615385}
!208 = !{i64 2152624880}
!209 = !{i64 2152634357}
!210 = !{i64 2152461824, i64 2152461849}
!211 = !{i64 4957379}
!212 = !{i64 4957576}
!213 = !{i64 2152442809}
!214 = !{i64 2152462505, i64 2152462530}
!215 = !{i64 2155522729, i64 2155523215, i64 2155522766, i64 2155522822, i64 2155522856, i64 2155522880, i64 2155522921, i64 2155522942, i64 2155522970, i64 2155523004}
!216 = !{i64 2155522203}
!217 = !{i64 2155502338}
!218 = !{i64 2152760331}
!219 = !{i64 2152760173}
!220 = !{i64 2152760501}
!221 = !{i64 2150029033}
!222 = !{i64 0, i64 18014398509481984}
