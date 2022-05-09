; ModuleID = '/llk/IR_all_yes/fs/f2fs/gc.c_pt.bc'
source_filename = "../fs/f2fs/gc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.victim_selection = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.f2fs_gc_kthread = type { ptr, %struct.wait_queue_head, i32, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.discard_cmd_control = type { ptr, %struct.list_head, [512 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, %struct.mutex, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root_cached, i8 }
%struct.flush_cmd_control = type { ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, ptr }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.f2fs_stat_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i64], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [4 x i32], [2 x i32], [2 x i32], i32, i64, i64, i64 }
%struct.dirty_seglist_info = type { ptr, [8 x ptr], ptr, %struct.mutex, [8 x i32], ptr }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.76 = type { ptr }
%struct.kprojid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.cp_control = type { i32, i64, i64, i64 }
%struct.gc_inode_list = type { %struct.list_head, %struct.xarray }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.inode_entry = type { %struct.list_head, ptr }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }
%struct.f2fs_io_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, i8, i32, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, i8 }
%struct.dnode_of_data = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i32 }
%struct.f2fs_summary = type <{ i32, %union.anon.82 }>
%union.anon.82 = type { [3 x i8] }
%struct.node_info = type { i32, i32, i32, i8, i8 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.f2fs_summary_block = type { [512 x %struct.f2fs_summary], %struct.f2fs_journal, %struct.summary_footer }
%struct.f2fs_journal = type <{ %union.anon.84, %union.anon.85 }>
%union.anon.84 = type { i16 }
%union.anon.85 = type { %struct.nat_journal }
%struct.nat_journal = type { [38 x %struct.nat_journal_entry], [11 x i8] }
%struct.nat_journal_entry = type <{ i32, %struct.f2fs_nat_entry }>
%struct.f2fs_nat_entry = type <{ i8, i32, i32 }>
%struct.summary_footer = type <{ i8, i32 }>
%struct.sec_entry = type { i32 }
%struct.f2fs_node = type { %union.anon.88, %struct.node_footer }
%union.anon.88 = type { %struct.f2fs_inode }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.89, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.90, [5 x i32] }
%union.anon.89 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.90 = type { [923 x i32] }
%struct.node_footer = type <{ i32, i32, i32, i64, i32 }>
%struct.f2fs_dev_info = type { ptr, [64 x i8], i32, i32, i32, i32, ptr, ptr }
%struct.extent_info = type { i32, i32, i32, i32 }
%struct.victim_sel_policy = type { i32, i32, ptr, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.victim_entry = type { %struct.rb_node, %union.anon.92, %struct.list_head }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i64, i32 }

@f2fs_start_gc_thread.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&sbi->gc_thread->gc_wait_queue_head\00", [60 x i8] zeroinitializer }, align 32
@f2fs_start_gc_thread.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&sbi->gc_thread->fggc_wq\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f2fs_gc-%u:%u\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gc_list.iroot.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"f2fs_victim_entry\00", [46 x i8] zeroinitializer }, align 32
@victim_entry_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@default_v_ops = internal constant { %struct.victim_selection, [28 x i8] } { %struct.victim_selection { ptr @get_victim_by_default }, [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Should run fsck to repair first.\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Checkpoint should be enabled.\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013resize_fs failed, should run fsck to repair!\00", [49 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.f2fs_kmalloc, ptr @.str.11, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/f2fs/gc.c\00", [19 x i8] zeroinitializer }, align 32
@gc_thread_func._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gc_thread_func = private unnamed_addr constant [15 x i8] c"gc_thread_func\00", align 1
@gc_thread_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.gc_thread_func, ptr @.str.13, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gc_thread_func._entry_ptr = internal global ptr @gc_thread_func._entry, section ".printk_index", align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_f2fs_background_gc = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_background_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_gc_begin = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_gc_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Inconsistent segment (%u) type [%d, %d] in SSA and SIT\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: valid data with mismatched node version.\00", [49 x i8] zeroinitializer }, align 32
@__func__.is_alive = private unnamed_addr constant [9 x i8] c"is_alive\00", align 1
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mismatched blkaddr %u (source_blkaddr %u) in seg %u\00", [42 x i8] zeroinitializer }, align 32
@f2fs_grab_cache_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_grab_cache_page = private unnamed_addr constant [21 x i8] c"f2fs_grab_cache_page\00", align 1
@f2fs_grab_cache_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.f2fs_grab_cache_page, ptr @.str.11, i32 2572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_grab_cache_page._entry_ptr = internal global ptr @f2fs_grab_cache_page._entry, section ".printk_index", align 4
@f2fs_pagecache_get_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_pagecache_get_page = private unnamed_addr constant [24 x i8] c"f2fs_pagecache_get_page\00", align 1
@f2fs_pagecache_get_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.f2fs_pagecache_get_page, ptr @.str.11, i32 2587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_pagecache_get_page._entry_ptr = internal global ptr @f2fs_pagecache_get_page._entry, section ".printk_index", align 4
@f2fs_inode_entry_slab = external dso_local local_unnamed_addr global ptr, align 4
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.11, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__tracepoint_f2fs_gc_end = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_gc_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_f2fs_get_victim = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_get_victim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__const.free_segment_range.cpc = private unnamed_addr constant { i32, [4 x i8], i64, i64, i64 } { i32 128, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0 }, align 8
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013segno %u should be free but still inuse!\00", [53 x i8] zeroinitializer }, align 32
@switch.table.get_victim_by_default = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 180, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 181, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 182, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1707, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1821, i32 45 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"victim_entry_slab\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 26, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"default_v_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 847, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 2021, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 2026, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 2100, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 3219, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 45, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 72, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 57, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 34, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 625, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 108, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1649, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 414, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 717, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 260, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1036, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1055, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2571, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2587, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2650, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 678, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 788, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 452, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1160, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [16 x i8] c"../fs/f2fs/gc.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1921, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [35 x i8] c"switch.table.get_victim_by_default\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @f2fs_grab_cache_page._entry, ptr @f2fs_grab_cache_page._entry_ptr, ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @f2fs_pagecache_get_page._entry, ptr @f2fs_pagecache_get_page._entry_ptr, ptr @gc_thread_func._entry, ptr @gc_thread_func._entry_ptr, ptr @f2fs_start_gc_thread.__key, ptr @.str, ptr @f2fs_start_gc_thread.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @victim_entry_slab, ptr @default_v_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @f2fs_kmalloc._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @gc_thread_func._rs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @f2fs_grab_cache_page._rs, ptr @f2fs_pagecache_get_page._rs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @switch.table.get_victim_by_default], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_start_gc_thread.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_start_gc_thread.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @victim_entry_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_v_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_thread_func._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_thread_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_grab_cache_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_grab_cache_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_pagecache_get_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_pagecache_get_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_victim_by_default to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_start_gc_thread(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  %fault_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %6 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %entry.f2fs_kmalloc.exit_crit_edge, label %if.end.i.i

entry.f2fs_kmalloc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_kmalloc.exit

if.end.i.i:                                       ; preds = %entry
  %inject_type.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %8 = ptrtoint ptr %inject_type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_type.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.f2fs_kmalloc.exit_crit_edge, label %if.end3.i.i

if.end.i.i.f2fs_kmalloc.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_kmalloc.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i, ptr %fault_info.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i) #16, !srcloc !114
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fault_info.i.i, align 4
  %13 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i.i, label %if.end3.i.i.f2fs_kmalloc.exit_crit_edge, label %if.then.i

if.end3.i.i.f2fs_kmalloc.exit_crit_edge:          ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_kmalloc.exit

if.then.i:                                        ; preds = %if.end3.i.i
  %call.i.i15.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #16
  %15 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %fault_info.i.i, align 4
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.out_crit_edge, label %do.end.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sbi, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %18 = load ptr, ptr @f2fs_fault_name, align 4
  %19 = tail call ptr @llvm.returnaddress(i32 0) #16
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, ptr noundef %s_id.i, ptr noundef %18, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %19) #19
  br label %out

f2fs_kmalloc.exit:                                ; preds = %if.end3.i.i.f2fs_kmalloc.exit_crit_edge, %if.end.i.i.f2fs_kmalloc.exit_crit_edge, %entry.f2fs_kmalloc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 128) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %f2fs_kmalloc.exit.out_crit_edge, label %if.end

f2fs_kmalloc.exit.out_crit_edge:                  ; preds = %f2fs_kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %f2fs_kmalloc.exit
  %urgent_sleep_time = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %urgent_sleep_time to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 500, ptr %urgent_sleep_time, align 8
  %min_sleep_time = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %min_sleep_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 30000, ptr %min_sleep_time, align 4
  %max_sleep_time = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %max_sleep_time to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 60000, ptr %max_sleep_time, align 8
  %no_gc_sleep_time = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %no_gc_sleep_time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 300000, ptr %no_gc_sleep_time, align 4
  %gc_wake = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %gc_wake to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %gc_wake, align 8
  %gc_thread = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 75
  %26 = ptrtoint ptr %gc_thread to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %gc_thread, align 8
  %gc_wait_queue_head = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %gc_wait_queue_head, ptr noundef nonnull @.str, ptr noundef nonnull @f2fs_start_gc_thread.__key) #16
  %27 = ptrtoint ptr %gc_thread to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gc_thread, align 8
  %fggc_wq = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %28, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %fggc_wq, ptr noundef nonnull @.str.2, ptr noundef nonnull @f2fs_start_gc_thread.__key.1) #16
  %shr = lshr i32 %5, 20
  %and = and i32 %5, 1048575
  %call6 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @gc_thread_func, ptr noundef %sbi, i32 noundef -1, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and) #16
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 @wake_up_process(ptr noundef %call6) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %29 = ptrtoint ptr %gc_thread to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gc_thread, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call6, ptr %30, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %cmp.i38 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.then14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %33 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  %35 = ptrtoint ptr %gc_thread to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %gc_thread, align 8
  br label %out

out:                                              ; preds = %if.then14, %if.end10.out_crit_edge, %f2fs_kmalloc.exit.out_crit_edge, %do.end.i, %if.then.i.out_crit_edge
  %err.0 = phi i32 [ %34, %if.then14 ], [ 0, %if.end10.out_crit_edge ], [ -12, %f2fs_kmalloc.exit.out_crit_edge ], [ -12, %do.end.i ], [ -12, %if.then.i.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gc_thread_func(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_thread = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 75
  %0 = ptrtoint ptr %gc_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc_thread, align 8
  %gc_wait_queue_head = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 1
  %fggc_wq3 = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 7
  %min_sleep_time = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %min_sleep_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_sleep_time, align 4
  %call = tail call zeroext i1 @set_freezable() #16
  %head.i = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 7, i32 1
  %gc_wake = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 6
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 73
  %other_skip_bggc = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 108
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 73, i32 7, i32 1
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 73, i32 7, i32 2
  %gc_mode = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 78
  %gc_lock120 = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 74
  %arrayidx.i.i.i277 = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 9
  %arrayidx.i2.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 10
  %arrayidx.i5.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 11
  %arrayidx.i8.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 8
  %arrayidx.i11.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 7
  %arrayidx.i14.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 13
  %arrayidx.i17.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 69, i32 12
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 11
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 25, i32 3
  %arrayidx1.i.i = getelementptr %struct.f2fs_sb_info, ptr %data, i32 0, i32 24, i32 3
  %no_gc_sleep_time.i284 = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 5
  %max_sleep_time.i286 = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 4
  %io_skip_bggc = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 107
  %user_block_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 60
  %raw_super.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 2
  %log_blocks_per_seg.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 50
  %gc_urgent_high_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 80
  %gc_urgent_high_limited = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 81
  %gc_urgent_high_remaining = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 82
  %urgent_sleep_time = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 2
  %stat_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 90
  %bggc_mode = getelementptr inbounds %struct.f2fs_sb_info, ptr %data, i32 0, i32 73, i32 14
  br label %if.else.i

if.else.i:                                        ; preds = %do.cond166.if.else.i_crit_edge, %entry
  %wait_ms.0 = phi i32 [ %3, %entry ], [ %wait_ms.9.ph, %do.cond166.if.else.i_crit_edge ]
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %wait_ms.0) #16
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 49) #16
  %call9 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call9, label %if.else.i.if.end61_crit_edge, label %lor.lhs.false

if.else.i.if.end61_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

lor.lhs.false:                                    ; preds = %if.else.i
  %4 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.lor.lhs.false12_crit_edge, label %freezing.exit, !prof !115

lor.lhs.false.lor.lhs.false12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

freezing.exit:                                    ; preds = %lor.lhs.false
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %7) #16
  br i1 %call4.i, label %freezing.exit.if.end61_crit_edge, label %freezing.exit.lor.lhs.false12_crit_edge

freezing.exit.lor.lhs.false12_crit_edge:          ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

freezing.exit.if.end61_crit_edge:                 ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

lor.lhs.false12:                                  ; preds = %freezing.exit.lor.lhs.false12_crit_edge, %lor.lhs.false.lor.lhs.false12_crit_edge
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %10, %head.i
  br i1 %cmp.i.i.not, label %lor.end, label %lor.lhs.false12.if.end61_crit_edge

lor.lhs.false12.if.end61_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

lor.end:                                          ; preds = %lor.lhs.false12
  %11 = ptrtoint ptr %gc_wake to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gc_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14 = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool19.not = icmp eq i32 %call2.i, 0
  %or.cond = select i1 %tobool14, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %lor.end.if.end61_crit_edge, label %if.then22

lor.end.if.end61_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then22:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i246 = call i32 @__msecs_to_jiffies(i32 noundef %wait_ms.0) #16
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call25394 = call i32 @prepare_to_wait_event(ptr noundef %gc_wait_queue_head, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %call27395 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call27395, label %if.then22.for.end_crit_edge, label %if.then22.lor.lhs.false28_crit_edge

if.then22.lor.lhs.false28_crit_edge:              ; preds = %if.then22
  br label %lor.lhs.false28

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false28:                                  ; preds = %cleanup.lor.lhs.false28_crit_edge, %if.then22.lor.lhs.false28_crit_edge
  %call25397 = phi i32 [ %call25, %cleanup.lor.lhs.false28_crit_edge ], [ %call25394, %if.then22.lor.lhs.false28_crit_edge ]
  %__ret23.0396 = phi i32 [ %call59, %cleanup.lor.lhs.false28_crit_edge ], [ %call2.i246, %if.then22.lor.lhs.false28_crit_edge ]
  %14 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i252 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i252 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task30, align 8
  %call.i.i.i253 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %18 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i254 = icmp eq i32 %18, 0
  br i1 %tobool.not.i254, label %lor.lhs.false28.lor.lhs.false32_crit_edge, label %freezing.exit258, !prof !115

lor.lhs.false28.lor.lhs.false32_crit_edge:        ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false32

freezing.exit258:                                 ; preds = %lor.lhs.false28
  %call4.i255 = call zeroext i1 @freezing_slow_path(ptr noundef %17) #16
  br i1 %call4.i255, label %freezing.exit258.for.end_crit_edge, label %freezing.exit258.lor.lhs.false32_crit_edge

freezing.exit258.lor.lhs.false32_crit_edge:       ; preds = %freezing.exit258
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false32

freezing.exit258.for.end_crit_edge:               ; preds = %freezing.exit258
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false32:                                  ; preds = %freezing.exit258.lor.lhs.false32_crit_edge, %lor.lhs.false28.lor.lhs.false32_crit_edge
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i260.not = icmp eq ptr %20, %head.i
  br i1 %cmp.i.i260.not, label %lor.end38, label %lor.lhs.false32.for.end_crit_edge

lor.lhs.false32.for.end_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.end38:                                        ; preds = %lor.lhs.false32
  %21 = ptrtoint ptr %gc_wake to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gc_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37 = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.0396)
  %tobool49.not = icmp eq i32 %__ret23.0396, 0
  %or.cond393 = select i1 %tobool37, i1 true, i1 %tobool49.not
  br i1 %or.cond393, label %lor.end38.for.end_crit_edge, label %if.end55

lor.end38.for.end_crit_edge:                      ; preds = %lor.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end55:                                         ; preds = %lor.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25397)
  %tobool56.not = icmp eq i32 %call25397, 0
  br i1 %tobool56.not, label %cleanup, label %if.end55.__out_crit_edge

if.end55.__out_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %__out

cleanup:                                          ; preds = %if.end55
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret23.0396) #16
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %gc_wait_queue_head, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %call27 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call27, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false28_crit_edge

cleanup.lor.lhs.false28_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false28

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end38.for.end_crit_edge, %lor.lhs.false32.for.end_crit_edge, %freezing.exit258.for.end_crit_edge, %if.then22.for.end_crit_edge
  call void @finish_wait(ptr noundef %gc_wait_queue_head, ptr noundef nonnull %__wq_entry) #16
  br label %__out

__out:                                            ; preds = %for.end, %if.end55.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.end61

if.end61:                                         ; preds = %__out, %lor.end.if.end61_crit_edge, %lor.lhs.false12.if.end61_crit_edge, %freezing.exit.if.end61_crit_edge, %if.else.i.if.end61_crit_edge
  %23 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mount_opt, align 8
  %and = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %land.lhs.true64

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

land.lhs.true64:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i263.not = icmp ne ptr %26, %head.i
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true64, %if.end61.if.end68_crit_edge
  %foreground.0.off0 = phi i1 [ false, %if.end61.if.end68_crit_edge ], [ %cmp.i.i263.not, %land.lhs.true64 ]
  %27 = ptrtoint ptr %gc_wake to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gc_wake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool70.not = icmp eq i32 %28, 0
  br i1 %tobool70.not, label %if.end68.if.end73_crit_edge, label %if.then71

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %gc_wake to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %gc_wake, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68.if.end73_crit_edge
  %30 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i265 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265)
  %tobool.not.i266 = icmp eq i32 %and.i265, 0
  br i1 %tobool.not.i266, label %if.then.i267, label %if.end73.if.end.i268_crit_edge

if.end73.if.end.i268_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i268

if.then.i267:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  call void @debug_check_no_locks_held() #16
  br label %if.end.i268

if.end.i268:                                      ; preds = %if.then.i267, %if.end73.if.end.i268_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 57) #16
  %36 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %40 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i, label %if.end.i268.if.end76_crit_edge, label %freezing.exit.i.i, !prof !115

if.end.i268.if.end76_crit_edge:                   ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

freezing.exit.i.i:                                ; preds = %if.end.i268
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %39) #16
  br i1 %call4.i.i.i, label %try_to_freeze.exit, label %freezing.exit.i.i.if.end76_crit_edge, !prof !116

freezing.exit.i.i.if.end76_crit_edge:             ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

try_to_freeze.exit:                               ; preds = %freezing.exit.i.i
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br i1 %call6.i.i, label %if.then75, label %try_to_freeze.exit.if.end76_crit_edge

try_to_freeze.exit.if.end76_crit_edge:            ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.then75:                                        ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %other_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %other_skip_bggc, align 8
  %inc = add i32 %42, 1
  store i32 %inc, ptr %other_skip_bggc, align 8
  br label %do.cond166

if.end76:                                         ; preds = %try_to_freeze.exit.if.end76_crit_edge, %freezing.exit.i.i.if.end76_crit_edge, %if.end.i268.if.end76_crit_edge
  %call77 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call77, label %if.end76.do.end169_crit_edge, label %if.end79

if.end76.do.end169_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

if.end79:                                         ; preds = %if.end76
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 8
  %s_writers = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 32
  %45 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp = icmp sgt i32 %46, 0
  br i1 %cmp, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end79
  %47 = ptrtoint ptr %no_gc_sleep_time.i284 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %no_gc_sleep_time.i284, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_ms.0, i32 %48)
  %cmp.i269 = icmp eq i32 %wait_ms.0, %48
  br i1 %cmp.i269, label %if.then80.increase_sleep_time.exit_crit_edge, label %if.end.i270

if.then80.increase_sleep_time.exit_crit_edge:     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %increase_sleep_time.exit

if.end.i270:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %max_sleep_time.i286 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_sleep_time.i286, align 4
  %51 = ptrtoint ptr %min_sleep_time to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %min_sleep_time, align 4
  %conv.i = zext i32 %wait_ms.0 to i64
  %conv1.i = zext i32 %52 to i64
  %add.i = add nuw nsw i64 %conv1.i, %conv.i
  %conv2.i = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv2.i)
  %cmp3.i = icmp ugt i64 %add.i, %conv2.i
  %add6.i = add i32 %52, %wait_ms.0
  %storemerge.i = select i1 %cmp3.i, i32 %50, i32 %add6.i
  br label %increase_sleep_time.exit

increase_sleep_time.exit:                         ; preds = %if.end.i270, %if.then80.increase_sleep_time.exit_crit_edge
  %wait_ms.1 = phi i32 [ %wait_ms.0, %if.then80.increase_sleep_time.exit_crit_edge ], [ %storemerge.i, %if.end.i270 ]
  %53 = ptrtoint ptr %other_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %other_skip_bggc, align 8
  %inc82 = add i32 %54, 1
  store i32 %inc82, ptr %other_skip_bggc, align 8
  br label %do.cond166

if.end83:                                         ; preds = %if.end79
  %55 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i271 = icmp eq i32 %56, 0
  br i1 %tobool.not.i271, label %if.end83.if.end96_crit_edge, label %if.end.i273

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.end.i273:                                      ; preds = %if.end83
  %57 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inject_type.i, align 4
  %and.i272 = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool1.not.i = icmp eq i32 %and.i272, 0
  br i1 %tobool1.not.i, label %if.end.i273.if.end96_crit_edge, label %if.end3.i

if.end.i273.if.end96_crit_edge:                   ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.end3.i:                                        ; preds = %if.end.i273
  %call.i.i.i274 = call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #16
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #16, !srcloc !114
  %call.i.i14.i = call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #16
  %60 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %fault_info.i, align 4
  %62 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.not.i = icmp ult i32 %61, %63
  br i1 %cmp.not.i, label %if.end3.i.if.end96_crit_edge, label %if.then85

if.end3.i.if.end96_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.then85:                                        ; preds = %if.end3.i
  %call.i.i15.i = call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  %64 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call86 = call i32 @___ratelimit(ptr noundef nonnull @gc_thread_func._rs, ptr noundef nonnull @__func__.gc_thread_func) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.if.end95_crit_edge, label %do.end91

if.then85.if.end95_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95

do.end91:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 12) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 12), align 4
  %68 = call ptr @llvm.returnaddress(i32 0)
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, ptr noundef %s_id, ptr noundef %67, ptr noundef nonnull @__func__.gc_thread_func, ptr noundef %68) #19
  br label %if.end95

if.end95:                                         ; preds = %do.end91, %if.then85.if.end95_crit_edge
  call void @f2fs_stop_checkpoint(ptr noundef %data, i1 noundef zeroext false) #16
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end3.i.if.end96_crit_edge, %if.end.i273.if.end96_crit_edge, %if.end83.if.end96_crit_edge
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 8
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %70, i32 0, i32 32, i32 2
  %71 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !117
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end96.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end96.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end96
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 35, ptr noundef nonnull @.str.16) #16
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end96.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %75 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool7.not.i.i.i.i = icmp eq i32 %76, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %if.else.i.i.i, !prof !115

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %77 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !118
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %70, i32 0, i32 32, i32 2, i32 0, i32 1
  %78 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_count.i.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %86, %80
  %87 = inttoptr i32 %add.i.i.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add19.i.i.i = add i32 %89, 1
  store i32 %add19.i.i.i, ptr %87, align 4
  %90 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !119
  %and.i.i.i.i.i = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.then39.i.i.i, label %do.body3.i.i.i.do.end41.i.i.i_crit_edge, !prof !116

do.body3.i.i.i.do.end41.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end41.i.i.i

if.then39.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end41.i.i.i

do.end41.i.i.i:                                   ; preds = %if.then39.i.i.i, %do.body3.i.i.i.do.end41.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #16, !srcloc !120
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !121
  %91 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i61.i.i.i.c = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i61.i.i.i.c to ptr
  %preempt_count.i.i62.i.i.i.c = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i62.i.i.i.c to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i62.i.i.i.c, align 4
  %sub.i.i.i.i.c = add i32 %94, -1
  store volatile i32 %sub.i.i.i.i.c, ptr %preempt_count.i.i62.i.i.i.c, align 4
  br label %if.end102

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  %call48.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext true) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !121
  %95 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i61.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i61.i.i.i to ptr
  %preempt_count.i.i62.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i62.i.i.i, align 4
  %sub.i.i.i.i = add i32 %98, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i62.i.i.i, align 4
  br i1 %call48.i.i.i, label %if.else.i.i.i.if.end102_crit_edge, label %if.then99

if.else.i.i.i.if.end102_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then99:                                        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %99 = ptrtoint ptr %other_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %other_skip_bggc, align 8
  %inc101 = add i32 %100, 1
  store i32 %inc101, ptr %other_skip_bggc, align 8
  br label %do.cond166

if.end102:                                        ; preds = %if.else.i.i.i.if.end102_crit_edge, %do.end41.i.i.i
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %70, i32 0, i32 32, i32 2, i32 0, i32 5
  %101 = call ptr @llvm.returnaddress(i32 0) #16
  %102 = ptrtoint ptr %101 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %102) #16
  %103 = ptrtoint ptr %gc_mode to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %gc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %104)
  %cmp103 = icmp eq i32 %104, 4
  br i1 %cmp103, label %if.then104, label %if.end116

if.then104:                                       ; preds = %if.end102
  call void @_raw_spin_lock(ptr noundef %gc_urgent_high_lock) #16
  %105 = ptrtoint ptr %gc_urgent_high_limited to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %gc_urgent_high_limited, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool105.not = icmp eq i8 %106, 0
  br i1 %tobool105.not, label %if.then104.if.end114_crit_edge, label %if.then106

if.then104.if.end114_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then106:                                       ; preds = %if.then104
  %107 = ptrtoint ptr %gc_urgent_high_remaining to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %gc_urgent_high_remaining, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool107.not = icmp eq i32 %108, 0
  br i1 %tobool107.not, label %if.then108, label %if.end112

if.then108:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %gc_urgent_high_limited to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %gc_urgent_high_limited, align 4
  call void @_raw_spin_unlock(ptr noundef %gc_urgent_high_lock) #16
  %110 = ptrtoint ptr %gc_mode to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %gc_mode, align 4
  br label %do.cond166

if.end112:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add i32 %108, -1
  %111 = ptrtoint ptr %gc_urgent_high_remaining to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %dec, ptr %gc_urgent_high_remaining, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.end112, %if.then104.if.end114_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gc_urgent_high_lock) #16
  %112 = ptrtoint ptr %urgent_sleep_time to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %urgent_sleep_time, align 4
  call void @down_write(ptr noundef %gc_lock120) #16
  br i1 %foreground.0.off0, label %if.end114.if.end140_crit_edge, label %if.end114.if.then138_crit_edge

if.end114.if.then138_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then138

if.end114.if.end140_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

if.end116:                                        ; preds = %if.end102
  br i1 %foreground.0.off0, label %if.then118, label %if.else

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  call void @down_write(ptr noundef %gc_lock120) #16
  br label %if.end140

if.else:                                          ; preds = %if.end116
  %call121 = call i32 @down_write_trylock(ptr noundef %gc_lock120) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %other_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %other_skip_bggc, align 8
  %inc125 = add i32 %115, 1
  store i32 %inc125, ptr %other_skip_bggc, align 8
  br label %next

if.end127:                                        ; preds = %if.else
  %116 = ptrtoint ptr %gc_mode to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %gc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %117)
  %cmp.i276 = icmp eq i32 %117, 4
  br i1 %cmp.i276, label %if.end127.if.end132_crit_edge, label %if.end.i279

if.end127.if.end132_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end132

if.end.i279:                                      ; preds = %if.end127
  %call.i.i.i.i.i278 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i277, i32 noundef 4) #16
  %118 = ptrtoint ptr %arrayidx.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %arrayidx.i.i.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i279.if.then129_crit_edge

if.end.i279.if.then129_crit_edge:                 ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

lor.lhs.false.i.i:                                ; preds = %if.end.i279
  %call.i.i.i3.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i2.i.i, i32 noundef 4) #16
  %120 = ptrtoint ptr %arrayidx.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %arrayidx.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool2.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.then129_crit_edge

lor.lhs.false.i.i.if.then129_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %call.i.i.i6.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i5.i.i, i32 noundef 4) #16
  %122 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %arrayidx.i5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool5.not.i.i = icmp eq i32 %123, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false3.i.i.if.then129_crit_edge

lor.lhs.false3.i.i.if.then129_crit_edge:          ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false3.i.i
  %call.i.i.i9.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i8.i.i, i32 noundef 4) #16
  %124 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %arrayidx.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool8.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false6.i.i.if.then129_crit_edge

lor.lhs.false6.i.i.if.then129_crit_edge:          ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false6.i.i
  %call.i.i.i12.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i11.i.i, i32 noundef 4) #16
  %126 = ptrtoint ptr %arrayidx.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %arrayidx.i11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool11.not.i.i = icmp eq i32 %127, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false9.i.i.if.then129_crit_edge

lor.lhs.false9.i.i.if.then129_crit_edge:          ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false9.i.i
  %call.i.i.i15.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i14.i.i, i32 noundef 4) #16
  %128 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %arrayidx.i14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool14.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false15.i.i, label %lor.lhs.false12.i.i.if.then129_crit_edge

lor.lhs.false12.i.i.if.then129_crit_edge:         ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

lor.lhs.false15.i.i:                              ; preds = %lor.lhs.false12.i.i
  %call.i.i.i18.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i17.i.i, i32 noundef 4) #16
  %130 = ptrtoint ptr %arrayidx.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %arrayidx.i17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool17.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false15.i.i.if.then129_crit_edge

lor.lhs.false15.i.i.if.then129_crit_edge:         ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

land.lhs.true.i.i:                                ; preds = %lor.lhs.false15.i.i
  %132 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sm_info.i.i.i, align 8
  %tobool19.not.i.i = icmp eq ptr %133, null
  br i1 %tobool19.not.i.i, label %land.lhs.true.i.i.if.end2.i_crit_edge, label %land.lhs.true20.i.i

land.lhs.true.i.i.if.end2.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true.i.i
  %dcc_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %133, i32 0, i32 23
  %134 = ptrtoint ptr %dcc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dcc_info.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %135, null
  br i1 %tobool22.not.i.i, label %land.lhs.true20.i.i.if.end29.i.i_crit_edge, label %land.lhs.true23.i.i

land.lhs.true20.i.i.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

land.lhs.true23.i.i:                              ; preds = %land.lhs.true20.i.i
  %queued_discard.i.i = getelementptr inbounds %struct.discard_cmd_control, ptr %135, i32 0, i32 14
  %call.i.i.i.i280 = call zeroext i1 @__kasan_check_read(ptr noundef %queued_discard.i.i, i32 noundef 4) #16
  %136 = ptrtoint ptr %queued_discard.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %queued_discard.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool27.not.i.i = icmp eq i32 %137, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true23.i.i.if.end29.i.i_crit_edge, label %land.lhs.true23.i.i.if.then129_crit_edge

land.lhs.true23.i.i.if.then129_crit_edge:         ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

land.lhs.true23.i.i.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %land.lhs.true23.i.i.if.end29.i.i_crit_edge, %land.lhs.true20.i.i.if.end29.i.i_crit_edge
  %138 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr.i.i = load ptr, ptr %sm_info.i.i.i, align 8
  %tobool31.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool31.not.i.i, label %if.end29.i.i.if.end2.i_crit_edge, label %land.lhs.true32.i.i

if.end29.i.i.if.end2.i_crit_edge:                 ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

land.lhs.true32.i.i:                              ; preds = %if.end29.i.i
  %fcc_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %.pr.i.i, i32 0, i32 22
  %139 = ptrtoint ptr %fcc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fcc_info.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %140, null
  br i1 %tobool34.not.i.i, label %land.lhs.true32.i.i.if.end2.i_crit_edge, label %land.lhs.true35.i.i

land.lhs.true32.i.i.if.end2.i_crit_edge:          ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

land.lhs.true35.i.i:                              ; preds = %land.lhs.true32.i.i
  %queued_flush.i.i = getelementptr inbounds %struct.flush_cmd_control, ptr %140, i32 0, i32 3
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %queued_flush.i.i, i32 noundef 4) #16
  %141 = ptrtoint ptr %queued_flush.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %queued_flush.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool39.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool39.not.i.i, label %land.lhs.true35.i.i.if.end2.i_crit_edge, label %land.lhs.true35.i.i.if.then129_crit_edge

land.lhs.true35.i.i.if.then129_crit_edge:         ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

land.lhs.true35.i.i.if.end2.i_crit_edge:          ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

if.end2.i:                                        ; preds = %land.lhs.true35.i.i.if.end2.i_crit_edge, %land.lhs.true32.i.i.if.end2.i_crit_edge, %if.end29.i.i.if.end2.i_crit_edge, %land.lhs.true.i.i.if.end2.i_crit_edge
  %143 = ptrtoint ptr %gc_mode to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %gc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %144)
  %cmp4.i = icmp eq i32 %144, 5
  br i1 %cmp4.i, label %if.end2.i.if.end132_crit_edge, label %is_idle.exit

if.end2.i.if.end132_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end132

is_idle.exit:                                     ; preds = %if.end2.i
  %145 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = mul i32 %146, 100
  %147 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %148, %mul.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %149 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i281 = sub i32 %add.i.i, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i281)
  %cmp.i.i282 = icmp slt i32 %sub.i.i281, 0
  br i1 %cmp.i.i282, label %is_idle.exit.if.end132_crit_edge, label %is_idle.exit.if.then129_crit_edge

is_idle.exit.if.then129_crit_edge:                ; preds = %is_idle.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then129

is_idle.exit.if.end132_crit_edge:                 ; preds = %is_idle.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end132

if.then129:                                       ; preds = %is_idle.exit.if.then129_crit_edge, %land.lhs.true35.i.i.if.then129_crit_edge, %land.lhs.true23.i.i.if.then129_crit_edge, %lor.lhs.false15.i.i.if.then129_crit_edge, %lor.lhs.false12.i.i.if.then129_crit_edge, %lor.lhs.false9.i.i.if.then129_crit_edge, %lor.lhs.false6.i.i.if.then129_crit_edge, %lor.lhs.false3.i.i.if.then129_crit_edge, %lor.lhs.false.i.i.if.then129_crit_edge, %if.end.i279.if.then129_crit_edge
  %150 = ptrtoint ptr %no_gc_sleep_time.i284 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %no_gc_sleep_time.i284, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_ms.0, i32 %151)
  %cmp.i285 = icmp eq i32 %wait_ms.0, %151
  br i1 %cmp.i285, label %if.then129.increase_sleep_time.exit296_crit_edge, label %if.end.i295

if.then129.increase_sleep_time.exit296_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  br label %increase_sleep_time.exit296

if.end.i295:                                      ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  %152 = ptrtoint ptr %max_sleep_time.i286 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %max_sleep_time.i286, align 4
  %154 = ptrtoint ptr %min_sleep_time to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %min_sleep_time, align 4
  %conv.i288 = zext i32 %wait_ms.0 to i64
  %conv1.i289 = zext i32 %155 to i64
  %add.i290 = add nuw nsw i64 %conv1.i289, %conv.i288
  %conv2.i291 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i290, i64 %conv2.i291)
  %cmp3.i292 = icmp ugt i64 %add.i290, %conv2.i291
  %add6.i293 = add i32 %155, %wait_ms.0
  %storemerge.i294 = select i1 %cmp3.i292, i32 %153, i32 %add6.i293
  br label %increase_sleep_time.exit296

increase_sleep_time.exit296:                      ; preds = %if.end.i295, %if.then129.increase_sleep_time.exit296_crit_edge
  %wait_ms.2 = phi i32 [ %wait_ms.0, %if.then129.increase_sleep_time.exit296_crit_edge ], [ %storemerge.i294, %if.end.i295 ]
  call void @up_write(ptr noundef %gc_lock120) #16
  %156 = ptrtoint ptr %io_skip_bggc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %io_skip_bggc, align 4
  %inc131 = add i32 %157, 1
  store i32 %inc131, ptr %io_skip_bggc, align 4
  br label %next

if.end132:                                        ; preds = %is_idle.exit.if.end132_crit_edge, %if.end2.i.if.end132_crit_edge, %if.end127.if.end132_crit_edge
  %158 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %user_block_count.i, align 8
  %160 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sm_info.i.i.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %written_valid_blocks.i.i = getelementptr inbounds %struct.sit_info, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %written_valid_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %written_valid_blocks.i.i, align 4
  %sub.i = sub i32 %159, %165
  %mul.i.i297 = mul i32 %159, 40
  %div.i.i298 = sdiv i32 %mul.i.i297, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div.i.i298)
  %cmp.i299 = icmp ugt i32 %sub.i, %div.i.i298
  br i1 %cmp.i299, label %land.lhs.true.i, label %if.end132.if.else135_crit_edge

if.end132.if.else135_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else135

land.lhs.true.i:                                  ; preds = %if.end132
  %166 = ptrtoint ptr %raw_super.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %raw_super.i.i.i.i, align 8
  %feature.i.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %167, i32 0, i32 34
  %168 = ptrtoint ptr %feature.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %feature.i.i.i.i, align 1
  %170 = and i32 %169, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i.i.i300 = icmp eq i32 %170, 0
  %free_info.i.i7.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %161, i32 0, i32 1
  %171 = ptrtoint ptr %free_info.i.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %free_info.i.i7.i.i.i, align 4
  br i1 %tobool.not.i.i.i300, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i
  %segmap_lock.i.i.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %172, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %segmap_lock.i.i.i.i) #16
  %173 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %sm_info.i.i.i, align 8
  %main_segments13.i.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %174, i32 0, i32 9
  %175 = ptrtoint ptr %main_segments13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %main_segments13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp14.not.i.i.i.i = icmp eq i32 %176, 0
  br i1 %cmp14.not.i.i.i.i, label %if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_segs_blk_count_zoned.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then.i.i.i
  %free_segmap.i.i.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %172, i32 0, i32 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %j.016.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %free_seg_blks.015.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %free_seg_blks.1.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %177 = ptrtoint ptr %free_segmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %free_segmap.i.i.i.i, align 4
  %div3.i.i.i.i.i = lshr i32 %j.016.i.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %178, i32 %div3.i.i.i.i.i
  %179 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i301 = and i32 %j.016.i.i.i.i, 31
  %181 = shl nuw i32 1, %and.i.i.i.i.i301
  %182 = and i32 %180, %181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i.i.i.i302 = icmp eq i32 %182, 0
  br i1 %tobool.not.i.i.i.i302, label %if.then.i.i.i.i304, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i.i

if.then.i.i.i.i304:                               ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i.i.i = call i32 @f2fs_usable_blks_in_seg(ptr noundef %data, i32 noundef %j.016.i.i.i.i) #16
  %add.i.i.i.i303 = add i32 %call3.i.i.i.i, %free_seg_blks.015.i.i.i.i
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i304, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %free_seg_blks.1.i.i.i.i = phi i32 [ %free_seg_blks.015.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge ], [ %add.i.i.i.i303, %if.then.i.i.i.i304 ]
  %inc.i.i.i.i = add nuw i32 %j.016.i.i.i.i, 1
  %183 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sm_info.i.i.i, align 8
  %main_segments.i.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %184, i32 0, i32 9
  %185 = ptrtoint ptr %main_segments.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %main_segments.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ult i32 %inc.i.i.i.i, %186
  br i1 %cmp.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge

for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_segs_blk_count_zoned.exit.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i.i

free_segs_blk_count_zoned.exit.i.i.i:             ; preds = %for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge, %if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge
  %free_seg_blks.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge ], [ %free_seg_blks.1.i.i.i.i, %for.inc.i.i.i.i.free_segs_blk_count_zoned.exit.i.i.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %segmap_lock.i.i.i.i) #16
  br label %free_user_blocks.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %free_segments.i.i.i.i = getelementptr inbounds %struct.free_segmap_info, ptr %172, i32 0, i32 1
  %187 = ptrtoint ptr %free_segments.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %free_segments.i.i.i.i, align 4
  %189 = ptrtoint ptr %log_blocks_per_seg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %log_blocks_per_seg.i.i.i, align 8
  %shl.i.i.i = shl i32 %188, %190
  br label %free_user_blocks.exit.i

free_user_blocks.exit.i:                          ; preds = %if.end.i.i.i, %free_segs_blk_count_zoned.exit.i.i.i
  %retval.0.i.i.i = phi i32 [ %free_seg_blks.0.lcssa.i.i.i.i, %free_segs_blk_count_zoned.exit.i.i.i ], [ %shl.i.i.i, %if.end.i.i.i ]
  %191 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sm_info.i.i.i, align 8
  %ovp_segments.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %192, i32 0, i32 12
  %193 = ptrtoint ptr %ovp_segments.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ovp_segments.i.i.i, align 4
  %195 = ptrtoint ptr %log_blocks_per_seg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %log_blocks_per_seg.i.i.i, align 8
  %shl.i.i = shl i32 %194, %196
  %197 = call i32 @llvm.usub.sat.i32(i32 %retval.0.i.i.i, i32 %shl.i.i) #16
  %198 = ptrtoint ptr %user_block_count.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %user_block_count.i, align 8
  %200 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %192, align 4
  %written_valid_blocks.i.i.i = getelementptr inbounds %struct.sit_info, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %written_valid_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %written_valid_blocks.i.i.i, align 4
  %sub.i.i305 = sub i32 %199, %203
  %mul.i10.i = mul i32 %sub.i.i305, 40
  %div.i11.i = sdiv i32 %mul.i10.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %div.i11.i)
  %cmp4.i306 = icmp ult i32 %197, %div.i11.i
  br i1 %cmp4.i306, label %if.then134, label %free_user_blocks.exit.i.if.else135_crit_edge

free_user_blocks.exit.i.if.else135_crit_edge:     ; preds = %free_user_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else135

if.then134:                                       ; preds = %free_user_blocks.exit.i
  %204 = ptrtoint ptr %min_sleep_time to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %min_sleep_time, align 4
  %206 = ptrtoint ptr %no_gc_sleep_time.i284 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %no_gc_sleep_time.i284, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_ms.0, i32 %207)
  %cmp.i311 = icmp eq i32 %wait_ms.0, %207
  br i1 %cmp.i311, label %if.then.i313, label %if.then134.decrease_sleep_time.exit_crit_edge

if.then134.decrease_sleep_time.exit_crit_edge:    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #18
  br label %decrease_sleep_time.exit

if.then.i313:                                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #18
  %208 = ptrtoint ptr %max_sleep_time.i286 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %max_sleep_time.i286, align 4
  br label %decrease_sleep_time.exit

decrease_sleep_time.exit:                         ; preds = %if.then.i313, %if.then134.decrease_sleep_time.exit_crit_edge
  %wait_ms.3 = phi i32 [ %209, %if.then.i313 ], [ %wait_ms.0, %if.then134.decrease_sleep_time.exit_crit_edge ]
  %conv.i314 = zext i32 %wait_ms.3 to i64
  %conv1.i315 = zext i32 %205 to i64
  %sub.i316 = sub nsw i64 %conv.i314, %conv1.i315
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i316, i64 %conv1.i315)
  %cmp3.i317 = icmp slt i64 %sub.i316, %conv1.i315
  %sub6.i = sub i32 %wait_ms.3, %205
  %storemerge.i318 = select i1 %cmp3.i317, i32 %205, i32 %sub6.i
  br label %if.then138

if.else135:                                       ; preds = %free_user_blocks.exit.i.if.else135_crit_edge, %if.end132.if.else135_crit_edge
  %210 = ptrtoint ptr %no_gc_sleep_time.i284 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %no_gc_sleep_time.i284, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_ms.0, i32 %211)
  %cmp.i321 = icmp eq i32 %wait_ms.0, %211
  br i1 %cmp.i321, label %if.else135.if.then138_crit_edge, label %if.end.i331

if.else135.if.then138_crit_edge:                  ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then138

if.end.i331:                                      ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #18
  %212 = ptrtoint ptr %max_sleep_time.i286 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %max_sleep_time.i286, align 4
  %214 = ptrtoint ptr %min_sleep_time to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %min_sleep_time, align 4
  %conv.i324 = zext i32 %wait_ms.0 to i64
  %conv1.i325 = zext i32 %215 to i64
  %add.i326 = add nuw nsw i64 %conv1.i325, %conv.i324
  %conv2.i327 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i326, i64 %conv2.i327)
  %cmp3.i328 = icmp ugt i64 %add.i326, %conv2.i327
  %add6.i329 = add i32 %215, %wait_ms.0
  %storemerge.i330 = select i1 %cmp3.i328, i32 %213, i32 %add6.i329
  br label %if.then138

if.then138:                                       ; preds = %if.end.i331, %if.else135.if.then138_crit_edge, %decrease_sleep_time.exit, %if.end114.if.then138_crit_edge
  %wait_ms.5 = phi i32 [ %113, %if.end114.if.then138_crit_edge ], [ %storemerge.i318, %decrease_sleep_time.exit ], [ %wait_ms.0, %if.else135.if.then138_crit_edge ], [ %storemerge.i330, %if.end.i331 ]
  %216 = ptrtoint ptr %stat_info to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %stat_info, align 8
  %bg_gc = getelementptr inbounds %struct.f2fs_stat_info, ptr %217, i32 0, i32 37
  %218 = ptrtoint ptr %bg_gc to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %bg_gc, align 4
  %inc139 = add i32 %219, 1
  store i32 %inc139, ptr %bg_gc, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then118, %if.end114.if.end140_crit_edge
  %wait_ms.6 = phi i32 [ %113, %if.end114.if.end140_crit_edge ], [ %wait_ms.5, %if.then138 ], [ %wait_ms.0, %if.then118 ]
  %220 = ptrtoint ptr %bggc_mode to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %bggc_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %221)
  %cmp142 = icmp eq i32 %221, 2
  %not.foreground.0.off0 = xor i1 %foreground.0.off0, true
  %narrow = select i1 %not.foreground.0.off0, i1 %cmp142, i1 false
  %call150 = call i32 @f2fs_gc(ptr noundef %data, i1 noundef zeroext %narrow, i1 noundef zeroext %not.foreground.0.off0, i1 noundef zeroext false, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end140.if.end153_crit_edge, label %if.then152

if.end140.if.end153_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end153

if.then152:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  %222 = ptrtoint ptr %no_gc_sleep_time.i284 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %no_gc_sleep_time.i284, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end140.if.end153_crit_edge
  %wait_ms.7 = phi i32 [ %wait_ms.6, %if.end140.if.end153_crit_edge ], [ %223, %if.then152 ]
  br i1 %foreground.0.off0, label %if.then155, label %if.end153.if.end157_crit_edge

if.end153.if.end157_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end157

if.then155:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #18
  call void @__wake_up(ptr noundef %fggc_wq3, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end153.if.end157_crit_edge
  %224 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %data, align 8
  %226 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %sm_info.i.i.i, align 8
  %dirty_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %dirty_info.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dirty_info.i.i, align 4
  %arrayidx.i = getelementptr %struct.dirty_seglist_info, ptr %229, i32 0, i32 4, i32 7
  %230 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx.i, align 4
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %227, i32 0, i32 1
  %232 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %free_info.i.i, align 4
  %free_segments.i = getelementptr inbounds %struct.free_segmap_info, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %free_segments.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %free_segments.i, align 4
  call fastcc void @trace_f2fs_background_gc(ptr noundef %225, i32 noundef %wait_ms.7, i32 noundef %231, i32 noundef %235)
  call void @f2fs_balance_fs_bg(ptr noundef %data, i1 noundef zeroext true) #16
  br label %next

next:                                             ; preds = %if.end157, %increase_sleep_time.exit296, %if.then123
  %wait_ms.8 = phi i32 [ %wait_ms.7, %if.end157 ], [ %wait_ms.0, %if.then123 ], [ %wait_ms.2, %increase_sleep_time.exit296 ]
  %236 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %data, align 8
  %add.ptr1.i.i335 = getelementptr %struct.super_block, ptr %237, i32 0, i32 32, i32 2
  %dep_map.i.i.i336 = getelementptr %struct.super_block, ptr %237, i32 0, i32 32, i32 2, i32 0, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i336, i32 noundef %102) #16
  %238 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i.i.i337 = and i32 %238, -16384
  %239 = inttoptr i32 %and.i.i.i.i.i.i337 to ptr
  %preempt_count.i.i.i.i.i338 = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %preempt_count.i.i.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %preempt_count.i.i.i.i.i338, align 4
  %add.i.i.i.i339 = add i32 %241, 1
  store volatile i32 %add.i.i.i.i339, ptr %preempt_count.i.i.i.i.i338, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !123
  %call.i.i.i.i340 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i340)
  %tobool.not.i.i.i.i341 = icmp eq i32 %call.i.i.i.i340, 0
  br i1 %tobool.not.i.i.i.i341, label %land.lhs.true.i.i.i.i344, label %next.rcu_sync_is_idle.exit.i.i.i349_crit_edge

next.rcu_sync_is_idle.exit.i.i.i349_crit_edge:    ; preds = %next
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i349

land.lhs.true.i.i.i.i344:                         ; preds = %next
  %call1.i.i.i.i342 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i342)
  %tobool2.not.i.i.i.i343 = icmp eq i32 %call1.i.i.i.i342, 0
  br i1 %tobool2.not.i.i.i.i343, label %land.lhs.true.i.i.i.i344.rcu_sync_is_idle.exit.i.i.i349_crit_edge, label %land.lhs.true3.i.i.i.i346

land.lhs.true.i.i.i.i344.rcu_sync_is_idle.exit.i.i.i349_crit_edge: ; preds = %land.lhs.true.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i349

land.lhs.true3.i.i.i.i346:                        ; preds = %land.lhs.true.i.i.i.i344
  %.b8.i.i.i.i345 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i345, label %land.lhs.true3.i.i.i.i346.rcu_sync_is_idle.exit.i.i.i349_crit_edge, label %if.then.i.i.i.i347

land.lhs.true3.i.i.i.i346.rcu_sync_is_idle.exit.i.i.i349_crit_edge: ; preds = %land.lhs.true3.i.i.i.i346
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i349

if.then.i.i.i.i347:                               ; preds = %land.lhs.true3.i.i.i.i346
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 35, ptr noundef nonnull @.str.16) #16
  br label %rcu_sync_is_idle.exit.i.i.i349

rcu_sync_is_idle.exit.i.i.i349:                   ; preds = %if.then.i.i.i.i347, %land.lhs.true3.i.i.i.i346.rcu_sync_is_idle.exit.i.i.i349_crit_edge, %land.lhs.true.i.i.i.i344.rcu_sync_is_idle.exit.i.i.i349_crit_edge, %next.rcu_sync_is_idle.exit.i.i.i349_crit_edge
  %242 = ptrtoint ptr %add.ptr1.i.i335 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %add.ptr1.i.i335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool7.not.i.i.i.i348 = icmp eq i32 %243, 0
  br i1 %tobool7.not.i.i.i.i348, label %do.body3.i.i.i356, label %do.end49.i.i.i, !prof !115

do.body3.i.i.i356:                                ; preds = %rcu_sync_is_idle.exit.i.i.i349
  %244 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !118
  %read_count.i.i.i350 = getelementptr %struct.super_block, ptr %237, i32 0, i32 32, i32 2, i32 0, i32 1
  %245 = ptrtoint ptr %read_count.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read_count.i.i.i350, align 4
  %247 = ptrtoint ptr %246 to i32
  %248 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i351 = and i32 %248, -16384
  %249 = inttoptr i32 %and.i.i.i.i351 to ptr
  %cpu.i.i.i352 = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 3
  %250 = ptrtoint ptr %cpu.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %cpu.i.i.i352, align 4
  %arrayidx.i.i.i353 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %251
  %252 = ptrtoint ptr %arrayidx.i.i.i353 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i.i.i353, align 4
  %add.i.i.i354 = add i32 %253, %247
  %254 = inttoptr i32 %add.i.i.i354 to ptr
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 4
  %add17.i.i.i = add i32 %256, -1
  store i32 %add17.i.i.i, ptr %254, align 4
  %257 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !119
  %and.i.i.i.i.i355 = and i32 %257, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i355)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i355, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i356.do.end39.i.i.i_crit_edge, !prof !116

do.body3.i.i.i356.do.end39.i.i.i_crit_edge:       ; preds = %do.body3.i.i.i356
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i356
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i356.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %244) #16, !srcloc !120
  br label %sb_end_write.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !124
  %258 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !118
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %237, i32 0, i32 32, i32 2, i32 0, i32 1
  %259 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %read_count75.i.i.i, align 4
  %261 = ptrtoint ptr %260 to i32
  %262 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i122.i.i.i = and i32 %262, -16384
  %263 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %263, i32 0, i32 3
  %264 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %265
  %266 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %267, %261
  %268 = inttoptr i32 %add80.i.i.i to ptr
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %268, align 4
  %add81.i.i.i = add i32 %270, -1
  store i32 %add81.i.i.i, ptr %268, align 4
  %271 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !119
  %and.i.i123.i.i.i = and i32 %271, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !116

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %258) #16, !srcloc !120
  %writer.i.i.i = getelementptr %struct.super_block, ptr %237, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #16
  br label %sb_end_write.exit

sb_end_write.exit:                                ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !125
  %272 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i120.i.i.i = and i32 %272, -16384
  %273 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i357 = add i32 %275, -1
  store volatile i32 %sub.i.i.i.i357, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %do.cond166

do.cond166:                                       ; preds = %sb_end_write.exit, %if.then108, %if.then99, %increase_sleep_time.exit, %if.then75
  %wait_ms.9.ph = phi i32 [ %wait_ms.0, %if.then99 ], [ %wait_ms.0, %if.then108 ], [ %wait_ms.8, %sb_end_write.exit ], [ %wait_ms.1, %increase_sleep_time.exit ], [ %wait_ms.0, %if.then75 ]
  %call167 = call zeroext i1 @kthread_should_stop() #16
  br i1 %call167, label %do.cond166.do.end169_crit_edge, label %do.cond166.if.else.i_crit_edge

do.cond166.if.else.i_crit_edge:                   ; preds = %do.cond166
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

do.cond166.do.end169_crit_edge:                   ; preds = %do.cond166
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

do.end169:                                        ; preds = %do.cond166.do.end169_crit_edge, %if.end76.do.end169_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_stop_gc_thread(ptr nocapture noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_thread = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 75
  %0 = ptrtoint ptr %gc_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc_thread, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %3) #16
  %fggc_wq = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %fggc_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  tail call void @kfree(ptr noundef nonnull %1) #16
  %4 = ptrtoint ptr %gc_thread to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gc_thread, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @f2fs_start_bidx_of_node(i32 noundef %node_ofs, ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %node_ofs)
  %cmp = icmp eq i32 %node_ofs, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %node_ofs)
  %cmp1 = icmp ult i32 %node_ofs, 3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add nsw i32 %node_ofs, -1
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2041, i32 %node_ofs)
  %cmp3 = icmp ult i32 %node_ofs, 2041
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub5 = add nsw i32 %node_ofs, -4
  %div = udiv i32 %sub5, 1019
  %sub6 = add nsw i32 %node_ofs, -2
  %sub7 = sub nsw i32 %sub6, %div
  br label %if.end16

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub11 = add i32 %node_ofs, -2043
  %div12 = udiv i32 %sub11, 1019
  %sub13 = add i32 %node_ofs, -5
  %sub14 = sub i32 %sub13, %div12
  br label %if.end16

if.end16:                                         ; preds = %if.else8, %if.then4, %if.then2
  %bidx.0 = phi i32 [ %sub, %if.then2 ], [ %sub7, %if.then4 ], [ %sub14, %if.else8 ]
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.i.i = icmp eq i16 %2, -32768
  br i1 %cmp.i.i, label %f2fs_compressed_file.exit.i, label %addrs_per_block.exit

f2fs_compressed_file.exit.i:                      ; preds = %if.end16
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i, label %f2fs_compressed_file.exit.i.f2fs_compressed_file.exit.i31_crit_edge, label %if.end.i

f2fs_compressed_file.exit.i.f2fs_compressed_file.exit.i31_crit_edge: ; preds = %f2fs_compressed_file.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compressed_file.exit.i31

if.end.i:                                         ; preds = %f2fs_compressed_file.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %5 = ptrtoint ptr %i_cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_cluster_size.i, align 4
  %neg.i = sub i32 0, %6
  %and.i = and i32 %neg.i, 1018
  br label %f2fs_compressed_file.exit.i31

addrs_per_block.exit:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %7 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %8, 2
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %9 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %11 = add i32 %div1.i.i, %10
  %sub2.i = sub i32 923, %11
  br label %addrs_per_inode.exit

f2fs_compressed_file.exit.i31:                    ; preds = %if.end.i, %f2fs_compressed_file.exit.i.f2fs_compressed_file.exit.i31_crit_edge
  %retval.0.i.ph = phi i32 [ 1018, %f2fs_compressed_file.exit.i.f2fs_compressed_file.exit.i31_crit_edge ], [ %and.i, %if.end.i ]
  %i_extra_isize.i.i39 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %12 = ptrtoint ptr %i_extra_isize.i.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_extra_isize.i.i39, align 4
  %div1.i.i40 = lshr i32 %13, 2
  %i_inline_xattr_size.i.i41 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %14 = ptrtoint ptr %i_inline_xattr_size.i.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_inline_xattr_size.i.i41, align 4
  %16 = add i32 %div1.i.i40, %15
  %sub2.i42 = sub i32 923, %16
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.i30 = icmp sgt i32 %18, -1
  br i1 %tobool.not.i30, label %f2fs_compressed_file.exit.i31.addrs_per_inode.exit_crit_edge, label %if.end.i35

f2fs_compressed_file.exit.i31.addrs_per_inode.exit_crit_edge: ; preds = %f2fs_compressed_file.exit.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %addrs_per_inode.exit

if.end.i35:                                       ; preds = %f2fs_compressed_file.exit.i31
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size.i32 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 39
  %19 = ptrtoint ptr %i_cluster_size.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_cluster_size.i32, align 4
  %neg.i33 = sub i32 0, %20
  %and.i34 = and i32 %sub2.i42, %neg.i33
  br label %addrs_per_inode.exit

addrs_per_inode.exit:                             ; preds = %if.end.i35, %f2fs_compressed_file.exit.i31.addrs_per_inode.exit_crit_edge, %addrs_per_block.exit
  %retval.0.i.ph.pn = phi i32 [ %retval.0.i.ph, %if.end.i35 ], [ %retval.0.i.ph, %f2fs_compressed_file.exit.i31.addrs_per_inode.exit_crit_edge ], [ 1018, %addrs_per_block.exit ]
  %retval.0.i36 = phi i32 [ %and.i34, %if.end.i35 ], [ %sub2.i42, %f2fs_compressed_file.exit.i31.addrs_per_inode.exit_crit_edge ], [ %sub2.i, %addrs_per_block.exit ]
  %mul43 = mul i32 %retval.0.i.ph.pn, %bidx.0
  %add = add i32 %mul43, %retval.0.i36
  br label %cleanup

cleanup:                                          ; preds = %addrs_per_inode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %addrs_per_inode.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_gc(ptr noundef %sbi, i1 noundef zeroext %sync, i1 noundef zeroext %background, i1 noundef zeroext %force, i32 noundef %segno) local_unnamed_addr #0 align 64 {
entry:
  %segno.addr = alloca i32, align 4
  %cpc = alloca %struct.cp_control, align 8
  %gc_list = alloca %struct.gc_inode_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %segno.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %segno, ptr %segno.addr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc) #16
  %1 = call ptr @memset(ptr %cpc, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %gc_list) #16
  %2 = ptrtoint ptr %gc_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gc_list, ptr %gc_list, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %gc_list, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %gc_list, ptr %prev, align 4
  %iroot = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1
  %4 = ptrtoint ptr %iroot to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %iroot, align 4
  %magic = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -559067475, ptr %magic, align 4
  %owner_cpu = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %owner_cpu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %owner_cpu, align 4
  %owner = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %owner, align 4
  %dep_map = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %8 = call ptr @memset(ptr %dep_map, i32 0, i32 28)
  %name = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.4, ptr %name, align 4
  %wait_type_inner = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %wait_type_inner, align 1
  %xa_flags = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %xa_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3136, ptr %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %xa_head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %xa_head, align 4
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 84, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbi, align 8
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = sext i32 %18 to i64
  %arrayidx.i189 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %call.i.i.i190 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i189, i32 noundef 4) #16
  %19 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i189, align 4
  %conv.i191 = sext i32 %20 to i64
  %arrayidx.i192 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i193 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i192, i32 noundef 4) #16
  %21 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i192, align 4
  %conv.i194 = sext i32 %22 to i64
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %23 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free_info.i.i, align 4
  %free_sections.i = getelementptr inbounds %struct.free_segmap_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %free_sections.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_sections.i, align 4
  %free_segments.i = getelementptr inbounds %struct.free_segmap_info, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %free_segments.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %free_segments.i, align 4
  %reserved_segments.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %24, i32 0, i32 10
  %31 = ptrtoint ptr %reserved_segments.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reserved_segments.i, align 4
  %additional_reserved_segments.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %24, i32 0, i32 11
  %33 = ptrtoint ptr %additional_reserved_segments.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %additional_reserved_segments.i, align 4
  %add.i = add i32 %34, %32
  %dirty_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %24, i32 0, i32 2
  %35 = ptrtoint ptr %dirty_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dirty_info.i.i, align 4
  %arrayidx.i198 = getelementptr %struct.dirty_seglist_info, ptr %36, i32 0, i32 4, i32 7
  %37 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i198, align 4
  call fastcc void @trace_f2fs_gc_begin(ptr noundef %16, i1 noundef zeroext %sync, i1 noundef zeroext %background, i64 noundef %conv.i, i64 noundef %conv.i191, i64 noundef %conv.i194, i32 noundef %28, i32 noundef %30, i32 noundef %add.i, i32 noundef %38)
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %39 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 4, i32 2
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %41 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %s_flag.i.i, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 %spec.store.select.i, i32 1
  %44 = ptrtoint ptr %cpc to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select.i, ptr %cpc, align 8
  %skipped_gc_rwsem = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 85
  %45 = ptrtoint ptr %skipped_gc_rwsem to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %skipped_gc_rwsem, align 8
  %46 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sbi, align 8
  %s_flags262 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %s_flags262 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags262, align 4
  %and263 = and i32 %49, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool15.not264 = icmp eq i32 %and263, 0
  br i1 %tobool15.not264, label %entry.stop_crit_edge, label %if.end.lr.ph, !prof !116

entry.stop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end.lr.ph:                                     ; preds = %entry
  %cond = zext i1 %sync to i32
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %cur_victim_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 77
  br label %if.end

if.end:                                           ; preds = %gc_more.backedge.if.end_crit_edge, %if.end.lr.ph
  %round.0271 = phi i32 [ 0, %if.end.lr.ph ], [ %round.1259, %gc_more.backedge.if.end_crit_edge ]
  %skipped_round.0269 = phi i32 [ 0, %if.end.lr.ph ], [ %skipped_round.2257, %gc_more.backedge.if.end_crit_edge ]
  %last_skipped.0268 = phi i64 [ %14, %if.end.lr.ph ], [ %last_skipped.1255, %gc_more.backedge.if.end_crit_edge ]
  %total_freed.0267 = phi i32 [ 0, %if.end.lr.ph ], [ %add243251, %gc_more.backedge.if.end_crit_edge ]
  %sec_freed.0266 = phi i32 [ 0, %if.end.lr.ph ], [ %sec_freed.1240253, %gc_more.backedge.if.end_crit_edge ]
  %gc_type.0265 = phi i32 [ %cond, %if.end.lr.ph ], [ %gc_type.1237, %gc_more.backedge.if.end_crit_edge ]
  %50 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %54 = and i32 %53, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.i.i.not = icmp eq i32 %54, 0
  br i1 %tobool.i.i.i.not, label %if.end27, label %if.end.stop_crit_edge, !prof !115

if.end.stop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gc_type.0265)
  %cmp = icmp eq i32 %gc_type.0265, 0
  br i1 %cmp, label %land.lhs.true, label %if.end27.if.end48_crit_edge

if.end27.if.end48_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end27
  %call28 = call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi, i32 noundef 0)
  br i1 %call28, label %if.then29, label %if.end43

if.then29:                                        ; preds = %land.lhs.true
  %55 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sm_info.i.i.i, align 8
  %dirty_info.i.i200 = getelementptr inbounds %struct.f2fs_sm_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dirty_info.i.i200 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dirty_info.i.i200, align 4
  %arrayidx.i201 = getelementptr %struct.dirty_seglist_info, ptr %58, i32 0, i32 4, i32 7
  %59 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool31.not = icmp eq i32 %60, 0
  br i1 %tobool31.not, label %if.then29.if.end39_crit_edge, label %land.lhs.true32

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

land.lhs.true32:                                  ; preds = %if.then29
  %61 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %s_flag.i.i, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i.not = icmp eq i32 %63, 0
  br i1 %tobool.i.not, label %if.then34, label %land.lhs.true32.if.end39_crit_edge

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then34:                                        ; preds = %land.lhs.true32
  %call35 = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then34.stop_crit_edge

if.then34.stop_crit_edge:                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %land.lhs.true32.if.end39_crit_edge, %if.then29.if.end39_crit_edge
  %call40 = call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi, i32 noundef 0)
  %brmerge = or i1 %call40, %background
  %.mux = zext i1 %call40 to i32
  br i1 %brmerge, label %if.end39.if.end48_crit_edge, label %if.end39.stop_crit_edge

if.end39.stop_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.end43:                                         ; preds = %land.lhs.true
  br i1 %background, label %if.end43.if.end48_crit_edge, label %if.end43.stop_crit_edge

if.end43.stop_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.end48:                                         ; preds = %if.end43.if.end48_crit_edge, %if.end39.if.end48_crit_edge, %if.end27.if.end48_crit_edge
  %gc_type.1237 = phi i32 [ 0, %if.end43.if.end48_crit_edge ], [ 1, %if.end27.if.end48_crit_edge ], [ %.mux, %if.end39.if.end48_crit_edge ]
  %cmp55236 = phi i1 [ false, %if.end43.if.end48_crit_edge ], [ true, %if.end27.if.end48_crit_edge ], [ %call40, %if.end39.if.end48_crit_edge ]
  %64 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sm_info.i.i.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %sentry_lock.i = getelementptr inbounds %struct.sit_info, ptr %67, i32 0, i32 13
  call void @down_write(ptr noundef %sentry_lock.i) #16
  %68 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sm_info.i.i.i, align 8
  %dirty_info.i.i203 = getelementptr inbounds %struct.f2fs_sm_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dirty_info.i.i203 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dirty_info.i.i203, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call2.i = call i32 %75(ptr noundef %sbi, ptr noundef nonnull %segno.addr, i32 noundef %gc_type.1237, i32 noundef 8, i8 noundef zeroext 0, i64 noundef 0) #16
  call void @up_write(ptr noundef %sentry_lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool50.not = icmp eq i32 %call2.i, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.stop_crit_edge

if.end48.stop_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end52:                                         ; preds = %if.end48
  %76 = ptrtoint ptr %segno.addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %segno.addr, align 4
  %call54 = call fastcc i32 @do_garbage_collect(ptr noundef %sbi, i32 noundef %77, ptr noundef nonnull %gc_list, i32 noundef %gc_type.1237, i1 noundef zeroext %force)
  br i1 %cmp55236, label %if.then62, label %if.end52.if.end77_crit_edge

if.end52.if.end77_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then62:                                        ; preds = %if.end52
  %78 = ptrtoint ptr %segno.addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %segno.addr, align 4
  %call57 = call i32 @f2fs_usable_segs_in_sec(ptr noundef %sbi, i32 noundef %79) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call54, i32 %call57)
  %cmp58 = icmp eq i32 %call54, %call57
  %inc = zext i1 %cmp58 to i32
  %spec.select = add i32 %sec_freed.0266, %inc
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %last_skipped.0268)
  %cmp65 = icmp ugt i64 %81, %last_skipped.0268
  br i1 %cmp65, label %if.then62.if.then68_crit_edge, label %lor.lhs.false

if.then62.if.then68_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then68

lor.lhs.false:                                    ; preds = %if.then62
  %82 = ptrtoint ptr %skipped_gc_rwsem to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %skipped_gc_rwsem, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %tobool67.not = icmp eq i64 %83, 0
  br i1 %tobool67.not, label %lor.lhs.false.if.then76_crit_edge, label %lor.lhs.false.if.then68_crit_edge

lor.lhs.false.if.then68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then68

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then76

if.then68:                                        ; preds = %lor.lhs.false.if.then68_crit_edge, %if.then62.if.then68_crit_edge
  %inc69 = add i32 %skipped_round.0269, 1
  br label %if.then76

if.then76:                                        ; preds = %if.then68, %lor.lhs.false.if.then76_crit_edge
  %skipped_round.1 = phi i32 [ %inc69, %if.then68 ], [ %skipped_round.0269, %lor.lhs.false.if.then76_crit_edge ]
  %inc73 = add i32 %round.0271, 1
  %84 = ptrtoint ptr %cur_victim_sec to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %cur_victim_sec, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end52.if.end77_crit_edge
  %round.1259 = phi i32 [ %inc73, %if.then76 ], [ %round.0271, %if.end52.if.end77_crit_edge ]
  %skipped_round.2257 = phi i32 [ %skipped_round.1, %if.then76 ], [ %skipped_round.0269, %if.end52.if.end77_crit_edge ]
  %last_skipped.1255 = phi i64 [ %81, %if.then76 ], [ %last_skipped.0268, %if.end52.if.end77_crit_edge ]
  %sec_freed.1240253 = phi i32 [ %spec.select, %if.then76 ], [ %sec_freed.0266, %if.end52.if.end77_crit_edge ]
  %add243251 = add i32 %call54, %total_freed.0267
  br i1 %sync, label %if.end77.stop_crit_edge, label %if.end80

if.end77.stop_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end80:                                         ; preds = %if.end77
  %call81 = call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi, i32 noundef %sec_freed.1240253)
  br i1 %call81, label %if.then82, label %if.end80.stop_crit_edge

if.end80.stop_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %skipped_round.2257)
  %cmp83 = icmp ult i32 %skipped_round.2257, 17
  %mul = shl i32 %skipped_round.2257, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %round.1259)
  %cmp85 = icmp ult i32 %mul, %round.1259
  %or.cond = select i1 %cmp83, i1 true, i1 %cmp85
  br i1 %or.cond, label %if.then82.gc_more.backedge_crit_edge, label %if.end87

if.then82.gc_more.backedge_crit_edge:             ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #18
  br label %gc_more.backedge

gc_more.backedge:                                 ; preds = %if.then92, %if.then82.gc_more.backedge_crit_edge
  %85 = ptrtoint ptr %segno.addr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %segno.addr, align 4
  %86 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sbi, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_flags, align 4
  %and = and i32 %89, 1073741824
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %gc_more.backedge.stop_crit_edge, label %gc_more.backedge.if.end_crit_edge, !prof !116

gc_more.backedge.if.end_crit_edge:                ; preds = %gc_more.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

gc_more.backedge.stop_crit_edge:                  ; preds = %gc_more.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.end87:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_cmp8(i64 %last_skipped.1255, i64 %14)
  %cmp88 = icmp ugt i64 %last_skipped.1255, %14
  br i1 %cmp88, label %land.lhs.true89, label %if.end87.if.end93_crit_edge

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

land.lhs.true89:                                  ; preds = %if.end87
  %sub = sub i64 %last_skipped.1255, %14
  %90 = ptrtoint ptr %skipped_gc_rwsem to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %skipped_gc_rwsem, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %91)
  %cmp91 = icmp ugt i64 %sub, %91
  br i1 %cmp91, label %if.then92, label %land.lhs.true89.if.end93_crit_edge

land.lhs.true89.if.end93_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then92:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #18
  call void @f2fs_drop_inmem_pages_all(ptr noundef %sbi, i1 noundef zeroext true) #16
  br label %gc_more.backedge

if.end93:                                         ; preds = %land.lhs.true89.if.end93_crit_edge, %if.end87.if.end93_crit_edge
  br i1 %cmp55236, label %land.lhs.true95, label %if.end93.stop_crit_edge

if.end93.stop_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

land.lhs.true95:                                  ; preds = %if.end93
  %92 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %s_flag.i.i, align 4
  %94 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i205.not = icmp eq i32 %94, 0
  br i1 %tobool.i205.not, label %if.then97, label %land.lhs.true95.stop_crit_edge

land.lhs.true95.stop_crit_edge:                   ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #18
  %call98 = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc) #16
  br label %stop

stop:                                             ; preds = %if.then97, %land.lhs.true95.stop_crit_edge, %if.end93.stop_crit_edge, %gc_more.backedge.stop_crit_edge, %if.end80.stop_crit_edge, %if.end77.stop_crit_edge, %if.end48.stop_crit_edge, %if.end43.stop_crit_edge, %if.end39.stop_crit_edge, %if.then34.stop_crit_edge, %if.end.stop_crit_edge, %entry.stop_crit_edge
  %sec_freed.2 = phi i32 [ %sec_freed.1240253, %land.lhs.true95.stop_crit_edge ], [ %sec_freed.1240253, %if.then97 ], [ %sec_freed.1240253, %if.end93.stop_crit_edge ], [ 0, %entry.stop_crit_edge ], [ %sec_freed.0266, %if.then34.stop_crit_edge ], [ %sec_freed.0266, %if.end48.stop_crit_edge ], [ %sec_freed.1240253, %if.end77.stop_crit_edge ], [ %sec_freed.1240253, %if.end80.stop_crit_edge ], [ %sec_freed.1240253, %gc_more.backedge.stop_crit_edge ], [ %sec_freed.0266, %if.end.stop_crit_edge ], [ %sec_freed.0266, %if.end43.stop_crit_edge ], [ %sec_freed.0266, %if.end39.stop_crit_edge ]
  %total_freed.1 = phi i32 [ %add243251, %land.lhs.true95.stop_crit_edge ], [ %add243251, %if.then97 ], [ %add243251, %if.end93.stop_crit_edge ], [ 0, %entry.stop_crit_edge ], [ %total_freed.0267, %if.then34.stop_crit_edge ], [ %total_freed.0267, %if.end48.stop_crit_edge ], [ %add243251, %if.end77.stop_crit_edge ], [ %add243251, %if.end80.stop_crit_edge ], [ %add243251, %gc_more.backedge.stop_crit_edge ], [ %total_freed.0267, %if.end.stop_crit_edge ], [ %total_freed.0267, %if.end43.stop_crit_edge ], [ %total_freed.0267, %if.end39.stop_crit_edge ]
  %ret.0 = phi i32 [ 0, %land.lhs.true95.stop_crit_edge ], [ %call98, %if.then97 ], [ 0, %if.end93.stop_crit_edge ], [ -22, %entry.stop_crit_edge ], [ %call35, %if.then34.stop_crit_edge ], [ %call2.i, %if.end48.stop_crit_edge ], [ 0, %if.end77.stop_crit_edge ], [ 0, %if.end80.stop_crit_edge ], [ -22, %gc_more.backedge.stop_crit_edge ], [ -5, %if.end.stop_crit_edge ], [ -22, %if.end43.stop_crit_edge ], [ -22, %if.end39.stop_crit_edge ]
  %95 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sm_info.i.i.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %arrayidx102 = getelementptr %struct.sit_info, ptr %98, i32 0, i32 22, i32 3
  %99 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx102, align 4
  %100 = load ptr, ptr %sm_info.i.i.i, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %arrayidx105 = getelementptr %struct.sit_info, ptr %102, i32 0, i32 22, i32 4
  %103 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %segno, ptr %arrayidx105, align 8
  %104 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sbi, align 8
  %call.i.i.i209 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i210 = sext i32 %107 to i64
  %call.i.i.i212 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i189, i32 noundef 4) #16
  %108 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %arrayidx.i189, align 4
  %conv.i213 = sext i32 %109 to i64
  %call.i.i.i215 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i192, i32 noundef 4) #16
  %110 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %arrayidx.i192, align 4
  %conv.i216 = sext i32 %111 to i64
  %112 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i218 = getelementptr inbounds %struct.f2fs_sm_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %free_info.i.i218 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %free_info.i.i218, align 4
  %free_sections.i219 = getelementptr inbounds %struct.free_segmap_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %free_sections.i219 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %free_sections.i219, align 4
  %free_segments.i222 = getelementptr inbounds %struct.free_segmap_info, ptr %115, i32 0, i32 1
  %118 = ptrtoint ptr %free_segments.i222 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %free_segments.i222, align 4
  %reserved_segments.i224 = getelementptr inbounds %struct.f2fs_sm_info, ptr %113, i32 0, i32 10
  %120 = ptrtoint ptr %reserved_segments.i224 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %reserved_segments.i224, align 4
  %additional_reserved_segments.i225 = getelementptr inbounds %struct.f2fs_sm_info, ptr %113, i32 0, i32 11
  %122 = ptrtoint ptr %additional_reserved_segments.i225 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %additional_reserved_segments.i225, align 4
  %add.i226 = add i32 %123, %121
  %dirty_info.i.i228 = getelementptr inbounds %struct.f2fs_sm_info, ptr %113, i32 0, i32 2
  %124 = ptrtoint ptr %dirty_info.i.i228 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dirty_info.i.i228, align 4
  %arrayidx.i229 = getelementptr %struct.dirty_seglist_info, ptr %125, i32 0, i32 4, i32 7
  %126 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i229, align 4
  call fastcc void @trace_f2fs_gc_end(ptr noundef %105, i32 noundef %ret.0, i32 noundef %total_freed.1, i32 noundef %sec_freed.2, i64 noundef %conv.i210, i64 noundef %conv.i213, i64 noundef %conv.i216, i32 noundef %117, i32 noundef %119, i32 noundef %add.i226, i32 noundef %127)
  %gc_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 74
  call void @up_write(ptr noundef %gc_lock) #16
  %128 = ptrtoint ptr %gc_list to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %gc_list, align 4
  %cmp.not22.i = icmp eq ptr %129, %gc_list
  br i1 %cmp.not22.i, label %stop.put_gc_inode.exit_crit_edge, label %stop.for.body.i_crit_edge

stop.for.body.i_crit_edge:                        ; preds = %stop
  br label %for.body.i

stop.put_gc_inode.exit_crit_edge:                 ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_gc_inode.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %stop.for.body.i_crit_edge
  %ie.023.i = phi ptr [ %next_ie.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %129, %stop.for.body.i_crit_edge ]
  %130 = ptrtoint ptr %ie.023.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %next_ie.0.i = load ptr, ptr %ie.023.i, align 4
  %inode.i = getelementptr inbounds %struct.inode_entry, ptr %ie.023.i, i32 0, i32 1
  %131 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %inode.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %132, i32 0, i32 11
  %133 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %i_ino.i, align 8
  %call.i = call ptr @radix_tree_delete(ptr noundef %iroot, i32 noundef %134) #16
  %135 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %inode.i, align 4
  call void @iput(ptr noundef %136) #16
  %call.i.i.i230 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ie.023.i) #16
  br i1 %call.i.i.i230, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ie.023.i, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i.i, align 4
  %139 = ptrtoint ptr %ie.023.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ie.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %143 = ptrtoint ptr %ie.023.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %ie.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ie.023.i, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_inode_entry_slab to i32))
  %145 = load ptr, ptr @f2fs_inode_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %145, ptr noundef %ie.023.i) #16
  %cmp.not.i = icmp eq ptr %next_ie.0.i, %gc_list
  br i1 %cmp.not.i, label %list_del.exit.i.put_gc_inode.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.put_gc_inode.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_gc_inode.exit

put_gc_inode.exit:                                ; preds = %list_del.exit.i.put_gc_inode.exit_crit_edge, %stop.put_gc_inode.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool116.not = icmp eq i32 %ret.0, 0
  %or.cond188 = select i1 %sync, i1 %tobool116.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sec_freed.2)
  %tobool118.not = icmp eq i32 %sec_freed.2, 0
  %cond119 = select i1 %tobool118.not, i32 -11, i32 0
  %ret.1 = select i1 %or.cond188, i32 %cond119, i32 %ret.0
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %gc_list) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc) #16
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_gc_begin(ptr noundef %sb, i1 noundef zeroext %sync, i1 noundef zeroext %background, i64 noundef %dirty_nodes, i64 noundef %dirty_dents, i64 noundef %dirty_imeta, i32 noundef %free_sec, i32 noundef %free_seg, i32 noundef %reserved_seg, i32 noundef %prefree_seg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_gc_begin, i32 0, i32 1), ptr blockaddress(@trace_f2fs_gc_begin, %do.body)) #16
          to label %if.end51 [label %do.body], !srcloc !126

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %cleanup.thread

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !127
  %call45 = tail call i32 @__traceiter_f2fs_gc_begin(ptr noundef null, ptr noundef %sb, i1 noundef zeroext %sync, i1 noundef zeroext %background, i64 noundef %dirty_nodes, i64 noundef %dirty_dents, i64 noundef %dirty_imeta, i32 noundef %free_sec, i32 noundef %free_seg, i32 noundef %reserved_seg, i32 noundef %prefree_seg) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i76 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i76 to ptr
  %preempt_count.i.i77 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i77, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77, align 4
  br label %if.end51

if.end51:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i79 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !115

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div3.i.i.i84 = lshr i32 %20, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i84
  %22 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i86
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i87.not = icmp eq i32 %25, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_gc_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_gc_begin, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_f2fs_gc_begin.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_gc_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 703, ptr noundef nonnull @.str.18) #16
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i89 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi, i32 noundef %freed) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %segs_per_sec.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec.i, align 8
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %2 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i = mul i32 %3, %1
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #16
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = sext i32 %5 to i64
  %conv.i = zext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add nsw i64 %add.i, %conv.i.i
  %log_blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %6 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i = zext i32 %7 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %segs_per_sec.i, align 8
  %div.i = udiv i32 %conv1.i, %9
  %10 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i3 = mul i32 %11, %9
  %arrayidx.i.i4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #16
  %12 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %conv.i.i6 = sext i32 %13 to i64
  %conv.i7 = zext i32 %mul.i3 to i64
  %add.i8 = add nsw i64 %conv.i7, -1
  %sub.i9 = add nsw i64 %add.i8, %conv.i.i6
  %14 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i11 = zext i32 %15 to i64
  %shr.i12 = ashr i64 %sub.i9, %sh_prom.i11
  %conv1.i13 = trunc i64 %shr.i12 to i32
  %16 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %segs_per_sec.i, align 8
  %div.i14 = udiv i32 %conv1.i13, %17
  %18 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i17 = mul i32 %19, %17
  %arrayidx.i.i18 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i18, i32 noundef 4) #16
  %20 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i18, align 4
  %conv.i.i20 = sext i32 %21 to i64
  %conv.i21 = zext i32 %mul.i17 to i64
  %add.i22 = add nsw i64 %conv.i21, -1
  %sub.i23 = add nsw i64 %add.i22, %conv.i.i20
  %22 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i25 = zext i32 %23 to i64
  %shr.i26 = ashr i64 %sub.i23, %sh_prom.i25
  %conv1.i27 = trunc i64 %shr.i26 to i32
  %24 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %segs_per_sec.i, align 8
  %div.i28 = udiv i32 %conv1.i27, %25
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %26 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flag.i, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !115

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %29 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_info.i.i, align 4
  %free_sections.i = getelementptr inbounds %struct.free_segmap_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %free_sections.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_sections.i, align 4
  %add = add i32 %34, %freed
  %reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 10
  %35 = ptrtoint ptr %reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reserved_segments.i.i, align 4
  %additional_reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 11
  %37 = ptrtoint ptr %additional_reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %additional_reserved_segments.i.i, align 4
  %add.i.i = add i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp.i = icmp eq i32 %add.i.i, -1
  br i1 %cmp.i, label %if.end.reserved_sections.exit_crit_edge, label %cond.false.i

if.end.reserved_sections.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %reserved_sections.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %div.i31 = udiv i32 %add.i.i, %25
  br label %reserved_sections.exit

reserved_sections.exit:                           ; preds = %cond.false.i, %if.end.reserved_sections.exit_crit_edge
  %cond.i = phi i32 [ %div.i31, %cond.false.i ], [ -1, %if.end.reserved_sections.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond.i)
  %cmp = icmp eq i32 %add, %cond.i
  br i1 %cmp, label %land.lhs.true, label %reserved_sections.exit.if.end10_crit_edge

reserved_sections.exit.if.end10_crit_edge:        ; preds = %reserved_sections.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %reserved_sections.exit
  %call.i.i.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #16
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i42.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #16
  %41 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %add.i34 = add i32 %42, %40
  %call.i.i.i45.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #16
  %43 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %45 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sm_info.i.i.i, align 8
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curseg_array.i.i, align 4
  %segno6.i = getelementptr %struct.curseg_info, ptr %48, i32 3, i32 6
  %49 = ptrtoint ptr %segno6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %segno6.i, align 4
  %call7.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %50) #16
  %51 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sm_info.i.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i47.i = getelementptr %struct.seg_entry, ptr %56, i32 %50
  %57 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i = load i32, ptr %arrayidx.i47.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 6
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  %sub.i36 = sub i32 %call7.i, %bf.clear.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i36, i32 %add.i34)
  %cmp9.i = icmp ult i32 %sub.i36, %add.i34
  br i1 %cmp9.i, label %land.lhs.true.if.end10_crit_edge, label %for.cond.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

for.cond.i:                                       ; preds = %land.lhs.true
  %curseg_array.i.1.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %52, i32 0, i32 3
  %58 = ptrtoint ptr %curseg_array.i.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curseg_array.i.1.i, align 4
  %segno6.1.i = getelementptr %struct.curseg_info, ptr %59, i32 4, i32 6
  %60 = ptrtoint ptr %segno6.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %segno6.1.i, align 4
  %call7.1.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %61) #16
  %62 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sm_info.i.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %sentries.i.1.i = getelementptr inbounds %struct.sit_info, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %sentries.i.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sentries.i.1.i, align 4
  %arrayidx.i47.1.i = getelementptr %struct.seg_entry, ptr %67, i32 %61
  %68 = ptrtoint ptr %arrayidx.i47.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.1.i = load i32, ptr %arrayidx.i47.1.i, align 8
  %bf.lshr.1.i = lshr i32 %bf.load.1.i, 6
  %bf.clear.1.i = and i32 %bf.lshr.1.i, 1023
  %sub.1.i = sub i32 %call7.1.i, %bf.clear.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %add.i34)
  %cmp9.1.i = icmp ult i32 %sub.1.i, %add.i34
  br i1 %cmp9.1.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.1.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

for.cond.1.i:                                     ; preds = %for.cond.i
  %curseg_array.i.2.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %63, i32 0, i32 3
  %69 = ptrtoint ptr %curseg_array.i.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %curseg_array.i.2.i, align 4
  %segno6.2.i = getelementptr %struct.curseg_info, ptr %70, i32 5, i32 6
  %71 = ptrtoint ptr %segno6.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %segno6.2.i, align 4
  %call7.2.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %72) #16
  %73 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sm_info.i.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %sentries.i.2.i = getelementptr inbounds %struct.sit_info, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %sentries.i.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sentries.i.2.i, align 4
  %arrayidx.i47.2.i = getelementptr %struct.seg_entry, ptr %78, i32 %72
  %79 = ptrtoint ptr %arrayidx.i47.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load.2.i = load i32, ptr %arrayidx.i47.2.i, align 8
  %bf.lshr.2.i = lshr i32 %bf.load.2.i, 6
  %bf.clear.2.i = and i32 %bf.lshr.2.i, 1023
  %sub.2.i = sub i32 %call7.2.i, %bf.clear.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %add.i34)
  %cmp9.2.i = icmp ult i32 %sub.2.i, %add.i34
  br i1 %cmp9.2.i, label %for.cond.1.i.if.end10_crit_edge, label %has_curseg_enough_space.exit

for.cond.1.i.if.end10_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

has_curseg_enough_space.exit:                     ; preds = %for.cond.1.i
  %curseg_array.i49.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %74, i32 0, i32 3
  %80 = ptrtoint ptr %curseg_array.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %curseg_array.i49.i, align 4
  %segno12.i = getelementptr inbounds %struct.curseg_info, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %segno12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %segno12.i, align 4
  %call13.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %83) #16
  %84 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sm_info.i.i.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %sentries.i51.i = getelementptr inbounds %struct.sit_info, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %sentries.i51.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sentries.i51.i, align 4
  %arrayidx.i52.i = getelementptr %struct.seg_entry, ptr %89, i32 %83
  %90 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load15.i = load i32, ptr %arrayidx.i52.i, align 8
  %bf.lshr16.i = lshr i32 %bf.load15.i, 6
  %bf.clear17.i = and i32 %bf.lshr16.i, 1023
  %sub18.i = sub i32 %call13.i, %bf.clear17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %44)
  %cmp19.i.not = icmp ult i32 %sub18.i, %44
  br i1 %cmp19.i.not, label %has_curseg_enough_space.exit.if.end10_crit_edge, label %has_curseg_enough_space.exit.cleanup_crit_edge

has_curseg_enough_space.exit.cleanup_crit_edge:   ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

has_curseg_enough_space.exit.if.end10_crit_edge:  ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %has_curseg_enough_space.exit.if.end10_crit_edge, %for.cond.1.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %reserved_sections.exit.if.end10_crit_edge
  %91 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i38 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %free_info.i.i38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %free_info.i.i38, align 4
  %free_sections.i39 = getelementptr inbounds %struct.free_segmap_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %free_sections.i39 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %free_sections.i39, align 4
  %add12 = add i32 %96, %freed
  %mul = shl i32 %div.i14, 1
  %add13 = add i32 %mul, %div.i
  %add14 = add i32 %add13, %div.i28
  %reserved_segments.i.i41 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 10
  %97 = ptrtoint ptr %reserved_segments.i.i41 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reserved_segments.i.i41, align 4
  %additional_reserved_segments.i.i42 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 11
  %99 = ptrtoint ptr %additional_reserved_segments.i.i42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %additional_reserved_segments.i.i42, align 4
  %add.i.i43 = add i32 %100, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i43)
  %cmp.i44 = icmp eq i32 %add.i.i43, -1
  br i1 %cmp.i44, label %if.end10.reserved_sections.exit49_crit_edge, label %cond.false.i47

if.end10.reserved_sections.exit49_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %reserved_sections.exit49

cond.false.i47:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %101 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %segs_per_sec.i, align 8
  %div.i46 = udiv i32 %add.i.i43, %102
  br label %reserved_sections.exit49

reserved_sections.exit49:                         ; preds = %cond.false.i47, %if.end10.reserved_sections.exit49_crit_edge
  %cond.i48 = phi i32 [ %div.i46, %cond.false.i47 ], [ -1, %if.end10.reserved_sections.exit49_crit_edge ]
  %add16 = add i32 %add14, %cond.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %add16)
  %cmp18 = icmp ule i32 %add12, %add16
  br label %cleanup

cleanup:                                          ; preds = %reserved_sections.exit49, %has_curseg_enough_space.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp18, %reserved_sections.exit49 ], [ false, %entry.cleanup_crit_edge ], [ false, %has_curseg_enough_space.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_write_checkpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_garbage_collect(ptr noundef %sbi, i32 noundef %start_segno, ptr noundef %gc_list, i32 noundef %gc_type, i1 noundef zeroext %force_migrate) unnamed_addr #0 align 64 {
entry:
  %fio.i375.i = alloca %struct.f2fs_io_info, align 4
  %fio.i.i = alloca %struct.f2fs_io_info, align 4
  %dn.i.i = alloca %struct.dnode_of_data, align 4
  %sum.i.i = alloca %struct.f2fs_summary, align 4
  %ni.i.i = alloca %struct.node_info, align 4
  %newaddr.i.i = alloca i32, align 4
  %dni.i = alloca %struct.node_info, align 4
  %ni.i = alloca %struct.node_info, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #16
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %1 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %segs_per_sec, align 8
  %add = add i32 %2, %start_segno
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %3 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm_info.i.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %sentries.i = getelementptr inbounds %struct.sit_info, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %sentries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sentries.i, align 4
  %arrayidx.i = getelementptr %struct.seg_entry, ptr %8, i32 %start_segno
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326591, i32 %bf.load)
  %cmp = icmp ugt i32 %bf.load, 201326591
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp ugt i32 %2, 1
  br i1 %cmp2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rem = urem i32 %add, %2
  %sub = sub i32 %add, %rem
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %end_segno.0 = phi i32 [ %sub, %if.then ], [ %add, %entry.if.end_crit_edge ]
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %10 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %raw_super.i, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %feature.i, align 1
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 @f2fs_usable_segs_in_sec(ptr noundef %sbi, i32 noundef %start_segno) #16
  %sub9.neg = sub i32 %end_segno.0, %2
  %sub10 = add i32 %sub9.neg, %call8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %end_segno.1 = phi i32 [ %sub10, %if.then6 ], [ %end_segno.0, %if.end.if.end11_crit_edge ]
  %15 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm_info.i.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %sentries.i246 = getelementptr inbounds %struct.sit_info, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %sentries.i246 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sentries.i246, align 4
  %arrayidx.i247 = getelementptr %struct.seg_entry, ptr %20, i32 %start_segno
  %21 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load13 = load i32, ptr %arrayidx.i247, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 26
  %conv15 = trunc i32 %bf.lshr14 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv15)
  %cmp.i = icmp ugt i16 %conv15, 5
  br i1 %cmp.i, label %do.body3.i, label %sanity_check_seg_type.exit, !prof !116

do.body3.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/segment.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #16, !srcloc !131
  unreachable

sanity_check_seg_type.exit:                       ; preds = %if.end11
  %22 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp17 = icmp ugt i32 %23, 1
  br i1 %cmp17, label %if.then19, label %sanity_check_seg_type.exit.if.end23_crit_edge

sanity_check_seg_type.exit.if.end23_crit_edge:    ; preds = %sanity_check_seg_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then19:                                        ; preds = %sanity_check_seg_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  %ssa_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %16, i32 0, i32 7
  %24 = ptrtoint ptr %ssa_blkaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssa_blkaddr, align 4
  %add20 = add i32 %25, %start_segno
  %sub21 = sub i32 %end_segno.1, %start_segno
  %call22 = tail call i32 @f2fs_ra_meta_pages(ptr noundef %sbi, i32 noundef %add20, i32 noundef %sub21, i32 noundef 3, i1 noundef zeroext true) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %sanity_check_seg_type.exit.if.end23_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end_segno.1, i32 %start_segno)
  %cmp24548 = icmp ugt i32 %end_segno.1, %start_segno
  br i1 %cmp24548, label %if.end23.while.body_crit_edge, label %while.end.thread

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  br label %while.body

while.end.thread:                                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  call void @blk_start_plug(ptr noundef nonnull %plug) #16
  br label %if.end143

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %if.end23.while.body_crit_edge
  %segno.0549 = phi i32 [ %inc, %if.end39.while.body_crit_edge ], [ %start_segno, %if.end23.while.body_crit_edge ]
  %call26 = tail call ptr @f2fs_get_sum_page(ptr noundef %sbi, i32 noundef %segno.0549) #16
  %cmp.i248 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then28, label %if.end39

if.then28:                                        ; preds = %while.body
  %26 = ptrtoint ptr %call26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %segno.0549, i32 %start_segno)
  %cmp31559 = icmp ugt i32 %segno.0549, %start_segno
  br i1 %cmp31559, label %for.body.lr.ph, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then28
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %f2fs_put_page.exit270.for.body_crit_edge, %for.body.lr.ph
  %segno.1560 = phi i32 [ %start_segno, %for.body.lr.ph ], [ %inc38, %f2fs_put_page.exit270.for.body_crit_edge ]
  %27 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_mapping.i, align 8
  %31 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm_info.i.i.i, align 8
  %ssa_blkaddr35 = getelementptr inbounds %struct.f2fs_sm_info, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %ssa_blkaddr35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ssa_blkaddr35, align 4
  %add36 = add i32 %34, %segno.1560
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %30, i32 noundef %add36, i32 noundef 0, i32 noundef 0) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.f2fs_put_page.exit270_crit_edge, label %if.end.i

for.body.f2fs_put_page.exit270_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit270

if.end.i:                                         ; preds = %for.body
  %35 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i17.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !115

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i = add i32 %37, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %38, %if.end.i.i21.i ]
  %39 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  %40 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !116

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = inttoptr i32 %retval.0.i.i22.i to ptr
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.22) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_garbage_collect, %if.then.i.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %39, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end.i250_crit_edge

folio_put_testzero.exit.i.i.i.if.end.i250_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i250

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %39) #16
  br label %if.end.i250

if.end.i250:                                      ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end.i250_crit_edge
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %35, align 4
  %and.i.i17.i251 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i251)
  %tobool.not.i.i18.i252 = icmp eq i32 %and.i.i17.i251, 0
  br i1 %tobool.not.i.i18.i252, label %if.end.i.i21.i255, label %if.then.i.i20.i254, !prof !115

if.then.i.i20.i254:                               ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i253 = add i32 %45, -1
  br label %_compound_head.exit.i23.i260

if.end.i.i21.i255:                                ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i23.i260

_compound_head.exit.i23.i260:                     ; preds = %if.end.i.i21.i255, %if.then.i.i20.i254
  %retval.0.i.i22.i256 = phi i32 [ %sub.i.i19.i253, %if.then.i.i20.i254 ], [ %46, %if.end.i.i21.i255 ]
  %47 = inttoptr i32 %retval.0.i.i22.i256 to ptr
  %_refcount.i.i.i.i.i.i257 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i258 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i257, i32 noundef 4) #16
  %48 = ptrtoint ptr %_refcount.i.i.i.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %_refcount.i.i.i.i.i.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i.i259 = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i.i259, label %if.then.i.i.i.i.i261, label %do.end5.i.i.i.i.i265, !prof !116

if.then.i.i.i.i.i261:                             ; preds = %_compound_head.exit.i23.i260
  call void @__sanitizer_cov_trace_pc() #18
  %50 = inttoptr i32 %retval.0.i.i22.i256 to ptr
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.22) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i265:                             ; preds = %_compound_head.exit.i23.i260
  %call.i.i.i10.i.i.i.i.i262 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i257, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i257, i32 1, i32 3, i32 1) #16
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i257, ptr %_refcount.i.i.i.i.i.i257, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i257) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i263 = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i263)
  %cmp.i.i.i.i.i.i.i.i264 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i263, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_garbage_collect, %if.then.i.i.i.i.i.i267)) #16
          to label %folio_put_testzero.exit.i.i.i268 [label %if.then.i.i.i.i.i.i267], !srcloc !126

if.then.i.i.i.i.i.i267:                           ; preds = %do.end5.i.i.i.i.i265
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i266 = zext i1 %cmp.i.i.i.i.i.i.i.i264 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %47, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i266) #16
  br label %folio_put_testzero.exit.i.i.i268

folio_put_testzero.exit.i.i.i268:                 ; preds = %if.then.i.i.i.i.i.i267, %do.end5.i.i.i.i.i265
  br i1 %cmp.i.i.i.i.i.i.i.i264, label %if.then.i4.i.i269, label %folio_put_testzero.exit.i.i.i268.f2fs_put_page.exit270_crit_edge

folio_put_testzero.exit.i.i.i268.f2fs_put_page.exit270_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i268
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit270

if.then.i4.i.i269:                                ; preds = %folio_put_testzero.exit.i.i.i268
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %47) #16
  br label %f2fs_put_page.exit270

f2fs_put_page.exit270:                            ; preds = %if.then.i4.i.i269, %folio_put_testzero.exit.i.i.i268.f2fs_put_page.exit270_crit_edge, %for.body.f2fs_put_page.exit270_crit_edge
  %inc38 = add i32 %segno.1560, 1
  %exitcond614.not = icmp eq i32 %inc38, %segno.0549
  br i1 %exitcond614.not, label %f2fs_put_page.exit270.cleanup_crit_edge, label %f2fs_put_page.exit270.for.body_crit_edge

f2fs_put_page.exit270.for.body_crit_edge:         ; preds = %f2fs_put_page.exit270
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

f2fs_put_page.exit270.cleanup_crit_edge:          ; preds = %f2fs_put_page.exit270
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end39:                                         ; preds = %while.body
  %inc = add i32 %segno.0549, 1
  tail call void @unlock_page(ptr noundef %call26) #16
  %exitcond.not = icmp eq i32 %inc, %end_segno.1
  br i1 %exitcond.not, label %while.end, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %if.end39
  call void @blk_start_plug(ptr noundef nonnull %plug) #16
  br i1 %cmp24548, label %for.body43.lr.ph, label %while.end.if.end143_crit_edge

while.end.if.end143_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end143

for.body43.lr.ph:                                 ; preds = %while.end
  %meta_inode.i271 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gc_type)
  %cmp54 = icmp eq i32 %gc_type, 0
  %migration_granularity = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 89
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %conv72 = zext i1 %cmp to i32
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %log_blocks_per_seg.i312 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %version8.i.i = getelementptr inbounds %struct.node_info, ptr %dni.i, i32 0, i32 3
  %ino.i.i = getelementptr inbounds %struct.node_info, ptr %dni.i, i32 0, i32 1
  %iroot.i.i = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %gc_type)
  %cmp.i396.i = icmp eq i32 %gc_type, 1
  %52 = getelementptr inbounds i8, ptr %fio.i375.i, i32 52
  %ino.i421.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 1
  %type.i423.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 2
  %temp.i424.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 3
  %op.i425.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 4
  %op_flags.i426.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 5
  %new_blkaddr.i427.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 6
  %old_blkaddr.i428.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 7
  %page28.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 8
  %encrypted_page.i429.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 9
  %need_lock.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 13
  %compr_blocks.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 17
  %encrypted.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 18
  %io_type.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 19
  %io_wbc.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i375.i, i32 0, i32 20
  %53 = getelementptr inbounds i8, ptr %fio.i.i, i32 20
  %ino.i353.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 1
  %type.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 2
  %temp.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 3
  %op.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 4
  %retry.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 16
  %54 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 1
  %55 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 2
  %56 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 3
  %57 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 4
  %58 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i.i, i32 0, i32 9
  %59 = getelementptr inbounds %struct.f2fs_summary, ptr %sum.i.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.f2fs_summary, ptr %sum.i.i, i32 0, i32 1, i32 0, i32 1
  %page40.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 8
  %old_blkaddr.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 7
  %new_blkaddr.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 6
  %encrypted_page.i.i = getelementptr inbounds %struct.f2fs_io_info, ptr %fio.i.i, i32 0, i32 9
  %version.i.i = getelementptr inbounds %struct.node_info, ptr %ni.i.i, i32 0, i32 3
  %stat_info.i.i314 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %cond153.i = zext i1 %cmp54 to i32
  %skipped_gc_rwsem118.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 85
  %arrayidx.i299 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 71, i32 1
  %blk_addr.i = getelementptr inbounds %struct.node_info, ptr %ni.i, i32 0, i32 2
  %gc_mode = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %arrayidx132 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 79, i32 %gc_type
  br label %for.body43

for.body43:                                       ; preds = %f2fs_put_page.exit379.for.body43_crit_edge, %for.body43.lr.ph
  %submitted.0557 = phi i32 [ 0, %for.body43.lr.ph ], [ %submitted.3, %f2fs_put_page.exit379.for.body43_crit_edge ]
  %migrated.0556 = phi i32 [ 0, %for.body43.lr.ph ], [ %migrated.2, %f2fs_put_page.exit379.for.body43_crit_edge ]
  %seg_freed.0554 = phi i32 [ 0, %for.body43.lr.ph ], [ %seg_freed.2, %f2fs_put_page.exit379.for.body43_crit_edge ]
  %segno.2551 = phi i32 [ %start_segno, %for.body43.lr.ph ], [ %inc135, %f2fs_put_page.exit379.for.body43_crit_edge ]
  %61 = ptrtoint ptr %meta_inode.i271 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %meta_inode.i271, align 8
  %i_mapping.i272 = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %i_mapping.i272 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_mapping.i272, align 8
  %65 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sm_info.i.i.i, align 8
  %ssa_blkaddr46 = getelementptr inbounds %struct.f2fs_sm_info, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %ssa_blkaddr46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ssa_blkaddr46, align 4
  %add47 = add i32 %68, %segno.2551
  %call.i273 = call ptr @pagecache_get_page(ptr noundef %64, i32 noundef %add47, i32 noundef 0, i32 noundef 0) #16
  %tobool.not.i274 = icmp eq ptr %call.i273, null
  br i1 %tobool.not.i274, label %for.body43.f2fs_put_page.exit295_crit_edge, label %if.end.i275

for.body43.f2fs_put_page.exit295_crit_edge:       ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit295

if.end.i275:                                      ; preds = %for.body43
  %69 = getelementptr inbounds %struct.page, ptr %call.i273, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and.i.i17.i276 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i276)
  %tobool.not.i.i18.i277 = icmp eq i32 %and.i.i17.i276, 0
  br i1 %tobool.not.i.i18.i277, label %if.end.i.i21.i280, label %if.then.i.i20.i279, !prof !115

if.then.i.i20.i279:                               ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i278 = add i32 %71, -1
  br label %_compound_head.exit.i23.i285

if.end.i.i21.i280:                                ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %call.i273 to i32
  br label %_compound_head.exit.i23.i285

_compound_head.exit.i23.i285:                     ; preds = %if.end.i.i21.i280, %if.then.i.i20.i279
  %retval.0.i.i22.i281 = phi i32 [ %sub.i.i19.i278, %if.then.i.i20.i279 ], [ %72, %if.end.i.i21.i280 ]
  %73 = inttoptr i32 %retval.0.i.i22.i281 to ptr
  %_refcount.i.i.i.i.i.i282 = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i283 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i282, i32 noundef 4) #16
  %74 = ptrtoint ptr %_refcount.i.i.i.i.i.i282 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %_refcount.i.i.i.i.i.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i.i.i284 = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i.i.i284, label %if.then.i.i.i.i.i286, label %do.end5.i.i.i.i.i290, !prof !116

if.then.i.i.i.i.i286:                             ; preds = %_compound_head.exit.i23.i285
  call void @__sanitizer_cov_trace_pc() #18
  %76 = inttoptr i32 %retval.0.i.i22.i281 to ptr
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.22) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i290:                             ; preds = %_compound_head.exit.i23.i285
  %call.i.i.i10.i.i.i.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i282, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i282, i32 1, i32 3, i32 1) #16
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i282, ptr %_refcount.i.i.i.i.i.i282, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i282) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i288 = extractvalue { i32, i32 } %77, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i288)
  %cmp.i.i.i.i.i.i.i.i289 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i288, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_garbage_collect, %if.then.i.i.i.i.i.i292)) #16
          to label %folio_put_testzero.exit.i.i.i293 [label %if.then.i.i.i.i.i.i292], !srcloc !126

if.then.i.i.i.i.i.i292:                           ; preds = %do.end5.i.i.i.i.i290
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i291 = zext i1 %cmp.i.i.i.i.i.i.i.i289 to i32
  call void @__page_ref_mod_and_test(ptr noundef %73, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i291) #16
  br label %folio_put_testzero.exit.i.i.i293

folio_put_testzero.exit.i.i.i293:                 ; preds = %if.then.i.i.i.i.i.i292, %do.end5.i.i.i.i.i290
  br i1 %cmp.i.i.i.i.i.i.i.i289, label %if.then.i4.i.i294, label %folio_put_testzero.exit.i.i.i293.f2fs_put_page.exit295_crit_edge

folio_put_testzero.exit.i.i.i293.f2fs_put_page.exit295_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i293
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit295

if.then.i4.i.i294:                                ; preds = %folio_put_testzero.exit.i.i.i293
  call void @__sanitizer_cov_trace_pc() #18
  call void @__put_page(ptr noundef %73) #16
  br label %f2fs_put_page.exit295

f2fs_put_page.exit295:                            ; preds = %if.then.i4.i.i294, %folio_put_testzero.exit.i.i.i293.f2fs_put_page.exit295_crit_edge, %for.body43.f2fs_put_page.exit295_crit_edge
  %78 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sm_info.i.i.i, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i6.i = getelementptr %struct.seg_entry, ptr %83, i32 %segno.2551
  %84 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load.i = load i32, ptr %arrayidx.i6.i, align 8
  %85 = and i32 %bf.load.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp50 = icmp eq i32 %85, 0
  br i1 %cmp50, label %f2fs_put_page.exit295.freed_crit_edge, label %if.end53

f2fs_put_page.exit295.freed_crit_edge:            ; preds = %f2fs_put_page.exit295
  call void @__sanitizer_cov_trace_pc() #18
  br label %freed

if.end53:                                         ; preds = %f2fs_put_page.exit295
  br i1 %cmp54, label %land.lhs.true, label %if.end53.if.end63_crit_edge

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end53
  %86 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp57 = icmp ugt i32 %87, 1
  br i1 %cmp57, label %land.lhs.true59, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

land.lhs.true59:                                  ; preds = %land.lhs.true
  %88 = ptrtoint ptr %migration_granularity to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %migration_granularity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %migrated.0556, i32 %89)
  %cmp60.not = icmp ult i32 %migrated.0556, %89
  br i1 %cmp60.not, label %land.lhs.true59.if.end63_crit_edge, label %land.lhs.true59.skip_crit_edge

land.lhs.true59.skip_crit_edge:                   ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true59.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.end53.if.end63_crit_edge
  %90 = getelementptr inbounds %struct.page, ptr %call.i273, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !115

if.then.i.i:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %92, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %93 = ptrtoint ptr %call.i273 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %93, %if.end.i.i ]
  %94 = inttoptr i32 %retval.0.i.i to ptr
  %95 = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %and.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !115

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %98 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.23) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !136
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %94, align 4
  %101 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.skip_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.skip_crit_edge:              ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !137
  %102 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %103, i32 0, i32 10
  %104 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %106 = and i32 %105, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i.i.i.not = icmp eq i32 %106, 0
  br i1 %tobool.i.i.i.not, label %if.end70, label %PageUptodate.exit.skip_crit_edge, !prof !115

PageUptodate.exit.skip_crit_edge:                 ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip

if.end70:                                         ; preds = %PageUptodate.exit
  %call71 = call ptr @page_address(ptr noundef %call.i273) #16
  %footer = getelementptr inbounds %struct.f2fs_summary_block, ptr %call71, i32 0, i32 2
  %107 = ptrtoint ptr %footer to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %footer, align 1
  %conv73 = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72, i32 %conv73)
  %cmp74.not = icmp eq i32 %conv72, %conv73
  br i1 %cmp74.not, label %if.end81, label %if.then76

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.20, i32 noundef %segno.2551, i32 noundef %conv72, i32 noundef %conv73) #16
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #16
  call void @f2fs_stop_checkpoint(ptr noundef %sbi, i1 noundef zeroext false) #16
  br label %skip

if.end81:                                         ; preds = %if.end70
  br i1 %cmp, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end81
  %call.i297 = call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %segno.2551) #16
  %109 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sm_info.i.i.i, align 8
  %tobool.not.i298 = icmp eq ptr %110, null
  br i1 %tobool.not.i298, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  %seg0_blkaddr.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %seg0_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %seg0_blkaddr.i, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  %113 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %raw_super.i, align 8
  %segment0_blkaddr.i = getelementptr inbounds %struct.f2fs_super_block, ptr %114, i32 0, i32 18
  %115 = ptrtoint ptr %segment0_blkaddr.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %segment0_blkaddr.i, align 1
  %117 = call i32 @llvm.bswap.i32(i32 %116) #16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %112, %cond.true.i ], [ %117, %cond.false.i ]
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %110, i32 0, i32 1
  %118 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %free_info.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add.i = add i32 %121, %segno.2551
  %122 = ptrtoint ptr %log_blocks_per_seg.i312 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %log_blocks_per_seg.i312, align 8
  %shl.i = shl i32 %add.i, %123
  %add6.i = add i32 %shl.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %cmp9137.not.i = icmp eq i32 %call.i297, 0
  br label %next_step.i

next_step.i:                                      ; preds = %for.end.i.next_step.i_crit_edge, %cond.end.i
  %phase.0.i = phi i32 [ 0, %cond.end.i ], [ %inc59.i, %for.end.i.next_step.i_crit_edge ]
  %submitted.0.i = phi i32 [ 0, %cond.end.i ], [ %submitted.1.lcssa.i, %for.end.i.next_step.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %phase.0.i)
  %cmp8.i = icmp eq i32 %phase.0.i, 2
  %or.cond.i = select i1 %cmp.i396.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %next_step.i.if.end.i300_crit_edge

next_step.i.if.end.i300_crit_edge:                ; preds = %next_step.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i300

if.then.i:                                        ; preds = %next_step.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i299, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i299, i32 1, i32 3, i32 1) #16
  %124 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i299, ptr %arrayidx.i299, i32 1, ptr elementtype(i32) %arrayidx.i299) #16, !srcloc !114
  br label %if.end.i300

if.end.i300:                                      ; preds = %if.then.i, %next_step.i.if.end.i300_crit_edge
  br i1 %cmp9137.not.i, label %if.end.i300.for.end.i_crit_edge, label %if.end.i300.for.body.i_crit_edge

if.end.i300.for.body.i_crit_edge:                 ; preds = %if.end.i300
  br label %for.body.i

if.end.i300.for.end.i_crit_edge:                  ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i300.for.body.i_crit_edge
  %submitted.1140.i = phi i32 [ %submitted.3.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %submitted.0.i, %if.end.i300.for.body.i_crit_edge ]
  %off.0139.i = phi i32 [ %inc58.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i300.for.body.i_crit_edge ]
  %entry1.0138.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call71, %if.end.i300.for.body.i_crit_edge ]
  %125 = ptrtoint ptr %entry1.0138.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %entry1.0138.i, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni.i) #16
  %128 = call ptr @memset(ptr %ni.i, i32 255, i32 16)
  br i1 %cmp54, label %land.lhs.true12.i, label %for.body.i.if.end15.i_crit_edge

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

land.lhs.true12.i:                                ; preds = %for.body.i
  %call13.i = call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi, i32 noundef 0) #16
  br i1 %call13.i, label %cleanup.i, label %land.lhs.true12.i.if.end15.i_crit_edge

land.lhs.true12.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true12.i.if.end15.i_crit_edge, %for.body.i.if.end15.i_crit_edge
  %129 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sm_info.i.i.i, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %sentry_lock.i.i = getelementptr inbounds %struct.sit_info, ptr %132, i32 0, i32 13
  call void @down_read(ptr noundef %sentry_lock.i.i) #16
  %133 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sm_info.i.i.i, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %sentries.i.i.i = getelementptr inbounds %struct.sit_info, ptr %136, i32 0, i32 14
  %137 = ptrtoint ptr %sentries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sentries.i.i.i, align 4
  %cur_valid_map.i.i = getelementptr %struct.seg_entry, ptr %138, i32 %segno.2551, i32 1
  %139 = ptrtoint ptr %cur_valid_map.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cur_valid_map.i.i, align 4
  %shr.i.i.i = lshr i32 %off.0139.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %140, i32 %shr.i.i.i
  %and.i.i.i = and i32 %off.0139.i, 7
  %sub.i.i.i = xor i32 %and.i.i.i, 7
  %shl.i.i.i = shl nuw i32 1, %sub.i.i.i
  %141 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i.i.i = zext i8 %142 to i32
  %and1.i.i.i = and i32 %shl.i.i.i, %conv.i.i.i
  call void @up_read(ptr noundef %sentry_lock.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp17.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp17.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end19.i

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end19.i:                                       ; preds = %if.end15.i
  %143 = zext i32 %phase.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values)
  switch i32 %phase.0.i, label %if.end26.i [
    i32 0, label %if.then21.i
    i32 1, label %if.then25.i
  ]

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i = udiv i32 %127, 455
  %call22.i = call i32 @f2fs_ra_meta_pages(ptr noundef %sbi, i32 noundef %div.i, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true) #16
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @f2fs_ra_node_page(ptr noundef %sbi, i32 noundef %127) #16
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end19.i
  %call27.i = call ptr @f2fs_get_node_page(ptr noundef %sbi, i32 noundef %127) #16
  %cmp.i.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end26.i.for.inc.i_crit_edge, label %if.end30.i

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end30.i:                                       ; preds = %if.end26.i
  %144 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sm_info.i.i.i, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %sentry_lock.i120.i = getelementptr inbounds %struct.sit_info, ptr %147, i32 0, i32 13
  call void @down_read(ptr noundef %sentry_lock.i120.i) #16
  %148 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sm_info.i.i.i, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %sentries.i.i121.i = getelementptr inbounds %struct.sit_info, ptr %151, i32 0, i32 14
  %152 = ptrtoint ptr %sentries.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sentries.i.i121.i, align 4
  %cur_valid_map.i122.i = getelementptr %struct.seg_entry, ptr %153, i32 %segno.2551, i32 1
  %154 = ptrtoint ptr %cur_valid_map.i122.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur_valid_map.i122.i, align 4
  %add.ptr.i.i124.i = getelementptr i8, ptr %155, i32 %shr.i.i.i
  %156 = ptrtoint ptr %add.ptr.i.i124.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr.i.i124.i, align 1
  %conv.i.i128.i = zext i8 %157 to i32
  %and1.i.i129.i = and i32 %shl.i.i.i, %conv.i.i128.i
  call void @up_read(ptr noundef %sentry_lock.i120.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i129.i)
  %cmp32.i = icmp eq i32 %and1.i.i129.i, 0
  br i1 %cmp32.i, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef %call27.i, i32 noundef 1) #16
  br label %for.inc.i

if.end34.i:                                       ; preds = %if.end30.i
  %call35.i = call i32 @f2fs_get_node_info(ptr noundef %sbi, i32 noundef %127, ptr noundef nonnull %ni.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef %call27.i, i32 noundef 1) #16
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end34.i
  %158 = ptrtoint ptr %blk_addr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %blk_addr.i, align 4
  %add39.i = add i32 %add6.i, %off.0139.i
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %add39.i)
  %cmp40.not.i = icmp eq i32 %159, %add39.i
  br i1 %cmp40.not.i, label %if.end42.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef %call27.i, i32 noundef 1) #16
  br label %for.inc.i

if.end42.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  %call43.i = call i32 @f2fs_move_node_page(ptr noundef %call27.i, i32 noundef %gc_type) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  %narrow.i = and i1 %cmp.i396.i, %tobool44.not.i
  %spec.select.i = zext i1 %narrow.i to i32
  %submitted.2.i = add i32 %submitted.1140.i, %spec.select.i
  %160 = ptrtoint ptr %stat_info.i.i314 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %stat_info.i.i314, align 8
  %tot_blks.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %161, i32 0, i32 98
  %162 = ptrtoint ptr %tot_blks.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tot_blks.i, align 4
  %add50.i = add i32 %163, 1
  store i32 %add50.i, ptr %tot_blks.i, align 4
  %node_blks.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %161, i32 0, i32 100
  %164 = ptrtoint ptr %node_blks.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %node_blks.i, align 4
  %add51.i = add i32 %165, 1
  store i32 %add51.i, ptr %node_blks.i, align 4
  %bg_node_blks.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %161, i32 0, i32 102
  %166 = ptrtoint ptr %bg_node_blks.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bg_node_blks.i, align 4
  %add54.i = add i32 %167, %cond153.i
  store i32 %add54.i, ptr %bg_node_blks.i, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #16
  br label %do.body

for.inc.i:                                        ; preds = %if.end42.i, %if.then41.i, %if.then37.i, %if.then33.i, %if.end26.i.for.inc.i_crit_edge, %if.then25.i, %if.then21.i, %if.end15.i.for.inc.i_crit_edge
  %submitted.3.ph.i = phi i32 [ %submitted.1140.i, %if.end26.i.for.inc.i_crit_edge ], [ %submitted.1140.i, %if.end15.i.for.inc.i_crit_edge ], [ %submitted.2.i, %if.end42.i ], [ %submitted.1140.i, %if.then41.i ], [ %submitted.1140.i, %if.then37.i ], [ %submitted.1140.i, %if.then33.i ], [ %submitted.1140.i, %if.then25.i ], [ %submitted.1140.i, %if.then21.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i) #16
  %inc58.i = add nuw i32 %off.0139.i, 1
  %incdec.ptr.i = getelementptr %struct.f2fs_summary, ptr %entry1.0138.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc58.i, %call.i297
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i300.for.end.i_crit_edge
  %submitted.1.lcssa.i = phi i32 [ %submitted.0.i, %if.end.i300.for.end.i_crit_edge ], [ %submitted.3.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %inc59.i = add nuw nsw i32 %phase.0.i, 1
  %exitcond143.not.i = icmp eq i32 %inc59.i, 3
  br i1 %exitcond143.not.i, label %if.end62.i, label %for.end.i.next_step.i_crit_edge

for.end.i.next_step.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_step.i

if.end62.i:                                       ; preds = %for.end.i
  br i1 %cmp.i396.i, label %if.then64.i, label %if.end62.i.do.body_crit_edge

if.end62.i.do.body_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then64.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i117.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i299, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i299, i32 1, i32 3, i32 1) #16
  %168 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i299, ptr %arrayidx.i299, i32 1, ptr elementtype(i32) %arrayidx.i299) #16, !srcloc !138
  br label %do.body

if.else:                                          ; preds = %if.end81
  %169 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sbi, align 8
  %call.i301 = call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %segno.2551) #16
  %171 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sm_info.i.i.i, align 8
  %tobool.not.i303 = icmp eq ptr %172, null
  br i1 %tobool.not.i303, label %cond.false.i308, label %cond.true.i305

cond.true.i305:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %seg0_blkaddr.i304 = getelementptr inbounds %struct.f2fs_sm_info, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %seg0_blkaddr.i304 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %seg0_blkaddr.i304, align 4
  br label %cond.end.i315

cond.false.i308:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %raw_super.i, align 8
  %segment0_blkaddr.i307 = getelementptr inbounds %struct.f2fs_super_block, ptr %176, i32 0, i32 18
  %177 = ptrtoint ptr %segment0_blkaddr.i307 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %segment0_blkaddr.i307, align 1
  %179 = call i32 @llvm.bswap.i32(i32 %178) #16
  br label %cond.end.i315

cond.end.i315:                                    ; preds = %cond.false.i308, %cond.true.i305
  %cond.i309 = phi i32 [ %174, %cond.true.i305 ], [ %179, %cond.false.i308 ]
  %free_info.i.i310 = getelementptr inbounds %struct.f2fs_sm_info, ptr %172, i32 0, i32 1
  %180 = ptrtoint ptr %free_info.i.i310 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %free_info.i.i310, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %add.i311 = add i32 %183, %segno.2551
  %184 = ptrtoint ptr %log_blocks_per_seg.i312 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %log_blocks_per_seg.i312, align 8
  %shl.i313 = shl i32 %add.i311, %185
  %add7.i = add i32 %shl.i313, %cond.i309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %cmp502.not.i = icmp eq i32 %call.i301, 0
  br label %next_step.i318

next_step.i318:                                   ; preds = %for.end.i350.next_step.i318_crit_edge, %cond.end.i315
  %phase.0.i316 = phi i32 [ 0, %cond.end.i315 ], [ %inc169.i, %for.end.i350.next_step.i318_crit_edge ]
  %submitted.0.i317 = phi i32 [ 0, %cond.end.i315 ], [ %submitted.1.lcssa.i349, %for.end.i350.next_step.i318_crit_edge ]
  br i1 %cmp502.not.i, label %next_step.i318.for.end.i350_crit_edge, label %for.body.lr.ph.i

next_step.i318.for.end.i350_crit_edge:            ; preds = %next_step.i318
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i350

for.body.lr.ph.i:                                 ; preds = %next_step.i318
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %phase.0.i316)
  %cmp30.i = icmp eq i32 %phase.0.i316, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phase.0.i316)
  %cmp34.i = icmp eq i32 %phase.0.i316, 3
  br label %for.body.i319

for.body.i319:                                    ; preds = %for.inc.i348.for.body.i319_crit_edge, %for.body.lr.ph.i
  %submitted.1506.i = phi i32 [ %submitted.0.i317, %for.body.lr.ph.i ], [ %submitted.5.ph.i, %for.inc.i348.for.body.i319_crit_edge ]
  %off.0505.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc168.i, %for.inc.i348.for.body.i319_crit_edge ]
  %entry2.0503.i = phi ptr [ %call71, %for.body.lr.ph.i ], [ %incdec.ptr.i346, %for.inc.i348.for.body.i319_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dni.i) #16
  %186 = call ptr @memset(ptr %dni.i, i32 255, i32 16)
  %187 = ptrtoint ptr %entry2.0503.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %entry2.0503.i, align 1
  %189 = call i32 @llvm.bswap.i32(i32 %188) #16
  br i1 %cmp54, label %land.lhs.true.i, label %for.body.i319.lor.lhs.false.i_crit_edge

for.body.i319.lor.lhs.false.i_crit_edge:          ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %for.body.i319
  %call10.i = call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi, i32 noundef 0) #16
  br i1 %call10.i, label %land.lhs.true.i.cleanup159.i_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

land.lhs.true.i.cleanup159.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup159.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %for.body.i319.lor.lhs.false.i_crit_edge
  br i1 %force_migrate, label %lor.lhs.false.i.if.end.i334_crit_edge, label %land.lhs.true12.i321

lor.lhs.false.i.if.end.i334_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i334

land.lhs.true12.i321:                             ; preds = %lor.lhs.false.i
  %190 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp.i.i320 = icmp ugt i32 %191, 1
  %192 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sm_info.i.i.i, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  br i1 %cmp.i.i320, label %if.then.i.i322, label %if.else.i.i

if.then.i.i322:                                   ; preds = %land.lhs.true12.i321
  call void @__sanitizer_cov_trace_pc() #18
  %sec_entries.i.i.i = getelementptr inbounds %struct.sit_info, ptr %195, i32 0, i32 15
  %196 = ptrtoint ptr %sec_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sec_entries.i.i.i, align 8
  %div.i.i.i = udiv i32 %segno.2551, %191
  %arrayidx.i.i.i = getelementptr %struct.sec_entry, ptr %197, i32 %div.i.i.i
  %198 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %get_valid_blocks.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true12.i321
  call void @__sanitizer_cov_trace_pc() #18
  %sentries.i.i.i323 = getelementptr inbounds %struct.sit_info, ptr %195, i32 0, i32 14
  %200 = ptrtoint ptr %sentries.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sentries.i.i.i323, align 4
  %arrayidx.i6.i.i = getelementptr %struct.seg_entry, ptr %201, i32 %segno.2551
  %202 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %bf.load.i.i = load i32, ptr %arrayidx.i6.i.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 16
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 1023
  br label %get_valid_blocks.exit.i

get_valid_blocks.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i322
  %retval.0.i.i324 = phi i32 [ %199, %if.then.i.i322 ], [ %bf.clear.i.i, %if.else.i.i ]
  %203 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i = mul i32 %204, %191
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i324, i32 %mul.i)
  %cmp14.i = icmp eq i32 %retval.0.i.i324, %mul.i
  br i1 %cmp14.i, label %get_valid_blocks.exit.i.cleanup159.i_crit_edge, label %get_valid_blocks.exit.i.if.end.i334_crit_edge

get_valid_blocks.exit.i.if.end.i334_crit_edge:    ; preds = %get_valid_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i334

get_valid_blocks.exit.i.cleanup159.i_crit_edge:   ; preds = %get_valid_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup159.i

if.end.i334:                                      ; preds = %get_valid_blocks.exit.i.if.end.i334_crit_edge, %lor.lhs.false.i.if.end.i334_crit_edge
  %205 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %sm_info.i.i.i, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %sentry_lock.i.i325 = getelementptr inbounds %struct.sit_info, ptr %208, i32 0, i32 13
  call void @down_read(ptr noundef %sentry_lock.i.i325) #16
  %209 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sm_info.i.i.i, align 8
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %sentries.i.i266.i = getelementptr inbounds %struct.sit_info, ptr %212, i32 0, i32 14
  %213 = ptrtoint ptr %sentries.i.i266.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sentries.i.i266.i, align 4
  %cur_valid_map.i.i326 = getelementptr %struct.seg_entry, ptr %214, i32 %segno.2551, i32 1
  %215 = ptrtoint ptr %cur_valid_map.i.i326 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cur_valid_map.i.i326, align 4
  %shr.i.i.i327 = lshr i32 %off.0505.i, 3
  %add.ptr.i.i.i328 = getelementptr i8, ptr %216, i32 %shr.i.i.i327
  %and.i.i.i329 = and i32 %off.0505.i, 7
  %sub.i.i.i330 = xor i32 %and.i.i.i329, 7
  %shl.i.i.i331 = shl nuw i32 1, %sub.i.i.i330
  %217 = ptrtoint ptr %add.ptr.i.i.i328 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %add.ptr.i.i.i328, align 1
  %conv.i.i.i332 = zext i8 %218 to i32
  %and1.i.i.i333 = and i32 %shl.i.i.i331, %conv.i.i.i332
  call void @up_read(ptr noundef %sentry_lock.i.i325) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i333)
  %cmp16.i = icmp eq i32 %and1.i.i.i333, 0
  br i1 %cmp16.i, label %if.end.i334.for.inc.i348_crit_edge, label %if.end18.i

if.end.i334.for.inc.i348_crit_edge:               ; preds = %if.end.i334
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.end18.i:                                       ; preds = %if.end.i334
  %219 = zext i32 %phase.0.i316 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %phase.0.i316, label %if.end25.i [
    i32 0, label %if.then20.i
    i32 1, label %if.then24.i
  ]

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i335 = udiv i32 %189, 455
  %call21.i = call i32 @f2fs_ra_meta_pages(ptr noundef %sbi, i32 noundef %div.i335, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true) #16
  br label %for.inc.i348

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @f2fs_ra_node_page(ptr noundef %sbi, i32 noundef %189) #16
  br label %for.inc.i348

if.end25.i:                                       ; preds = %if.end18.i
  %add26.i = add i32 %add7.i, %off.0505.i
  %220 = ptrtoint ptr %entry2.0503.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %entry2.0503.i, align 1
  %222 = call i32 @llvm.bswap.i32(i32 %221) #16
  %223 = getelementptr inbounds %struct.f2fs_summary, ptr %entry2.0503.i, i32 0, i32 1
  %ofs_in_node2.i.i = getelementptr inbounds %struct.f2fs_summary, ptr %entry2.0503.i, i32 0, i32 1, i32 0, i32 1
  %224 = ptrtoint ptr %ofs_in_node2.i.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %225 = load i16, ptr %ofs_in_node2.i.i, align 1
  %226 = call i16 @llvm.bswap.i16(i16 %225) #16
  %conv.i.i = zext i16 %226 to i32
  %call.i.i = call ptr @f2fs_get_node_page(ptr noundef %sbi, i32 noundef %222) #16
  %cmp.i.i267.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i267.i, label %if.end25.i.for.inc.i348_crit_edge, label %if.end.i.i337

if.end25.i.for.inc.i348_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.end.i.i337:                                    ; preds = %if.end25.i
  %call4.i.i = call i32 @f2fs_get_node_info(ptr noundef %sbi, i32 noundef %222, ptr noundef nonnull %dni.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i336 = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i336, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i337
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef %call.i.i, i32 noundef 1) #16
  br label %for.inc.i348

if.end6.i.i:                                      ; preds = %if.end.i.i337
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %223, align 1
  %229 = ptrtoint ptr %version8.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %version8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %228, i8 %230)
  %cmp.not.i.i = icmp eq i8 %228, %230
  br i1 %cmp.not.i.i, label %if.end6.i.i.if.end12.i.i_crit_edge, label %if.then11.i.i

if.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.is_alive) #16
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #16
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end6.i.i.if.end12.i.i_crit_edge
  %231 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ino.i.i, align 4
  %call13.i.i = call i32 @f2fs_check_nid_range(ptr noundef %sbi, i32 noundef %232) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end12.i.i.for.inc.i348_crit_edge

if.end12.i.i.for.inc.i348_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %call.i.i.i.i = call ptr @page_address(ptr noundef %call.i.i) #16
  %flag1.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1, i32 2
  %233 = ptrtoint ptr %flag1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %flag1.i.i.i, align 1
  %235 = call i32 @llvm.bswap.i32(i32 %234) #16
  %shr.i.i268.i = lshr i32 %235, 3
  %call.i.i.i.i.i = call ptr @page_address(ptr noundef %call.i.i) #16
  %footer.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %footer.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %footer.i.i.i.i, align 1
  %ino.i.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 1
  %238 = ptrtoint ptr %ino.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %ino.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %239)
  %cmp.i.i.i.i = icmp eq i32 %237, %239
  %call.i.i93.i.i = call ptr @page_address(ptr noundef %call.i.i) #16
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i, label %if.end16.i.i.data_blkaddr.exit.i.i_crit_edge

if.end16.i.i.data_blkaddr.exit.i.i_crit_edge:     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end16.i.i
  %i_inline.i.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i93.i.i, i32 0, i32 2
  %240 = ptrtoint ptr %i_inline.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %i_inline.i.i.i.i, align 1
  %242 = and i8 %241, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool.not.i.i.i.i = icmp eq i8 %242, 0
  br i1 %tobool.not.i.i.i.i, label %if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge, label %cond.true.i.i.i.i

if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge:   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %data_blkaddr.exit.i.i

cond.true.i.i.i.i:                                ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %243 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i93.i.i, i32 0, i32 23
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 2)
  %245 = load i16, ptr %243, align 1
  %246 = call i16 @llvm.bswap.i16(i16 %245) #16
  %247 = lshr i16 %246, 2
  %div.i.i.i.i = zext i16 %247 to i32
  br label %data_blkaddr.exit.i.i

data_blkaddr.exit.i.i:                            ; preds = %cond.true.i.i.i.i, %if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge, %if.end16.i.i.data_blkaddr.exit.i.i_crit_edge
  %base.0.i.i.i = phi i32 [ 0, %if.end16.i.i.data_blkaddr.exit.i.i_crit_edge ], [ %div.i.i.i.i, %cond.true.i.i.i.i ], [ 0, %if.then3.i.i.i.data_blkaddr.exit.i.i_crit_edge ]
  %footer.i1.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i93.i.i, i32 0, i32 1
  %248 = ptrtoint ptr %footer.i1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %footer.i1.i.i.i, align 1
  %ino.i2.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i93.i.i, i32 0, i32 1, i32 1
  %250 = ptrtoint ptr %ino.i2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %ino.i2.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %251)
  %cmp.i3.i.i.i = icmp eq i32 %249, %251
  %252 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i93.i.i, i32 0, i32 23
  %cond.i4.i.i.i = select i1 %cmp.i3.i.i.i, ptr %252, ptr %call.i.i93.i.i
  %add.i.i.i = add nuw nsw i32 %base.0.i.i.i, %conv.i.i
  %arrayidx.i.i269.i = getelementptr i32, ptr %cond.i4.i.i.i, i32 %add.i.i.i
  %253 = ptrtoint ptr %arrayidx.i.i269.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx.i.i269.i, align 4
  %255 = call i32 @llvm.bswap.i32(i32 %254) #16
  call fastcc void @f2fs_put_page(ptr noundef %call.i.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %add26.i)
  %cmp19.not.i.i = icmp eq i32 %255, %add26.i
  br i1 %cmp19.not.i.i, label %if.end29.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %data_blkaddr.exit.i.i
  %switch.tableidx = add i32 %add26.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %256 = icmp ult i32 %switch.tableidx, 3
  br i1 %256, label %if.then21.i.i.cond.end31.i.i_crit_edge, label %cond.false.i.i

if.then21.i.i.cond.end31.i.i_crit_edge:           ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end31.i.i

cond.false.i.i:                                   ; preds = %if.then21.i.i
  %257 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %sm_info.i.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %258, null
  br i1 %tobool24.not.i.i, label %cond.false27.i.i, label %cond.true25.i.i

cond.true25.i.i:                                  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %seg0_blkaddr.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %258, i32 0, i32 5
  %259 = ptrtoint ptr %seg0_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %seg0_blkaddr.i.i, align 4
  br label %cond.end.i.i

cond.false27.i.i:                                 ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %261 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %raw_super.i, align 8
  %segment0_blkaddr.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %262, i32 0, i32 18
  %263 = ptrtoint ptr %segment0_blkaddr.i.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %segment0_blkaddr.i.i, align 1
  %265 = call i32 @llvm.bswap.i32(i32 %264) #16
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false27.i.i, %cond.true25.i.i
  %cond.i.i = phi i32 [ %260, %cond.true25.i.i ], [ %265, %cond.false27.i.i ]
  %sub.i.i338 = sub i32 %add26.i, %cond.i.i
  %266 = ptrtoint ptr %log_blocks_per_seg.i312 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %log_blocks_per_seg.i312, align 8
  %shr.i.i = lshr i32 %sub.i.i338, %267
  %free_info.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %258, i32 0, i32 1
  %268 = ptrtoint ptr %free_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %free_info.i.i.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %269, align 4
  %sub30.i.i = sub i32 %shr.i.i, %271
  br label %cond.end31.i.i

cond.end31.i.i:                                   ; preds = %cond.end.i.i, %if.then21.i.i.cond.end31.i.i_crit_edge
  %cond32.i.i = phi i32 [ %sub30.i.i, %cond.end.i.i ], [ -1, %if.then21.i.i.cond.end31.i.i_crit_edge ]
  %272 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %sm_info.i.i.i, align 8
  %tobool34.not.i.i = icmp eq ptr %273, null
  br i1 %tobool34.not.i.i, label %cond.false38.i.i, label %cond.true35.i.i

cond.true35.i.i:                                  ; preds = %cond.end31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %seg0_blkaddr37.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %273, i32 0, i32 5
  %274 = ptrtoint ptr %seg0_blkaddr37.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %seg0_blkaddr37.i.i, align 4
  br label %cond.end41.i.i

cond.false38.i.i:                                 ; preds = %cond.end31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %276 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %raw_super.i, align 8
  %segment0_blkaddr40.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %277, i32 0, i32 18
  %278 = ptrtoint ptr %segment0_blkaddr40.i.i to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %segment0_blkaddr40.i.i, align 1
  %280 = call i32 @llvm.bswap.i32(i32 %279) #16
  br label %cond.end41.i.i

cond.end41.i.i:                                   ; preds = %cond.false38.i.i, %cond.true35.i.i
  %cond42.i.i = phi i32 [ %275, %cond.true35.i.i ], [ %280, %cond.false38.i.i ]
  %sub43.i.i = sub i32 %add26.i, %cond42.i.i
  %281 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %blocks_per_seg.i, align 4
  %sub44.i.i = add i32 %282, -1
  %and.i.i339 = and i32 %sub44.i.i, %sub43.i.i
  %283 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %273, align 4
  %sentry_lock.i.i.i = getelementptr inbounds %struct.sit_info, ptr %284, i32 0, i32 13
  call void @down_read(ptr noundef %sentry_lock.i.i.i) #16
  %285 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sm_info.i.i.i, align 8
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %sentries.i.i.i.i = getelementptr inbounds %struct.sit_info, ptr %288, i32 0, i32 14
  %289 = ptrtoint ptr %sentries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %sentries.i.i.i.i, align 4
  %cur_valid_map.i.i.i = getelementptr %struct.seg_entry, ptr %290, i32 %cond32.i.i, i32 1
  %291 = ptrtoint ptr %cur_valid_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur_valid_map.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %and.i.i339, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %292, i32 %shr.i.i.i.i
  %and.i.i.i.i340 = and i32 %and.i.i339, 7
  %sub.i.i.i.i = xor i32 %and.i.i.i.i340, 7
  %shl.i.i.i.i = shl nuw i32 1, %sub.i.i.i.i
  %293 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %294 to i32
  %and1.i.i.i.i = and i32 %shl.i.i.i.i, %conv.i.i.i.i
  call void @up_read(ptr noundef %sentry_lock.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool46.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool46.not.i.i, label %cond.end41.i.i.for.inc.i348_crit_edge, label %if.then49.i.i, !prof !115

cond.end41.i.i.for.inc.i348_crit_edge:            ; preds = %cond.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.then49.i.i:                                    ; preds = %cond.end41.i.i
  %295 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %sm_info.i.i.i, align 8
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %296, align 4
  %invalid_segmap.i.i = getelementptr inbounds %struct.sit_info, ptr %298, i32 0, i32 7
  %299 = ptrtoint ptr %invalid_segmap.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %invalid_segmap.i.i, align 4
  %call51.i.i = call i32 @_test_and_set_bit(i32 noundef %cond32.i.i, ptr noundef %300) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.then53.i.i, label %if.then49.i.i.for.inc.i348_crit_edge

if.then49.i.i.for.inc.i348_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.then53.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.26, i32 noundef %add26.i, i32 noundef %255, i32 noundef %cond32.i.i) #16
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #16
  br label %for.inc.i348

if.end29.i:                                       ; preds = %data_blkaddr.exit.i.i
  br i1 %cmp30.i, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  %301 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ino.i.i, align 4
  call void @f2fs_ra_node_page(ptr noundef %sbi, i32 noundef %302) #16
  br label %for.inc.i348

if.end32.i:                                       ; preds = %if.end29.i
  %303 = ptrtoint ptr %ofs_in_node2.i.i to i32
  call void @__asan_loadN_noabort(i32 %303, i32 2)
  %304 = load i16, ptr %ofs_in_node2.i.i, align 1
  %305 = call i16 @llvm.bswap.i16(i16 %304) #16
  %conv.i = zext i16 %305 to i32
  %306 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %ino.i.i, align 4
  br i1 %cmp34.i, label %if.then36.i, label %if.end92.i

if.then36.i:                                      ; preds = %if.end32.i
  %call38.i = call ptr @f2fs_iget(ptr noundef %170, i32 noundef %307) #16
  %cmp.i272.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272.i, label %if.then36.i.for.inc.i348_crit_edge, label %lor.lhs.false41.i

if.then36.i.for.inc.i348_crit_edge:               ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

lor.lhs.false41.i:                                ; preds = %if.then36.i
  %call42.i = call zeroext i1 @is_bad_inode(ptr noundef %call38.i) #16
  br i1 %call42.i, label %lor.lhs.false41.i.for.inc.i348_crit_edge, label %lor.lhs.false44.i

lor.lhs.false41.i.for.inc.i348_crit_edge:         ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

lor.lhs.false44.i:                                ; preds = %lor.lhs.false41.i
  %308 = ptrtoint ptr %call38.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %call38.i, align 8
  %310 = and i16 %309, -4096
  %311 = zext i16 %310 to i64
  call void @__sanitizer_cov_trace_switch(i64 %311, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %310, label %if.end67.i [
    i16 8192, label %lor.lhs.false44.i.for.inc.i348_crit_edge
    i16 24576, label %lor.lhs.false44.i.for.inc.i348_crit_edge836
    i16 4096, label %lor.lhs.false44.i.for.inc.i348_crit_edge837
    i16 -16384, label %lor.lhs.false44.i.for.inc.i348_crit_edge838
  ]

lor.lhs.false44.i.for.inc.i348_crit_edge838:      ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

lor.lhs.false44.i.for.inc.i348_crit_edge837:      ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

lor.lhs.false44.i.for.inc.i348_crit_edge836:      ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

lor.lhs.false44.i.for.inc.i348_crit_edge:         ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.end67.i:                                       ; preds = %lor.lhs.false44.i
  %arrayidx.i341 = getelementptr %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 27, i32 1
  %call69.i = call i32 @down_write_trylock(ptr noundef %arrayidx.i341) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end72.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @iput(ptr noundef %call38.i) #16
  %312 = ptrtoint ptr %skipped_gc_rwsem118.i to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %skipped_gc_rwsem118.i, align 8
  %inc.i = add i64 %313, 1
  store i64 %inc.i, ptr %skipped_gc_rwsem118.i, align 8
  br label %for.inc.i348

if.end72.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %235)
  %cmp.i273.i = icmp ult i32 %235, 8
  br i1 %cmp.i273.i, label %if.end72.i.f2fs_start_bidx_of_node.exit.i_crit_edge, label %if.end.i274.i

if.end72.i.f2fs_start_bidx_of_node.exit.i_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_start_bidx_of_node.exit.i

if.end.i274.i:                                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %235)
  %cmp1.i.i = icmp ult i32 %235, 24
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i276.i

if.then2.i.i:                                     ; preds = %if.end.i274.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i275.i = add nsw i32 %shr.i.i268.i, -1
  br label %if.end16.i278.i

if.else.i276.i:                                   ; preds = %if.end.i274.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16328, i32 %235)
  %cmp3.i.i = icmp ult i32 %235, 16328
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else8.i.i

if.then4.i.i:                                     ; preds = %if.else.i276.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub5.i.i = add nsw i32 %shr.i.i268.i, -4
  %div.i.i = udiv i32 %sub5.i.i, 1019
  %sub6.i.i = add nsw i32 %shr.i.i268.i, -2
  %sub7.i.i = sub nsw i32 %sub6.i.i, %div.i.i
  br label %if.end16.i278.i

if.else8.i.i:                                     ; preds = %if.else.i276.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub11.i.i = add nsw i32 %shr.i.i268.i, -2043
  %div12.i.i = udiv i32 %sub11.i.i, 1019
  %sub13.i.i = add nsw i32 %shr.i.i268.i, -5
  %sub14.i.i = sub nsw i32 %sub13.i.i, %div12.i.i
  br label %if.end16.i278.i

if.end16.i278.i:                                  ; preds = %if.else8.i.i, %if.then4.i.i, %if.then2.i.i
  %bidx.0.i.i = phi i32 [ %sub.i275.i, %if.then2.i.i ], [ %sub7.i.i, %if.then4.i.i ], [ %sub14.i.i, %if.else8.i.i ]
  %314 = ptrtoint ptr %call38.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %call38.i, align 8
  %316 = and i16 %315, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %316)
  %cmp.i.i.i277.i = icmp eq i16 %316, -32768
  br i1 %cmp.i.i.i277.i, label %f2fs_compressed_file.exit.i.i.i, label %addrs_per_block.exit.i.i

f2fs_compressed_file.exit.i.i.i:                  ; preds = %if.end16.i278.i
  %flags.i.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 8
  %317 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %flags.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %318)
  %tobool.not.i.i.i342 = icmp sgt i32 %318, -1
  br i1 %tobool.not.i.i.i342, label %f2fs_compressed_file.exit.i.i.i.f2fs_compressed_file.exit.i31.i.i_crit_edge, label %if.end.i.i.i

f2fs_compressed_file.exit.i.i.i.f2fs_compressed_file.exit.i31.i.i_crit_edge: ; preds = %f2fs_compressed_file.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compressed_file.exit.i31.i.i

if.end.i.i.i:                                     ; preds = %f2fs_compressed_file.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 39
  %319 = ptrtoint ptr %i_cluster_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %i_cluster_size.i.i.i, align 4
  %neg.i.i.i = sub i32 0, %320
  %and.i.i279.i = and i32 %neg.i.i.i, 1018
  br label %f2fs_compressed_file.exit.i31.i.i

addrs_per_block.exit.i.i:                         ; preds = %if.end16.i278.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 29
  %321 = ptrtoint ptr %i_extra_isize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %i_extra_isize.i.i.i.i, align 4
  %div1.i.i.i.i = lshr i32 %322, 2
  %i_inline_xattr_size.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 31
  %323 = ptrtoint ptr %i_inline_xattr_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %i_inline_xattr_size.i.i.i.i, align 4
  %325 = add i32 %div1.i.i.i.i, %324
  %sub2.i.i.i = sub i32 923, %325
  br label %addrs_per_inode.exit.i.i

f2fs_compressed_file.exit.i31.i.i:                ; preds = %if.end.i.i.i, %f2fs_compressed_file.exit.i.i.i.f2fs_compressed_file.exit.i31.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 1018, %f2fs_compressed_file.exit.i.i.i.f2fs_compressed_file.exit.i31.i.i_crit_edge ], [ %and.i.i279.i, %if.end.i.i.i ]
  %i_extra_isize.i.i39.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 29
  %326 = ptrtoint ptr %i_extra_isize.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %i_extra_isize.i.i39.i.i, align 4
  %div1.i.i40.i.i = lshr i32 %327, 2
  %i_inline_xattr_size.i.i41.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 31
  %328 = ptrtoint ptr %i_inline_xattr_size.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %i_inline_xattr_size.i.i41.i.i, align 4
  %330 = add i32 %div1.i.i40.i.i, %329
  %sub2.i42.i.i = sub i32 923, %330
  %331 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load volatile i32, ptr %flags.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %332)
  %tobool.not.i30.i.i = icmp sgt i32 %332, -1
  br i1 %tobool.not.i30.i.i, label %f2fs_compressed_file.exit.i31.i.i.addrs_per_inode.exit.i.i_crit_edge, label %if.end.i35.i.i

f2fs_compressed_file.exit.i31.i.i.addrs_per_inode.exit.i.i_crit_edge: ; preds = %f2fs_compressed_file.exit.i31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %addrs_per_inode.exit.i.i

if.end.i35.i.i:                                   ; preds = %f2fs_compressed_file.exit.i31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size.i32.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 39
  %333 = ptrtoint ptr %i_cluster_size.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %i_cluster_size.i32.i.i, align 4
  %neg.i33.i.i = sub i32 0, %334
  %and.i34.i.i = and i32 %sub2.i42.i.i, %neg.i33.i.i
  br label %addrs_per_inode.exit.i.i

addrs_per_inode.exit.i.i:                         ; preds = %if.end.i35.i.i, %f2fs_compressed_file.exit.i31.i.i.addrs_per_inode.exit.i.i_crit_edge, %addrs_per_block.exit.i.i
  %retval.0.i.ph.pn.i.i = phi i32 [ %retval.0.i.ph.i.i, %if.end.i35.i.i ], [ %retval.0.i.ph.i.i, %f2fs_compressed_file.exit.i31.i.i.addrs_per_inode.exit.i.i_crit_edge ], [ 1018, %addrs_per_block.exit.i.i ]
  %retval.0.i36.i.i = phi i32 [ %and.i34.i.i, %if.end.i35.i.i ], [ %sub2.i42.i.i, %f2fs_compressed_file.exit.i31.i.i.addrs_per_inode.exit.i.i_crit_edge ], [ %sub2.i.i.i, %addrs_per_block.exit.i.i ]
  %mul43.i.i = mul i32 %retval.0.i.ph.pn.i.i, %bidx.0.i.i
  %add.i.i = add i32 %mul43.i.i, %retval.0.i36.i.i
  br label %f2fs_start_bidx_of_node.exit.i

f2fs_start_bidx_of_node.exit.i:                   ; preds = %addrs_per_inode.exit.i.i, %if.end72.i.f2fs_start_bidx_of_node.exit.i_crit_edge
  %retval.0.i280.i = phi i32 [ %add.i.i, %addrs_per_inode.exit.i.i ], [ 0, %if.end72.i.f2fs_start_bidx_of_node.exit.i_crit_edge ]
  %add74.i = add i32 %retval.0.i280.i, %conv.i
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %call38.i, i32 0, i32 4
  %335 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %i_flags.i.i.i, align 4
  %and.i.i281.i = and i32 %336, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i281.i)
  %tobool.not.i.i282.i = icmp eq i32 %and.i.i281.i, 0
  br i1 %tobool.not.i.i282.i, label %f2fs_start_bidx_of_node.exit.i.lor.lhs.false.i.i_crit_edge, label %f2fs_encrypted_file.exit.i.i

f2fs_start_bidx_of_node.exit.i.lor.lhs.false.i.i_crit_edge: ; preds = %f2fs_start_bidx_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

f2fs_encrypted_file.exit.i.i:                     ; preds = %f2fs_start_bidx_of_node.exit.i
  %337 = ptrtoint ptr %call38.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %call38.i, align 8
  %339 = and i16 %338, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %339)
  %cmp.i.i283.i = icmp eq i16 %339, -32768
  br i1 %cmp.i.i283.i, label %f2fs_encrypted_file.exit.i.i.if.then76.i_crit_edge, label %f2fs_encrypted_file.exit.i.i.lor.lhs.false.i.i_crit_edge

f2fs_encrypted_file.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

f2fs_encrypted_file.exit.i.i.if.then76.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then76.i

lor.lhs.false.i.i:                                ; preds = %f2fs_encrypted_file.exit.i.i.lor.lhs.false.i.i_crit_edge, %f2fs_start_bidx_of_node.exit.i.lor.lhs.false.i.i_crit_edge
  %i_verity_info.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call38.i, i32 0, i32 53
  %340 = ptrtoint ptr %i_verity_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load volatile ptr, ptr %i_verity_info.i.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !139
  %cmp.i5.not.i.i = icmp eq ptr %341, null
  br i1 %cmp.i5.not.i.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.if.then76.i_crit_edge

lor.lhs.false.i.i.if.then76.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then76.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %342 = ptrtoint ptr %call38.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %call38.i, align 8
  %344 = and i16 %343, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %344)
  %cmp.i6.i.i = icmp eq i16 %344, -32768
  br i1 %cmp.i6.i.i, label %f2fs_post_read_required.exit.i, label %lor.rhs.i.i.if.end84.i_crit_edge

lor.rhs.i.i.if.end84.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84.i

f2fs_post_read_required.exit.i:                   ; preds = %lor.rhs.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call38.i, i32 0, i32 8
  %345 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load volatile i32, ptr %flags.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %phi.cmp.i.i = icmp slt i32 %346, 0
  br i1 %phi.cmp.i.i, label %f2fs_post_read_required.exit.i.if.then76.i_crit_edge, label %f2fs_post_read_required.exit.i.if.end84.i_crit_edge

f2fs_post_read_required.exit.i.if.end84.i_crit_edge: ; preds = %f2fs_post_read_required.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84.i

f2fs_post_read_required.exit.i.if.then76.i_crit_edge: ; preds = %f2fs_post_read_required.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then76.i

if.then76.i:                                      ; preds = %f2fs_post_read_required.exit.i.if.then76.i_crit_edge, %lor.lhs.false.i.i.if.then76.i_crit_edge, %f2fs_encrypted_file.exit.i.i.if.then76.i_crit_edge
  %call77.i = call fastcc i32 @ra_data_block(ptr noundef %call38.i, i32 noundef %add74.i) #16
  call void @up_write(ptr noundef %arrayidx.i341) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool81.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @iput(ptr noundef %call38.i) #16
  br label %for.inc.i348

if.end83.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @add_gc_inode(ptr noundef %gc_list, ptr noundef %call38.i) #16
  br label %for.inc.i348

if.end84.i:                                       ; preds = %f2fs_post_read_required.exit.i.if.end84.i_crit_edge, %lor.rhs.i.i.if.end84.i_crit_edge
  %call85.i = call ptr @f2fs_get_read_data_page(ptr noundef %call38.i, i32 noundef %add74.i, i32 noundef 524288, i1 noundef zeroext true) #16
  call void @up_write(ptr noundef %arrayidx.i341) #16
  %cmp.i284.i = icmp ugt ptr %call85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284.i, label %if.then90.i, label %if.end91.i

if.then90.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @iput(ptr noundef %call38.i) #16
  br label %for.inc.i348

if.end91.i:                                       ; preds = %if.end84.i
  %tobool.not.i426 = icmp eq ptr %call85.i, null
  br i1 %tobool.not.i426, label %if.end91.i.f2fs_put_page.exit447_crit_edge, label %if.end.i427

if.end91.i.f2fs_put_page.exit447_crit_edge:       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit447

if.end.i427:                                      ; preds = %if.end91.i
  %347 = getelementptr inbounds %struct.page, ptr %call85.i, i32 0, i32 1
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load volatile i32, ptr %347, align 4
  %and.i.i17.i428 = and i32 %349, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i428)
  %tobool.not.i.i18.i429 = icmp eq i32 %and.i.i17.i428, 0
  br i1 %tobool.not.i.i18.i429, label %if.end.i.i21.i432, label %if.then.i.i20.i431, !prof !115

if.then.i.i20.i431:                               ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i430 = add i32 %349, -1
  br label %_compound_head.exit.i23.i437

if.end.i.i21.i432:                                ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #18
  %350 = ptrtoint ptr %call85.i to i32
  br label %_compound_head.exit.i23.i437

_compound_head.exit.i23.i437:                     ; preds = %if.end.i.i21.i432, %if.then.i.i20.i431
  %retval.0.i.i22.i433 = phi i32 [ %sub.i.i19.i430, %if.then.i.i20.i431 ], [ %350, %if.end.i.i21.i432 ]
  %351 = inttoptr i32 %retval.0.i.i22.i433 to ptr
  %_refcount.i.i.i.i.i.i434 = getelementptr inbounds %struct.page, ptr %351, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i435 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i434, i32 noundef 4) #16
  %352 = ptrtoint ptr %_refcount.i.i.i.i.i.i434 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %_refcount.i.i.i.i.i.i434, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %cmp.i.i.i.i.i436 = icmp eq i32 %353, 0
  br i1 %cmp.i.i.i.i.i436, label %if.then.i.i.i.i.i438, label %do.end5.i.i.i.i.i442, !prof !116

if.then.i.i.i.i.i438:                             ; preds = %_compound_head.exit.i23.i437
  call void @__sanitizer_cov_trace_pc() #18
  %354 = inttoptr i32 %retval.0.i.i22.i433 to ptr
  call void @dump_page(ptr noundef %354, ptr noundef nonnull @.str.22) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i442:                             ; preds = %_compound_head.exit.i23.i437
  %call.i.i.i10.i.i.i.i.i439 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i434, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i434, i32 1, i32 3, i32 1) #16
  %355 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i434, ptr %_refcount.i.i.i.i.i.i434, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i434) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i440 = extractvalue { i32, i32 } %355, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i440)
  %cmp.i.i.i.i.i.i.i.i441 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i440, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_garbage_collect, %if.then.i.i.i.i.i.i444)) #16
          to label %folio_put_testzero.exit.i.i.i445 [label %if.then.i.i.i.i.i.i444], !srcloc !126

if.then.i.i.i.i.i.i444:                           ; preds = %do.end5.i.i.i.i.i442
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i443 = zext i1 %cmp.i.i.i.i.i.i.i.i441 to i32
  call void @__page_ref_mod_and_test(ptr noundef %351, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i443) #16
  br label %folio_put_testzero.exit.i.i.i445

folio_put_testzero.exit.i.i.i445:                 ; preds = %if.then.i.i.i.i.i.i444, %do.end5.i.i.i.i.i442
  br i1 %cmp.i.i.i.i.i.i.i.i441, label %if.then.i4.i.i446, label %folio_put_testzero.exit.i.i.i445.f2fs_put_page.exit447_crit_edge

folio_put_testzero.exit.i.i.i445.f2fs_put_page.exit447_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i445
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit447

if.then.i4.i.i446:                                ; preds = %folio_put_testzero.exit.i.i.i445
  call void @__sanitizer_cov_trace_pc() #18
  call void @__put_page(ptr noundef %351) #16
  br label %f2fs_put_page.exit447

f2fs_put_page.exit447:                            ; preds = %if.then.i4.i.i446, %folio_put_testzero.exit.i.i.i445.f2fs_put_page.exit447_crit_edge, %if.end91.i.f2fs_put_page.exit447_crit_edge
  call fastcc void @add_gc_inode(ptr noundef %gc_list, ptr noundef %call38.i) #16
  br label %for.inc.i348

if.end92.i:                                       ; preds = %if.end32.i
  %call.i285.i = call ptr @radix_tree_lookup(ptr noundef %iroot.i.i, i32 noundef %307) #16
  %tobool.not.i286.i = icmp eq ptr %call.i285.i, null
  br i1 %tobool.not.i286.i, label %if.end92.i.for.inc.i348_crit_edge, label %find_gc_inode.exit.i

if.end92.i.for.inc.i348_crit_edge:                ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

find_gc_inode.exit.i:                             ; preds = %if.end92.i
  %inode.i.i = getelementptr inbounds %struct.inode_entry, ptr %call.i285.i, i32 0, i32 1
  %356 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %inode.i.i, align 4
  %tobool95.not.i = icmp eq ptr %357, null
  br i1 %tobool95.not.i, label %find_gc_inode.exit.i.for.inc.i348_crit_edge, label %if.then96.i

find_gc_inode.exit.i.for.inc.i348_crit_edge:      ; preds = %find_gc_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i348

if.then96.i:                                      ; preds = %find_gc_inode.exit.i
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %357, align 8
  %360 = and i16 %359, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %360)
  %cmp102.i = icmp eq i16 %360, -32768
  br i1 %cmp102.i, label %if.then104.i, label %if.then96.i.if.end123.i_crit_edge

if.then96.i.if.end123.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123.i

if.then104.i:                                     ; preds = %if.then96.i
  %i_gc_rwsem105.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 27
  %call107.i = call i32 @down_write_trylock(ptr noundef %i_gc_rwsem105.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %if.end112.i

if.then109.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #18
  %361 = ptrtoint ptr %skipped_gc_rwsem118.i to i32
  call void @__asan_load8_noabort(i32 %361)
  %362 = load i64, ptr %skipped_gc_rwsem118.i, align 8
  %inc111.i = add i64 %362, 1
  store i64 %inc111.i, ptr %skipped_gc_rwsem118.i, align 8
  br label %for.inc.i348

if.end112.i:                                      ; preds = %if.then104.i
  %arrayidx114.i = getelementptr %struct.f2fs_inode_info, ptr %357, i32 0, i32 27, i32 1
  %call115.i = call i32 @down_write_trylock(ptr noundef %arrayidx114.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.then117.i, label %if.end122.i

if.then117.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #18
  %363 = ptrtoint ptr %skipped_gc_rwsem118.i to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %skipped_gc_rwsem118.i, align 8
  %inc119.i = add i64 %364, 1
  store i64 %inc119.i, ptr %skipped_gc_rwsem118.i, align 8
  call void @up_write(ptr noundef %i_gc_rwsem105.i) #16
  br label %for.inc.i348

if.end122.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @inode_dio_wait(ptr noundef nonnull %357) #16
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end122.i, %if.then96.i.if.end123.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %235)
  %cmp.i289.i = icmp ult i32 %235, 8
  br i1 %cmp.i289.i, label %if.end123.i.f2fs_start_bidx_of_node.exit338.i_crit_edge, label %if.end.i291.i

if.end123.i.f2fs_start_bidx_of_node.exit338.i_crit_edge: ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_start_bidx_of_node.exit338.i

if.end.i291.i:                                    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %235)
  %cmp1.i290.i = icmp ult i32 %235, 24
  br i1 %cmp1.i290.i, label %if.then2.i293.i, label %if.else.i295.i

if.then2.i293.i:                                  ; preds = %if.end.i291.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i292.i = add nsw i32 %shr.i.i268.i, -1
  br label %if.end16.i308.i

if.else.i295.i:                                   ; preds = %if.end.i291.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16328, i32 %235)
  %cmp3.i294.i = icmp ult i32 %235, 16328
  br i1 %cmp3.i294.i, label %if.then4.i300.i, label %if.else8.i305.i

if.then4.i300.i:                                  ; preds = %if.else.i295.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub5.i296.i = add nsw i32 %shr.i.i268.i, -4
  %div.i297.i = udiv i32 %sub5.i296.i, 1019
  %sub6.i298.i = add nsw i32 %shr.i.i268.i, -2
  %sub7.i299.i = sub nsw i32 %sub6.i298.i, %div.i297.i
  br label %if.end16.i308.i

if.else8.i305.i:                                  ; preds = %if.else.i295.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub11.i301.i = add nsw i32 %shr.i.i268.i, -2043
  %div12.i302.i = udiv i32 %sub11.i301.i, 1019
  %sub13.i303.i = add nsw i32 %shr.i.i268.i, -5
  %sub14.i304.i = sub nsw i32 %sub13.i303.i, %div12.i302.i
  br label %if.end16.i308.i

if.end16.i308.i:                                  ; preds = %if.else8.i305.i, %if.then4.i300.i, %if.then2.i293.i
  %bidx.0.i306.i = phi i32 [ %sub.i292.i, %if.then2.i293.i ], [ %sub7.i299.i, %if.then4.i300.i ], [ %sub14.i304.i, %if.else8.i305.i ]
  %365 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %357, align 8
  %367 = and i16 %366, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %367)
  %cmp.i.i.i307.i = icmp eq i16 %367, -32768
  br i1 %cmp.i.i.i307.i, label %f2fs_compressed_file.exit.i.i311.i, label %addrs_per_block.exit.i320.i

f2fs_compressed_file.exit.i.i311.i:               ; preds = %if.end16.i308.i
  %flags.i.i.i.i309.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 8
  %368 = ptrtoint ptr %flags.i.i.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load volatile i32, ptr %flags.i.i.i.i309.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %369)
  %tobool.not.i.i310.i = icmp sgt i32 %369, -1
  br i1 %tobool.not.i.i310.i, label %f2fs_compressed_file.exit.i.i311.i.f2fs_compressed_file.exit.i31.i327.i_crit_edge, label %if.end.i.i315.i

f2fs_compressed_file.exit.i.i311.i.f2fs_compressed_file.exit.i31.i327.i_crit_edge: ; preds = %f2fs_compressed_file.exit.i.i311.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_compressed_file.exit.i31.i327.i

if.end.i.i315.i:                                  ; preds = %f2fs_compressed_file.exit.i.i311.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size.i.i312.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 39
  %370 = ptrtoint ptr %i_cluster_size.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %i_cluster_size.i.i312.i, align 4
  %neg.i.i313.i = sub i32 0, %371
  %and.i.i314.i = and i32 %neg.i.i313.i, 1018
  br label %f2fs_compressed_file.exit.i31.i327.i

addrs_per_block.exit.i320.i:                      ; preds = %if.end16.i308.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_extra_isize.i.i.i316.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 29
  %372 = ptrtoint ptr %i_extra_isize.i.i.i316.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %i_extra_isize.i.i.i316.i, align 4
  %div1.i.i.i317.i = lshr i32 %373, 2
  %i_inline_xattr_size.i.i.i318.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 31
  %374 = ptrtoint ptr %i_inline_xattr_size.i.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %i_inline_xattr_size.i.i.i318.i, align 4
  %376 = add i32 %div1.i.i.i317.i, %375
  %sub2.i.i319.i = sub i32 923, %376
  br label %addrs_per_inode.exit.i336.i

f2fs_compressed_file.exit.i31.i327.i:             ; preds = %if.end.i.i315.i, %f2fs_compressed_file.exit.i.i311.i.f2fs_compressed_file.exit.i31.i327.i_crit_edge
  %retval.0.i.ph.i321.i = phi i32 [ 1018, %f2fs_compressed_file.exit.i.i311.i.f2fs_compressed_file.exit.i31.i327.i_crit_edge ], [ %and.i.i314.i, %if.end.i.i315.i ]
  %i_extra_isize.i.i39.i322.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 29
  %377 = ptrtoint ptr %i_extra_isize.i.i39.i322.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %i_extra_isize.i.i39.i322.i, align 4
  %div1.i.i40.i323.i = lshr i32 %378, 2
  %i_inline_xattr_size.i.i41.i324.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 31
  %379 = ptrtoint ptr %i_inline_xattr_size.i.i41.i324.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %i_inline_xattr_size.i.i41.i324.i, align 4
  %381 = add i32 %div1.i.i40.i323.i, %380
  %sub2.i42.i325.i = sub i32 923, %381
  %382 = ptrtoint ptr %flags.i.i.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load volatile i32, ptr %flags.i.i.i.i309.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %383)
  %tobool.not.i30.i326.i = icmp sgt i32 %383, -1
  br i1 %tobool.not.i30.i326.i, label %f2fs_compressed_file.exit.i31.i327.i.addrs_per_inode.exit.i336.i_crit_edge, label %if.end.i35.i331.i

f2fs_compressed_file.exit.i31.i327.i.addrs_per_inode.exit.i336.i_crit_edge: ; preds = %f2fs_compressed_file.exit.i31.i327.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %addrs_per_inode.exit.i336.i

if.end.i35.i331.i:                                ; preds = %f2fs_compressed_file.exit.i31.i327.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_cluster_size.i32.i328.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 39
  %384 = ptrtoint ptr %i_cluster_size.i32.i328.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %i_cluster_size.i32.i328.i, align 4
  %neg.i33.i329.i = sub i32 0, %385
  %and.i34.i330.i = and i32 %sub2.i42.i325.i, %neg.i33.i329.i
  br label %addrs_per_inode.exit.i336.i

addrs_per_inode.exit.i336.i:                      ; preds = %if.end.i35.i331.i, %f2fs_compressed_file.exit.i31.i327.i.addrs_per_inode.exit.i336.i_crit_edge, %addrs_per_block.exit.i320.i
  %retval.0.i.ph.pn.i332.i = phi i32 [ %retval.0.i.ph.i321.i, %if.end.i35.i331.i ], [ %retval.0.i.ph.i321.i, %f2fs_compressed_file.exit.i31.i327.i.addrs_per_inode.exit.i336.i_crit_edge ], [ 1018, %addrs_per_block.exit.i320.i ]
  %retval.0.i36.i333.i = phi i32 [ %and.i34.i330.i, %if.end.i35.i331.i ], [ %sub2.i42.i325.i, %f2fs_compressed_file.exit.i31.i327.i.addrs_per_inode.exit.i336.i_crit_edge ], [ %sub2.i.i319.i, %addrs_per_block.exit.i320.i ]
  %mul43.i334.i = mul i32 %retval.0.i.ph.pn.i332.i, %bidx.0.i306.i
  %add.i335.i = add i32 %mul43.i334.i, %retval.0.i36.i333.i
  br label %f2fs_start_bidx_of_node.exit338.i

f2fs_start_bidx_of_node.exit338.i:                ; preds = %addrs_per_inode.exit.i336.i, %if.end123.i.f2fs_start_bidx_of_node.exit338.i_crit_edge
  %retval.0.i337.i = phi i32 [ %add.i335.i, %addrs_per_inode.exit.i336.i ], [ 0, %if.end123.i.f2fs_start_bidx_of_node.exit338.i_crit_edge ]
  %add125.i = add i32 %retval.0.i337.i, %conv.i
  %i_flags.i.i339.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 4
  %386 = ptrtoint ptr %i_flags.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %i_flags.i.i339.i, align 4
  %and.i.i340.i = and i32 %387, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i340.i)
  %tobool.not.i.i341.i = icmp eq i32 %and.i.i340.i, 0
  br i1 %tobool.not.i.i341.i, label %f2fs_start_bidx_of_node.exit338.i.lor.lhs.false.i346.i_crit_edge, label %f2fs_encrypted_file.exit.i343.i

f2fs_start_bidx_of_node.exit338.i.lor.lhs.false.i346.i_crit_edge: ; preds = %f2fs_start_bidx_of_node.exit338.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i346.i

f2fs_encrypted_file.exit.i343.i:                  ; preds = %f2fs_start_bidx_of_node.exit338.i
  %388 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %357, align 8
  %390 = and i16 %389, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %390)
  %cmp.i.i342.i = icmp eq i16 %390, -32768
  br i1 %cmp.i.i342.i, label %f2fs_encrypted_file.exit.i343.i.if.then127.i_crit_edge, label %f2fs_encrypted_file.exit.i343.i.lor.lhs.false.i346.i_crit_edge

f2fs_encrypted_file.exit.i343.i.lor.lhs.false.i346.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i343.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i346.i

f2fs_encrypted_file.exit.i343.i.if.then127.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i343.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then127.i

lor.lhs.false.i346.i:                             ; preds = %f2fs_encrypted_file.exit.i343.i.lor.lhs.false.i346.i_crit_edge, %f2fs_start_bidx_of_node.exit338.i.lor.lhs.false.i346.i_crit_edge
  %i_verity_info.i.i.i344.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 53
  %391 = ptrtoint ptr %i_verity_info.i.i.i344.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load volatile ptr, ptr %i_verity_info.i.i.i344.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !139
  %cmp.i5.not.i345.i = icmp eq ptr %392, null
  br i1 %cmp.i5.not.i345.i, label %lor.rhs.i348.i, label %lor.lhs.false.i346.i.if.then127.i_crit_edge

lor.lhs.false.i346.i.if.then127.i_crit_edge:      ; preds = %lor.lhs.false.i346.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then127.i

lor.rhs.i348.i:                                   ; preds = %lor.lhs.false.i346.i
  %393 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %357, align 8
  %395 = and i16 %394, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %395)
  %cmp.i6.i347.i = icmp eq i16 %395, -32768
  br i1 %cmp.i6.i347.i, label %f2fs_post_read_required.exit352.i, label %lor.rhs.i348.i.if.else.i_crit_edge

lor.rhs.i348.i.if.else.i_crit_edge:               ; preds = %lor.rhs.i348.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

f2fs_post_read_required.exit352.i:                ; preds = %lor.rhs.i348.i
  %flags.i.i.i349.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 8
  %396 = ptrtoint ptr %flags.i.i.i349.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load volatile i32, ptr %flags.i.i.i349.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %phi.cmp.i350.i = icmp slt i32 %397, 0
  br i1 %phi.cmp.i350.i, label %f2fs_post_read_required.exit352.i.if.then127.i_crit_edge, label %f2fs_post_read_required.exit352.i.if.else.i_crit_edge

f2fs_post_read_required.exit352.i.if.else.i_crit_edge: ; preds = %f2fs_post_read_required.exit352.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

f2fs_post_read_required.exit352.i.if.then127.i_crit_edge: ; preds = %f2fs_post_read_required.exit352.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then127.i

if.then127.i:                                     ; preds = %f2fs_post_read_required.exit352.i.if.then127.i_crit_edge, %lor.lhs.false.i346.i.if.then127.i_crit_edge, %f2fs_encrypted_file.exit.i343.i.if.then127.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio.i.i) #16
  %398 = call ptr @memset(ptr %53, i32 0, i32 72)
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 8
  %399 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %400, i32 0, i32 33
  %401 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %403 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %402, ptr %fio.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 11
  %404 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %i_ino.i.i, align 8
  %406 = ptrtoint ptr %ino.i353.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %ino.i353.i, align 4
  %407 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 0, ptr %type.i.i, align 4
  %408 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 2, ptr %temp.i.i, align 4
  %409 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 0, ptr %op.i.i, align 4
  %410 = ptrtoint ptr %retry.i.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 0, ptr %retry.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn.i.i) #16
  %411 = call ptr @memset(ptr %dn.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %sum.i.i) #16
  %412 = call ptr @memset(ptr %sum.i.i, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni.i.i) #16
  %413 = call ptr @memset(ptr %ni.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newaddr.i.i) #16
  %414 = ptrtoint ptr %newaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 -1, ptr %newaddr.i.i, align 4, !annotation !140
  %fs_mode.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %402, i32 0, i32 73, i32 13
  %415 = ptrtoint ptr %fs_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %fs_mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %416)
  %cmp.i.i354.i = icmp eq i32 %416, 1
  %am.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %402, i32 0, i32 76
  %417 = ptrtoint ptr %am.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %am.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %tobool.not.i355.i = icmp ne i8 %418, 0
  %or.cond.i.i = and i1 %cmp54, %tobool.not.i355.i
  br i1 %or.cond.i.i, label %land.end.i.i, label %if.then127.i.land.end.thread.i.i_crit_edge

if.then127.i.land.end.thread.i.i_crit_edge:       ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.thread.i.i

land.end.i.i:                                     ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #18
  %gc_mode.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %402, i32 0, i32 78
  %419 = ptrtoint ptr %gc_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %gc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %420)
  %cmp6.not.i.i = icmp eq i32 %420, 4
  %spec.select.i.i = select i1 %cmp6.not.i.i, i32 2, i32 7
  br label %land.end.thread.i.i

land.end.thread.i.i:                              ; preds = %land.end.i.i, %if.then127.i.land.end.thread.i.i_crit_edge
  %421 = phi i32 [ 2, %if.then127.i.land.end.thread.i.i_crit_edge ], [ %spec.select.i.i, %land.end.i.i ]
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 9
  %422 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %i_mapping.i.i, align 8
  %call7.i.i = call fastcc ptr @f2fs_grab_cache_page(ptr noundef %423, i32 noundef %add125.i, i1 noundef zeroext false) #16
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %land.end.thread.i.i.move_data_block.exit.i_crit_edge, label %if.end.i364.i

land.end.thread.i.i.move_data_block.exit.i_crit_edge: ; preds = %land.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %move_data_block.exit.i

if.end.i364.i:                                    ; preds = %land.end.thread.i.i
  %424 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i215.i.i = getelementptr inbounds %struct.super_block, ptr %425, i32 0, i32 33
  %426 = ptrtoint ptr %s_fs_info.i.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %s_fs_info.i.i215.i.i, align 16
  %sm_info.i.i.i.i357.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %427, i32 0, i32 11
  %428 = ptrtoint ptr %sm_info.i.i.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %sm_info.i.i.i.i357.i, align 8
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %429, align 4
  %sentry_lock.i.i358.i = getelementptr inbounds %struct.sit_info, ptr %431, i32 0, i32 13
  call void @down_read(ptr noundef %sentry_lock.i.i358.i) #16
  %432 = ptrtoint ptr %sm_info.i.i.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %sm_info.i.i.i.i357.i, align 8
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %433, align 4
  %sentries.i.i.i359.i = getelementptr inbounds %struct.sit_info, ptr %435, i32 0, i32 14
  %436 = ptrtoint ptr %sentries.i.i.i359.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %sentries.i.i.i359.i, align 4
  %cur_valid_map.i.i360.i = getelementptr %struct.seg_entry, ptr %437, i32 %segno.2551, i32 1
  %438 = ptrtoint ptr %cur_valid_map.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %cur_valid_map.i.i360.i, align 4
  %add.ptr.i.i.i361.i = getelementptr i8, ptr %439, i32 %shr.i.i.i327
  %440 = ptrtoint ptr %add.ptr.i.i.i361.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %add.ptr.i.i.i361.i, align 1
  %conv.i.i.i363.i = zext i8 %441 to i32
  %and1.i.i219.i.i = and i32 %shl.i.i.i331, %conv.i.i.i363.i
  call void @up_read(ptr noundef %sentry_lock.i.i358.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i219.i.i)
  %tobool11.not.i.i = icmp eq i32 %and1.i.i219.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i364.i.out.i.i_crit_edge, label %if.end13.i.i

if.end.i364.i.out.i.i_crit_edge:                  ; preds = %if.end.i364.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i.i

if.end13.i.i:                                     ; preds = %if.end.i364.i
  %flags.i.i.i365.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 8
  %442 = ptrtoint ptr %flags.i.i.i365.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load volatile i32, ptr %flags.i.i.i365.i, align 4
  %444 = and i32 %443, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %tobool.i.not.i.i = icmp eq i32 %444, 0
  br i1 %tobool.i.not.i.i, label %if.end20.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr %struct.f2fs_inode_info, ptr %357, i32 0, i32 5, i32 1
  %445 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %446, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  %447 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i221.i.i = getelementptr inbounds %struct.super_block, ptr %448, i32 0, i32 33
  %449 = ptrtoint ptr %s_fs_info.i.i221.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %s_fs_info.i.i221.i.i, align 16
  %arrayidx18.i.i = getelementptr %struct.f2fs_sb_info, ptr %450, i32 0, i32 84, i32 %gc_type
  %451 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load8_noabort(i32 %451)
  %452 = load i64, ptr %arrayidx18.i.i, align 8
  %inc19.i.i = add i64 %452, 1
  store i64 %inc19.i.i, ptr %arrayidx18.i.i, align 8
  br label %out.i.i

if.end20.i.i:                                     ; preds = %if.end13.i.i
  %453 = ptrtoint ptr %flags.i.i.i365.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load volatile i32, ptr %flags.i.i.i365.i, align 4
  %455 = and i32 %454, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %tobool.i223.not.i.i = icmp eq i32 %455, 0
  br i1 %tobool.i223.not.i.i, label %if.end24.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call23.i.i = call i32 @f2fs_pin_file_control(ptr noundef nonnull %357, i1 noundef zeroext true) #16
  br label %out.i.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  %456 = call ptr @memset(ptr %57, i32 0, i32 12)
  %457 = ptrtoint ptr %dn.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %357, ptr %dn.i.i, align 4
  %458 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr null, ptr %54, align 4
  %459 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr null, ptr %55, align 4
  %460 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 0, ptr %56, align 4
  %call25.i.i = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %dn.i.i, i32 noundef %add125.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %if.end24.i.i.out.i.i_crit_edge

if.end24.i.i.out.i.i_crit_edge:                   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i.i

if.end28.i.i:                                     ; preds = %if.end24.i.i
  %461 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %cmp29.i.i = icmp eq i32 %462, 0
  br i1 %cmp29.i.i, label %if.then32.i.i, label %if.end33.i.i, !prof !116

if.then32.i.i:                                    ; preds = %if.end28.i.i
  %463 = getelementptr inbounds %struct.page, ptr %call7.i.i, i32 0, i32 1
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load volatile i32, ptr %463, align 4
  %and.i.i.i366.i = and i32 %465, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i366.i)
  %tobool.not.i.i367.i = icmp eq i32 %and.i.i.i366.i, 0
  br i1 %tobool.not.i.i367.i, label %do.body7.i.i.i, label %if.then.i.i.i343, !prof !115

if.then.i.i.i343:                                 ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @dump_page(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.27) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #16, !srcloc !141
  unreachable

do.body7.i.i.i:                                   ; preds = %if.then32.i.i
  %466 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load volatile i32, ptr %463, align 4
  %and.i31.i.i.i = and i32 %467, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i.i)
  %tobool.not.i.i.i368.i = icmp eq i32 %and.i31.i.i.i, 0
  br i1 %tobool.not.i.i.i368.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !115

if.then.i.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i369.i = add i32 %467, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %468 = ptrtoint ptr %call7.i.i to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i369.i, %if.then.i.i.i.i ], [ %468, %if.end.i.i.i.i ]
  %469 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load volatile i32, ptr %469, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %471)
  %cmp.i.not.i.i.i = icmp eq i32 %471, -1
  %472 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load volatile i32, ptr %463, align 4
  %and.i32.i.i.i = and i32 %473, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i.i)
  %tobool.not.i33.i.i.i = icmp eq i32 %and.i32.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then17.i.i.i, label %do.end24.i.i.i, !prof !116

if.then17.i.i.i:                                  ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i33.i.i.i, label %if.end.i36.i.i.i, label %if.then.i35.i.i.i, !prof !115

if.then.i35.i.i.i:                                ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i34.i.i.i = add i32 %473, -1
  br label %_compound_head.exit38.i.i.i

if.end.i36.i.i.i:                                 ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %474 = ptrtoint ptr %call7.i.i to i32
  br label %_compound_head.exit38.i.i.i

_compound_head.exit38.i.i.i:                      ; preds = %if.end.i36.i.i.i, %if.then.i35.i.i.i
  %retval.0.i37.i.i.i = phi i32 [ %sub.i34.i.i.i, %if.then.i35.i.i.i ], [ %474, %if.end.i36.i.i.i ]
  %475 = inttoptr i32 %retval.0.i37.i.i.i to ptr
  call void @dump_page(ptr noundef %475, ptr noundef nonnull @.str.21) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #16, !srcloc !142
  unreachable

do.end24.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i33.i.i.i, label %if.end.i43.i.i.i, label %if.then.i42.i.i.i, !prof !115

if.then.i42.i.i.i:                                ; preds = %do.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i41.i.i.i = add i32 %473, -1
  br label %ClearPageUptodate.exit.i.i

if.end.i43.i.i.i:                                 ; preds = %do.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %476 = ptrtoint ptr %call7.i.i to i32
  br label %ClearPageUptodate.exit.i.i

ClearPageUptodate.exit.i.i:                       ; preds = %if.end.i43.i.i.i, %if.then.i42.i.i.i
  %retval.0.i44.i.i.i = phi i32 [ %sub.i41.i.i.i, %if.then.i42.i.i.i ], [ %476, %if.end.i43.i.i.i ]
  %477 = inttoptr i32 %retval.0.i44.i.i.i to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %477) #16
  br label %put_out.i.i

if.end33.i.i:                                     ; preds = %if.end28.i.i
  call void @f2fs_wait_on_page_writeback(ptr noundef nonnull %call7.i.i, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #16
  %478 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %58, align 4
  call void @f2fs_wait_on_block_writeback(ptr noundef nonnull %357, i32 noundef %479) #16
  %480 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %fio.i.i, align 4
  %482 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %56, align 4
  %call36.i.i = call i32 @f2fs_get_node_info(ptr noundef %481, i32 noundef %483, ptr noundef nonnull %ni.i.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.end33.i.i.put_out.i.i_crit_edge

if.end33.i.i.put_out.i.i_crit_edge:               ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_out.i.i

if.end39.i.i:                                     ; preds = %if.end33.i.i
  %484 = ptrtoint ptr %page40.i.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr %call7.i.i, ptr %page40.i.i, align 4
  %485 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %58, align 4
  %487 = ptrtoint ptr %old_blkaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %486, ptr %old_blkaddr.i.i, align 4
  %488 = ptrtoint ptr %new_blkaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %486, ptr %new_blkaddr.i.i, align 4
  br i1 %cmp.i.i354.i, label %if.then43.i.i, label %if.end39.i.i.if.end45.i.i_crit_edge

if.end39.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %489 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %fio.i.i, align 4
  %io_order_lock.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %490, i32 0, i32 13
  call void @down_write(ptr noundef %io_order_lock.i.i) #16
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end45.i.i_crit_edge
  %491 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %fio.i.i, align 4
  %meta_inode.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %492, i32 0, i32 18
  %493 = ptrtoint ptr %meta_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %meta_inode.i.i.i, align 8
  %i_mapping.i.i.i = getelementptr inbounds %struct.inode, ptr %494, i32 0, i32 9
  %495 = ptrtoint ptr %i_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %i_mapping.i.i.i, align 8
  %497 = ptrtoint ptr %old_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %old_blkaddr.i.i, align 4
  %call49.i.i = call fastcc ptr @f2fs_grab_cache_page(ptr noundef %496, i32 noundef %498, i1 noundef zeroext false) #16
  %tobool50.not.i.i = icmp eq ptr %call49.i.i, null
  br i1 %tobool50.not.i.i, label %if.end45.i.i.up_out.i.i_crit_edge, label %if.end52.i.i

if.end45.i.i.up_out.i.i_crit_edge:                ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %up_out.i.i

if.end52.i.i:                                     ; preds = %if.end45.i.i
  %499 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %call49.i.i, ptr %encrypted_page.i.i, align 4
  %500 = getelementptr inbounds %struct.page, ptr %call49.i.i, i32 0, i32 1
  %501 = ptrtoint ptr %500 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load volatile i32, ptr %500, align 4
  %and.i.i411 = and i32 %502, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i411)
  %tobool.not.i.i412 = icmp eq i32 %and.i.i411, 0
  br i1 %tobool.not.i.i412, label %if.end.i.i415, label %if.then.i.i414, !prof !115

if.then.i.i414:                                   ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i413 = add i32 %502, -1
  br label %_compound_head.exit.i419

if.end.i.i415:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %503 = ptrtoint ptr %call49.i.i to i32
  br label %_compound_head.exit.i419

_compound_head.exit.i419:                         ; preds = %if.end.i.i415, %if.then.i.i414
  %retval.0.i.i416 = phi i32 [ %sub.i.i413, %if.then.i.i414 ], [ %503, %if.end.i.i415 ]
  %504 = inttoptr i32 %retval.0.i.i416 to ptr
  %505 = getelementptr inbounds %struct.page, ptr %504, i32 0, i32 1
  %506 = ptrtoint ptr %505 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load volatile i32, ptr %505, align 4
  %and.i.i.i.i417 = and i32 %507, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i417)
  %tobool.not.i.i.i418 = icmp eq i32 %and.i.i.i.i417, 0
  br i1 %tobool.not.i.i.i418, label %folio_flags.exit.i.i422, label %if.then.i.i.i420, !prof !115

if.then.i.i.i420:                                 ; preds = %_compound_head.exit.i419
  call void @__sanitizer_cov_trace_pc() #18
  %508 = inttoptr i32 %retval.0.i.i416 to ptr
  call void @dump_page(ptr noundef %508, ptr noundef nonnull @.str.23) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !136
  unreachable

folio_flags.exit.i.i422:                          ; preds = %_compound_head.exit.i419
  %509 = ptrtoint ptr %504 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load volatile i32, ptr %504, align 4
  %511 = and i32 %510, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %511)
  %tobool.i.not.i421 = icmp eq i32 %511, 0
  br i1 %tobool.i.not.i421, label %if.then55.i.i, label %PageUptodate.exit425

PageUptodate.exit425:                             ; preds = %folio_flags.exit.i.i422
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !137
  br label %if.end77.i.i

if.then55.i.i:                                    ; preds = %folio_flags.exit.i.i422
  %call56.i.i = call i32 @f2fs_submit_page_bio(ptr noundef nonnull %fio.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i)
  %tobool57.not.i.i = icmp eq i32 %call56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end59.i.i, label %if.then58.i.i

if.then58.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call49.i.i, i32 noundef 1) #16
  br label %up_out.i.i

if.end59.i.i:                                     ; preds = %if.then55.i.i
  %512 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %fio.i.i, align 4
  call void @f2fs_update_iostat(ptr noundef %513, i32 noundef 16, i64 noundef 4096) #16
  %514 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %fio.i.i, align 4
  call void @f2fs_update_iostat(ptr noundef %515, i32 noundef 17, i64 noundef 4096) #16
  call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 788) #16
  %516 = ptrtoint ptr %500 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load volatile i32, ptr %500, align 4
  %and.i.i395 = and i32 %517, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i395)
  %tobool.not.i.i396 = icmp eq i32 %and.i.i395, 0
  br i1 %tobool.not.i.i396, label %if.end.i.i399, label %if.then.i.i398, !prof !115

if.then.i.i398:                                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i397 = add i32 %517, -1
  br label %_compound_head.exit.i403

if.end.i.i399:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %518 = ptrtoint ptr %call49.i.i to i32
  br label %_compound_head.exit.i403

_compound_head.exit.i403:                         ; preds = %if.end.i.i399, %if.then.i.i398
  %retval.0.i.i400 = phi i32 [ %sub.i.i397, %if.then.i.i398 ], [ %518, %if.end.i.i399 ]
  %519 = inttoptr i32 %retval.0.i.i400 to ptr
  %520 = getelementptr inbounds %struct.page, ptr %519, i32 0, i32 1
  %521 = ptrtoint ptr %520 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load volatile i32, ptr %520, align 4
  %and.i.i.i.i401 = and i32 %522, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i401)
  %tobool.not.i.i.i402 = icmp eq i32 %and.i.i.i.i401, 0
  br i1 %tobool.not.i.i.i402, label %folio_flags.exit.i.i407, label %if.then.i.i.i404, !prof !115

if.then.i.i.i404:                                 ; preds = %_compound_head.exit.i403
  call void @__sanitizer_cov_trace_pc() #18
  %523 = inttoptr i32 %retval.0.i.i400 to ptr
  call void @dump_page(ptr noundef %523, ptr noundef nonnull @.str.23) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !136
  unreachable

folio_flags.exit.i.i407:                          ; preds = %_compound_head.exit.i403
  %call.i.i.i.i405 = call zeroext i1 @__kasan_check_write(ptr noundef %519, i32 noundef 4) #16
  %524 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load volatile i32, ptr %519, align 4
  %and.i.i4.i.i = and i32 %525, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i406 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i406, label %folio_trylock.exit.i, label %folio_flags.exit.i.i407.if.then.i409_crit_edge

folio_flags.exit.i.i407.if.then.i409_crit_edge:   ; preds = %folio_flags.exit.i.i407
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i409

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i407
  call void @llvm.prefetch.p0(ptr %519, i32 1, i32 3, i32 1) #16
  %526 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %519, ptr %519, i32 1, ptr elementtype(i32) %519) #16, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %526, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !144
  %and1.i.i.i.i408 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i408)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i408, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i409_crit_edge

folio_trylock.exit.i.if.then.i409_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i409

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lock_page.exit

if.then.i409:                                     ; preds = %folio_trylock.exit.i.if.then.i409_crit_edge, %folio_flags.exit.i.i407.if.then.i409_crit_edge
  call void @__folio_lock(ptr noundef %519) #16
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i409, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping.i.i = getelementptr inbounds %struct.page, ptr %call49.i.i, i32 0, i32 1, i32 0, i32 1
  %527 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %mapping.i.i, align 4
  %529 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %fio.i.i, align 4
  %meta_inode.i224.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %530, i32 0, i32 18
  %531 = ptrtoint ptr %meta_inode.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %meta_inode.i224.i.i, align 8
  %i_mapping.i225.i.i = getelementptr inbounds %struct.inode, ptr %532, i32 0, i32 9
  %533 = ptrtoint ptr %i_mapping.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %i_mapping.i225.i.i, align 8
  %cmp64.not.i.i = icmp eq ptr %528, %534
  br i1 %cmp64.not.i.i, label %lor.rhs.i370.i, label %lock_page.exit.if.then75.i.i_crit_edge, !prof !115

lock_page.exit.if.then75.i.i_crit_edge:           ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then75.i.i

lor.rhs.i370.i:                                   ; preds = %lock_page.exit
  %535 = ptrtoint ptr %500 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load volatile i32, ptr %500, align 4
  %and.i.i380 = and i32 %536, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i380)
  %tobool.not.i.i381 = icmp eq i32 %and.i.i380, 0
  br i1 %tobool.not.i.i381, label %if.end.i.i384, label %if.then.i.i383, !prof !115

if.then.i.i383:                                   ; preds = %lor.rhs.i370.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i382 = add i32 %536, -1
  br label %_compound_head.exit.i388

if.end.i.i384:                                    ; preds = %lor.rhs.i370.i
  call void @__sanitizer_cov_trace_pc() #18
  %537 = ptrtoint ptr %call49.i.i to i32
  br label %_compound_head.exit.i388

_compound_head.exit.i388:                         ; preds = %if.end.i.i384, %if.then.i.i383
  %retval.0.i.i385 = phi i32 [ %sub.i.i382, %if.then.i.i383 ], [ %537, %if.end.i.i384 ]
  %538 = inttoptr i32 %retval.0.i.i385 to ptr
  %539 = getelementptr inbounds %struct.page, ptr %538, i32 0, i32 1
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load volatile i32, ptr %539, align 4
  %and.i.i.i.i386 = and i32 %541, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i386)
  %tobool.not.i.i.i387 = icmp eq i32 %and.i.i.i.i386, 0
  br i1 %tobool.not.i.i.i387, label %folio_flags.exit.i.i391, label %if.then.i.i.i389, !prof !115

if.then.i.i.i389:                                 ; preds = %_compound_head.exit.i388
  call void @__sanitizer_cov_trace_pc() #18
  %542 = inttoptr i32 %retval.0.i.i385 to ptr
  call void @dump_page(ptr noundef %542, ptr noundef nonnull @.str.23) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !136
  unreachable

folio_flags.exit.i.i391:                          ; preds = %_compound_head.exit.i388
  %543 = ptrtoint ptr %538 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load volatile i32, ptr %538, align 4
  %545 = and i32 %544, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %545)
  %tobool.i.not.i390 = icmp eq i32 %545, 0
  br i1 %tobool.i.not.i390, label %folio_flags.exit.i.i391.if.then75.i.i_crit_edge, label %PageUptodate.exit394

folio_flags.exit.i.i391.if.then75.i.i_crit_edge:  ; preds = %folio_flags.exit.i.i391
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then75.i.i

PageUptodate.exit394:                             ; preds = %folio_flags.exit.i.i391
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !137
  br label %if.end77.i.i

if.then75.i.i:                                    ; preds = %folio_flags.exit.i.i391.if.then75.i.i_crit_edge, %lock_page.exit.if.then75.i.i_crit_edge
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call49.i.i, i32 noundef 1) #16
  br label %up_out.i.i

if.end77.i.i:                                     ; preds = %PageUptodate.exit394, %PageUptodate.exit425
  %546 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %56, align 4
  %548 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %57, align 4
  %550 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %version.i.i, align 4
  %552 = call i32 @llvm.bswap.i32(i32 %547) #16
  %553 = ptrtoint ptr %sum.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %552, ptr %sum.i.i, align 4
  %conv.i.i371.i = trunc i32 %549 to i16
  %554 = call i16 @llvm.bswap.i16(i16 %conv.i.i371.i) #16
  %555 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %555, i32 2)
  store i16 %554, ptr %60, align 1
  %556 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %551, ptr %59, align 4
  %557 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %fio.i.i, align 4
  %559 = ptrtoint ptr %old_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %old_blkaddr.i.i, align 4
  call void @f2fs_allocate_data_block(ptr noundef %558, ptr noundef null, i32 noundef %560, ptr noundef nonnull %newaddr.i.i, ptr noundef nonnull %sum.i.i, i32 noundef %421, ptr noundef null) #16
  %561 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %fio.i.i, align 4
  %meta_inode.i226.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %562, i32 0, i32 18
  %563 = ptrtoint ptr %meta_inode.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %meta_inode.i226.i.i, align 8
  %i_mapping.i227.i.i = getelementptr inbounds %struct.inode, ptr %564, i32 0, i32 9
  %565 = ptrtoint ptr %i_mapping.i227.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %i_mapping.i227.i.i, align 8
  %567 = ptrtoint ptr %newaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %newaddr.i.i, align 4
  %call83.i.i = call fastcc ptr @f2fs_pagecache_get_page(ptr noundef %566, i32 noundef %568) #16
  %569 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %call83.i.i, ptr %encrypted_page.i.i, align 4
  %tobool86.not.i.i = icmp eq ptr %call83.i.i, null
  br i1 %tobool86.not.i.i, label %recover_block.thread.i.i, label %if.end88.i.i

recover_block.thread.i.i:                         ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call49.i.i, i32 noundef 1) #16
  br label %if.then127.i.i

if.end88.i.i:                                     ; preds = %if.end77.i.i
  call void @f2fs_wait_on_page_writeback(ptr noundef nonnull %call83.i.i, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #16
  %570 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %encrypted_page.i.i, align 4
  %call91.i.i = call ptr @page_address(ptr noundef %571) #16
  %call92.i.i = call ptr @page_address(ptr noundef nonnull %call49.i.i) #16
  %572 = call ptr @memcpy(ptr %call91.i.i, ptr %call92.i.i, i32 4096)
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call49.i.i, i32 noundef 1) #16
  %573 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %fio.i.i, align 4
  %meta_inode.i228.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %574, i32 0, i32 18
  %575 = ptrtoint ptr %meta_inode.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %meta_inode.i228.i.i, align 8
  %i_mapping.i229.i.i = getelementptr inbounds %struct.inode, ptr %576, i32 0, i32 9
  %577 = ptrtoint ptr %i_mapping.i229.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %i_mapping.i229.i.i, align 8
  %579 = ptrtoint ptr %old_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %old_blkaddr.i.i, align 4
  %call97.i.i = call i32 @invalidate_mapping_pages(ptr noundef %578, i32 noundef %580, i32 noundef %580) #16
  %581 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %fio.i.i, align 4
  %583 = ptrtoint ptr %old_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %old_blkaddr.i.i, align 4
  call void @f2fs_invalidate_compress_page(ptr noundef %582, i32 noundef %584) #16
  %585 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %encrypted_page.i.i, align 4
  %call101.i.i = call zeroext i1 @set_page_dirty(ptr noundef %586) #16
  %587 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %encrypted_page.i.i, align 4
  %call103.i.i = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %588) #16
  br i1 %call103.i.i, label %if.then104.i.i, label %if.end88.i.i.if.end106.i.i_crit_edge

if.end88.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106.i.i

if.then104.i.i:                                   ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %589 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %fio.i.i, align 4
  %arrayidx.i.i372.i = getelementptr %struct.f2fs_sb_info, ptr %590, i32 0, i32 69, i32 4
  %call.i.i.i.i373.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i372.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i372.i, i32 1, i32 3, i32 1) #16
  %591 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i372.i, ptr %arrayidx.i.i372.i, i32 1, ptr elementtype(i32) %arrayidx.i.i372.i) #16, !srcloc !138
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.then104.i.i, %if.end88.i.i.if.end106.i.i_crit_edge
  %592 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %encrypted_page.i.i, align 4
  %call108.i.i = call zeroext i1 @set_page_writeback(ptr noundef %593) #16
  %594 = getelementptr inbounds %struct.page, ptr %call7.i.i, i32 0, i32 1
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load volatile i32, ptr %594, align 4
  %and.i.i180.i.i = and i32 %596, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i180.i.i)
  %tobool.not.i181.i.i = icmp eq i32 %and.i.i180.i.i, 0
  br i1 %tobool.not.i181.i.i, label %do.body7.i185.i.i, label %if.then.i182.i.i, !prof !115

if.then.i182.i.i:                                 ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @dump_page(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.27) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !145
  unreachable

do.body7.i185.i.i:                                ; preds = %if.end106.i.i
  %597 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load volatile i32, ptr %594, align 4
  %and.i31.i183.i.i = and i32 %598, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i183.i.i)
  %tobool.not.i.i184.i.i = icmp eq i32 %and.i31.i183.i.i, 0
  br i1 %tobool.not.i.i184.i.i, label %if.end.i.i188.i.i, label %if.then.i.i187.i.i, !prof !115

if.then.i.i187.i.i:                               ; preds = %do.body7.i185.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i186.i.i = add i32 %598, -1
  br label %_compound_head.exit.i193.i.i

if.end.i.i188.i.i:                                ; preds = %do.body7.i185.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %599 = ptrtoint ptr %call7.i.i to i32
  br label %_compound_head.exit.i193.i.i

_compound_head.exit.i193.i.i:                     ; preds = %if.end.i.i188.i.i, %if.then.i.i187.i.i
  %retval.0.i.i189.i.i = phi i32 [ %sub.i.i186.i.i, %if.then.i.i187.i.i ], [ %599, %if.end.i.i188.i.i ]
  %600 = inttoptr i32 %retval.0.i.i189.i.i to ptr
  %601 = ptrtoint ptr %600 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load volatile i32, ptr %600, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %602)
  %cmp.i.not.i190.i.i = icmp eq i32 %602, -1
  %603 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load volatile i32, ptr %594, align 4
  %and.i32.i191.i.i = and i32 %604, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i191.i.i)
  %tobool.not.i33.i192.i.i = icmp eq i32 %and.i32.i191.i.i, 0
  br i1 %cmp.i.not.i190.i.i, label %if.then17.i194.i.i, label %do.end24.i200.i.i, !prof !116

if.then17.i194.i.i:                               ; preds = %_compound_head.exit.i193.i.i
  br i1 %tobool.not.i33.i192.i.i, label %if.end.i36.i197.i.i, label %if.then.i35.i196.i.i, !prof !115

if.then.i35.i196.i.i:                             ; preds = %if.then17.i194.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i34.i195.i.i = add i32 %604, -1
  br label %_compound_head.exit38.i199.i.i

if.end.i36.i197.i.i:                              ; preds = %if.then17.i194.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %605 = ptrtoint ptr %call7.i.i to i32
  br label %_compound_head.exit38.i199.i.i

_compound_head.exit38.i199.i.i:                   ; preds = %if.end.i36.i197.i.i, %if.then.i35.i196.i.i
  %retval.0.i37.i198.i.i = phi i32 [ %sub.i34.i195.i.i, %if.then.i35.i196.i.i ], [ %605, %if.end.i36.i197.i.i ]
  %606 = inttoptr i32 %retval.0.i37.i198.i.i to ptr
  call void @dump_page(ptr noundef %606, ptr noundef nonnull @.str.21) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !146
  unreachable

do.end24.i200.i.i:                                ; preds = %_compound_head.exit.i193.i.i
  br i1 %tobool.not.i33.i192.i.i, label %if.end.i43.i203.i.i, label %if.then.i42.i202.i.i, !prof !115

if.then.i42.i202.i.i:                             ; preds = %do.end24.i200.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i41.i201.i.i = add i32 %604, -1
  br label %ClearPageError.exit.i.i

if.end.i43.i203.i.i:                              ; preds = %do.end24.i200.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %607 = ptrtoint ptr %call7.i.i to i32
  br label %ClearPageError.exit.i.i

ClearPageError.exit.i.i:                          ; preds = %if.end.i43.i203.i.i, %if.then.i42.i202.i.i
  %retval.0.i44.i204.i.i = phi i32 [ %sub.i41.i201.i.i, %if.then.i42.i202.i.i ], [ %607, %if.end.i43.i203.i.i ]
  %608 = inttoptr i32 %retval.0.i44.i204.i.i to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %608) #16
  %609 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 1, ptr %op.i.i, align 4
  %610 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 2048, ptr %53, align 4
  %611 = ptrtoint ptr %newaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %newaddr.i.i, align 4
  %613 = ptrtoint ptr %new_blkaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %612, ptr %new_blkaddr.i.i, align 4
  call void @f2fs_submit_page_write(ptr noundef nonnull %fio.i.i) #16
  %614 = ptrtoint ptr %retry.i.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %retry.i.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %615)
  %tobool112.not.i.i = icmp eq i8 %615, 0
  br i1 %tobool112.not.i.i, label %if.end120.i.i, label %if.then113.i.i

if.then113.i.i:                                   ; preds = %ClearPageError.exit.i.i
  %616 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %encrypted_page.i.i, align 4
  %618 = getelementptr inbounds %struct.page, ptr %617, i32 0, i32 1
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load volatile i32, ptr %618, align 4
  %and.i.i205.i.i = and i32 %620, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i205.i.i)
  %tobool.not.i.i206.i.i = icmp eq i32 %and.i.i205.i.i, 0
  br i1 %tobool.not.i.i206.i.i, label %if.end.i.i209.i.i, label %if.then.i.i208.i.i, !prof !115

if.then.i.i208.i.i:                               ; preds = %if.then113.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i207.i.i = add i32 %620, -1
  br label %_compound_head.exit.i212.i.i

if.end.i.i209.i.i:                                ; preds = %if.then113.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %621 = ptrtoint ptr %617 to i32
  br label %_compound_head.exit.i212.i.i

_compound_head.exit.i212.i.i:                     ; preds = %if.end.i.i209.i.i, %if.then.i.i208.i.i
  %retval.0.i.i210.i.i = phi i32 [ %sub.i.i207.i.i, %if.then.i.i208.i.i ], [ %621, %if.end.i.i209.i.i ]
  %622 = inttoptr i32 %retval.0.i.i210.i.i to ptr
  %623 = ptrtoint ptr %622 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load volatile i32, ptr %622, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %624)
  %cmp.i.not.i211.i.i = icmp eq i32 %624, -1
  %625 = ptrtoint ptr %618 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load volatile i32, ptr %618, align 4
  %and.i16.i.i.i = and i32 %626, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i211.i.i, label %if.then.i213.i.i, label %do.end10.i.i.i, !prof !116

if.then.i213.i.i:                                 ; preds = %_compound_head.exit.i212.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !115

if.then.i19.i.i.i:                                ; preds = %if.then.i213.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i18.i.i.i = add i32 %626, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i213.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %627 = ptrtoint ptr %617 to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %627, %if.end.i20.i.i.i ]
  %628 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  call void @dump_page(ptr noundef %628, ptr noundef nonnull @.str.21) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #16, !srcloc !147
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i212.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !115

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i.i.i = add i32 %626, -1
  br label %PageWriteback.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %629 = ptrtoint ptr %617 to i32
  br label %PageWriteback.exit.i.i

PageWriteback.exit.i.i:                           ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %629, %if.end.i27.i.i.i ]
  %630 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %631 = ptrtoint ptr %630 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load volatile i32, ptr %630, align 4
  %633 = and i32 %632, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %633)
  %tobool116.not.i.i = icmp eq i32 %633, 0
  br i1 %tobool116.not.i.i, label %PageWriteback.exit.i.i.recover_block.i.i_crit_edge, label %if.then117.i.i

PageWriteback.exit.i.i.recover_block.i.i_crit_edge: ; preds = %PageWriteback.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %recover_block.i.i

if.then117.i.i:                                   ; preds = %PageWriteback.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @end_page_writeback(ptr noundef %617) #16
  br label %recover_block.i.i

if.end120.i.i:                                    ; preds = %ClearPageError.exit.i.i
  %634 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %fio.i.i, align 4
  call void @f2fs_update_iostat(ptr noundef %635, i32 noundef 7, i64 noundef 4096) #16
  %636 = ptrtoint ptr %newaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %newaddr.i.i, align 4
  call void @f2fs_update_data_blkaddr(ptr noundef nonnull %dn.i.i, i32 noundef %637) #16
  call void @_set_bit(i32 noundef 12, ptr noundef %flags.i.i.i365.i) #16
  %index.i.i = getelementptr inbounds %struct.page, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %638 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %639)
  %cmp122.i.i = icmp eq i32 %639, 0
  br i1 %cmp122.i.i, label %if.then123.i.i, label %if.end120.i.i.recover_block.thread234.i.i_crit_edge

if.end120.i.i.recover_block.thread234.i.i_crit_edge: ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %recover_block.thread234.i.i

if.then123.i.i:                                   ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 18, ptr noundef %flags.i.i.i365.i) #16
  br label %recover_block.thread234.i.i

recover_block.thread234.i.i:                      ; preds = %if.then123.i.i, %if.end120.i.i.recover_block.thread234.i.i_crit_edge
  %640 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %encrypted_page.i.i, align 4
  call fastcc void @f2fs_put_page(ptr noundef %641, i32 noundef 1) #16
  br label %up_out.i.i

recover_block.i.i:                                ; preds = %if.then117.i.i, %PageWriteback.exit.i.i.recover_block.i.i_crit_edge
  %642 = ptrtoint ptr %encrypted_page.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %encrypted_page.i.i, align 4
  call fastcc void @f2fs_put_page(ptr noundef %643, i32 noundef 1) #16
  br label %if.then127.i.i

if.then127.i.i:                                   ; preds = %recover_block.i.i, %recover_block.thread.i.i
  %err.2233.i.i = phi i32 [ -12, %recover_block.thread.i.i ], [ -11, %recover_block.i.i ]
  %644 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %fio.i.i, align 4
  %646 = ptrtoint ptr %newaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %newaddr.i.i, align 4
  %648 = ptrtoint ptr %old_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %old_blkaddr.i.i, align 4
  call void @f2fs_do_replace_block(ptr noundef %645, ptr noundef nonnull %sum.i.i, i32 noundef %647, i32 noundef %649, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %up_out.i.i

up_out.i.i:                                       ; preds = %if.then127.i.i, %recover_block.thread234.i.i, %if.then75.i.i, %if.then58.i.i, %if.end45.i.i.up_out.i.i_crit_edge
  %err.3.i.i = phi i32 [ %err.2233.i.i, %if.then127.i.i ], [ %call56.i.i, %if.then58.i.i ], [ -5, %if.then75.i.i ], [ -12, %if.end45.i.i.up_out.i.i_crit_edge ], [ 0, %recover_block.thread234.i.i ]
  br i1 %cmp.i.i354.i, label %if.then132.i.i, label %up_out.i.i.put_out.i.i_crit_edge

up_out.i.i.put_out.i.i_crit_edge:                 ; preds = %up_out.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_out.i.i

if.then132.i.i:                                   ; preds = %up_out.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %650 = ptrtoint ptr %fio.i.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %fio.i.i, align 4
  %io_order_lock134.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %651, i32 0, i32 13
  call void @up_write(ptr noundef %io_order_lock134.i.i) #16
  br label %put_out.i.i

put_out.i.i:                                      ; preds = %if.then132.i.i, %up_out.i.i.put_out.i.i_crit_edge, %if.end33.i.i.put_out.i.i_crit_edge, %ClearPageUptodate.exit.i.i
  %err.4.i.i = phi i32 [ -2, %ClearPageUptodate.exit.i.i ], [ %call36.i.i, %if.end33.i.i.put_out.i.i_crit_edge ], [ %err.3.i.i, %if.then132.i.i ], [ %err.3.i.i, %up_out.i.i.put_out.i.i_crit_edge ]
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn.i.i) #16
  br label %out.i.i

out.i.i:                                          ; preds = %put_out.i.i, %if.end24.i.i.out.i.i_crit_edge, %if.then22.i.i, %if.then15.i.i, %if.end.i364.i.out.i.i_crit_edge
  %err.5.i.i = phi i32 [ -11, %if.then15.i.i ], [ -11, %if.then22.i.i ], [ %call25.i.i, %if.end24.i.i.out.i.i_crit_edge ], [ %err.4.i.i, %put_out.i.i ], [ -2, %if.end.i364.i.out.i.i_crit_edge ]
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call7.i.i, i32 noundef 1) #16
  br label %move_data_block.exit.i

move_data_block.exit.i:                           ; preds = %out.i.i, %land.end.thread.i.i.move_data_block.exit.i_crit_edge
  %retval.0.i374.i = phi i32 [ %err.5.i.i, %out.i.i ], [ -12, %land.end.thread.i.i.move_data_block.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newaddr.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni.i.i) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %sum.i.i) #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn.i.i) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio.i.i) #16
  br label %if.end130.i

if.else.i:                                        ; preds = %f2fs_post_read_required.exit352.i.if.else.i_crit_edge, %lor.rhs.i348.i.if.else.i_crit_edge
  %call.i376.i = call ptr @f2fs_get_lock_data_page(ptr noundef nonnull %357, i32 noundef %add125.i, i1 noundef zeroext true) #16
  %cmp.i.i377.i = icmp ugt ptr %call.i376.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i377.i, label %if.else.i.if.end140.i_crit_edge, label %if.end.i389.i

if.else.i.if.end140.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

if.end.i389.i:                                    ; preds = %if.else.i
  %i_sb.i.i379.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 8
  %652 = ptrtoint ptr %i_sb.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %i_sb.i.i379.i, align 4
  %s_fs_info.i.i.i380.i = getelementptr inbounds %struct.super_block, ptr %653, i32 0, i32 33
  %654 = ptrtoint ptr %s_fs_info.i.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %s_fs_info.i.i.i380.i, align 16
  %sm_info.i.i.i.i381.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %655, i32 0, i32 11
  %656 = ptrtoint ptr %sm_info.i.i.i.i381.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %sm_info.i.i.i.i381.i, align 8
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %657, align 4
  %sentry_lock.i.i382.i = getelementptr inbounds %struct.sit_info, ptr %659, i32 0, i32 13
  call void @down_read(ptr noundef %sentry_lock.i.i382.i) #16
  %660 = ptrtoint ptr %sm_info.i.i.i.i381.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %sm_info.i.i.i.i381.i, align 8
  %662 = ptrtoint ptr %661 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %661, align 4
  %sentries.i.i.i383.i = getelementptr inbounds %struct.sit_info, ptr %663, i32 0, i32 14
  %664 = ptrtoint ptr %sentries.i.i.i383.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %sentries.i.i.i383.i, align 4
  %cur_valid_map.i.i384.i = getelementptr %struct.seg_entry, ptr %665, i32 %segno.2551, i32 1
  %666 = ptrtoint ptr %cur_valid_map.i.i384.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %cur_valid_map.i.i384.i, align 4
  %add.ptr.i.i.i385.i = getelementptr i8, ptr %667, i32 %shr.i.i.i327
  %668 = ptrtoint ptr %add.ptr.i.i.i385.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %add.ptr.i.i.i385.i, align 1
  %conv.i.i.i387.i = zext i8 %669 to i32
  %and1.i.i90.i.i = and i32 %shl.i.i.i331, %conv.i.i.i387.i
  call void @up_read(ptr noundef %sentry_lock.i.i382.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i90.i.i)
  %tobool.not.i388.i = icmp eq i32 %and1.i.i90.i.i, 0
  br i1 %tobool.not.i388.i, label %if.end.i389.i.out.i439.i_crit_edge, label %if.end6.i392.i

if.end.i389.i.out.i439.i_crit_edge:               ; preds = %if.end.i389.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i439.i

if.end6.i392.i:                                   ; preds = %if.end.i389.i
  %flags.i.i.i390.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 8
  %670 = ptrtoint ptr %flags.i.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load volatile i32, ptr %flags.i.i.i390.i, align 4
  %672 = and i32 %671, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %672)
  %tobool.i.not.i391.i = icmp eq i32 %672, 0
  br i1 %tobool.i.not.i391.i, label %if.end13.i395.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end6.i392.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i393.i = getelementptr %struct.f2fs_inode_info, ptr %357, i32 0, i32 5, i32 1
  %673 = ptrtoint ptr %arrayidx.i393.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %arrayidx.i393.i, align 4
  %inc.i394.i = add i32 %674, 1
  store i32 %inc.i394.i, ptr %arrayidx.i393.i, align 4
  %675 = ptrtoint ptr %i_sb.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %i_sb.i.i379.i, align 4
  %s_fs_info.i.i92.i.i = getelementptr inbounds %struct.super_block, ptr %676, i32 0, i32 33
  %677 = ptrtoint ptr %s_fs_info.i.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %s_fs_info.i.i92.i.i, align 16
  %arrayidx11.i.i = getelementptr %struct.f2fs_sb_info, ptr %678, i32 0, i32 84, i32 %gc_type
  %679 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load8_noabort(i32 %679)
  %680 = load i64, ptr %arrayidx11.i.i, align 8
  %inc12.i.i = add i64 %680, 1
  store i64 %inc12.i.i, ptr %arrayidx11.i.i, align 8
  br label %out.i439.i

if.end13.i395.i:                                  ; preds = %if.end6.i392.i
  %681 = ptrtoint ptr %flags.i.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load volatile i32, ptr %flags.i.i.i390.i, align 4
  %683 = and i32 %682, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %683)
  %tobool.i94.not.i.i = icmp eq i32 %683, 0
  br i1 %tobool.i94.not.i.i, label %if.end19.i.i, label %if.then15.i397.i

if.then15.i397.i:                                 ; preds = %if.end13.i395.i
  br i1 %cmp.i396.i, label %if.then16.i.i, label %if.then15.i397.i.out.i439.i_crit_edge

if.then15.i397.i.out.i439.i_crit_edge:            ; preds = %if.then15.i397.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i439.i

if.then16.i.i:                                    ; preds = %if.then15.i397.i
  call void @__sanitizer_cov_trace_pc() #18
  %call17.i.i = call i32 @f2fs_pin_file_control(ptr noundef nonnull %357, i1 noundef zeroext true) #16
  br label %out.i439.i

if.end19.i.i:                                     ; preds = %if.end13.i395.i
  br i1 %cmp54, label %if.then21.i400.i, label %if.else.i430.i

if.then21.i400.i:                                 ; preds = %if.end19.i.i
  %684 = getelementptr inbounds %struct.page, ptr %call.i376.i, i32 0, i32 1
  %685 = ptrtoint ptr %684 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load volatile i32, ptr %684, align 4
  %and.i.i.i398.i = and i32 %686, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i398.i)
  %tobool.not.i.i.i399.i = icmp eq i32 %and.i.i.i398.i, 0
  br i1 %tobool.not.i.i.i399.i, label %if.end.i.i.i403.i, label %if.then.i.i.i402.i, !prof !115

if.then.i.i.i402.i:                               ; preds = %if.then21.i400.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i401.i = add i32 %686, -1
  br label %_compound_head.exit.i.i408.i

if.end.i.i.i403.i:                                ; preds = %if.then21.i400.i
  call void @__sanitizer_cov_trace_pc() #18
  %687 = ptrtoint ptr %call.i376.i to i32
  br label %_compound_head.exit.i.i408.i

_compound_head.exit.i.i408.i:                     ; preds = %if.end.i.i.i403.i, %if.then.i.i.i402.i
  %retval.0.i.i.i404.i = phi i32 [ %sub.i.i.i401.i, %if.then.i.i.i402.i ], [ %687, %if.end.i.i.i403.i ]
  %688 = inttoptr i32 %retval.0.i.i.i404.i to ptr
  %689 = ptrtoint ptr %688 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load volatile i32, ptr %688, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %690)
  %cmp.i.not.i.i405.i = icmp eq i32 %690, -1
  %691 = ptrtoint ptr %684 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load volatile i32, ptr %684, align 4
  %and.i16.i.i406.i = and i32 %692, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i406.i)
  %tobool.not.i17.i.i407.i = icmp eq i32 %and.i16.i.i406.i, 0
  br i1 %cmp.i.not.i.i405.i, label %if.then.i.i409.i, label %do.end10.i.i415.i, !prof !116

if.then.i.i409.i:                                 ; preds = %_compound_head.exit.i.i408.i
  br i1 %tobool.not.i17.i.i407.i, label %if.end.i20.i.i412.i, label %if.then.i19.i.i411.i, !prof !115

if.then.i19.i.i411.i:                             ; preds = %if.then.i.i409.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i18.i.i410.i = add i32 %692, -1
  br label %_compound_head.exit22.i.i414.i

if.end.i20.i.i412.i:                              ; preds = %if.then.i.i409.i
  call void @__sanitizer_cov_trace_pc() #18
  %693 = ptrtoint ptr %call.i376.i to i32
  br label %_compound_head.exit22.i.i414.i

_compound_head.exit22.i.i414.i:                   ; preds = %if.end.i20.i.i412.i, %if.then.i19.i.i411.i
  %retval.0.i21.i.i413.i = phi i32 [ %sub.i18.i.i410.i, %if.then.i19.i.i411.i ], [ %693, %if.end.i20.i.i412.i ]
  %694 = inttoptr i32 %retval.0.i21.i.i413.i to ptr
  call void @dump_page(ptr noundef %694, ptr noundef nonnull @.str.21) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #16, !srcloc !147
  unreachable

do.end10.i.i415.i:                                ; preds = %_compound_head.exit.i.i408.i
  br i1 %tobool.not.i17.i.i407.i, label %if.end.i27.i.i418.i, label %if.then.i26.i.i417.i, !prof !115

if.then.i26.i.i417.i:                             ; preds = %do.end10.i.i415.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i.i416.i = add i32 %692, -1
  br label %PageWriteback.exit.i420.i

if.end.i27.i.i418.i:                              ; preds = %do.end10.i.i415.i
  call void @__sanitizer_cov_trace_pc() #18
  %695 = ptrtoint ptr %call.i376.i to i32
  br label %PageWriteback.exit.i420.i

PageWriteback.exit.i420.i:                        ; preds = %if.end.i27.i.i418.i, %if.then.i26.i.i417.i
  %retval.0.i28.i.i419.i = phi i32 [ %sub.i25.i.i416.i, %if.then.i26.i.i417.i ], [ %695, %if.end.i27.i.i418.i ]
  %696 = inttoptr i32 %retval.0.i28.i.i419.i to ptr
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load volatile i32, ptr %696, align 4
  %699 = and i32 %698, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %699)
  %tobool23.not.i.i = icmp eq i32 %699, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %PageWriteback.exit.i420.i.out.i439.i_crit_edge

PageWriteback.exit.i420.i.out.i439.i_crit_edge:   ; preds = %PageWriteback.exit.i420.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i439.i

if.end25.i.i:                                     ; preds = %PageWriteback.exit.i420.i
  call void @__sanitizer_cov_trace_pc() #18
  %call26.i.i = call zeroext i1 @set_page_dirty(ptr noundef %call.i376.i) #16
  call fastcc void @set_page_private_gcing(ptr noundef %call.i376.i) #16
  br label %out.i439.i

if.else.i430.i:                                   ; preds = %if.end19.i.i
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio.i375.i) #16
  %700 = call ptr @memset(ptr %52, i32 255, i32 40)
  %701 = ptrtoint ptr %i_sb.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %i_sb.i.i379.i, align 4
  %s_fs_info.i.i96.i.i = getelementptr inbounds %struct.super_block, ptr %702, i32 0, i32 33
  %703 = ptrtoint ptr %s_fs_info.i.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %s_fs_info.i.i96.i.i, align 16
  %705 = ptrtoint ptr %fio.i375.i to i32
  call void @__asan_store4_noabort(i32 %705)
  store ptr %704, ptr %fio.i375.i, align 4
  %i_ino.i422.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 11
  %706 = ptrtoint ptr %i_ino.i422.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %i_ino.i422.i, align 8
  %708 = ptrtoint ptr %ino.i421.i to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 %707, ptr %ino.i421.i, align 4
  %709 = ptrtoint ptr %type.i423.i to i32
  call void @__asan_store4_noabort(i32 %709)
  store i32 0, ptr %type.i423.i, align 4
  %710 = ptrtoint ptr %temp.i424.i to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 2, ptr %temp.i424.i, align 4
  %711 = ptrtoint ptr %op.i425.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 1, ptr %op.i425.i, align 4
  %712 = ptrtoint ptr %op_flags.i426.i to i32
  call void @__asan_store4_noabort(i32 %712)
  store i32 2048, ptr %op_flags.i426.i, align 4
  %713 = ptrtoint ptr %new_blkaddr.i427.i to i32
  call void @__asan_store4_noabort(i32 %713)
  store i32 0, ptr %new_blkaddr.i427.i, align 4
  %714 = ptrtoint ptr %old_blkaddr.i428.i to i32
  call void @__asan_store4_noabort(i32 %714)
  store i32 0, ptr %old_blkaddr.i428.i, align 4
  %715 = ptrtoint ptr %page28.i.i to i32
  call void @__asan_store4_noabort(i32 %715)
  store ptr %call.i376.i, ptr %page28.i.i, align 4
  %716 = ptrtoint ptr %compr_blocks.i.i to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 0, ptr %compr_blocks.i.i, align 4
  %717 = ptrtoint ptr %encrypted.i.i to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 0, ptr %encrypted.i.i, align 4
  %718 = call ptr @memset(ptr %encrypted_page.i429.i, i32 0, i32 17)
  %719 = call ptr @memset(ptr %need_lock.i.i, i32 0, i32 7)
  %720 = ptrtoint ptr %io_type.i.i to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 7, ptr %io_type.i.i, align 4
  %721 = getelementptr inbounds %struct.page, ptr %call.i376.i, i32 0, i32 1
  %722 = call ptr @memset(ptr %io_wbc.i.i, i32 0, i32 13)
  %723 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load volatile i32, ptr %721, align 4
  %and.i.i76.i.i = and i32 %724, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76.i.i)
  %tobool.not.i.i77.i.i = icmp eq i32 %and.i.i76.i.i, 0
  br i1 %tobool.not.i.i77.i.i, label %if.end.i.i80.i.i, label %if.then.i.i79.i.i, !prof !115

if.then.i.i79.i.i:                                ; preds = %if.else.i430.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i78.i.i = add i32 %724, -1
  br label %_compound_head.exit.i83.i.i

if.end.i.i80.i.i:                                 ; preds = %if.else.i430.i
  call void @__sanitizer_cov_trace_pc() #18
  %725 = ptrtoint ptr %call.i376.i to i32
  br label %_compound_head.exit.i83.i.i

_compound_head.exit.i83.i.i:                      ; preds = %if.end.i.i80.i.i, %if.then.i.i79.i.i
  %retval.0.i.i81.i.i = phi i32 [ %sub.i.i78.i.i, %if.then.i.i79.i.i ], [ %725, %if.end.i.i80.i.i ]
  %726 = inttoptr i32 %retval.0.i.i81.i.i to ptr
  %727 = ptrtoint ptr %726 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load volatile i32, ptr %726, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %728)
  %cmp.i.not.i82.i.i = icmp eq i32 %728, -1
  %729 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load volatile i32, ptr %721, align 4
  %and.i13.i.i.i = and i32 %730, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %cmp.i.not.i82.i.i, label %if.then.i84.i.i, label %do.end8.i.i.i, !prof !116

if.then.i84.i.i:                                  ; preds = %_compound_head.exit.i83.i.i
  br i1 %tobool.not.i14.i.i.i, label %if.end.i17.i.i.i, label %if.then.i16.i.i.i, !prof !115

if.then.i16.i.i.i:                                ; preds = %if.then.i84.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i15.i.i.i = add i32 %730, -1
  br label %_compound_head.exit19.i.i.i

if.end.i17.i.i.i:                                 ; preds = %if.then.i84.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %731 = ptrtoint ptr %call.i376.i to i32
  br label %_compound_head.exit19.i.i.i

_compound_head.exit19.i.i.i:                      ; preds = %if.end.i17.i.i.i, %if.then.i16.i.i.i
  %retval.0.i18.i.i.i = phi i32 [ %sub.i15.i.i.i, %if.then.i16.i.i.i ], [ %731, %if.end.i17.i.i.i ]
  %732 = inttoptr i32 %retval.0.i18.i.i.i to ptr
  call void @dump_page(ptr noundef %732, ptr noundef nonnull @.str.21) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #16, !srcloc !148
  unreachable

do.end8.i.i.i:                                    ; preds = %_compound_head.exit.i83.i.i
  br i1 %tobool.not.i14.i.i.i, label %if.end.i24.i.i.i, label %if.then.i23.i.i.i, !prof !115

if.then.i23.i.i.i:                                ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i22.i.i.i = add i32 %730, -1
  br label %PageDirty.exit.i.i

if.end.i24.i.i.i:                                 ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %733 = ptrtoint ptr %call.i376.i to i32
  br label %PageDirty.exit.i.i

PageDirty.exit.i.i:                               ; preds = %if.end.i24.i.i.i, %if.then.i23.i.i.i
  %retval.0.i25.i.i.i = phi i32 [ %sub.i22.i.i.i, %if.then.i23.i.i.i ], [ %733, %if.end.i24.i.i.i ]
  %734 = inttoptr i32 %retval.0.i25.i.i.i to ptr
  %735 = ptrtoint ptr %734 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load volatile i32, ptr %734, align 4
  %737 = and i32 %736, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %737)
  %tobool30.not.i.i = icmp eq i32 %737, 0
  %dirty_pages.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 10
  br label %retry31.i.i

retry31.i.i:                                      ; preds = %if.then40.i.i, %PageDirty.exit.i.i
  call void @f2fs_wait_on_page_writeback(ptr noundef %call.i376.i, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #16
  %call32.i.i = call zeroext i1 @set_page_dirty(ptr noundef %call.i376.i) #16
  %call33.i.i = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %call.i376.i) #16
  br i1 %call33.i.i, label %if.then34.i.i, label %retry31.i.i.if.end35.i.i_crit_edge

retry31.i.i.if.end35.i.i_crit_edge:               ; preds = %retry31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i.i

if.then34.i.i:                                    ; preds = %retry31.i.i
  %738 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %738)
  %739 = load i16, ptr %357, align 8
  %740 = and i16 %739, -4096
  %741 = zext i16 %740 to i64
  call void @__sanitizer_cov_trace_switch(i64 %741, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %740, label %if.then34.i.i.inode_dec_dirty_pages.exit.i.i_crit_edge [
    i16 16384, label %if.then34.i.i.if.end.i.i435.i_crit_edge
    i16 -32768, label %if.then34.i.i.if.end.i.i435.i_crit_edge839
    i16 -24576, label %if.then34.i.i.if.end.i.i435.i_crit_edge840
  ]

if.then34.i.i.if.end.i.i435.i_crit_edge840:       ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i435.i

if.then34.i.i.if.end.i.i435.i_crit_edge839:       ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i435.i

if.then34.i.i.if.end.i.i435.i_crit_edge:          ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i435.i

if.then34.i.i.inode_dec_dirty_pages.exit.i.i_crit_edge: ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_dec_dirty_pages.exit.i.i

if.end.i.i435.i:                                  ; preds = %if.then34.i.i.if.end.i.i435.i_crit_edge, %if.then34.i.i.if.end.i.i435.i_crit_edge839, %if.then34.i.i.if.end.i.i435.i_crit_edge840
  %call.i.i.i.i432.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pages.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %dirty_pages.i.i.i, i32 1, i32 3, i32 1) #16
  %742 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pages.i.i.i, ptr %dirty_pages.i.i.i, i32 1, ptr elementtype(i32) %dirty_pages.i.i.i) #16, !srcloc !138
  %743 = ptrtoint ptr %i_sb.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %i_sb.i.i379.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %744, i32 0, i32 33
  %745 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %747 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %747)
  %748 = load i16, ptr %357, align 8
  %749 = and i16 %748, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %749)
  %cmp17.i.i.i = icmp ne i16 %749, 16384
  %cond.i.i433.i = zext i1 %cmp17.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr %struct.f2fs_sb_info, ptr %746, i32 0, i32 69, i32 %cond.i.i433.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i.i, i32 1, i32 3, i32 1) #16
  %750 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i.i, ptr %arrayidx.i.i.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i.i.i) #16, !srcloc !138
  %751 = ptrtoint ptr %i_flags.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %i_flags.i.i339.i, align 4
  %and19.i.i.i = and i32 %752, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i.i)
  %tobool.not.i.i434.i = icmp eq i32 %and19.i.i.i, 0
  br i1 %tobool.not.i.i434.i, label %if.end.i.i435.i.inode_dec_dirty_pages.exit.i.i_crit_edge, label %if.then20.i.i.i

if.end.i.i435.i.inode_dec_dirty_pages.exit.i.i_crit_edge: ; preds = %if.end.i.i435.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_dec_dirty_pages.exit.i.i

if.then20.i.i.i:                                  ; preds = %if.end.i.i435.i
  call void @__sanitizer_cov_trace_pc() #18
  %753 = ptrtoint ptr %i_sb.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %i_sb.i.i379.i, align 4
  %s_fs_info.i.i31.i.i.i = getelementptr inbounds %struct.super_block, ptr %754, i32 0, i32 33
  %755 = ptrtoint ptr %s_fs_info.i.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %s_fs_info.i.i31.i.i.i, align 16
  %arrayidx.i32.i.i.i = getelementptr %struct.f2fs_sb_info, ptr %756, i32 0, i32 69, i32 2
  %call.i.i.i33.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i32.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %arrayidx.i32.i.i.i, i32 1, i32 3, i32 1) #16
  %757 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i32.i.i.i, ptr %arrayidx.i32.i.i.i, i32 1, ptr elementtype(i32) %arrayidx.i32.i.i.i) #16, !srcloc !138
  br label %inode_dec_dirty_pages.exit.i.i

inode_dec_dirty_pages.exit.i.i:                   ; preds = %if.then20.i.i.i, %if.end.i.i435.i.inode_dec_dirty_pages.exit.i.i_crit_edge, %if.then34.i.i.inode_dec_dirty_pages.exit.i.i_crit_edge
  call void @f2fs_remove_dirty_inode(ptr noundef %357) #16
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %inode_dec_dirty_pages.exit.i.i, %retry31.i.i.if.end35.i.i_crit_edge
  call fastcc void @set_page_private_gcing(ptr noundef %call.i376.i) #16
  %call36.i436.i = call i32 @f2fs_do_write_data_page(ptr noundef nonnull %fio.i375.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i436.i)
  %tobool37.not.i437.i = icmp eq i32 %call36.i436.i, 0
  br i1 %tobool37.not.i437.i, label %if.end35.i.i.if.end46.i.i_crit_edge, label %if.then38.i.i

if.end35.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

if.then38.i.i:                                    ; preds = %if.end35.i.i
  call fastcc void @clear_page_private_gcing(ptr noundef %call.i376.i) #16
  %cmp39.i.i = icmp eq i32 %call36.i436.i, -12
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i

if.then40.i.i:                                    ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @memalloc_retry_wait(i32 noundef 3136) #16
  br label %retry31.i.i

if.end41.i.i:                                     ; preds = %if.then38.i.i
  br i1 %tobool30.not.i.i, label %if.end41.i.i.if.end46.i.i_crit_edge, label %if.then43.i438.i

if.end41.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i.i

if.then43.i438.i:                                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call44.i.i = call zeroext i1 @set_page_dirty(ptr noundef %call.i376.i) #16
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then43.i438.i, %if.end41.i.i.if.end46.i.i_crit_edge, %if.end35.i.i.if.end46.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio.i375.i) #16
  br label %out.i439.i

out.i439.i:                                       ; preds = %if.end46.i.i, %if.end25.i.i, %PageWriteback.exit.i420.i.out.i439.i_crit_edge, %if.then16.i.i, %if.then15.i397.i.out.i439.i_crit_edge, %if.then8.i.i, %if.end.i389.i.out.i439.i_crit_edge
  %err.0.i.i = phi i32 [ -11, %if.then8.i.i ], [ 0, %if.end25.i.i ], [ %call36.i436.i, %if.end46.i.i ], [ -2, %if.end.i389.i.out.i439.i_crit_edge ], [ -11, %if.then16.i.i ], [ -11, %if.then15.i397.i.out.i439.i_crit_edge ], [ -11, %PageWriteback.exit.i420.i.out.i439.i_crit_edge ]
  call fastcc void @f2fs_put_page(ptr noundef %call.i376.i, i32 noundef 1) #16
  br label %if.end130.i

if.end130.i:                                      ; preds = %out.i439.i, %move_data_block.exit.i
  %err98.0.i = phi i32 [ %retval.0.i374.i, %move_data_block.exit.i ], [ %err.0.i.i, %out.i439.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err98.0.i)
  %tobool131.not.i = icmp eq i32 %err98.0.i, 0
  br i1 %tobool131.not.i, label %land.lhs.true132.i, label %if.end130.i.if.end140.i_crit_edge

if.end130.i.if.end140.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

land.lhs.true132.i:                               ; preds = %if.end130.i
  br i1 %cmp.i396.i, label %land.lhs.true132.i.if.then138.i_crit_edge, label %lor.lhs.false135.i

land.lhs.true132.i.if.then138.i_crit_edge:        ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then138.i

lor.lhs.false135.i:                               ; preds = %land.lhs.true132.i
  %758 = ptrtoint ptr %i_flags.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %i_flags.i.i339.i, align 4
  %and.i.i442.i = and i32 %759, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i442.i)
  %tobool.not.i.i443.i = icmp eq i32 %and.i.i442.i, 0
  br i1 %tobool.not.i.i443.i, label %lor.lhs.false135.i.lor.lhs.false.i448.i_crit_edge, label %f2fs_encrypted_file.exit.i445.i

lor.lhs.false135.i.lor.lhs.false.i448.i_crit_edge: ; preds = %lor.lhs.false135.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i448.i

f2fs_encrypted_file.exit.i445.i:                  ; preds = %lor.lhs.false135.i
  %760 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %760)
  %761 = load i16, ptr %357, align 8
  %762 = and i16 %761, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %762)
  %cmp.i.i444.i = icmp eq i16 %762, -32768
  br i1 %cmp.i.i444.i, label %f2fs_encrypted_file.exit.i445.i.if.then138.i_crit_edge, label %f2fs_encrypted_file.exit.i445.i.lor.lhs.false.i448.i_crit_edge

f2fs_encrypted_file.exit.i445.i.lor.lhs.false.i448.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i445.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i448.i

f2fs_encrypted_file.exit.i445.i.if.then138.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i445.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then138.i

lor.lhs.false.i448.i:                             ; preds = %f2fs_encrypted_file.exit.i445.i.lor.lhs.false.i448.i_crit_edge, %lor.lhs.false135.i.lor.lhs.false.i448.i_crit_edge
  %i_verity_info.i.i.i446.i = getelementptr inbounds %struct.inode, ptr %357, i32 0, i32 53
  %763 = ptrtoint ptr %i_verity_info.i.i.i446.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load volatile ptr, ptr %i_verity_info.i.i.i446.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !139
  %cmp.i5.not.i447.i = icmp eq ptr %764, null
  br i1 %cmp.i5.not.i447.i, label %lor.rhs.i450.i, label %lor.lhs.false.i448.i.if.then138.i_crit_edge

lor.lhs.false.i448.i.if.then138.i_crit_edge:      ; preds = %lor.lhs.false.i448.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then138.i

lor.rhs.i450.i:                                   ; preds = %lor.lhs.false.i448.i
  %765 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %765)
  %766 = load i16, ptr %357, align 8
  %767 = and i16 %766, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %767)
  %cmp.i6.i449.i = icmp eq i16 %767, -32768
  br i1 %cmp.i6.i449.i, label %f2fs_post_read_required.exit454.i, label %lor.rhs.i450.i.if.end140.i_crit_edge

lor.rhs.i450.i.if.end140.i_crit_edge:             ; preds = %lor.rhs.i450.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

f2fs_post_read_required.exit454.i:                ; preds = %lor.rhs.i450.i
  %flags.i.i.i451.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 8
  %768 = ptrtoint ptr %flags.i.i.i451.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load volatile i32, ptr %flags.i.i.i451.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %769)
  %phi.cmp.i452.i = icmp slt i32 %769, 0
  br i1 %phi.cmp.i452.i, label %f2fs_post_read_required.exit454.i.if.then138.i_crit_edge, label %f2fs_post_read_required.exit454.i.if.end140.i_crit_edge

f2fs_post_read_required.exit454.i.if.end140.i_crit_edge: ; preds = %f2fs_post_read_required.exit454.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

f2fs_post_read_required.exit454.i.if.then138.i_crit_edge: ; preds = %f2fs_post_read_required.exit454.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then138.i

if.then138.i:                                     ; preds = %f2fs_post_read_required.exit454.i.if.then138.i_crit_edge, %lor.lhs.false.i448.i.if.then138.i_crit_edge, %f2fs_encrypted_file.exit.i445.i.if.then138.i_crit_edge, %land.lhs.true132.i.if.then138.i_crit_edge
  %inc139.i = add i32 %submitted.1506.i, 1
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then138.i, %f2fs_post_read_required.exit454.i.if.end140.i_crit_edge, %lor.rhs.i450.i.if.end140.i_crit_edge, %if.end130.i.if.end140.i_crit_edge, %if.else.i.if.end140.i_crit_edge
  %submitted.2.i344 = phi i32 [ %submitted.1506.i, %if.end130.i.if.end140.i_crit_edge ], [ %inc139.i, %if.then138.i ], [ %submitted.1506.i, %f2fs_post_read_required.exit454.i.if.end140.i_crit_edge ], [ %submitted.1506.i, %lor.rhs.i450.i.if.end140.i_crit_edge ], [ %submitted.1506.i, %if.else.i.if.end140.i_crit_edge ]
  br i1 %cmp102.i, label %if.then142.i, label %if.end140.i.cleanup155.i_crit_edge

if.end140.i.cleanup155.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup155.i

if.then142.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_gc_rwsem143.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %357, i32 0, i32 27
  %arrayidx144.i = getelementptr %struct.f2fs_inode_info, ptr %357, i32 0, i32 27, i32 1
  call void @up_write(ptr noundef %arrayidx144.i) #16
  call void @up_write(ptr noundef %i_gc_rwsem143.i) #16
  br label %cleanup155.i

cleanup155.i:                                     ; preds = %if.then142.i, %if.end140.i.cleanup155.i_crit_edge
  %770 = ptrtoint ptr %stat_info.i.i314 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %stat_info.i.i314, align 8
  %tot_blks.i345 = getelementptr inbounds %struct.f2fs_stat_info, ptr %771, i32 0, i32 98
  %772 = ptrtoint ptr %tot_blks.i345 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %tot_blks.i345, align 4
  %add149.i = add i32 %773, 1
  store i32 %add149.i, ptr %tot_blks.i345, align 4
  %data_blks.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %771, i32 0, i32 99
  %774 = ptrtoint ptr %data_blks.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %data_blks.i, align 8
  %add150.i = add i32 %775, 1
  store i32 %add150.i, ptr %data_blks.i, align 8
  %bg_data_blks.i = getelementptr inbounds %struct.f2fs_stat_info, ptr %771, i32 0, i32 101
  %776 = ptrtoint ptr %bg_data_blks.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %bg_data_blks.i, align 8
  %add154.i = add i32 %777, %cond153.i
  store i32 %add154.i, ptr %bg_data_blks.i, align 8
  br label %for.inc.i348

cleanup159.i:                                     ; preds = %get_valid_blocks.exit.i.cleanup159.i_crit_edge, %land.lhs.true.i.cleanup159.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dni.i) #16
  br label %do.body

for.inc.i348:                                     ; preds = %cleanup155.i, %if.then117.i, %if.then109.i, %find_gc_inode.exit.i.for.inc.i348_crit_edge, %if.end92.i.for.inc.i348_crit_edge, %f2fs_put_page.exit447, %if.then90.i, %if.end83.i, %if.then82.i, %if.then71.i, %lor.lhs.false44.i.for.inc.i348_crit_edge, %lor.lhs.false44.i.for.inc.i348_crit_edge836, %lor.lhs.false44.i.for.inc.i348_crit_edge837, %lor.lhs.false44.i.for.inc.i348_crit_edge838, %lor.lhs.false41.i.for.inc.i348_crit_edge, %if.then36.i.for.inc.i348_crit_edge, %if.then31.i, %if.then53.i.i, %if.then49.i.i.for.inc.i348_crit_edge, %cond.end41.i.i.for.inc.i348_crit_edge, %if.end12.i.i.for.inc.i348_crit_edge, %if.then5.i.i, %if.end25.i.for.inc.i348_crit_edge, %if.then24.i, %if.then20.i, %if.end.i334.for.inc.i348_crit_edge
  %submitted.5.ph.i = phi i32 [ %submitted.1506.i, %find_gc_inode.exit.i.for.inc.i348_crit_edge ], [ %submitted.2.i344, %cleanup155.i ], [ %submitted.1506.i, %if.then82.i ], [ %submitted.1506.i, %if.end83.i ], [ %submitted.1506.i, %if.then36.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %lor.lhs.false41.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %lor.lhs.false44.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %lor.lhs.false44.i.for.inc.i348_crit_edge836 ], [ %submitted.1506.i, %lor.lhs.false44.i.for.inc.i348_crit_edge837 ], [ %submitted.1506.i, %lor.lhs.false44.i.for.inc.i348_crit_edge838 ], [ %submitted.1506.i, %if.end.i334.for.inc.i348_crit_edge ], [ %submitted.1506.i, %if.then71.i ], [ %submitted.1506.i, %f2fs_put_page.exit447 ], [ %submitted.1506.i, %if.then90.i ], [ %submitted.1506.i, %if.then31.i ], [ %submitted.1506.i, %if.then24.i ], [ %submitted.1506.i, %if.then20.i ], [ %submitted.1506.i, %if.then5.i.i ], [ %submitted.1506.i, %if.end25.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %if.end12.i.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %if.then49.i.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %if.then53.i.i ], [ %submitted.1506.i, %cond.end41.i.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %if.end92.i.for.inc.i348_crit_edge ], [ %submitted.1506.i, %if.then117.i ], [ %submitted.1506.i, %if.then109.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dni.i) #16
  %inc168.i = add nuw i32 %off.0505.i, 1
  %incdec.ptr.i346 = getelementptr %struct.f2fs_summary, ptr %entry2.0503.i, i32 1
  %exitcond.not.i347 = icmp eq i32 %inc168.i, %call.i301
  br i1 %exitcond.not.i347, label %for.inc.i348.for.end.i350_crit_edge, label %for.inc.i348.for.body.i319_crit_edge

for.inc.i348.for.body.i319_crit_edge:             ; preds = %for.inc.i348
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i319

for.inc.i348.for.end.i350_crit_edge:              ; preds = %for.inc.i348
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i350

for.end.i350:                                     ; preds = %for.inc.i348.for.end.i350_crit_edge, %next_step.i318.for.end.i350_crit_edge
  %submitted.1.lcssa.i349 = phi i32 [ %submitted.0.i317, %next_step.i318.for.end.i350_crit_edge ], [ %submitted.5.ph.i, %for.inc.i348.for.end.i350_crit_edge ]
  %inc169.i = add nuw nsw i32 %phase.0.i316, 1
  %exitcond533.not.i = icmp eq i32 %inc169.i, 5
  br i1 %exitcond533.not.i, label %for.end.i350.do.body_crit_edge, label %for.end.i350.next_step.i318_crit_edge

for.end.i350.next_step.i318_crit_edge:            ; preds = %for.end.i350
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_step.i318

for.end.i350.do.body_crit_edge:                   ; preds = %for.end.i350
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %for.end.i350.do.body_crit_edge, %cleanup159.i, %if.then64.i, %if.end62.i.do.body_crit_edge, %cleanup.i
  %call86.pn = phi i32 [ %submitted.1140.i, %cleanup.i ], [ %submitted.1.lcssa.i, %if.end62.i.do.body_crit_edge ], [ %submitted.1.lcssa.i, %if.then64.i ], [ %submitted.1506.i, %cleanup159.i ], [ %submitted.1.lcssa.i349, %for.end.i350.do.body_crit_edge ]
  %submitted.1 = add i32 %call86.pn, %submitted.0557
  %778 = ptrtoint ptr %stat_info.i.i314 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %stat_info.i.i314, align 8
  %tot_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %779, i32 0, i32 91
  %780 = ptrtoint ptr %tot_segs to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %tot_segs, align 8
  %inc95 = add i32 %781, 1
  store i32 %inc95, ptr %tot_segs, align 8
  br i1 %cmp, label %if.else105, label %if.then99

if.then99:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %data_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %779, i32 0, i32 93
  %782 = ptrtoint ptr %data_segs to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load i32, ptr %data_segs, align 8
  %inc100 = add i32 %783, 1
  store i32 %inc100, ptr %data_segs, align 8
  %bg_data_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %779, i32 0, i32 97
  %784 = ptrtoint ptr %bg_data_segs to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %bg_data_segs, align 8
  %add104 = add i32 %785, %cond153.i
  store i32 %add104, ptr %bg_data_segs, align 8
  br label %if.end111

if.else105:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %node_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %779, i32 0, i32 92
  %786 = ptrtoint ptr %node_segs to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %node_segs, align 4
  %inc106 = add i32 %787, 1
  store i32 %inc106, ptr %node_segs, align 4
  %bg_node_segs = getelementptr inbounds %struct.f2fs_stat_info, ptr %779, i32 0, i32 96
  %788 = ptrtoint ptr %bg_node_segs to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load i32, ptr %bg_node_segs, align 4
  %add110 = add i32 %789, %cond153.i
  store i32 %add110, ptr %bg_node_segs, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else105, %if.then99
  %790 = ptrtoint ptr %gc_mode to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %gc_mode, align 4
  %arrayidx = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 135, i32 %791
  %792 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load i32, ptr %arrayidx, align 4
  %inc112 = add i32 %793, 1
  store i32 %inc112, ptr %arrayidx, align 4
  %inc113 = add i32 %migrated.0556, 1
  br label %freed

freed:                                            ; preds = %if.end111, %f2fs_put_page.exit295.freed_crit_edge
  %migrated.1 = phi i32 [ %migrated.0556, %f2fs_put_page.exit295.freed_crit_edge ], [ %inc113, %if.end111 ]
  %submitted.2 = phi i32 [ %submitted.0557, %f2fs_put_page.exit295.freed_crit_edge ], [ %submitted.1, %if.end111 ]
  br i1 %cmp.i396.i, label %land.lhs.true116, label %freed.if.end122_crit_edge

freed.if.end122_crit_edge:                        ; preds = %freed
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

land.lhs.true116:                                 ; preds = %freed
  call void @__sanitizer_cov_trace_pc() #18
  %794 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %sm_info.i.i.i, align 8
  %796 = ptrtoint ptr %795 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %795, align 4
  %sentries.i.i352 = getelementptr inbounds %struct.sit_info, ptr %797, i32 0, i32 14
  %798 = ptrtoint ptr %sentries.i.i352 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %sentries.i.i352, align 4
  %arrayidx.i6.i353 = getelementptr %struct.seg_entry, ptr %799, i32 %segno.2551
  %800 = ptrtoint ptr %arrayidx.i6.i353 to i32
  call void @__asan_load4_noabort(i32 %800)
  %bf.load.i354 = load i32, ptr %arrayidx.i6.i353, align 8
  %801 = and i32 %bf.load.i354, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %801)
  %cmp118 = icmp eq i32 %801, 0
  %inc121 = zext i1 %cmp118 to i32
  %spec.select = add i32 %seg_freed.0554, %inc121
  br label %if.end122

if.end122:                                        ; preds = %land.lhs.true116, %freed.if.end122_crit_edge
  %seg_freed.1 = phi i32 [ %seg_freed.0554, %freed.if.end122_crit_edge ], [ %spec.select, %land.lhs.true116 ]
  %802 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %803)
  %cmp124 = icmp ugt i32 %803, 1
  br i1 %cmp124, label %land.lhs.true126, label %if.end122.skip_crit_edge

if.end122.skip_crit_edge:                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip

land.lhs.true126:                                 ; preds = %if.end122
  %add127 = add nuw i32 %segno.2551, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add127, i32 %end_segno.1)
  %cmp128 = icmp ult i32 %add127, %end_segno.1
  br i1 %cmp128, label %if.then130, label %land.lhs.true126.skip_crit_edge

land.lhs.true126.skip_crit_edge:                  ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip

if.then130:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #18
  %804 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 %add127, ptr %arrayidx132, align 4
  br label %skip

skip:                                             ; preds = %if.then130, %land.lhs.true126.skip_crit_edge, %if.end122.skip_crit_edge, %if.then76, %PageUptodate.exit.skip_crit_edge, %folio_flags.exit.i.i.skip_crit_edge, %land.lhs.true59.skip_crit_edge
  %seg_freed.2 = phi i32 [ %seg_freed.1, %if.then130 ], [ %seg_freed.1, %land.lhs.true126.skip_crit_edge ], [ %seg_freed.1, %if.end122.skip_crit_edge ], [ %seg_freed.0554, %land.lhs.true59.skip_crit_edge ], [ %seg_freed.0554, %PageUptodate.exit.skip_crit_edge ], [ %seg_freed.0554, %if.then76 ], [ %seg_freed.0554, %folio_flags.exit.i.i.skip_crit_edge ]
  %migrated.2 = phi i32 [ %migrated.1, %if.then130 ], [ %migrated.1, %land.lhs.true126.skip_crit_edge ], [ %migrated.1, %if.end122.skip_crit_edge ], [ %migrated.0556, %land.lhs.true59.skip_crit_edge ], [ %migrated.0556, %PageUptodate.exit.skip_crit_edge ], [ %migrated.0556, %if.then76 ], [ %migrated.0556, %folio_flags.exit.i.i.skip_crit_edge ]
  %submitted.3 = phi i32 [ %submitted.2, %if.then130 ], [ %submitted.2, %land.lhs.true126.skip_crit_edge ], [ %submitted.2, %if.end122.skip_crit_edge ], [ %submitted.0557, %land.lhs.true59.skip_crit_edge ], [ %submitted.0557, %PageUptodate.exit.skip_crit_edge ], [ %submitted.0557, %if.then76 ], [ %submitted.0557, %folio_flags.exit.i.i.skip_crit_edge ]
  br i1 %tobool.not.i274, label %skip.f2fs_put_page.exit379_crit_edge, label %if.end.i359

skip.f2fs_put_page.exit379_crit_edge:             ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit379

if.end.i359:                                      ; preds = %skip
  %805 = getelementptr inbounds %struct.page, ptr %call.i273, i32 0, i32 1
  %806 = ptrtoint ptr %805 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load volatile i32, ptr %805, align 4
  %and.i.i17.i360 = and i32 %807, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i360)
  %tobool.not.i.i18.i361 = icmp eq i32 %and.i.i17.i360, 0
  br i1 %tobool.not.i.i18.i361, label %if.end.i.i21.i364, label %if.then.i.i20.i363, !prof !115

if.then.i.i20.i363:                               ; preds = %if.end.i359
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i362 = add i32 %807, -1
  br label %_compound_head.exit.i23.i369

if.end.i.i21.i364:                                ; preds = %if.end.i359
  call void @__sanitizer_cov_trace_pc() #18
  %808 = ptrtoint ptr %call.i273 to i32
  br label %_compound_head.exit.i23.i369

_compound_head.exit.i23.i369:                     ; preds = %if.end.i.i21.i364, %if.then.i.i20.i363
  %retval.0.i.i22.i365 = phi i32 [ %sub.i.i19.i362, %if.then.i.i20.i363 ], [ %808, %if.end.i.i21.i364 ]
  %809 = inttoptr i32 %retval.0.i.i22.i365 to ptr
  %_refcount.i.i.i.i.i.i366 = getelementptr inbounds %struct.page, ptr %809, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i367 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i366, i32 noundef 4) #16
  %810 = ptrtoint ptr %_refcount.i.i.i.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load volatile i32, ptr %_refcount.i.i.i.i.i.i366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %811)
  %cmp.i.i.i.i.i368 = icmp eq i32 %811, 0
  br i1 %cmp.i.i.i.i.i368, label %if.then.i.i.i.i.i370, label %do.end5.i.i.i.i.i374, !prof !116

if.then.i.i.i.i.i370:                             ; preds = %_compound_head.exit.i23.i369
  call void @__sanitizer_cov_trace_pc() #18
  %812 = inttoptr i32 %retval.0.i.i22.i365 to ptr
  call void @dump_page(ptr noundef %812, ptr noundef nonnull @.str.22) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i374:                             ; preds = %_compound_head.exit.i23.i369
  %call.i.i.i10.i.i.i.i.i371 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i366, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i366, i32 1, i32 3, i32 1) #16
  %813 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i366, ptr %_refcount.i.i.i.i.i.i366, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i366) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i372 = extractvalue { i32, i32 } %813, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i372)
  %cmp.i.i.i.i.i.i.i.i373 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i372, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_garbage_collect, %if.then.i.i.i.i.i.i376)) #16
          to label %folio_put_testzero.exit.i.i.i377 [label %if.then.i.i.i.i.i.i376], !srcloc !126

if.then.i.i.i.i.i.i376:                           ; preds = %do.end5.i.i.i.i.i374
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i375 = zext i1 %cmp.i.i.i.i.i.i.i.i373 to i32
  call void @__page_ref_mod_and_test(ptr noundef %809, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i375) #16
  br label %folio_put_testzero.exit.i.i.i377

folio_put_testzero.exit.i.i.i377:                 ; preds = %if.then.i.i.i.i.i.i376, %do.end5.i.i.i.i.i374
  br i1 %cmp.i.i.i.i.i.i.i.i373, label %if.then.i4.i.i378, label %folio_put_testzero.exit.i.i.i377.f2fs_put_page.exit379_crit_edge

folio_put_testzero.exit.i.i.i377.f2fs_put_page.exit379_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i377
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit379

if.then.i4.i.i378:                                ; preds = %folio_put_testzero.exit.i.i.i377
  call void @__sanitizer_cov_trace_pc() #18
  call void @__put_page(ptr noundef %809) #16
  br label %f2fs_put_page.exit379

f2fs_put_page.exit379:                            ; preds = %if.then.i4.i.i378, %folio_put_testzero.exit.i.i.i377.f2fs_put_page.exit379_crit_edge, %skip.f2fs_put_page.exit379_crit_edge
  %inc135 = add nuw i32 %segno.2551, 1
  %exitcond613.not = icmp eq i32 %inc135, %end_segno.1
  br i1 %exitcond613.not, label %for.end136, label %f2fs_put_page.exit379.for.body43_crit_edge

f2fs_put_page.exit379.for.body43_crit_edge:       ; preds = %f2fs_put_page.exit379
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body43

for.end136:                                       ; preds = %f2fs_put_page.exit379
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %submitted.3)
  %tobool137.not = icmp eq i32 %submitted.3, 0
  br i1 %tobool137.not, label %for.end136.if.end143_crit_edge, label %if.then138

for.end136.if.end143_crit_edge:                   ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end143

if.then138:                                       ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #18
  %cond142 = zext i1 %cmp to i32
  call void @f2fs_submit_merged_write(ptr noundef %sbi, i32 noundef %cond142) #16
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %for.end136.if.end143_crit_edge, %while.end.if.end143_crit_edge, %while.end.thread
  %seg_freed.0.lcssa618 = phi i32 [ %seg_freed.2, %if.then138 ], [ %seg_freed.2, %for.end136.if.end143_crit_edge ], [ 0, %while.end.if.end143_crit_edge ], [ 0, %while.end.thread ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #16
  %stat_info = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 90
  %814 = ptrtoint ptr %stat_info to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %stat_info, align 8
  %call_count = getelementptr inbounds %struct.f2fs_stat_info, ptr %815, i32 0, i32 88
  %816 = ptrtoint ptr %call_count to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %call_count, align 4
  %inc144 = add i32 %817, 1
  store i32 %inc144, ptr %call_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %f2fs_put_page.exit270.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %retval.0 = phi i32 [ %seg_freed.0.lcssa618, %if.end143 ], [ %26, %if.then28.cleanup_crit_edge ], [ %26, %f2fs_put_page.exit270.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_usable_segs_in_sec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_drop_inmem_pages_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_gc_end(ptr noundef %sb, i32 noundef %ret, i32 noundef %seg_freed, i32 noundef %sec_freed, i64 noundef %dirty_nodes, i64 noundef %dirty_dents, i64 noundef %dirty_imeta, i32 noundef %free_sec, i32 noundef %free_seg, i32 noundef %reserved_seg, i32 noundef %prefree_seg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_gc_end, i32 0, i32 1), ptr blockaddress(@trace_f2fs_gc_end, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !126

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !149
  %call42 = tail call i32 @__traceiter_f2fs_gc_end(ptr noundef null, ptr noundef %sb, i32 noundef %ret, i32 noundef %seg_freed, i32 noundef %sec_freed, i64 noundef %dirty_nodes, i64 noundef %dirty_dents, i64 noundef %dirty_imeta, i32 noundef %free_sec, i32 noundef %free_seg, i32 noundef %reserved_seg, i32 noundef %prefree_seg) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !115

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_gc_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_gc_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_gc_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_gc_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 758, ptr noundef nonnull @.str.18) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_create_garbage_collection_cache() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 40, i32 noundef 0, i32 noundef 131072, ptr noundef null) #16
  store ptr %call.i, ptr @victim_entry_slab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_garbage_collection_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @victim_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_build_gc_manager(ptr noundef %sbi) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dirty_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dirty_info.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @default_v_ops, ptr %3, align 4
  %gc_pin_file_threshold = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 86
  %5 = ptrtoint ptr %gc_pin_file_threshold to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2048, ptr %gc_pin_file_threshold, align 8
  %s_ndevs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 122
  %6 = ptrtoint ptr %s_ndevs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ndevs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp sgt i32 %7, 1
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %8 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %devs = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 123
  %10 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devs, align 4
  %end_blk = getelementptr inbounds %struct.f2fs_dev_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %end_blk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end_blk, align 4
  %switch.tableidx = add i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 3
  br i1 %14, label %if.then.cond.end13_crit_edge, label %cond.false

if.then.cond.end13_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end13

cond.false:                                       ; preds = %if.then
  %15 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm_info.i.i, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %cond.false9, label %cond.true7

cond.true7:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  %seg0_blkaddr = getelementptr inbounds %struct.f2fs_sm_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %seg0_blkaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seg0_blkaddr, align 4
  br label %cond.end

cond.false9:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %19 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %raw_super.i, align 8
  %segment0_blkaddr = getelementptr inbounds %struct.f2fs_super_block, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %segment0_blkaddr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %segment0_blkaddr, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false9, %cond.true7
  %cond = phi i32 [ %18, %cond.true7 ], [ %23, %cond.false9 ]
  %sub = sub i32 %13, %cond
  %log_blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %24 = ptrtoint ptr %log_blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %log_blocks_per_seg, align 8
  %shr = lshr i32 %sub, %25
  %free_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %16, i32 0, i32 1
  %26 = ptrtoint ptr %free_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %free_info.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %sub12 = add i32 %shr, 1
  %phi.bo = sub i32 %sub12, %29
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %if.then.cond.end13_crit_edge
  %cond14 = phi i32 [ %phi.bo, %cond.end ], [ 0, %if.then.cond.end13_crit_edge ]
  %30 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sm_info.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %arrayidx16 = getelementptr %struct.sit_info, ptr %33, i32 0, i32 22, i32 3
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond14, ptr %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end13, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %am1.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %35 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.init_atgc_management.exit_crit_edge, label %land.lhs.true.i

if.end.init_atgc_management.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_atgc_management.exit

land.lhs.true.i:                                  ; preds = %if.end
  %37 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sm_info.i.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %elapsed_time.i = getelementptr inbounds %struct.sit_info, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %elapsed_time.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %elapsed_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 604799, i64 %42)
  %cmp.i32 = icmp ugt i64 %42, 604799
  br i1 %cmp.i32, label %if.then.i, label %land.lhs.true.i.init_atgc_management.exit_crit_edge

land.lhs.true.i.init_atgc_management.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_atgc_management.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %am1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %am1.i, align 8
  br label %init_atgc_management.exit

init_atgc_management.exit:                        ; preds = %if.then.i, %land.lhs.true.i.init_atgc_management.exit_crit_edge, %if.end.init_atgc_management.exit_crit_edge
  %root.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 1
  %44 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %root.i, align 4
  %.compoundliteral.sroa.2.0.root.sroa_idx.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 1, i32 1
  %45 = ptrtoint ptr %.compoundliteral.sroa.2.0.root.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %.compoundliteral.sroa.2.0.root.sroa_idx.i, align 4
  %victim_list.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 2
  %46 = ptrtoint ptr %victim_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %victim_list.i, ptr %victim_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 2, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %victim_list.i, ptr %prev.i.i, align 4
  %victim_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 3
  %48 = ptrtoint ptr %victim_count.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %victim_count.i, align 4
  %candidate_ratio.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 4
  %49 = ptrtoint ptr %candidate_ratio.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 20, ptr %candidate_ratio.i, align 8
  %max_candidate_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 5
  %50 = ptrtoint ptr %max_candidate_count.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10, ptr %max_candidate_count.i, align 4
  %age_weight.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 6
  %51 = ptrtoint ptr %age_weight.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 60, ptr %age_weight.i, align 8
  %age_threshold.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 7
  %52 = ptrtoint ptr %age_threshold.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 604800, ptr %age_threshold.i, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_resize_fs(ptr noundef %sbi, i64 noundef %block_count) local_unnamed_addr #0 align 64 {
entry:
  %cpc = alloca %struct.cp_control, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc) #16
  %0 = call ptr @memcpy(ptr %cpc, ptr @__const.free_segment_range.cpc, i32 32)
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %1 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %raw_super.i, align 8
  %block_count1 = getelementptr inbounds %struct.f2fs_super_block, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %block_count1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %block_count1, align 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %block_count)
  %cmp = icmp ult i64 %5, %block_count
  br i1 %cmp, label %entry.cleanup118_crit_edge, label %if.end

entry.cleanup118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup118

if.end:                                           ; preds = %entry
  %s_ndevs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 122
  %6 = ptrtoint ptr %s_ndevs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ndevs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp sgt i32 %7, 1
  br i1 %cmp.i, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %sub = add nsw i32 %7, -1
  %devs = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 123
  %8 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devs, align 4
  %total_segments = getelementptr %struct.f2fs_dev_info, ptr %9, i32 %sub, i32 2
  %10 = ptrtoint ptr %total_segments to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_segments, align 4
  %conv = zext i32 %11 to i64
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %12 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks_per_seg, align 4
  %conv4 = zext i32 %13 to i64
  %mul = mul nuw i64 %conv4, %conv
  %add = add i64 %mul, %block_count
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %5)
  %cmp5.not = icmp ugt i64 %add, %5
  br i1 %cmp5.not, label %if.then3.if.end10_crit_edge, label %if.then3.cleanup118_crit_edge

if.then3.cleanup118_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup118

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %14 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %segs_per_sec, align 8
  %blocks_per_seg11 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %16 = ptrtoint ptr %blocks_per_seg11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blocks_per_seg11, align 4
  %mul12 = mul i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block_count)
  %cmp164.i = icmp ult i64 %block_count, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !115

if.then168.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i = trunc i64 %block_count to i32
  %rem170.i = urem i32 %conv169.i, %mul12
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul12, i64 %block_count) #21, !srcloc !151
  %asmresult.i261.i = extractvalue { i64, i64 } %18, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool.not, label %if.end15, label %div_u64_rem.exit.cleanup118_crit_edge

div_u64_rem.exit.cleanup118_crit_edge:            ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup118

if.end15:                                         ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %block_count)
  %cmp16 = icmp eq i64 %5, %block_count
  br i1 %cmp16, label %if.end15.cleanup118_crit_edge, label %if.end19

if.end15.cleanup118_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup118

if.end19:                                         ; preds = %if.end15
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %19 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %s_flag.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.6) #16
  br label %cleanup118

if.end22:                                         ; preds = %if.end19
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %22 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mount_opt, align 8
  %and = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.7) #16
  br label %cleanup118

if.end25:                                         ; preds = %if.end22
  %sub26 = sub i64 %5, %block_count
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub26)
  %cmp164.i.i = icmp ult i64 %sub26, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !115

if.then168.i.i:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i.i = trunc i64 %sub26 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul12
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul12, i64 %sub26) #21, !srcloc !151
  %asmresult1.i.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t219 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t219, %if.else174.i.i ]
  %gc_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 74
  %call32 = tail call i32 @down_write_trylock(ptr noundef %gc_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %div_u64.exit.cleanup118_crit_edge, label %if.end35

div_u64.exit.cleanup118_crit_edge:                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup118

if.end35:                                         ; preds = %div_u64.exit
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #16
  %stat_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 110
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #16
  %total_valid_block_count.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 61
  %25 = ptrtoint ptr %total_valid_block_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_valid_block_count.i, align 4
  %conv37 = zext i32 %26 to i64
  %add38 = add i64 %sub26, %conv37
  %current_reserved_blocks = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 65
  %27 = ptrtoint ptr %current_reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_reserved_blocks, align 4
  %conv39 = zext i32 %28 to i64
  %add40 = add i64 %add38, %conv39
  %unusable_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 66
  %29 = ptrtoint ptr %unusable_block_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unusable_block_count, align 8
  %conv41 = zext i32 %30 to i64
  %add42 = add i64 %add40, %conv41
  %root_reserved_blocks = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 2
  %31 = ptrtoint ptr %root_reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %root_reserved_blocks, align 8
  %conv44 = zext i32 %32 to i64
  %add45 = add i64 %add42, %conv44
  %user_block_count = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 60
  %33 = ptrtoint ptr %user_block_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %user_block_count, align 8
  %conv46 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add45, i64 %conv46)
  %cmp47 = icmp ugt i64 %add45, %conv46
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #16
  br i1 %cmp47, label %if.end35.out_unlock_crit_edge, label %if.end54

if.end35.out_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end54:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %call55 = tail call fastcc i32 @free_segment_range(ptr noundef %sbi, i32 noundef %dividend.addr.0.i.i.off0, i1 noundef zeroext true)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end54, %if.end35.out_unlock_crit_edge
  %err.1 = phi i32 [ -28, %if.end35.out_unlock_crit_edge ], [ %call55, %if.end54 ]
  tail call void @up_read(ptr noundef %cp_rwsem.i) #16
  tail call void @up_write(ptr noundef %gc_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool57.not = icmp eq i32 %err.1, 0
  br i1 %tobool57.not, label %if.end59, label %out_unlock.cleanup118_crit_edge

out_unlock.cleanup118_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup118

if.end59:                                         ; preds = %out_unlock
  tail call void @_set_bit(i32 noundef 13, ptr noundef %s_flag.i) #16
  %35 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sbi, align 8
  %call60 = tail call i32 @freeze_super(ptr noundef %36) #16
  tail call void @down_write(ptr noundef %gc_lock) #16
  %cp_global_sem = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 19
  tail call void @down_write(ptr noundef %cp_global_sem) #16
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #16
  %37 = ptrtoint ptr %total_valid_block_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %total_valid_block_count.i, align 4
  %conv64 = zext i32 %38 to i64
  %add65 = add i64 %sub26, %conv64
  %39 = ptrtoint ptr %current_reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_reserved_blocks, align 4
  %conv67 = zext i32 %40 to i64
  %add68 = add i64 %add65, %conv67
  %41 = ptrtoint ptr %unusable_block_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %unusable_block_count, align 8
  %conv70 = zext i32 %42 to i64
  %add71 = add i64 %add68, %conv70
  %43 = ptrtoint ptr %root_reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %root_reserved_blocks, align 8
  %conv74 = zext i32 %44 to i64
  %add75 = add i64 %add71, %conv74
  %45 = ptrtoint ptr %user_block_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %user_block_count, align 8
  %conv77 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add75, i64 %conv77)
  %cmp78 = icmp ugt i64 %add75, %conv77
  br i1 %cmp78, label %if.end85.thread, label %if.end89

if.end85.thread:                                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #16
  br label %out_err

if.end89:                                         ; preds = %if.end59
  %47 = trunc i64 %sub26 to i32
  %conv84 = sub i32 %46, %47
  %48 = ptrtoint ptr %user_block_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv84, ptr %user_block_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #16
  %call90 = tail call fastcc i32 @free_segment_range(ptr noundef %sbi, i32 noundef %dividend.addr.0.i.i.off0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.if.then106_crit_edge

if.end89.if.then106_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then106

if.end93:                                         ; preds = %if.end89
  %sub94 = sub i32 0, %dividend.addr.0.i.i.off0
  tail call fastcc void @update_sb_metadata(ptr noundef %sbi, i32 noundef %sub94)
  %call95 = tail call i32 @f2fs_commit_super(ptr noundef %sbi, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @update_sb_metadata(ptr noundef %sbi, i32 noundef %dividend.addr.0.i.i.off0)
  br label %if.then106

if.end98:                                         ; preds = %if.end93
  tail call fastcc void @update_fs_metadata(ptr noundef %sbi, i32 noundef %sub94)
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %s_flag.i) #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_flag.i) #16
  %call100 = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end98.out_err_crit_edge, label %if.then102

if.end98.out_err_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @update_fs_metadata(ptr noundef %sbi, i32 noundef %dividend.addr.0.i.i.off0)
  call fastcc void @update_sb_metadata(ptr noundef %sbi, i32 noundef %dividend.addr.0.i.i.off0)
  %call103 = call i32 @f2fs_commit_super(ptr noundef %sbi, i1 noundef zeroext false) #16
  br label %if.then106

if.then106:                                       ; preds = %if.then102, %if.then97, %if.end89.if.then106_crit_edge
  %err.3.ph = phi i32 [ %call100, %if.then102 ], [ %call95, %if.then97 ], [ %call90, %if.end89.if.then106_crit_edge ]
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #16
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.8) #16
  call void @_raw_spin_lock(ptr noundef %stat_lock) #16
  %49 = ptrtoint ptr %user_block_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %user_block_count, align 8
  %conv111 = add i32 %50, %47
  store i32 %conv111, ptr %user_block_count, align 8
  call void @_raw_spin_unlock(ptr noundef %stat_lock) #16
  br label %out_err

out_err:                                          ; preds = %if.then106, %if.end98.out_err_crit_edge, %if.end85.thread
  %err.4 = phi i32 [ %err.3.ph, %if.then106 ], [ -28, %if.end85.thread ], [ 0, %if.end98.out_err_crit_edge ]
  call void @up_write(ptr noundef %cp_global_sem) #16
  call void @up_write(ptr noundef %gc_lock) #16
  %51 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sbi, align 8
  %call117 = call i32 @thaw_super(ptr noundef %52) #16
  call void @_clear_bit(i32 noundef 13, ptr noundef %s_flag.i) #16
  br label %cleanup118

cleanup118:                                       ; preds = %out_err, %out_unlock.cleanup118_crit_edge, %div_u64.exit.cleanup118_crit_edge, %if.then24, %if.then21, %if.end15.cleanup118_crit_edge, %div_u64_rem.exit.cleanup118_crit_edge, %if.then3.cleanup118_crit_edge, %entry.cleanup118_crit_edge
  %retval.1 = phi i32 [ -117, %if.then21 ], [ -22, %if.then24 ], [ %err.4, %out_err ], [ -22, %if.then3.cleanup118_crit_edge ], [ -22, %entry.cleanup118_crit_edge ], [ -22, %div_u64_rem.exit.cleanup118_crit_edge ], [ 0, %if.end15.cleanup118_crit_edge ], [ -11, %div_u64.exit.cleanup118_crit_edge ], [ %err.1, %out_unlock.cleanup118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc) #16
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_segment_range(ptr noundef %sbi, i32 noundef %secs, i1 noundef zeroext %gc_only) unnamed_addr #0 align 64 {
entry:
  %cpc = alloca %struct.cp_control, align 8
  %gc_list = alloca %struct.gc_inode_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpc) #16
  %0 = call ptr @memcpy(ptr %cpc, ptr @__const.free_segment_range.cpc, i32 32)
  %total_sections = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 54
  %1 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %total_sections, align 8
  %sub = sub i32 %2, %secs
  store i32 %sub, ptr %total_sections, align 8
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %3 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %segs_per_sec, align 8
  %mul = mul i32 %4, %sub
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm_info.i, align 8
  %main_segments = getelementptr inbounds %struct.f2fs_sm_info, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %main_segments to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %main_segments, align 4
  %dirty_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %dirty_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dirty_info.i, align 4
  %seglist_lock = getelementptr inbounds %struct.dirty_seglist_info, ptr %10, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %seglist_lock, i32 noundef 0) #16
  %11 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm_info.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx = getelementptr %struct.sit_info, ptr %14, i32 0, i32 22, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul)
  %cmp5.not = icmp ult i32 %16, %mul
  br i1 %cmp5.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %18 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sm_info.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %arrayidx.1 = getelementptr %struct.sit_info, ptr %21, i32 0, i32 22, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mul)
  %cmp5.not.1 = icmp ult i32 %23, %mul
  br i1 %cmp5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %25 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sm_info.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx.2 = getelementptr %struct.sit_info, ptr %28, i32 0, i32 22, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %mul)
  %cmp5.not.2 = icmp ult i32 %30, %mul
  br i1 %cmp5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %32 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sm_info.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %arrayidx.3 = getelementptr %struct.sit_info, ptr %35, i32 0, i32 22, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %mul)
  %cmp5.not.3 = icmp ult i32 %37, %mul
  br i1 %cmp5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %39 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sm_info.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %arrayidx.4 = getelementptr %struct.sit_info, ptr %42, i32 0, i32 22, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %mul)
  %cmp5.not.4 = icmp ult i32 %44, %mul
  br i1 %cmp5.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx12 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 79, i32 0
  %46 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mul)
  %cmp13.not = icmp ult i32 %47, %mul
  br i1 %cmp13.not, label %for.inc.4.for.inc18_crit_edge, label %if.then14

for.inc.4.for.inc18_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

if.then14:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %arrayidx12, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %if.then14, %for.inc.4.for.inc18_crit_edge
  %arrayidx12.1 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 79, i32 1
  %49 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx12.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %mul)
  %cmp13.not.1 = icmp ult i32 %50, %mul
  br i1 %cmp13.not.1, label %for.inc18.for.inc18.1_crit_edge, label %if.then14.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18.1

if.then14.1:                                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %arrayidx12.1, align 4
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.then14.1, %for.inc18.for.inc18.1_crit_edge
  %sub2 = add i32 %8, -1
  %52 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sm_info.i, align 8
  %dirty_info.i119 = getelementptr inbounds %struct.f2fs_sm_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dirty_info.i119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dirty_info.i119, align 4
  %seglist_lock22 = getelementptr inbounds %struct.dirty_seglist_info, ptr %55, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %seglist_lock22) #16
  tail call void @f2fs_allocate_segment_for_resize(ptr noundef %sbi, i32 noundef 0, i32 noundef %mul, i32 noundef %sub2) #16
  tail call void @f2fs_allocate_segment_for_resize(ptr noundef %sbi, i32 noundef 1, i32 noundef %mul, i32 noundef %sub2) #16
  tail call void @f2fs_allocate_segment_for_resize(ptr noundef %sbi, i32 noundef 2, i32 noundef %mul, i32 noundef %sub2) #16
  tail call void @f2fs_allocate_segment_for_resize(ptr noundef %sbi, i32 noundef 3, i32 noundef %mul, i32 noundef %sub2) #16
  tail call void @f2fs_allocate_segment_for_resize(ptr noundef %sbi, i32 noundef 4, i32 noundef %mul, i32 noundef %sub2) #16
  tail call void @f2fs_allocate_segment_for_resize(ptr noundef %sbi, i32 noundef 5, i32 noundef %mul, i32 noundef %sub2) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub2)
  %cmp30.not130 = icmp ugt i32 %mul, %sub2
  br i1 %cmp30.not130, label %for.inc18.1.for.end46_crit_edge, label %for.body31.lr.ph

for.inc18.1.for.end46_crit_edge:                  ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end46

for.body31.lr.ph:                                 ; preds = %for.inc18.1
  %prev = getelementptr inbounds %struct.list_head, ptr %gc_list, i32 0, i32 1
  %iroot = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1
  %magic = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %owner_cpu = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %owner = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %dep_map = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %name = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4, i32 2
  %wait_type_inner = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4, i32 4
  %xa_flags = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 1
  %xa_head = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1, i32 2
  br label %for.body31

for.body31:                                       ; preds = %for.inc44.for.body31_crit_edge, %for.body31.lr.ph
  %segno.0131 = phi i32 [ %mul, %for.body31.lr.ph ], [ %add, %for.inc44.for.body31_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %gc_list) #16
  %56 = ptrtoint ptr %gc_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %gc_list, ptr %gc_list, align 4
  %57 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %gc_list, ptr %prev, align 4
  %58 = ptrtoint ptr %iroot to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %iroot, align 4
  %59 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -559067475, ptr %magic, align 4
  %60 = ptrtoint ptr %owner_cpu to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %owner_cpu, align 4
  %61 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %owner, align 4
  %62 = call ptr @memset(ptr %dep_map, i32 0, i32 28)
  %63 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.4, ptr %name, align 4
  %64 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %wait_type_inner, align 1
  %65 = ptrtoint ptr %xa_flags to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3136, ptr %xa_flags, align 4
  %66 = ptrtoint ptr %xa_head to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %xa_head, align 4
  %call34 = call fastcc i32 @do_garbage_collect(ptr noundef %sbi, i32 noundef %segno.0131, ptr noundef nonnull %gc_list, i32 noundef 1, i1 noundef zeroext true)
  %67 = ptrtoint ptr %gc_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gc_list, align 4
  %cmp.not22.i = icmp eq ptr %68, %gc_list
  br i1 %cmp.not22.i, label %for.body31.put_gc_inode.exit_crit_edge, label %for.body31.for.body.i_crit_edge

for.body31.for.body.i_crit_edge:                  ; preds = %for.body31
  br label %for.body.i

for.body31.put_gc_inode.exit_crit_edge:           ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_gc_inode.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body31.for.body.i_crit_edge
  %ie.023.i = phi ptr [ %next_ie.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %68, %for.body31.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %ie.023.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %next_ie.0.i = load ptr, ptr %ie.023.i, align 4
  %inode.i = getelementptr inbounds %struct.inode_entry, ptr %ie.023.i, i32 0, i32 1
  %70 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inode.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_ino.i, align 8
  %call.i = call ptr @radix_tree_delete(ptr noundef %iroot, i32 noundef %73) #16
  %74 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inode.i, align 4
  call void @iput(ptr noundef %75) #16
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ie.023.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ie.023.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i, align 4
  %78 = ptrtoint ptr %ie.023.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ie.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %82 = ptrtoint ptr %ie.023.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %ie.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ie.023.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_inode_entry_slab to i32))
  %84 = load ptr, ptr @f2fs_inode_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %84, ptr noundef %ie.023.i) #16
  %cmp.not.i = icmp eq ptr %next_ie.0.i, %gc_list
  br i1 %cmp.not.i, label %list_del.exit.i.put_gc_inode.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.put_gc_inode.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_gc_inode.exit

put_gc_inode.exit:                                ; preds = %list_del.exit.i.put_gc_inode.exit_crit_edge, %for.body31.put_gc_inode.exit_crit_edge
  br i1 %gc_only, label %put_gc_inode.exit.if.end38_crit_edge, label %land.lhs.true

put_gc_inode.exit.if.end38_crit_edge:             ; preds = %put_gc_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

land.lhs.true:                                    ; preds = %put_gc_inode.exit
  %85 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i = icmp ugt i32 %86, 1
  %87 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sm_info.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true
  %sec_entries.i.i = getelementptr inbounds %struct.sit_info, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %sec_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sec_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %segno.0131)
  %cmp.i.i = icmp eq i32 %segno.0131, -1
  br i1 %cmp.i.i, label %if.then.i.get_sec_entry.exit.i_crit_edge, label %cond.false.i.i

if.then.i.get_sec_entry.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_sec_entry.exit.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i.i = udiv i32 %segno.0131, %86
  br label %get_sec_entry.exit.i

get_sec_entry.exit.i:                             ; preds = %cond.false.i.i, %if.then.i.get_sec_entry.exit.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.false.i.i ], [ -1, %if.then.i.get_sec_entry.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sec_entry, ptr %92, i32 %cond.i.i
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i, align 4
  br label %get_valid_blocks.exit

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %90, i32 0, i32 14
  %95 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i6.i = getelementptr %struct.seg_entry, ptr %96, i32 %segno.0131
  %97 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load.i = load i32, ptr %arrayidx.i6.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 16
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  br label %get_valid_blocks.exit

get_valid_blocks.exit:                            ; preds = %if.else.i, %get_sec_entry.exit.i
  %retval.0.i = phi i32 [ %94, %get_sec_entry.exit.i ], [ %bf.clear.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool36.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool36.not, label %get_valid_blocks.exit.if.end38_crit_edge, label %get_valid_blocks.exit.cleanup.thread_crit_edge

get_valid_blocks.exit.cleanup.thread_crit_edge:   ; preds = %get_valid_blocks.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

get_valid_blocks.exit.if.end38_crit_edge:         ; preds = %get_valid_blocks.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.end38:                                         ; preds = %get_valid_blocks.exit.if.end38_crit_edge, %put_gc_inode.exit.if.end38_crit_edge
  %98 = call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %stack.i.i.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 4
  %and1.i.i.i.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end38.for.inc44_crit_edge, label %fatal_signal_pending.exit

if.end38.for.inc44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc44

fatal_signal_pending.exit:                        ; preds = %if.end38
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 116, i32 1
  %106 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %signal.i.i, align 4
  %108 = and i32 %107, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool41.not = icmp eq i32 %108, 0
  br i1 %tobool41.not, label %fatal_signal_pending.exit.for.inc44_crit_edge, label %fatal_signal_pending.exit.cleanup.thread_crit_edge

fatal_signal_pending.exit.cleanup.thread_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

fatal_signal_pending.exit.for.inc44_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc44

cleanup.thread:                                   ; preds = %fatal_signal_pending.exit.cleanup.thread_crit_edge, %get_valid_blocks.exit.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ -512, %fatal_signal_pending.exit.cleanup.thread_crit_edge ], [ -11, %get_valid_blocks.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %gc_list) #16
  br label %cleanup68

for.inc44:                                        ; preds = %fatal_signal_pending.exit.for.inc44_crit_edge, %if.end38.for.inc44_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %gc_list) #16
  %109 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %segs_per_sec, align 8
  %add = add i32 %110, %segno.0131
  %cmp30.not = icmp ugt i32 %add, %sub2
  br i1 %cmp30.not, label %for.inc44.for.end46_crit_edge, label %for.inc44.for.body31_crit_edge

for.inc44.for.body31_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body31

for.inc44.for.end46_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end46

for.end46:                                        ; preds = %for.inc44.for.end46_crit_edge, %for.inc18.1.for.end46_crit_edge
  br i1 %gc_only, label %for.end46.cleanup68_crit_edge, label %if.end49

for.end46.cleanup68_crit_edge:                    ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup68

if.end49:                                         ; preds = %for.end46
  %call50 = call i32 @f2fs_write_checkpoint(ptr noundef %sbi, ptr noundef nonnull %cpc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup68_crit_edge

if.end49.cleanup68_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup68

if.end53:                                         ; preds = %if.end49
  %111 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sm_info.i, align 8
  %free_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %free_info.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %free_info.i, align 4
  %segmap_lock.i = getelementptr inbounds %struct.free_segmap_info, ptr %114, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %segmap_lock.i) #16
  %free_segmap.i = getelementptr inbounds %struct.free_segmap_info, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %free_segmap.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %free_segmap.i, align 4
  %call.i121 = call i32 @_find_next_bit_be(ptr noundef %116, i32 noundef %8, i32 noundef %mul) #16
  call void @_raw_spin_unlock(ptr noundef %segmap_lock.i) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i121, i32 %sub2)
  %cmp57.not = icmp ugt i32 %call.i121, %sub2
  br i1 %cmp57.not, label %if.end53.cleanup68_crit_edge, label %if.then58

if.end53.cleanup68_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup68

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str.32, i32 noundef %call.i121) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1923, 0\0A.popsection", ""() #16, !srcloc !152
  unreachable

cleanup68:                                        ; preds = %if.end53.cleanup68_crit_edge, %if.end49.cleanup68_crit_edge, %for.end46.cleanup68_crit_edge, %cleanup.thread
  %err.2 = phi i32 [ 0, %for.end46.cleanup68_crit_edge ], [ %call50, %if.end49.cleanup68_crit_edge ], [ 0, %if.end53.cleanup68_crit_edge ], [ %err.1.ph, %cleanup.thread ]
  %117 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %total_sections, align 8
  %add67 = add i32 %118, %secs
  store i32 %add67, ptr %total_sections, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpc) #16
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_sb_metadata(ptr noundef %sbi, i32 noundef %secs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super.i, align 8
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %2 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %segs_per_sec, align 8
  %mul = mul i32 %3, %secs
  %sb_lock = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 3
  tail call void @down_write(ptr noundef %sb_lock) #16
  %section_count1 = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %section_count1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %section_count1, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %segment_count2 = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %segment_count2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %segment_count2, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %segment_count_main3 = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %segment_count_main3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %segment_count_main3, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %block_count4 = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %block_count4 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %block_count4, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %add = add i32 %6, %secs
  %16 = tail call i32 @llvm.bswap.i32(i32 %add)
  %17 = ptrtoint ptr %section_count1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %section_count1, align 1
  %add6 = add i32 %9, %mul
  %18 = tail call i32 @llvm.bswap.i32(i32 %add6)
  %19 = ptrtoint ptr %segment_count2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %segment_count2, align 1
  %add8 = add i32 %12, %mul
  %20 = tail call i32 @llvm.bswap.i32(i32 %add8)
  %21 = ptrtoint ptr %segment_count_main3 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %segment_count_main3, align 1
  %conv = sext i32 %mul to i64
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %22 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocks_per_seg, align 4
  %conv10 = zext i32 %23 to i64
  %mul11 = mul nsw i64 %conv10, %conv
  %add12 = add i64 %mul11, %15
  %24 = tail call i64 @llvm.bswap.i64(i64 %add12)
  %25 = ptrtoint ptr %block_count4 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %block_count4, align 1
  %s_ndevs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 122
  %26 = ptrtoint ptr %s_ndevs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_ndevs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp sgt i32 %27, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add nsw i32 %27, -1
  %total_segments = getelementptr %struct.f2fs_super_block, ptr %1, i32 0, i32 37, i32 %sub, i32 1
  %28 = ptrtoint ptr %total_segments to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %total_segments, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add15 = add i32 %30, %mul
  %31 = tail call i32 @llvm.bswap.i32(i32 %add15)
  %32 = ptrtoint ptr %total_segments to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %total_segments, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %sb_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_commit_super(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @update_fs_metadata(ptr nocapture noundef %sbi, i32 noundef %secs) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec, align 8
  %mul = mul i32 %1, %secs
  %conv = sext i32 %mul to i64
  %blocks_per_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %2 = ptrtoint ptr %blocks_per_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks_per_seg, align 4
  %conv1 = zext i32 %3 to i64
  %mul2 = mul nsw i64 %conv, %conv1
  %ckpt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i, align 4
  %user_block_count3 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %user_block_count3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %user_block_count3, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %sm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %9 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm_info.i, align 8
  %segment_count = getelementptr inbounds %struct.f2fs_sm_info, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %segment_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %segment_count, align 4
  %add = add i32 %12, %mul
  store i32 %add, ptr %segment_count, align 4
  %13 = load ptr, ptr %sm_info.i, align 8
  %main_segments = getelementptr inbounds %struct.f2fs_sm_info, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %main_segments to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %main_segments, align 4
  %add8 = add i32 %15, %mul
  store i32 %add8, ptr %main_segments, align 4
  %total_sections = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 54
  %16 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_sections, align 8
  %add11 = add i32 %17, %secs
  store i32 %add11, ptr %total_sections, align 8
  %18 = load ptr, ptr %sm_info.i, align 8
  %free_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %free_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free_info.i, align 4
  %free_sections = getelementptr inbounds %struct.free_segmap_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %free_sections to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %free_sections, align 4
  %add13 = add i32 %22, %secs
  store i32 %add13, ptr %free_sections, align 4
  %23 = load ptr, ptr %sm_info.i, align 8
  %free_info.i83 = getelementptr inbounds %struct.f2fs_sm_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %free_info.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_info.i83, align 4
  %free_segments = getelementptr inbounds %struct.free_segmap_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %free_segments to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %free_segments, align 4
  %add17 = add i32 %27, %mul
  store i32 %add17, ptr %free_segments, align 4
  %add20 = add i64 %8, %mul2
  %28 = tail call i64 @llvm.bswap.i64(i64 %add20)
  %29 = ptrtoint ptr %ckpt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ckpt.i, align 4
  %user_block_count22 = getelementptr inbounds %struct.f2fs_checkpoint, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %user_block_count22 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %28, ptr %user_block_count22, align 1
  %s_ndevs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 122
  %32 = ptrtoint ptr %s_ndevs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_ndevs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i = icmp sgt i32 %33, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add nsw i32 %33, -1
  %devs = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 123
  %34 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devs, align 4
  %total_segments = getelementptr %struct.f2fs_dev_info, ptr %35, i32 %sub, i32 2
  %36 = ptrtoint ptr %total_segments to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %total_segments, align 4
  %add24 = add i32 %37, %mul
  store i32 %add24, ptr %total_segments, align 4
  %38 = load ptr, ptr %devs, align 4
  %end_blk = getelementptr %struct.f2fs_dev_info, ptr %38, i32 %sub, i32 4
  %39 = ptrtoint ptr %end_blk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end_blk, align 4
  %41 = trunc i64 %mul2 to i32
  %conv32 = add i32 %40, %41
  store i32 %conv32, ptr %end_blk, align 4
  %42 = load ptr, ptr %devs, align 4
  %nr_blkz = getelementptr %struct.f2fs_dev_info, ptr %42, i32 %sub, i32 5
  %43 = ptrtoint ptr %nr_blkz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_blkz, align 4
  %log_blocks_per_blkz = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 8
  %45 = ptrtoint ptr %log_blocks_per_blkz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %log_blocks_per_blkz, align 4
  %sh_prom = zext i32 %46 to i64
  %shr = ashr i64 %mul2, %sh_prom
  %conv38 = trunc i64 %shr to i32
  %add39 = add i32 %44, %conv38
  store i32 %add39, ptr %nr_blkz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_stop_checkpoint(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_background_gc(ptr noundef %sb, i32 noundef %wait_ms, i32 noundef %prefree, i32 noundef %free) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_background_gc, i32 0, i32 1), ptr blockaddress(@trace_f2fs_background_gc, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !126

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !153
  %call42 = tail call i32 @__traceiter_f2fs_background_gc(ptr noundef null, ptr noundef %sb, i32 noundef %wait_ms, i32 noundef %prefree, i32 noundef %free) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !115

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_background_gc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_background_gc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_background_gc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_background_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 651, ptr noundef nonnull @.str.18) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_balance_fs_bg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_usable_blks_in_seg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_background_gc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_gc_begin(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_ra_meta_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_sum_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef %unlock) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlock)
  %tobool1.not = icmp eq i32 %unlock, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !115

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !116

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !115

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.21) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #16, !srcloc !155
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !115

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !116

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #16, !srcloc !156
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unlock_page(ptr noundef nonnull %page) #16
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end.if.end13_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i17 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !115

if.then.i.i20:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i21:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %18, %if.end.i.i21 ]
  %19 = inttoptr i32 %retval.0.i.i22 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !116

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.22) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %19) #16
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_valid_blocks(ptr nocapture noundef readonly %sbi, i32 noundef %segno, i1 noundef zeroext %use_section) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br i1 %use_section, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %2 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_info.i.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sec_entries.i = getelementptr inbounds %struct.sit_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %sec_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sec_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %segno)
  %cmp.i = icmp eq i32 %segno, -1
  br i1 %cmp.i, label %if.then.get_sec_entry.exit_crit_edge, label %cond.false.i

if.then.get_sec_entry.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_sec_entry.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %div.i = udiv i32 %segno, %1
  br label %get_sec_entry.exit

get_sec_entry.exit:                               ; preds = %cond.false.i, %if.then.get_sec_entry.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.false.i ], [ -1, %if.then.get_sec_entry.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.sec_entry, ptr %7, i32 %cond.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sm_info.i.i.i5 = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %10 = ptrtoint ptr %sm_info.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm_info.i.i.i5, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %sentries.i = getelementptr inbounds %struct.sit_info, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %sentries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sentries.i, align 4
  %arrayidx.i6 = getelementptr %struct.seg_entry, ptr %15, i32 %segno
  %16 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %arrayidx.i6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 1023
  br label %return

return:                                           ; preds = %if.else, %get_sec_entry.exit
  %retval.0 = phi i32 [ %9, %get_sec_entry.exit ], [ %bf.clear, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_submit_merged_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_ra_node_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_node_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_node_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_move_node_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ra_data_block(ptr noundef %inode, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %dn = alloca %struct.dnode_of_data, align 4
  %ei = alloca %struct.extent_info, align 4
  %fio = alloca %struct.f2fs_io_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn) #16
  %6 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %9 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %10 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 9
  %11 = call ptr @memset(ptr %dn, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ei) #16
  %12 = call ptr @memset(ptr %ei, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio) #16
  %13 = getelementptr inbounds i8, ptr %fio, i32 20
  %14 = call ptr @memset(ptr %13, i32 0, i32 72)
  %15 = ptrtoint ptr %fio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %fio, align 4
  %ino = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %18 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ino, align 4
  %type = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type, align 4
  %temp = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 3
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %temp, align 4
  %op = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 4
  %21 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %op, align 4
  %retry = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 16
  %22 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %retry, align 2
  %call3 = tail call fastcc ptr @f2fs_grab_cache_page(ptr noundef %5, i32 noundef %index, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call zeroext i1 @f2fs_lookup_extent_cache(ptr noundef %inode, i32 noundef %index, ptr noundef nonnull %ei) #16
  br i1 %call4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end
  %blk = getelementptr inbounds %struct.extent_info, ptr %ei, i32 0, i32 2
  %23 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blk, align 4
  %add = add i32 %24, %index
  %25 = ptrtoint ptr %ei to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ei, align 4
  %sub = sub i32 %add, %26
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %10, align 4
  %call7 = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %3, i32 noundef %sub, i32 noundef 8) #16
  br i1 %call7, label %if.then5.got_it_crit_edge, label %if.then5.put_page_crit_edge, !prof !115

if.then5.put_page_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page

if.then5.got_it_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_it

if.end13:                                         ; preds = %if.end
  %28 = call ptr @memset(ptr %9, i32 0, i32 12)
  %29 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %inode, ptr %dn, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %6, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %7, align 4
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %8, align 4
  %call14 = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %dn, i32 noundef %index, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.put_page_crit_edge

if.end13.put_page_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page

if.end17:                                         ; preds = %if.end13
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn)
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %10, align 4
  %switch.tableidx = add i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 3
  br i1 %35, label %if.end17.put_page_crit_edge, label %if.end21

if.end17.put_page_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page

if.end21:                                         ; preds = %if.end17
  %call23 = call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %3, i32 noundef %34, i32 noundef 7) #16
  br i1 %call23, label %if.end21.got_it_crit_edge, label %if.end21.put_page_crit_edge, !prof !115

if.end21.put_page_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page

if.end21.got_it_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_it

got_it:                                           ; preds = %if.end21.got_it_crit_edge, %if.then5.got_it_crit_edge
  %page34 = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 8
  %36 = ptrtoint ptr %page34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call3, ptr %page34, align 4
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %10, align 4
  %old_blkaddr = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 7
  %39 = ptrtoint ptr %old_blkaddr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %old_blkaddr, align 4
  %new_blkaddr = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 6
  %40 = ptrtoint ptr %new_blkaddr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %new_blkaddr, align 4
  call void @f2fs_wait_on_page_writeback(ptr noundef nonnull %call3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #16
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %10, align 4
  call void @f2fs_wait_on_block_writeback(ptr noundef %inode, i32 noundef %42) #16
  %meta_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 18
  %43 = ptrtoint ptr %meta_inode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %meta_inode.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping.i, align 8
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %10, align 4
  %call39 = call fastcc ptr @f2fs_pagecache_get_page(ptr noundef %46, i32 noundef %48)
  %encrypted_page = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 9
  %49 = ptrtoint ptr %encrypted_page to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call39, ptr %encrypted_page, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %got_it.put_page_crit_edge, label %if.end43

got_it.put_page_crit_edge:                        ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page

if.end43:                                         ; preds = %got_it
  %call44 = call i32 @f2fs_submit_page_bio(ptr noundef nonnull %fio) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %50 = ptrtoint ptr %encrypted_page to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %encrypted_page, align 4
  br i1 %tobool45.not, label %if.end47, label %put_encrypted_page

if.end47:                                         ; preds = %if.end43
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.end47.f2fs_put_page.exit_crit_edge, label %if.end.i75

if.end47.f2fs_put_page.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit

if.end.i75:                                       ; preds = %if.end47
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i17.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !115

if.then.i.i20.i:                                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i = add i32 %54, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %51 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %55, %if.end.i.i21.i ]
  %56 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  %57 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !116

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.22) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ra_data_block, %if.then.i.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %56, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge

folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_put_page.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__put_page(ptr noundef %56) #16
  br label %f2fs_put_page.exit

f2fs_put_page.exit:                               ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge, %if.end47.f2fs_put_page.exit_crit_edge
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call3, i32 noundef 1)
  call void @f2fs_update_iostat(ptr noundef %3, i32 noundef 16, i64 noundef 4096) #16
  call void @f2fs_update_iostat(ptr noundef %3, i32 noundef 17, i64 noundef 4096) #16
  br label %cleanup

put_encrypted_page:                               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @f2fs_put_page(ptr noundef %51, i32 noundef 1)
  br label %put_page

put_page:                                         ; preds = %put_encrypted_page, %got_it.put_page_crit_edge, %if.end21.put_page_crit_edge, %if.end17.put_page_crit_edge, %if.end13.put_page_crit_edge, %if.then5.put_page_crit_edge
  %err.0 = phi i32 [ %call44, %put_encrypted_page ], [ %call14, %if.end13.put_page_crit_edge ], [ -117, %if.then5.put_page_crit_edge ], [ -117, %if.end21.put_page_crit_edge ], [ -12, %got_it.put_page_crit_edge ], [ -2, %if.end17.put_page_crit_edge ]
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call3, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %put_page, %f2fs_put_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %put_page ], [ 0, %f2fs_put_page.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ei) #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_gc_inode(ptr noundef %gc_list, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %iroot.i = getelementptr inbounds %struct.gc_inode_list, ptr %gc_list, i32 0, i32 1
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %iroot.i, i32 noundef %1) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.find_gc_inode.exit_crit_edge, label %if.then.i

entry.find_gc_inode.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_gc_inode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %inode.i = getelementptr inbounds %struct.inode_entry, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode.i, align 4
  br label %find_gc_inode.exit

find_gc_inode.exit:                               ; preds = %if.then.i, %entry.find_gc_inode.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.find_gc_inode.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, %inode
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %find_gc_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iput(ptr noundef %inode) #16
  br label %cleanup

if.end:                                           ; preds = %find_gc_inode.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_inode_entry_slab to i32))
  %4 = load ptr, ptr @f2fs_inode_entry_slab, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3136) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.f2fs_kmem_cache_alloc.exit_crit_edge

if.end.f2fs_kmem_cache_alloc.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_kmem_cache_alloc.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 35904) #16
  br label %f2fs_kmem_cache_alloc.exit

f2fs_kmem_cache_alloc.exit:                       ; preds = %if.then.i.i, %if.end.f2fs_kmem_cache_alloc.exit_crit_edge
  %entry1.0.i.i = phi ptr [ %call.i.i, %if.end.f2fs_kmem_cache_alloc.exit_crit_edge ], [ %call2.i.i, %if.then.i.i ]
  %inode2 = getelementptr inbounds %struct.inode_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %inode2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %inode, ptr %inode2, align 8
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %call2.i = tail call i32 @radix_tree_insert(ptr noundef %iroot.i, i32 noundef %7, ptr noundef %entry1.0.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not3.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not3.i, label %f2fs_kmem_cache_alloc.exit.f2fs_radix_tree_insert.exit_crit_edge, label %f2fs_kmem_cache_alloc.exit.while.body.i_crit_edge

f2fs_kmem_cache_alloc.exit.while.body.i_crit_edge: ; preds = %f2fs_kmem_cache_alloc.exit
  br label %while.body.i

f2fs_kmem_cache_alloc.exit.f2fs_radix_tree_insert.exit_crit_edge: ; preds = %f2fs_kmem_cache_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_radix_tree_insert.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %f2fs_kmem_cache_alloc.exit.while.body.i_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 2695, i32 noundef 0) #16
  %call.i.i12 = tail call i32 @__cond_resched() #16
  %call.i13 = tail call i32 @radix_tree_insert(ptr noundef %iroot.i, i32 noundef %7, ptr noundef %entry1.0.i.i) #16
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %while.body.i.f2fs_radix_tree_insert.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.f2fs_radix_tree_insert.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_radix_tree_insert.exit

f2fs_radix_tree_insert.exit:                      ; preds = %while.body.i.f2fs_radix_tree_insert.exit_crit_edge, %f2fs_kmem_cache_alloc.exit.f2fs_radix_tree_insert.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %gc_list, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1.0.i.i, ptr noundef %9, ptr noundef %gc_list) #16
  br i1 %call.i.i15, label %if.end.i.i, label %f2fs_radix_tree_insert.exit.cleanup_crit_edge

f2fs_radix_tree_insert.exit.cleanup_crit_edge:    ; preds = %f2fs_radix_tree_insert.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %f2fs_radix_tree_insert.exit
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry1.0.i.i, ptr %prev.i, align 4
  %11 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %gc_list, ptr %entry1.0.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry1.0.i.i, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %f2fs_radix_tree_insert.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_read_data_page(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_check_nid_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_grab_cache_page(ptr noundef %mapping, i32 noundef %index, i1 noundef zeroext %for_write) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %. = select i1 %for_write, i32 2, i32 3
  %call.i30 = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef %., i32 noundef 0) #16
  %tobool2.not = icmp eq ptr %call.i30, null
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %entry
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 1
  %6 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end4.if.end14_crit_edge, label %if.end.i

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end.i:                                         ; preds = %if.end4
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 2
  %8 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end14_crit_edge, label %if.end3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #16, !srcloc !114
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fault_info.i, align 4
  %13 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i, label %if.end3.i.if.end14_crit_edge, label %if.then7

if.end3.i.if.end14_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then7:                                         ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  %15 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_grab_cache_page._rs, ptr noundef nonnull @__func__.f2fs_grab_cache_page) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %do.end

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %i_sb.i.i31 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i31, align 4
  %s_fs_info.i.i.i32 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i32, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 2), align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, ptr noundef %s_id, ptr noundef %24, ptr noundef nonnull @__func__.f2fs_grab_cache_page, ptr noundef %25) #19
  br label %cleanup

if.end14:                                         ; preds = %if.end3.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  br i1 %for_write, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %26 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef 7, i32 noundef %27) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %index, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %do.end, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call19, %if.end18 ], [ %call.i.i, %if.then16 ], [ %call.i30, %entry.cleanup_crit_edge ], [ null, %do.end ], [ null, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_lookup_extent_cache(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_dnode_of_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_dnode(ptr nocapture noundef %dn) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %node_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %0 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %1, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %2 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode_page, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_page, align 4
  %cmp.not = icmp eq ptr %5, %3
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.end.i

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.i:                                         ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i17.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !115

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i19.i = add i32 %8, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %9, %if.end.i.i21.i ]
  %10 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !116

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.22) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_dnode, %if.then.i.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end7_crit_edge

folio_put_testzero.exit.i.i.i.if.end7_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %10) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %node_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %node_page, align 4
  %15 = ptrtoint ptr %inode_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %inode_page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_block_writeback(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_pagecache_get_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 1
  %6 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %if.end.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end.i:                                         ; preds = %entry
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 2
  %8 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6_crit_edge, label %if.end3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #16, !srcloc !114
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fault_info.i, align 4
  %13 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i, label %if.end3.i.if.end6_crit_edge, label %if.then

if.end3.i.if.end6_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #16
  %15 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_pagecache_get_page._rs, ptr noundef nonnull @__func__.f2fs_pagecache_get_page) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %i_sb.i.i1 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i1, align 4
  %s_fs_info.i.i.i2 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i2, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 3) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 3), align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, ptr noundef %s_id, ptr noundef %24, ptr noundef nonnull @__func__.f2fs_pagecache_get_page, ptr noundef %25) #19
  br label %return

if.end6:                                          ; preds = %if.end3.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef 6, i32 noundef 3136) #16
  br label %return

return:                                           ; preds = %if.end6, %do.end, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end6 ], [ null, %do.end ], [ null, %if.then.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_submit_page_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_iostat(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_pin_file_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_allocate_data_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_invalidate_compress_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_submit_page_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_data_blkaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_do_replace_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_lock_data_page(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_page_private_gcing(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !116

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !157
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %PagePrivate.exit.if.end_crit_edge

PagePrivate.exit.if.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %PagePrivate.exit
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !115

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !116

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.30) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !158
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@set_page_private_gcing, %if.then.i.i.i.i)) #16
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !126

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__page_ref_mod(ptr noundef %9, i32 noundef 1) #16
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i7 = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i7, label %if.then.i8, label %SetPagePrivate.exit, !prof !116

if.then.i8:                                       ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !159
  unreachable

SetPagePrivate.exit:                              ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 13, ptr noundef %page) #16
  %private1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %private1.i, align 4
  br label %if.end

if.end:                                           ; preds = %SetPagePrivate.exit, %PagePrivate.exit.if.end_crit_edge
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %private) #16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %private) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_remove_dirty_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_do_write_data_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_page_private_gcing(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %private) #16
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %private, align 4
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !116

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !157
  unreachable

PagePrivate.exit:                                 ; preds = %if.then
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %PagePrivate.exit.if.end3_crit_edge, label %if.then2

PagePrivate.exit.if.end3_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %PagePrivate.exit
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i9 = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i9, label %if.then.i10, label %ClearPagePrivate.exit, !prof !116

if.then.i10:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #16, !srcloc !160
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #16
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !115

if.then.i.i:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !116

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.22) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@clear_page_private_gcing, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end3_crit_edge

folio_put_testzero.exit.i.i.if.end3_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %14) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end3_crit_edge, %PagePrivate.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@memalloc_retry_wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  %7 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags1.i, align 4
  %call55 = tail call i32 @io_schedule_timeout(i32 noundef 1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_gc_end(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_victim_by_default(ptr noundef %sbi, ptr nocapture noundef %result, i32 noundef %gc_type, i32 noundef %type, i8 noundef zeroext %alloc_mode, i64 noundef %age) #0 align 64 {
entry:
  %parent.i.i.i = alloca ptr, align 4
  %left_most.i.i.i = alloca i8, align 1
  %parent.i.i = alloca ptr, align 4
  %left_most.i.i = alloca i8, align 1
  %p = alloca %struct.victim_sel_policy, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dirty_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dirty_info.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %p) #16
  %6 = call ptr @memset(ptr %p, i32 255, i32 48)
  %seglist_lock = getelementptr inbounds %struct.dirty_seglist_info, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %seglist_lock, i32 noundef 0) #16
  %total_sections = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 54
  %7 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_sections, align 8
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %9 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %segs_per_sec, align 8
  %mul = mul i32 %10, %8
  %conv = zext i8 %alloc_mode to i32
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %p, align 8
  %age3 = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 9
  %12 = ptrtoint ptr %age3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %age, ptr %age3, align 8
  %age_threshold = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 7
  %13 = ptrtoint ptr %age_threshold to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %age_threshold, align 8
  %age_threshold4 = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %gc_type)
  %cmp33.not.i = icmp eq i32 %gc_type, 1
  %fs_mode.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 13
  %gc_mode5.i = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 1
  %dirty_bitmap8.i = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 2
  %max_search11.i = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 3
  %ofs_unit12.i = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gc_type)
  %cmp.i.i = icmp eq i32 %gc_type, 0
  %am.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76
  %gc_mode4.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 78
  %max_victim_search.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 88
  %mount_opt.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73
  %offset61.i = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 4
  %min_segno = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 8
  %oldest_age = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 7
  %min_cost510 = getelementptr inbounds %struct.victim_sel_policy, ptr %p, i32 0, i32 6
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %next_victim_seg = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 79
  %arrayidx51 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 79, i32 1
  %cur_victim_sec.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 77
  %invalid_segmap = getelementptr inbounds %struct.sit_info, ptr %5, i32 0, i32 7
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %victim_secmap = getelementptr inbounds %struct.dirty_seglist_info, ptr %3, i32 0, i32 5
  %log_blocks_per_seg.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %root.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 1
  %rb_leftmost.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 1, i32 1
  %victim_list.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 2
  %prev.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 2, i32 1
  %victim_count.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 3
  %max_candidate_count.i29.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 5
  %candidate_ratio.i30.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 4
  %age_weight4.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 76, i32 6
  %elapsed_time = getelementptr inbounds %struct.sit_info, ptr %5, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %15 = icmp ult i32 %type, 6
  %switch.maskindex = trunc i32 %type to i8
  %switch.shifted = lshr i8 57, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br label %retry

retry:                                            ; preds = %land.lhs.true201.retry_crit_edge, %entry
  %storemerge = phi i64 [ %14, %entry ], [ 0, %land.lhs.true201.retry_crit_edge ]
  %last_segment.0 = phi i32 [ %mul, %entry ], [ %last_segment.1.ph, %land.lhs.true201.retry_crit_edge ]
  %ret.0 = phi i32 [ 0, %entry ], [ -61, %land.lhs.true201.retry_crit_edge ]
  %17 = ptrtoint ptr %age_threshold4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %storemerge, ptr %age_threshold4, align 8
  %18 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dirty_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dirty_info.i.i, align 4
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %23, label %if.else13.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %gc_mode5.i, align 4
  %arrayidx.i351 = getelementptr %struct.dirty_seglist_info, ptr %21, i32 0, i32 1, i32 %type
  %26 = ptrtoint ptr %arrayidx.i351 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i351, align 4
  %28 = ptrtoint ptr %dirty_bitmap8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dirty_bitmap8.i, align 8
  %arrayidx1.i = getelementptr %struct.dirty_seglist_info, ptr %21, i32 0, i32 4, i32 %type
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i, align 4
  %31 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max_search11.i, align 4
  %32 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %ofs_unit12.i, align 4
  br label %if.end32.i

if.then4.i:                                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %gc_mode5.i, align 4
  %arrayidx7.i = getelementptr %struct.dirty_seglist_info, ptr %21, i32 0, i32 1, i32 %type
  %34 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx7.i, align 4
  %36 = ptrtoint ptr %dirty_bitmap8.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %dirty_bitmap8.i, align 8
  %arrayidx10.i = getelementptr %struct.dirty_seglist_info, ptr %21, i32 0, i32 4, i32 %type
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx10.i, align 4
  %39 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_search11.i, align 4
  %40 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %ofs_unit12.i, align 4
  br label %if.end32.i

if.else13.i:                                      ; preds = %retry
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else13.i.if.end3.i.i_crit_edge

if.else13.i.if.end3.i.i_crit_edge:                ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %am.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %am.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  %..i.i = select i1 %tobool.not.i.i, i32 0, i32 2
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i, %if.else13.i.if.end3.i.i_crit_edge
  %gc_mode.0.i.i = phi i32 [ %..i.i, %if.then.i.i ], [ 1, %if.else13.i.if.end3.i.i_crit_edge ]
  %43 = ptrtoint ptr %gc_mode4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gc_mode4.i.i, align 4
  %switch.tableidx = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 4
  br i1 %45, label %switch.lookup, label %if.end3.i.i.select_gc_type.exit.i_crit_edge

if.end3.i.i.select_gc_type.exit.i_crit_edge:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %select_gc_type.exit.i

switch.lookup:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.get_victim_by_default, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %select_gc_type.exit.i

select_gc_type.exit.i:                            ; preds = %switch.lookup, %if.end3.i.i.select_gc_type.exit.i_crit_edge
  %gc_mode.1.i.i = phi i32 [ %gc_mode.0.i.i, %if.end3.i.i.select_gc_type.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %47 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %gc_mode.1.i.i, ptr %gc_mode5.i, align 4
  %48 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %segs_per_sec, align 8
  %50 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ofs_unit12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp18.i = icmp ugt i32 %49, 1
  br i1 %cmp18.i, label %if.then19.i, label %if.else24.i

if.then19.i:                                      ; preds = %select_gc_type.exit.i
  %dirty_secmap.i = getelementptr inbounds %struct.dirty_seglist_info, ptr %21, i32 0, i32 2
  %51 = ptrtoint ptr %dirty_secmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dirty_secmap.i, align 4
  %53 = ptrtoint ptr %dirty_bitmap8.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %dirty_bitmap8.i, align 8
  %54 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total_sections, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.not.i.i = icmp eq i32 %55, 0
  br i1 %cmp1.not.i.i, label %if.then19.i.count_bits.exit.i_crit_edge, label %if.then19.i.while.body.i.i_crit_edge

if.then19.i.while.body.i.i_crit_edge:             ; preds = %if.then19.i
  br label %while.body.i.i

if.then19.i.count_bits.exit.i_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %count_bits.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then19.i.while.body.i.i_crit_edge
  %sum.03.i.i = phi i32 [ %spec.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.then19.i.while.body.i.i_crit_edge ]
  %offset.addr.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.then19.i.while.body.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %offset.addr.02.i.i, 1
  %div3.i.i.i = lshr i32 %offset.addr.02.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %52, i32 %div3.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %offset.addr.02.i.i, 31
  %58 = lshr i32 %57, %and.i.i.i
  %59 = and i32 %58, 1
  %spec.select.i.i = add i32 %59, %sum.03.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %55
  br i1 %exitcond.not.i.i, label %while.body.i.i.count_bits.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.count_bits.exit.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %count_bits.exit.i

count_bits.exit.i:                                ; preds = %while.body.i.i.count_bits.exit.i_crit_edge, %if.then19.i.count_bits.exit.i_crit_edge
  %sum.0.lcssa.i.i = phi i32 [ 0, %if.then19.i.count_bits.exit.i_crit_edge ], [ %spec.select.i.i, %while.body.i.i.count_bits.exit.i_crit_edge ]
  %60 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sum.0.lcssa.i.i, ptr %max_search11.i, align 4
  br label %if.end32.i

if.else24.i:                                      ; preds = %select_gc_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx26.i = getelementptr %struct.dirty_seglist_info, ptr %21, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx26.i, align 4
  %63 = ptrtoint ptr %dirty_bitmap8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %dirty_bitmap8.i, align 8
  %arrayidx29.i = getelementptr %struct.dirty_seglist_info, ptr %21, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx29.i, align 4
  %66 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %max_search11.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else24.i, %count_bits.exit.i, %if.then4.i, %if.then.i
  br i1 %cmp33.not.i, label %if.end32.i.if.end48.i_crit_edge, label %land.lhs.true.i

if.end32.i.if.end48.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

land.lhs.true.i:                                  ; preds = %if.end32.i
  %67 = ptrtoint ptr %gc_mode4.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gc_mode4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp35.not.i = icmp eq i32 %68, 4
  br i1 %cmp35.not.i, label %land.lhs.true.i.if.end48.i_crit_edge, label %land.lhs.true36.i

land.lhs.true.i.if.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  %69 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gc_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp38.not.i = icmp eq i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp41.not.i = icmp eq i32 %23, 2
  %or.cond120.i = select i1 %cmp38.not.i, i1 true, i1 %cmp41.not.i
  br i1 %or.cond120.i, label %land.lhs.true36.i.if.end48.i_crit_edge, label %land.lhs.true42.i

land.lhs.true36.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

land.lhs.true42.i:                                ; preds = %land.lhs.true36.i
  %71 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_search11.i, align 4
  %73 = ptrtoint ptr %max_victim_search.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_victim_search.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp44.i = icmp ugt i32 %72, %74
  br i1 %cmp44.i, label %if.then45.i, label %land.lhs.true42.i.if.end48.i_crit_edge

land.lhs.true42.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

if.then45.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #18
  %75 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %max_search11.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true42.i.if.end48.i_crit_edge, %land.lhs.true36.i.if.end48.i_crit_edge, %land.lhs.true.i.if.end48.i_crit_edge, %if.end32.i.if.end48.i_crit_edge
  %76 = ptrtoint ptr %fs_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fs_mode.i.i, align 4
  %78 = and i32 %77, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %if.then50.i, label %if.else54.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  %call51.i = call i32 @prandom_u32() #16
  %80 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %total_sections, align 8
  %82 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %segs_per_sec, align 8
  %mul.i = mul i32 %83, %81
  %rem.i = urem i32 %call51.i, %mul.i
  br label %select_policy.exit

if.else54.i:                                      ; preds = %if.end48.i
  %84 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mount_opt.i, align 8
  %and.i352 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i352)
  %tobool.not.i = icmp ne i32 %and.i352, 0
  %or.cond726 = and i1 %tobool.not.i, %15
  %or.cond726.not = xor i1 %or.cond726, true
  %brmerge = select i1 %or.cond726.not, i1 true, i1 %switch.lobit.not
  br i1 %brmerge, label %if.else62.i, label %if.else54.i.select_policy.exit_crit_edge

if.else54.i.select_policy.exit_crit_edge:         ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %select_policy.exit

if.else62.i:                                      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %19, align 4
  %88 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gc_mode5.i, align 4
  %arrayidx65.i = getelementptr %struct.sit_info, ptr %87, i32 0, i32 22, i32 %89
  %90 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx65.i, align 4
  br label %select_policy.exit

select_policy.exit:                               ; preds = %if.else62.i, %if.else54.i.select_policy.exit_crit_edge, %if.then50.i
  %.sink.i = phi i32 [ %91, %if.else62.i ], [ %rem.i, %if.then50.i ], [ 0, %if.else54.i.select_policy.exit_crit_edge ]
  %92 = ptrtoint ptr %offset61.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink.i, ptr %offset61.i, align 8
  %93 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %min_segno, align 8
  %94 = ptrtoint ptr %oldest_age to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %oldest_age, align 8
  %95 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %p, align 8
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %96, label %if.end4.i [
    i32 1, label %get_max_cost.exit.thread
    i32 2, label %get_max_cost.exit.thread508
  ]

if.end4.i:                                        ; preds = %select_policy.exit
  %98 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %gc_mode5.i, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %99, label %get_max_cost.exit.thread648 [
    i32 1, label %if.then6.i
    i32 0, label %if.end4.i.get_max_cost.exit_crit_edge
    i32 2, label %if.end4.i.get_max_cost.exit_crit_edge802
  ]

if.end4.i.get_max_cost.exit_crit_edge802:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_max_cost.exit

if.end4.i.get_max_cost.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_max_cost.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %101 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i355 = shl i32 %102, 1
  %103 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ofs_unit12.i, align 4
  %mul8.i = mul i32 %mul.i355, %104
  %105 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr647 = load i32, ptr %gc_mode5.i, align 4
  br label %get_max_cost.exit

get_max_cost.exit.thread648:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %min_cost510, align 8
  br label %if.end

get_max_cost.exit:                                ; preds = %if.then6.i, %if.end4.i.get_max_cost.exit_crit_edge, %if.end4.i.get_max_cost.exit_crit_edge802
  %107 = phi i32 [ %99, %if.end4.i.get_max_cost.exit_crit_edge ], [ %99, %if.end4.i.get_max_cost.exit_crit_edge802 ], [ %.pr647, %if.then6.i ]
  %retval.0.i = phi i32 [ -1, %if.end4.i.get_max_cost.exit_crit_edge ], [ -1, %if.end4.i.get_max_cost.exit_crit_edge802 ], [ %mul8.i, %if.then6.i ]
  %108 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i, ptr %min_cost510, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp = icmp eq i32 %107, 2
  br i1 %cmp, label %get_max_cost.exit.if.then_crit_edge, label %get_max_cost.exit.if.end_crit_edge

get_max_cost.exit.if.end_crit_edge:               ; preds = %get_max_cost.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

get_max_cost.exit.if.then_crit_edge:              ; preds = %get_max_cost.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

get_max_cost.exit.thread508:                      ; preds = %select_policy.exit
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %min_cost510, align 8
  %110 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %gc_mode5.i, align 4
  br label %if.then

get_max_cost.exit.thread:                         ; preds = %select_policy.exit
  %112 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %blocks_per_seg.i, align 4
  %114 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %min_cost510, align 8
  %115 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %gc_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %cmp495 = icmp eq i32 %116, 2
  br i1 %cmp495, label %get_max_cost.exit.thread.if.then_crit_edge, label %get_max_cost.exit.thread.if.end_crit_edge

get_max_cost.exit.thread.if.end_crit_edge:        ; preds = %get_max_cost.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

get_max_cost.exit.thread.if.then_crit_edge:       ; preds = %get_max_cost.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %get_max_cost.exit.thread.if.then_crit_edge, %get_max_cost.exit.thread508, %get_max_cost.exit.if.then_crit_edge
  %117 = phi i32 [ 2, %get_max_cost.exit.thread.if.then_crit_edge ], [ 2, %get_max_cost.exit.if.then_crit_edge ], [ %111, %get_max_cost.exit.thread508 ]
  %118 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sm_info.i.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %dirty_min_mtime = getelementptr inbounds %struct.sit_info, ptr %121, i32 0, i32 20
  %122 = ptrtoint ptr %dirty_min_mtime to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %dirty_min_mtime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %get_max_cost.exit.thread.if.end_crit_edge, %get_max_cost.exit.if.end_crit_edge, %get_max_cost.exit.thread648
  %123 = phi i32 [ %117, %if.then ], [ %116, %get_max_cost.exit.thread.if.end_crit_edge ], [ %99, %get_max_cost.exit.thread648 ], [ %107, %get_max_cost.exit.if.end_crit_edge ]
  %124 = phi i1 [ true, %if.then ], [ false, %get_max_cost.exit.thread.if.end_crit_edge ], [ false, %get_max_cost.exit.thread648 ], [ false, %get_max_cost.exit.if.end_crit_edge ]
  %125 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp11.not = icmp eq i32 %126, -1
  br i1 %cmp11.not, label %if.end25, label %if.then13

if.then13:                                        ; preds = %if.end
  %127 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sm_info.i.i, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %130, i32 0, i32 14
  %131 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i6.i = getelementptr %struct.seg_entry, ptr %132, i32 %126
  %133 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %bf.load.i = load i32, ptr %arrayidx.i6.i, align 8
  %134 = and i32 %bf.load.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool15.not = icmp eq i32 %134, 0
  br i1 %tobool15.not, label %if.then13.out_crit_edge, label %cond.end

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

cond.end:                                         ; preds = %if.then13
  %135 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %segs_per_sec, align 8
  %div = udiv i32 %126, %136
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %128, i32 0, i32 3
  %137 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %curseg_array.i.i, align 4
  %segno.i = getelementptr inbounds %struct.curseg_info, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %segno.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %segno.i, align 4
  %div.i = udiv i32 %140, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div)
  %cmp.i = icmp eq i32 %div.i, %div
  br i1 %cmp.i, label %cond.end.out_crit_edge, label %lor.lhs.false.i

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false.i:                                  ; preds = %cond.end
  %segno2.i = getelementptr %struct.curseg_info, ptr %138, i32 1, i32 6
  %141 = ptrtoint ptr %segno2.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %segno2.i, align 4
  %div4.i = udiv i32 %142, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i, i32 %div)
  %cmp5.i = icmp eq i32 %div4.i, %div
  br i1 %cmp5.i, label %lor.lhs.false.i.out_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %segno8.i = getelementptr %struct.curseg_info, ptr %138, i32 2, i32 6
  %143 = ptrtoint ptr %segno8.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %segno8.i, align 4
  %div10.i = udiv i32 %144, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %div)
  %cmp11.i = icmp eq i32 %div10.i, %div
  br i1 %cmp11.i, label %lor.lhs.false6.i.out_crit_edge, label %lor.lhs.false12.i

lor.lhs.false6.i.out_crit_edge:                   ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false12.i:                                ; preds = %lor.lhs.false6.i
  %segno14.i = getelementptr %struct.curseg_info, ptr %138, i32 3, i32 6
  %145 = ptrtoint ptr %segno14.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %segno14.i, align 4
  %div16.i = udiv i32 %146, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div16.i, i32 %div)
  %cmp17.i = icmp eq i32 %div16.i, %div
  br i1 %cmp17.i, label %lor.lhs.false12.i.out_crit_edge, label %lor.lhs.false18.i

lor.lhs.false12.i.out_crit_edge:                  ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false18.i:                                ; preds = %lor.lhs.false12.i
  %segno20.i = getelementptr %struct.curseg_info, ptr %138, i32 4, i32 6
  %147 = ptrtoint ptr %segno20.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %segno20.i, align 4
  %div22.i = udiv i32 %148, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i, i32 %div)
  %cmp23.i = icmp eq i32 %div22.i, %div
  br i1 %cmp23.i, label %lor.lhs.false18.i.out_crit_edge, label %lor.lhs.false24.i

lor.lhs.false18.i.out_crit_edge:                  ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i
  %segno26.i = getelementptr %struct.curseg_info, ptr %138, i32 5, i32 6
  %149 = ptrtoint ptr %segno26.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %segno26.i, align 4
  %div28.i = udiv i32 %150, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div28.i, i32 %div)
  %cmp29.i = icmp eq i32 %div28.i, %div
  br i1 %cmp29.i, label %lor.lhs.false24.i.out_crit_edge, label %lor.lhs.false30.i

lor.lhs.false24.i.out_crit_edge:                  ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false30.i:                                ; preds = %lor.lhs.false24.i
  %segno32.i = getelementptr %struct.curseg_info, ptr %138, i32 6, i32 6
  %151 = ptrtoint ptr %segno32.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %segno32.i, align 4
  %div34.i = udiv i32 %152, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i, i32 %div)
  %cmp35.i = icmp eq i32 %div34.i, %div
  br i1 %cmp35.i, label %lor.lhs.false30.i.out_crit_edge, label %lor.lhs.false36.i

lor.lhs.false30.i.out_crit_edge:                  ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false36.i:                                ; preds = %lor.lhs.false30.i
  %segno38.i = getelementptr %struct.curseg_info, ptr %138, i32 7, i32 6
  %153 = ptrtoint ptr %segno38.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %segno38.i, align 4
  %div40.i = udiv i32 %154, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %div40.i, i32 %div)
  %cmp41.i = icmp eq i32 %div40.i, %div
  br i1 %cmp41.i, label %lor.lhs.false36.i.out_crit_edge, label %sec_usage_check.exit

lor.lhs.false36.i.out_crit_edge:                  ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

sec_usage_check.exit:                             ; preds = %lor.lhs.false36.i
  %155 = ptrtoint ptr %cur_victim_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cur_victim_sec.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %div)
  %cmp43.i = icmp eq i32 %156, %div
  br i1 %cmp43.i, label %sec_usage_check.exit.out_crit_edge, label %out.thread535

sec_usage_check.exit.out_crit_edge:               ; preds = %sec_usage_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out.thread535:                                    ; preds = %sec_usage_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  %157 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %126, ptr %min_segno, align 8
  br label %if.then242

if.end25:                                         ; preds = %if.end
  %158 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %max_search11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp26 = icmp eq i32 %159, 0
  br i1 %cmp26, label %if.end25.out_crit_edge, label %if.end29

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end29:                                         ; preds = %if.end25
  %160 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp31 = icmp ugt i32 %161, 1
  br i1 %cmp31, label %land.lhs.true, label %if.end29.if.end62_crit_edge

if.end29.if.end62_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp34 = icmp eq i32 %96, 0
  br i1 %cmp34, label %if.then36, label %land.lhs.true.if.end62.thread_crit_edge

land.lhs.true.if.end62.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62.thread

if.then36:                                        ; preds = %land.lhs.true
  %162 = ptrtoint ptr %next_victim_seg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %next_victim_seg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %163)
  %cmp37.not = icmp eq i32 %163, -1
  br i1 %cmp37.not, label %if.end46, label %if.then39

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  %164 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %min_segno, align 8
  %165 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %163, ptr %result, align 4
  %166 = ptrtoint ptr %next_victim_seg to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %next_victim_seg, align 8
  br label %got_result

if.end46:                                         ; preds = %if.then36
  br i1 %cmp33.not.i, label %land.lhs.true49, label %if.end46.if.end62.thread_crit_edge

if.end46.if.end62.thread_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62.thread

land.lhs.true49:                                  ; preds = %if.end46
  %167 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %cmp52.not = icmp eq i32 %168, -1
  br i1 %cmp52.not, label %land.lhs.true49.if.end62_crit_edge, label %if.then54

land.lhs.true49.if.end62_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then54:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #18
  %169 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %min_segno, align 8
  %170 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %168, ptr %result, align 4
  %171 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -1, ptr %arrayidx51, align 4
  br label %got_result

if.end62.thread:                                  ; preds = %if.end46.if.end62.thread_crit_edge, %land.lhs.true.if.end62.thread_crit_edge
  %arrayidx65518 = getelementptr %struct.sit_info, ptr %5, i32 0, i32 22, i32 %123
  %172 = ptrtoint ptr %arrayidx65518 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx65518, align 4
  br label %if.end80

if.end62:                                         ; preds = %land.lhs.true49.if.end62_crit_edge, %if.end29.if.end62_crit_edge
  %arrayidx65 = getelementptr %struct.sit_info, ptr %5, i32 0, i32 22, i32 %123
  %174 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp67 = icmp eq i32 %96, 0
  %or.cond = and i1 %cmp33.not.i, %cmp67
  br i1 %or.cond, label %if.then72, label %if.end62.if.end80_crit_edge

if.end62.if.end80_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then72:                                        ; preds = %if.end62
  %176 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i.i363 = getelementptr inbounds %struct.f2fs_sm_info, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %dirty_info.i.i363 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dirty_info.i.i363, align 4
  %victim_secmap.i = getelementptr inbounds %struct.dirty_seglist_info, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %victim_secmap.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %victim_secmap.i, align 4
  %182 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %total_sections, align 8
  %call1.i = call i32 @_find_next_bit_be(ptr noundef %181, i32 noundef %183, i32 noundef 0) #16
  %184 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %total_sections, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %185)
  %cmp22.i = icmp ult i32 %call1.i, %185
  br i1 %cmp22.i, label %if.then72.for.body.i_crit_edge, label %if.then72.check_bg_victims.exit.thread_crit_edge

if.then72.check_bg_victims.exit.thread_crit_edge: ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_bg_victims.exit.thread

if.then72.for.body.i_crit_edge:                   ; preds = %if.then72
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then72.for.body.i_crit_edge
  %186 = phi i32 [ %214, %for.inc.i.for.body.i_crit_edge ], [ %185, %if.then72.for.body.i_crit_edge ]
  %secno.023.i = phi i32 [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.then72.for.body.i_crit_edge ]
  %187 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %curseg_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %curseg_array.i.i.i, align 4
  %segno.i.i = getelementptr inbounds %struct.curseg_info, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %segno.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %segno.i.i, align 4
  %193 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %segs_per_sec, align 8
  %div.i.i = udiv i32 %192, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %secno.023.i)
  %cmp.i.i365 = icmp eq i32 %div.i.i, %secno.023.i
  br i1 %cmp.i.i365, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %segno2.i.i = getelementptr %struct.curseg_info, ptr %190, i32 1, i32 6
  %195 = ptrtoint ptr %segno2.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %segno2.i.i, align 4
  %div4.i.i = udiv i32 %196, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i.i, i32 %secno.023.i)
  %cmp5.i.i = icmp eq i32 %div4.i.i, %secno.023.i
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge, label %lor.lhs.false6.i.i

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false.i.i
  %segno8.i.i = getelementptr %struct.curseg_info, ptr %190, i32 2, i32 6
  %197 = ptrtoint ptr %segno8.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %segno8.i.i, align 4
  %div10.i.i = udiv i32 %198, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %secno.023.i)
  %cmp11.i.i = icmp eq i32 %div10.i.i, %secno.023.i
  br i1 %cmp11.i.i, label %lor.lhs.false6.i.i.for.inc.i_crit_edge, label %lor.lhs.false12.i.i

lor.lhs.false6.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false6.i.i
  %segno14.i.i = getelementptr %struct.curseg_info, ptr %190, i32 3, i32 6
  %199 = ptrtoint ptr %segno14.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %segno14.i.i, align 4
  %div16.i.i = udiv i32 %200, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div16.i.i, i32 %secno.023.i)
  %cmp17.i.i = icmp eq i32 %div16.i.i, %secno.023.i
  br i1 %cmp17.i.i, label %lor.lhs.false12.i.i.for.inc.i_crit_edge, label %lor.lhs.false18.i.i

lor.lhs.false12.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false18.i.i:                              ; preds = %lor.lhs.false12.i.i
  %segno20.i.i = getelementptr %struct.curseg_info, ptr %190, i32 4, i32 6
  %201 = ptrtoint ptr %segno20.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %segno20.i.i, align 4
  %div22.i.i = udiv i32 %202, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i.i, i32 %secno.023.i)
  %cmp23.i.i = icmp eq i32 %div22.i.i, %secno.023.i
  br i1 %cmp23.i.i, label %lor.lhs.false18.i.i.for.inc.i_crit_edge, label %lor.lhs.false24.i.i

lor.lhs.false18.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false24.i.i:                              ; preds = %lor.lhs.false18.i.i
  %segno26.i.i = getelementptr %struct.curseg_info, ptr %190, i32 5, i32 6
  %203 = ptrtoint ptr %segno26.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %segno26.i.i, align 4
  %div28.i.i = udiv i32 %204, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div28.i.i, i32 %secno.023.i)
  %cmp29.i.i = icmp eq i32 %div28.i.i, %secno.023.i
  br i1 %cmp29.i.i, label %lor.lhs.false24.i.i.for.inc.i_crit_edge, label %lor.lhs.false30.i.i

lor.lhs.false24.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false30.i.i:                              ; preds = %lor.lhs.false24.i.i
  %segno32.i.i = getelementptr %struct.curseg_info, ptr %190, i32 6, i32 6
  %205 = ptrtoint ptr %segno32.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %segno32.i.i, align 4
  %div34.i.i = udiv i32 %206, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i.i, i32 %secno.023.i)
  %cmp35.i.i = icmp eq i32 %div34.i.i, %secno.023.i
  br i1 %cmp35.i.i, label %lor.lhs.false30.i.i.for.inc.i_crit_edge, label %lor.lhs.false36.i.i

lor.lhs.false30.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false30.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false36.i.i:                              ; preds = %lor.lhs.false30.i.i
  %segno38.i.i = getelementptr %struct.curseg_info, ptr %190, i32 7, i32 6
  %207 = ptrtoint ptr %segno38.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %segno38.i.i, align 4
  %div40.i.i = udiv i32 %208, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %div40.i.i, i32 %secno.023.i)
  %cmp41.i.i = icmp eq i32 %div40.i.i, %secno.023.i
  br i1 %cmp41.i.i, label %lor.lhs.false36.i.i.for.inc.i_crit_edge, label %sec_usage_check.exit.i

lor.lhs.false36.i.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

sec_usage_check.exit.i:                           ; preds = %lor.lhs.false36.i.i
  %209 = ptrtoint ptr %cur_victim_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %cur_victim_sec.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %secno.023.i)
  %cmp43.i.i = icmp eq i32 %210, %secno.023.i
  br i1 %cmp43.i.i, label %sec_usage_check.exit.i.for.inc.i_crit_edge, label %check_bg_victims.exit

sec_usage_check.exit.i.for.inc.i_crit_edge:       ; preds = %sec_usage_check.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %sec_usage_check.exit.i.for.inc.i_crit_edge, %lor.lhs.false36.i.i.for.inc.i_crit_edge, %lor.lhs.false30.i.i.for.inc.i_crit_edge, %lor.lhs.false24.i.i.for.inc.i_crit_edge, %lor.lhs.false18.i.i.for.inc.i_crit_edge, %lor.lhs.false12.i.i.for.inc.i_crit_edge, %lor.lhs.false6.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %211 = ptrtoint ptr %victim_secmap.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %victim_secmap.i, align 4
  %add.i = add nuw i32 %secno.023.i, 1
  %call7.i = call i32 @_find_next_bit_be(ptr noundef %212, i32 noundef %186, i32 noundef %add.i) #16
  %213 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %total_sections, align 8
  %cmp.i367 = icmp ult i32 %call7.i, %214
  br i1 %cmp.i367, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.check_bg_victims.exit.thread_crit_edge

for.inc.i.check_bg_victims.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_bg_victims.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

check_bg_victims.exit.thread:                     ; preds = %for.inc.i.check_bg_victims.exit.thread_crit_edge, %if.then72.check_bg_victims.exit.thread_crit_edge
  %215 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -1, ptr %min_segno, align 8
  br label %if.end80

check_bg_victims.exit:                            ; preds = %sec_usage_check.exit.i
  %216 = ptrtoint ptr %victim_secmap.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %victim_secmap.i, align 4
  call void @_clear_bit(i32 noundef %secno.023.i, ptr noundef %217) #16
  %218 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %segs_per_sec, align 8
  %mul.i366 = mul i32 %219, %secno.023.i
  %220 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %mul.i366, ptr %min_segno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i366)
  %cmp76.not = icmp eq i32 %mul.i366, -1
  br i1 %cmp76.not, label %check_bg_victims.exit.if.end80_crit_edge, label %check_bg_victims.exit.got_it_crit_edge

check_bg_victims.exit.got_it_crit_edge:           ; preds = %check_bg_victims.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_it

check_bg_victims.exit.if.end80_crit_edge:         ; preds = %check_bg_victims.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.end80:                                         ; preds = %check_bg_victims.exit.if.end80_crit_edge, %check_bg_victims.exit.thread, %if.end62.if.end80_crit_edge, %if.end62.thread
  %221 = phi i32 [ %173, %if.end62.thread ], [ %175, %check_bg_victims.exit.if.end80_crit_edge ], [ %175, %if.end62.if.end80_crit_edge ], [ %175, %check_bg_victims.exit.thread ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then95, %if.end80
  %last_segment.1.ph = phi i32 [ %233, %if.then95 ], [ %last_segment.0, %if.end80 ]
  %nsearched.0.ph = phi i32 [ %nsearched.0, %if.then95 ], [ 0, %if.end80 ]
  br label %while.cond

while.cond:                                       ; preds = %next.while.cond_crit_edge, %while.cond.outer
  %nsearched.0 = phi i32 [ %inc, %next.while.cond_crit_edge ], [ %nsearched.0.ph, %while.cond.outer ]
  %222 = ptrtoint ptr %dirty_bitmap8.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dirty_bitmap8.i, align 8
  %224 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ofs_unit12.i, align 4
  %div82 = udiv i32 %last_segment.1.ph, %225
  %226 = ptrtoint ptr %offset61.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %offset61.i, align 8
  %div84 = udiv i32 %227, %225
  %call85 = call i32 @_find_next_bit_be(ptr noundef %223, i32 noundef %div82, i32 noundef %div84) #16
  %228 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ofs_unit12.i, align 4
  %mul87 = mul i32 %229, %call85
  call void @__sanitizer_cov_trace_cmp4(i32 %mul87, i32 %last_segment.1.ph)
  %cmp88.not = icmp ult i32 %mul87, %last_segment.1.ph
  br i1 %cmp88.not, label %if.end104, label %if.then90

if.then90:                                        ; preds = %while.cond
  %230 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %gc_mode5.i, align 4
  %arrayidx93 = getelementptr %struct.sit_info, ptr %5, i32 0, i32 22, i32 %231
  %232 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq i32 %233, 0
  br i1 %tobool94.not, label %if.then90.while.end_crit_edge, label %if.then95

if.then90.while.end_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.then95:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #18
  %234 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %arrayidx93, align 4
  %235 = ptrtoint ptr %offset61.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %offset61.i, align 8
  br label %while.cond.outer

if.end104:                                        ; preds = %while.cond
  %add = add i32 %mul87, %229
  %236 = ptrtoint ptr %offset61.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %add, ptr %offset61.i, align 8
  %inc = add i32 %nsearched.0, 1
  %237 = ptrtoint ptr %invalid_segmap to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %invalid_segmap, align 4
  %div3.i = lshr i32 %mul87, 5
  %arrayidx.i = getelementptr i32, ptr %238, i32 %div3.i
  %239 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %mul87, 31
  %241 = shl nuw i32 1, %and.i
  %242 = and i32 %240, %241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool108.not = icmp eq i32 %242, 0
  br i1 %tobool108.not, label %cond.end117, label %if.end104.next_crit_edge

if.end104.next_crit_edge:                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

cond.end117:                                      ; preds = %if.end104
  %243 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %segs_per_sec, align 8
  %div116 = udiv i32 %mul87, %244
  %245 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %sm_info.i.i, align 8
  %curseg_array.i.i370 = getelementptr inbounds %struct.f2fs_sm_info, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %curseg_array.i.i370 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %curseg_array.i.i370, align 4
  %segno.i371 = getelementptr inbounds %struct.curseg_info, ptr %248, i32 0, i32 6
  %249 = ptrtoint ptr %segno.i371 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %segno.i371, align 4
  %div.i373 = udiv i32 %250, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i373, i32 %div116)
  %cmp.i374 = icmp eq i32 %div.i373, %div116
  br i1 %cmp.i374, label %cond.end117.next_crit_edge, label %lor.lhs.false.i378

cond.end117.next_crit_edge:                       ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false.i378:                               ; preds = %cond.end117
  %segno2.i375 = getelementptr %struct.curseg_info, ptr %248, i32 1, i32 6
  %251 = ptrtoint ptr %segno2.i375 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %segno2.i375, align 4
  %div4.i376 = udiv i32 %252, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i376, i32 %div116)
  %cmp5.i377 = icmp eq i32 %div4.i376, %div116
  br i1 %cmp5.i377, label %lor.lhs.false.i378.next_crit_edge, label %lor.lhs.false6.i382

lor.lhs.false.i378.next_crit_edge:                ; preds = %lor.lhs.false.i378
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false6.i382:                              ; preds = %lor.lhs.false.i378
  %segno8.i379 = getelementptr %struct.curseg_info, ptr %248, i32 2, i32 6
  %253 = ptrtoint ptr %segno8.i379 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %segno8.i379, align 4
  %div10.i380 = udiv i32 %254, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i380, i32 %div116)
  %cmp11.i381 = icmp eq i32 %div10.i380, %div116
  br i1 %cmp11.i381, label %lor.lhs.false6.i382.next_crit_edge, label %lor.lhs.false12.i386

lor.lhs.false6.i382.next_crit_edge:               ; preds = %lor.lhs.false6.i382
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false12.i386:                             ; preds = %lor.lhs.false6.i382
  %segno14.i383 = getelementptr %struct.curseg_info, ptr %248, i32 3, i32 6
  %255 = ptrtoint ptr %segno14.i383 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %segno14.i383, align 4
  %div16.i384 = udiv i32 %256, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div16.i384, i32 %div116)
  %cmp17.i385 = icmp eq i32 %div16.i384, %div116
  br i1 %cmp17.i385, label %lor.lhs.false12.i386.next_crit_edge, label %lor.lhs.false18.i390

lor.lhs.false12.i386.next_crit_edge:              ; preds = %lor.lhs.false12.i386
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false18.i390:                             ; preds = %lor.lhs.false12.i386
  %segno20.i387 = getelementptr %struct.curseg_info, ptr %248, i32 4, i32 6
  %257 = ptrtoint ptr %segno20.i387 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %segno20.i387, align 4
  %div22.i388 = udiv i32 %258, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div22.i388, i32 %div116)
  %cmp23.i389 = icmp eq i32 %div22.i388, %div116
  br i1 %cmp23.i389, label %lor.lhs.false18.i390.next_crit_edge, label %lor.lhs.false24.i394

lor.lhs.false18.i390.next_crit_edge:              ; preds = %lor.lhs.false18.i390
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false24.i394:                             ; preds = %lor.lhs.false18.i390
  %segno26.i391 = getelementptr %struct.curseg_info, ptr %248, i32 5, i32 6
  %259 = ptrtoint ptr %segno26.i391 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %segno26.i391, align 4
  %div28.i392 = udiv i32 %260, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div28.i392, i32 %div116)
  %cmp29.i393 = icmp eq i32 %div28.i392, %div116
  br i1 %cmp29.i393, label %lor.lhs.false24.i394.next_crit_edge, label %lor.lhs.false30.i398

lor.lhs.false24.i394.next_crit_edge:              ; preds = %lor.lhs.false24.i394
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false30.i398:                             ; preds = %lor.lhs.false24.i394
  %segno32.i395 = getelementptr %struct.curseg_info, ptr %248, i32 6, i32 6
  %261 = ptrtoint ptr %segno32.i395 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %segno32.i395, align 4
  %div34.i396 = udiv i32 %262, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i396, i32 %div116)
  %cmp35.i397 = icmp eq i32 %div34.i396, %div116
  br i1 %cmp35.i397, label %lor.lhs.false30.i398.next_crit_edge, label %lor.lhs.false36.i402

lor.lhs.false30.i398.next_crit_edge:              ; preds = %lor.lhs.false30.i398
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

lor.lhs.false36.i402:                             ; preds = %lor.lhs.false30.i398
  %segno38.i399 = getelementptr %struct.curseg_info, ptr %248, i32 7, i32 6
  %263 = ptrtoint ptr %segno38.i399 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %segno38.i399, align 4
  %div40.i400 = udiv i32 %264, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %div40.i400, i32 %div116)
  %cmp41.i401 = icmp eq i32 %div40.i400, %div116
  br i1 %cmp41.i401, label %lor.lhs.false36.i402.next_crit_edge, label %sec_usage_check.exit407

lor.lhs.false36.i402.next_crit_edge:              ; preds = %lor.lhs.false36.i402
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

sec_usage_check.exit407:                          ; preds = %lor.lhs.false36.i402
  %265 = ptrtoint ptr %cur_victim_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cur_victim_sec.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %div116)
  %cmp43.i404 = icmp eq i32 %266, %div116
  br i1 %cmp43.i404, label %sec_usage_check.exit407.next_crit_edge, label %if.end121

sec_usage_check.exit407.next_crit_edge:           ; preds = %sec_usage_check.exit407
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.end121:                                        ; preds = %sec_usage_check.exit407
  %267 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile i32, ptr %s_flag.i, align 4
  %269 = and i32 %268, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.i.not = icmp eq i32 %269, 0
  br i1 %tobool.i.not, label %if.end121.if.end139_crit_edge, label %if.then125, !prof !115

if.end121.if.end139_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.then125:                                       ; preds = %if.end121
  %270 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp127 = icmp eq i32 %271, 0
  br i1 %cmp127, label %if.then129, label %if.else134

if.then129:                                       ; preds = %if.then125
  %call130 = call fastcc i32 @get_ckpt_valid_blocks(ptr noundef %sbi, i32 noundef %mul87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then129.if.end139_crit_edge, label %if.then129.next_crit_edge

if.then129.next_crit_edge:                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.then129.if.end139_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.else134:                                       ; preds = %if.then125
  %call135 = call zeroext i1 @f2fs_segment_has_free_slot(ptr noundef %sbi, i32 noundef %mul87) #16
  br i1 %call135, label %if.else134.if.end139_crit_edge, label %if.else134.next_crit_edge

if.else134.next_crit_edge:                        ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.else134.if.end139_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.end139:                                        ; preds = %if.else134.if.end139_crit_edge, %if.then129.if.end139_crit_edge, %if.end121.if.end139_crit_edge
  br i1 %cmp.i.i, label %land.lhs.true142, label %if.end139.if.end146_crit_edge

if.end139.if.end146_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146

land.lhs.true142:                                 ; preds = %if.end139
  %272 = ptrtoint ptr %victim_secmap to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %victim_secmap, align 4
  %div3.i345 = lshr i32 %div116, 5
  %arrayidx.i346 = getelementptr i32, ptr %273, i32 %div3.i345
  %274 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load volatile i32, ptr %arrayidx.i346, align 4
  %and.i347 = and i32 %div116, 31
  %276 = shl nuw i32 1, %and.i347
  %277 = and i32 %275, %276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool144.not = icmp eq i32 %277, 0
  br i1 %tobool144.not, label %land.lhs.true142.if.end146_crit_edge, label %land.lhs.true142.next_crit_edge

land.lhs.true142.next_crit_edge:                  ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

land.lhs.true142.if.end146_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146

if.end146:                                        ; preds = %land.lhs.true142.if.end146_crit_edge, %if.end139.if.end146_crit_edge
  br i1 %124, label %cond.end.i, label %if.end149

cond.end.i:                                       ; preds = %if.end146
  %278 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %sm_info.i.i, align 8
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %282 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %segs_per_sec, align 8
  %284 = urem i32 %mul87, %283
  %mul.i412 = sub i32 %mul87, %284
  %285 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %s_flag.i, align 4
  %287 = and i32 %286, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.i.not.i = icmp eq i32 %287, 0
  br i1 %tobool.i.not.i, label %cond.end.i.if.end8.i_crit_edge, label %if.then.i414, !prof !115

cond.end.i.if.end8.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.then.i414:                                     ; preds = %cond.end.i
  %288 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %gc_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %289)
  %cmp4.i = icmp eq i32 %289, 2
  br i1 %cmp4.i, label %land.lhs.true.i415, label %if.then.i414.if.end8.i_crit_edge

if.then.i414.if.end8.i_crit_edge:                 ; preds = %if.then.i414
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

land.lhs.true.i415:                               ; preds = %if.then.i414
  %call5.i = call fastcc i32 @get_valid_blocks(ptr noundef %sbi, i32 noundef %mul87, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %land.lhs.true.i415.next_crit_edge, label %land.lhs.true.i415.if.end8.i_crit_edge

land.lhs.true.i415.if.end8.i_crit_edge:           ; preds = %land.lhs.true.i415
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

land.lhs.true.i415.next_crit_edge:                ; preds = %land.lhs.true.i415
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.end8.i:                                        ; preds = %land.lhs.true.i415.if.end8.i_crit_edge, %if.then.i414.if.end8.i_crit_edge, %cond.end.i.if.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %cmp1073.not.i = icmp eq i32 %283, 0
  br i1 %cmp1073.not.i, label %if.end8.i.if.else162.i.i.i_crit_edge, label %for.body.lr.ph.i417

if.end8.i.if.else162.i.i.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else162.i.i.i

for.body.lr.ph.i417:                              ; preds = %if.end8.i
  %sentries.i.i416 = getelementptr inbounds %struct.sit_info, ptr %281, i32 0, i32 14
  %290 = ptrtoint ptr %sentries.i.i416 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %sentries.i.i416, align 4
  br label %for.body.i419

for.body.i419:                                    ; preds = %for.body.i419.for.body.i419_crit_edge, %for.body.lr.ph.i417
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i417 ], [ %inc.i, %for.body.i419.for.body.i419_crit_edge ]
  %mtime.074.i = phi i64 [ 0, %for.body.lr.ph.i417 ], [ %add13.i, %for.body.i419.for.body.i419_crit_edge ]
  %add.i418 = add i32 %mul.i412, %i.075.i
  %mtime12.i = getelementptr %struct.seg_entry, ptr %291, i32 %add.i418, i32 5
  %292 = ptrtoint ptr %mtime12.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %mtime12.i, align 8
  %add13.i = add i64 %293, %mtime.074.i
  %inc.i = add nuw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %283
  br i1 %exitcond.not.i, label %for.body.i419.if.else162.i.i.i_crit_edge, label %for.body.i419.for.body.i419_crit_edge

for.body.i419.for.body.i419_crit_edge:            ; preds = %for.body.i419
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i419

for.body.i419.if.else162.i.i.i_crit_edge:         ; preds = %for.body.i419
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %for.body.i419.if.else162.i.i.i_crit_edge, %if.end8.i.if.else162.i.i.i_crit_edge
  %mtime.0.lcssa.i = phi i64 [ 0, %if.end8.i.if.else162.i.i.i_crit_edge ], [ %add13.i, %for.body.i419.if.else162.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mtime.0.lcssa.i)
  %cmp164.i.i.i = icmp ult i64 %mtime.0.lcssa.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !115

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i.i.i = trunc i64 %mtime.0.lcssa.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %283
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %294 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %283, i64 %mtime.0.lcssa.i) #21, !srcloc !151
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %294, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %min_mtime.i = getelementptr inbounds %struct.sit_info, ptr %281, i32 0, i32 18
  %295 = ptrtoint ptr %min_mtime.i to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %min_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i, i64 %296)
  %cmp16.i = icmp ult i64 %dividend.addr.0.i.i.i, %296
  br i1 %cmp16.i, label %if.then17.i, label %div_u64.exit.i.if.end19.i_crit_edge

div_u64.exit.i.if.end19.i_crit_edge:              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then17.i:                                      ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %297 = ptrtoint ptr %min_mtime.i to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %dividend.addr.0.i.i.i, ptr %min_mtime.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %div_u64.exit.i.if.end19.i_crit_edge
  %max_mtime.i = getelementptr inbounds %struct.sit_info, ptr %281, i32 0, i32 19
  %298 = ptrtoint ptr %max_mtime.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %max_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i, i64 %299)
  %cmp20.i = icmp ugt i64 %dividend.addr.0.i.i.i, %299
  br i1 %cmp20.i, label %if.then21.i, label %if.end19.i.if.end23.i_crit_edge

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %300 = ptrtoint ptr %max_mtime.i to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %dividend.addr.0.i.i.i, ptr %max_mtime.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %dirty_min_mtime.i = getelementptr inbounds %struct.sit_info, ptr %281, i32 0, i32 20
  %301 = ptrtoint ptr %dirty_min_mtime.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %dirty_min_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i, i64 %302)
  %cmp24.i = icmp ult i64 %dividend.addr.0.i.i.i, %302
  br i1 %cmp24.i, label %if.then25.i, label %if.end23.i.if.end27.i_crit_edge

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  %303 = ptrtoint ptr %dirty_min_mtime.i to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 %dividend.addr.0.i.i.i, ptr %dirty_min_mtime.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end27.i_crit_edge
  %dirty_max_mtime.i = getelementptr inbounds %struct.sit_info, ptr %281, i32 0, i32 21
  %304 = ptrtoint ptr %dirty_max_mtime.i to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %dirty_max_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i, i64 %305)
  %cmp28.i = icmp ugt i64 %dividend.addr.0.i.i.i, %305
  br i1 %cmp28.i, label %if.then29.i, label %if.end27.i.if.end31.i_crit_edge

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %306 = ptrtoint ptr %dirty_max_mtime.i to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 %dividend.addr.0.i.i.i, ptr %dirty_max_mtime.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end31.i_crit_edge
  %307 = ptrtoint ptr %dirty_max_mtime.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %dirty_max_mtime.i, align 8
  %sub.i = sub i64 %308, %dividend.addr.0.i.i.i
  %309 = ptrtoint ptr %age_threshold4 to i32
  call void @__asan_load8_noabort(i32 %309)
  %310 = load i64, ptr %age_threshold4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %310)
  %cmp33.i = icmp ult i64 %sub.i, %310
  br i1 %cmp33.i, label %if.end31.i.next_crit_edge, label %if.end35.i

if.end31.i.next_crit_edge:                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.end35.i:                                       ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.i.i) #16
  %311 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %parent.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %left_most.i.i) #16
  %312 = ptrtoint ptr %left_most.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 1, ptr %left_most.i.i, align 1
  %call.i.i = call ptr @f2fs_lookup_rb_tree_ext(ptr noundef %sbi, ptr noundef %root.i.i, ptr noundef nonnull %parent.i.i, i64 noundef %dividend.addr.0.i.i.i, ptr noundef nonnull %left_most.i.i) #16
  %313 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %parent.i.i, align 4
  %315 = ptrtoint ptr %left_most.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %left_most.i.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool.not.i.i420 = icmp eq i8 %316, 0
  %317 = load ptr, ptr @victim_entry_slab, align 4
  %call.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %317, i32 noundef 3136) #16
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end35.i.f2fs_kmem_cache_alloc.exit.i.i.i_crit_edge

if.end35.i.f2fs_kmem_cache_alloc.exit.i.i.i_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %f2fs_kmem_cache_alloc.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %317, i32 noundef 35904) #16
  br label %f2fs_kmem_cache_alloc.exit.i.i.i

f2fs_kmem_cache_alloc.exit.i.i.i:                 ; preds = %if.then.i.i.i.i.i, %if.end35.i.f2fs_kmem_cache_alloc.exit.i.i.i_crit_edge
  %entry1.0.i.i.i.i.i = phi ptr [ %call.i.i.i.i.i, %if.end35.i.f2fs_kmem_cache_alloc.exit.i.i.i_crit_edge ], [ %call2.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %318 = getelementptr inbounds %struct.victim_entry, ptr %entry1.0.i.i.i.i.i, i32 0, i32 1
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %dividend.addr.0.i.i.i, ptr %318, align 8
  %segno3.i.i.i = getelementptr inbounds %struct.victim_entry, ptr %entry1.0.i.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %320 = ptrtoint ptr %segno3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %mul87, ptr %segno3.i.i.i, align 8
  %321 = ptrtoint ptr %314 to i32
  %322 = ptrtoint ptr %entry1.0.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %entry1.0.i.i.i.i.i, align 8
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %entry1.0.i.i.i.i.i, i32 0, i32 1
  %323 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %entry1.0.i.i.i.i.i, i32 0, i32 2
  %324 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr null, ptr %rb_left.i.i.i.i, align 8
  %325 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %entry1.0.i.i.i.i.i, ptr %call.i.i, align 4
  br i1 %tobool.not.i.i420, label %f2fs_kmem_cache_alloc.exit.i.i.i.rb_insert_color_cached.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

f2fs_kmem_cache_alloc.exit.i.i.i.rb_insert_color_cached.exit.i.i.i_crit_edge: ; preds = %f2fs_kmem_cache_alloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rb_insert_color_cached.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %f2fs_kmem_cache_alloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %326 = ptrtoint ptr %rb_leftmost.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %entry1.0.i.i.i.i.i, ptr %rb_leftmost.i.i.i.i, align 4
  br label %rb_insert_color_cached.exit.i.i.i

rb_insert_color_cached.exit.i.i.i:                ; preds = %if.then.i.i.i.i, %f2fs_kmem_cache_alloc.exit.i.i.i.rb_insert_color_cached.exit.i.i.i_crit_edge
  call void @rb_insert_color(ptr noundef %entry1.0.i.i.i.i.i, ptr noundef %root.i.i) #16
  %list.i.i.i = getelementptr inbounds %struct.victim_entry, ptr %entry1.0.i.i.i.i.i, i32 0, i32 2
  %327 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i1.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %328, ptr noundef %victim_list.i.i.i) #16
  br i1 %call.i.i1.i.i.i, label %if.end.i.i.i.i.i, label %rb_insert_color_cached.exit.i.i.i.insert_victim_entry.exit.i_crit_edge

rb_insert_color_cached.exit.i.i.i.insert_victim_entry.exit.i_crit_edge: ; preds = %rb_insert_color_cached.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert_victim_entry.exit.i

if.end.i.i.i.i.i:                                 ; preds = %rb_insert_color_cached.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %329 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 4
  %330 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %victim_list.i.i.i, ptr %list.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.victim_entry, ptr %entry1.0.i.i.i.i.i, i32 0, i32 2, i32 1
  %331 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %328, ptr %prev3.i.i.i.i.i, align 4
  %332 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %332)
  store volatile ptr %list.i.i.i, ptr %328, align 4
  br label %insert_victim_entry.exit.i

insert_victim_entry.exit.i:                       ; preds = %if.end.i.i.i.i.i, %rb_insert_color_cached.exit.i.i.i.insert_victim_entry.exit.i_crit_edge
  %333 = ptrtoint ptr %victim_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %victim_count.i.i.i, align 4
  %inc.i.i.i = add i32 %334, 1
  store i32 %inc.i.i.i, ptr %victim_count.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %left_most.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i) #16
  br label %next

if.end149:                                        ; preds = %if.end146
  %335 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %336)
  %cmp.i421 = icmp eq i32 %336, 1
  br i1 %cmp.i421, label %if.then.i426, label %if.end.i428

if.then.i426:                                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #18
  %337 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %sm_info.i.i, align 8
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  %sentries.i.i422 = getelementptr inbounds %struct.sit_info, ptr %340, i32 0, i32 14
  %341 = ptrtoint ptr %sentries.i.i422 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %sentries.i.i422, align 4
  %arrayidx.i.i = getelementptr %struct.seg_entry, ptr %342, i32 %mul87
  %343 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %bf.load.i423 = load i32, ptr %arrayidx.i.i, align 8
  %bf.lshr.i424 = lshr i32 %bf.load.i423, 6
  %bf.clear.i425 = and i32 %bf.lshr.i424, 1023
  br label %get_gc_cost.exit

if.end.i428:                                      ; preds = %if.end149
  %344 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %gc_mode5.i, align 4
  %346 = zext i32 %345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %345, label %do.body10.i [
    i32 1, label %if.then2.i
    i32 0, label %cond.end.i.i
  ]

if.then2.i:                                       ; preds = %if.end.i428
  %347 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %348)
  %cmp.i.i430 = icmp ugt i32 %348, 1
  %349 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %sm_info.i.i, align 8
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 4
  br i1 %cmp.i.i430, label %get_sec_entry.exit.i.i, label %if.else.i.i

get_sec_entry.exit.i.i:                           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  %sec_entries.i.i.i = getelementptr inbounds %struct.sit_info, ptr %352, i32 0, i32 15
  %353 = ptrtoint ptr %sec_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %sec_entries.i.i.i, align 8
  %div.i.i.i433 = udiv i32 %mul87, %348
  %arrayidx.i.i.i434 = getelementptr %struct.sec_entry, ptr %354, i32 %div.i.i.i433
  %355 = ptrtoint ptr %arrayidx.i.i.i434 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx.i.i.i434, align 4
  br label %get_gc_cost.exit

if.else.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  %sentries.i.i.i = getelementptr inbounds %struct.sit_info, ptr %352, i32 0, i32 14
  %357 = ptrtoint ptr %sentries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %sentries.i.i.i, align 4
  %arrayidx.i6.i.i = getelementptr %struct.seg_entry, ptr %358, i32 %mul87
  %359 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %bf.load.i.i = load i32, ptr %arrayidx.i6.i.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 16
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 1023
  br label %get_gc_cost.exit

cond.end.i.i:                                     ; preds = %if.end.i428
  %360 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %sm_info.i.i, align 8
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  %364 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %segs_per_sec, align 8
  %366 = urem i32 %mul87, %365
  %mul.i.i = sub i32 %mul87, %366
  %call2.i.i = call i32 @f2fs_usable_segs_in_sec(ptr noundef %sbi, i32 noundef %mul87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3195.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3195.not.i.i, label %cond.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

cond.end.i.i.for.end.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %cond.end.i.i
  %367 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %sm_info.i.i, align 8
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %368, align 4
  %sentries.i.i23.i = getelementptr inbounds %struct.sit_info, ptr %370, i32 0, i32 14
  %371 = ptrtoint ptr %sentries.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %sentries.i.i23.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0197.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i437, %for.body.i.i.for.body.i.i_crit_edge ]
  %mtime.0196.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %add6.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add i32 %mul.i.i, %i.0197.i.i
  %mtime5.i.i = getelementptr %struct.seg_entry, ptr %372, i32 %add.i.i, i32 5
  %373 = ptrtoint ptr %mtime5.i.i to i32
  call void @__asan_load8_noabort(i32 %373)
  %374 = load i64, ptr %mtime5.i.i, align 8
  %add6.i.i = add i64 %374, %mtime.0196.i.i
  %inc.i.i437 = add nuw i32 %i.0197.i.i, 1
  %exitcond.not.i.i438 = icmp eq i32 %inc.i.i437, %call2.i.i
  br i1 %exitcond.not.i.i438, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %cond.end.i.i.for.end.i.i_crit_edge
  %mtime.0.lcssa.i.i = phi i64 [ 0, %cond.end.i.i.for.end.i.i_crit_edge ], [ %add6.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %375 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %376)
  %cmp.i.i24.i = icmp ugt i32 %376, 1
  %377 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %sm_info.i.i, align 8
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 4
  br i1 %cmp.i.i24.i, label %get_sec_entry.exit.i.i.i, label %if.else.i.i.i

get_sec_entry.exit.i.i.i:                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sec_entries.i.i.i.i = getelementptr inbounds %struct.sit_info, ptr %380, i32 0, i32 15
  %381 = ptrtoint ptr %sec_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %sec_entries.i.i.i.i, align 8
  %div.i.i.i.i = udiv i32 %mul87, %376
  %arrayidx.i.i.i.i = getelementptr %struct.sec_entry, ptr %382, i32 %div.i.i.i.i
  %383 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx.i.i.i.i, align 4
  br label %if.else162.i.i.i.i

if.else.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sentries.i.i.i.i = getelementptr inbounds %struct.sit_info, ptr %380, i32 0, i32 14
  %385 = ptrtoint ptr %sentries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %sentries.i.i.i.i, align 4
  %arrayidx.i6.i.i.i = getelementptr %struct.seg_entry, ptr %386, i32 %mul87
  %387 = ptrtoint ptr %arrayidx.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %bf.load.i.i.i = load i32, ptr %arrayidx.i6.i.i.i, align 8
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 16
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 1023
  br label %if.else162.i.i.i.i

if.else162.i.i.i.i:                               ; preds = %if.else.i.i.i, %get_sec_entry.exit.i.i.i
  %retval.0.i.i.i = phi i32 [ %384, %get_sec_entry.exit.i.i.i ], [ %bf.clear.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mtime.0.lcssa.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %mtime.0.lcssa.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !115

if.then168.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i.i.i.i = trunc i64 %mtime.0.lcssa.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %call2.i.i
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %if.else162.i.i180.i.i

if.else174.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %388 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2.i.i, i64 %mtime.0.lcssa.i.i) #21, !srcloc !151
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %388, 1
  br label %if.else162.i.i180.i.i

if.else162.i.i180.i.i:                            ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  %div172.i.i181.i.i = udiv i32 %retval.0.i.i.i, %call2.i.i
  %389 = ptrtoint ptr %log_blocks_per_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %log_blocks_per_seg.i.i, align 8
  %min_mtime.i.i = getelementptr inbounds %struct.sit_info, ptr %363, i32 0, i32 18
  %391 = ptrtoint ptr %min_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %391)
  %392 = load i64, ptr %min_mtime.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i.i, i64 %392)
  %cmp13.i.i = icmp ult i64 %dividend.addr.0.i.i.i.i, %392
  br i1 %cmp13.i.i, label %if.then.i25.i, label %if.else162.i.i180.i.i.if.end.i.i_crit_edge

if.else162.i.i180.i.i.if.end.i.i_crit_edge:       ; preds = %if.else162.i.i180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i25.i:                                    ; preds = %if.else162.i.i180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %393 = ptrtoint ptr %min_mtime.i.i to i32
  call void @__asan_store8_noabort(i32 %393)
  store i64 %dividend.addr.0.i.i.i.i, ptr %min_mtime.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i25.i, %if.else162.i.i180.i.i.if.end.i.i_crit_edge
  %max_mtime.i.i = getelementptr inbounds %struct.sit_info, ptr %363, i32 0, i32 19
  %394 = ptrtoint ptr %max_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %max_mtime.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i.i.i, i64 %395)
  %cmp16.i.i = icmp ugt i64 %dividend.addr.0.i.i.i.i, %395
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end.i.i.if.end20.i.i_crit_edge

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %396 = ptrtoint ptr %max_mtime.i.i to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 %dividend.addr.0.i.i.i.i, ptr %max_mtime.i.i, align 8
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end.i.i.if.end20.i.i_crit_edge
  %397 = ptrtoint ptr %max_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %max_mtime.i.i, align 8
  %399 = ptrtoint ptr %min_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %399)
  %400 = load i64, ptr %min_mtime.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %398, i64 %400)
  %cmp23.not.i.i = icmp eq i64 %398, %400
  br i1 %cmp23.not.i.i, label %if.end20.i.i.get_cb_cost.exit.i_crit_edge, label %if.then25.i.i

if.end20.i.i.get_cb_cost.exit.i_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cb_cost.exit.i

if.then25.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i64 %dividend.addr.0.i.i.i.i, %400
  %mul27.i.i = mul i64 %sub.i.i, 100
  %sub30.i.i = sub i64 %398, %400
  %call31.i.i = call i64 @div64_u64(i64 noundef %mul27.i.i, i64 noundef %sub30.i.i) #16
  %401 = trunc i64 %call31.i.i to i32
  %conv33.i.i = sub i32 100, %401
  %phi.cast.i.i = and i32 %conv33.i.i, 255
  br label %get_cb_cost.exit.i

get_cb_cost.exit.i:                               ; preds = %if.then25.i.i, %if.end20.i.i.get_cb_cost.exit.i_crit_edge
  %age.0.i.i = phi i32 [ %phi.cast.i.i, %if.then25.i.i ], [ 0, %if.end20.i.i.get_cb_cost.exit.i_crit_edge ]
  %mul11.i.i = mul i32 %div172.i.i181.i.i, 100
  %shr.i.i = lshr i32 %mul11.i.i, %390
  %conv35.i.i = and i32 %shr.i.i, 255
  %sub36.i.i = sub nsw i32 100, %conv35.i.i
  %mul37.i.i = mul nsw i32 %sub36.i.i, 100
  %mul39.i.i = mul nsw i32 %mul37.i.i, %age.0.i.i
  %add41.i.i = add nuw nsw i32 %conv35.i.i, 100
  %div42.i.i = sdiv i32 %mul39.i.i, %add41.i.i
  %sub43.i.i = xor i32 %div42.i.i, -1
  br label %get_gc_cost.exit

do.body10.i:                                      ; preds = %if.end.i428
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #16, !srcloc !161
  unreachable

get_gc_cost.exit:                                 ; preds = %get_cb_cost.exit.i, %if.else.i.i, %get_sec_entry.exit.i.i, %if.then.i426
  %retval.0.i440 = phi i32 [ %bf.clear.i425, %if.then.i426 ], [ %sub43.i.i, %get_cb_cost.exit.i ], [ %356, %get_sec_entry.exit.i.i ], [ %bf.clear.i.i, %if.else.i.i ]
  %402 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %min_cost510, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %403, i32 %retval.0.i440)
  %cmp152 = icmp ugt i32 %403, %retval.0.i440
  br i1 %cmp152, label %if.then154, label %get_gc_cost.exit.next_crit_edge

get_gc_cost.exit.next_crit_edge:                  ; preds = %get_gc_cost.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %next

if.then154:                                       ; preds = %get_gc_cost.exit
  call void @__sanitizer_cov_trace_pc() #18
  %404 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %mul87, ptr %min_segno, align 8
  %405 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %retval.0.i440, ptr %min_cost510, align 8
  br label %next

next:                                             ; preds = %if.then154, %get_gc_cost.exit.next_crit_edge, %insert_victim_entry.exit.i, %if.end31.i.next_crit_edge, %land.lhs.true.i415.next_crit_edge, %land.lhs.true142.next_crit_edge, %if.else134.next_crit_edge, %if.then129.next_crit_edge, %sec_usage_check.exit407.next_crit_edge, %lor.lhs.false36.i402.next_crit_edge, %lor.lhs.false30.i398.next_crit_edge, %lor.lhs.false24.i394.next_crit_edge, %lor.lhs.false18.i390.next_crit_edge, %lor.lhs.false12.i386.next_crit_edge, %lor.lhs.false6.i382.next_crit_edge, %lor.lhs.false.i378.next_crit_edge, %cond.end117.next_crit_edge, %if.end104.next_crit_edge
  %406 = ptrtoint ptr %max_search11.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %max_search11.i, align 4
  %cmp159.not = icmp ult i32 %inc, %407
  br i1 %cmp159.not, label %next.while.cond_crit_edge, label %if.then161

next.while.cond_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.then161:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #18
  %408 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %gc_mode5.i, align 4
  %arrayidx164 = getelementptr %struct.sit_info, ptr %5, i32 0, i32 22, i32 %409
  %410 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %411)
  %tobool165.not = icmp ne i32 %411, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul87, i32 %221)
  %cmp167.not = icmp ugt i32 %mul87, %221
  %or.cond344 = select i1 %tobool165.not, i1 true, i1 %cmp167.not
  %412 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ofs_unit12.i, align 4
  %mul87.lcssa655. = select i1 %or.cond344, i32 %mul87, i32 %221
  %add177 = add i32 %413, %mul87.lcssa655.
  %414 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %add177, ptr %arrayidx164, align 4
  %415 = ptrtoint ptr %total_sections to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %total_sections, align 8
  %417 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %segs_per_sec, align 8
  %mul184 = mul i32 %418, %416
  %419 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %gc_mode5.i, align 4
  %arrayidx187 = getelementptr %struct.sit_info, ptr %5, i32 0, i32 22, i32 %420
  %421 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %arrayidx187, align 4
  %rem = urem i32 %422, %mul184
  store i32 %rem, ptr %arrayidx187, align 4
  br label %while.end

while.end:                                        ; preds = %if.then161, %if.then90.while.end_crit_edge
  br i1 %124, label %if.then193, label %while.end.if.end207_crit_edge

while.end.if.end207_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end207

if.then193:                                       ; preds = %while.end
  %call.i = call zeroext i1 @f2fs_check_rb_tree_consistence(ptr noundef %sbi, ptr noundef %root.i.i, i1 noundef zeroext true) #16
  br i1 %call.i, label %do.end6.i, label %do.body3.i, !prof !115

do.body3.i:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 619, 0\0A.popsection", ""() #16, !srcloc !162
  unreachable

do.end6.i:                                        ; preds = %if.then193
  %423 = ptrtoint ptr %gc_mode5.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %gc_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %424)
  %cmp.i442 = icmp eq i32 %424, 2
  br i1 %cmp.i442, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %do.end6.i
  %425 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %sm_info.i.i, align 8
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %426, align 4
  %dirty_max_mtime.i.i = getelementptr inbounds %struct.sit_info, ptr %428, i32 0, i32 21
  %429 = ptrtoint ptr %dirty_max_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %429)
  %430 = load i64, ptr %dirty_max_mtime.i.i, align 8
  %dirty_min_mtime.i.i = getelementptr inbounds %struct.sit_info, ptr %428, i32 0, i32 20
  %431 = ptrtoint ptr %dirty_min_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %dirty_min_mtime.i.i, align 8
  %433 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %segs_per_sec, align 8
  %435 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i.i445 = mul i32 %436, %434
  %437 = ptrtoint ptr %max_candidate_count.i29.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %max_candidate_count.i29.i, align 4
  %439 = ptrtoint ptr %candidate_ratio.i30.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %candidate_ratio.i30.i, align 8
  %441 = ptrtoint ptr %victim_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %victim_count.i.i.i, align 4
  %mul3.i.i = mul i32 %442, %440
  %div.i.i446 = udiv i32 %mul3.i.i, 100
  %443 = call i32 @llvm.umax.i32(i32 %438, i32 %div.i.i446) #16
  %444 = ptrtoint ptr %age_weight4.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %age_weight4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %430, i64 %432)
  %cmp5.i.i447 = icmp ult i64 %430, %432
  br i1 %cmp5.i.i447, label %if.then7.i.lookup_victim_by_age.exit_crit_edge, label %if.end.i.i453

if.then7.i.lookup_victim_by_age.exit_crit_edge:   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

if.end.i.i453:                                    ; preds = %if.then7.i
  %add.i.i448 = add i64 %430, 1
  %sub.i.i449 = sub i64 %add.i.i448, %432
  %call6.i.i = call i64 @div64_u64(i64 noundef -1, i64 noundef %sub.i.i449) #16
  %446 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %call6.i.i, i32 0) #21, !srcloc !163
  %asmresult.i.i.i.i.i450 = extractvalue { i64, i32 } %446, 0
  %asmresult4.i.i.i.i.i451 = extractvalue { i64, i32 } %446, 1
  %447 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %call6.i.i, i64 %asmresult.i.i.i.i.i450, i32 %asmresult4.i.i.i.i.i451) #21, !srcloc !164
  %asmresult10.i.i.i.i.i452 = extractvalue { i64, i32 } %447, 0
  %div158.i.i164.i.i = lshr i64 %asmresult10.i.i.i.i.i452, 6
  %448 = call i64 @llvm.umin.i64(i64 %div158.i.i164.i.i, i64 10000) #16
  %449 = ptrtoint ptr %rb_leftmost.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %rb_leftmost.i.i.i.i, align 4
  %tobool.not165.i.i = icmp eq ptr %450, null
  br i1 %tobool.not165.i.i, label %if.end.i.i453.lookup_victim_by_age.exit_crit_edge, label %if.end22.lr.ph.i.i

if.end.i.i453.lookup_victim_by_age.exit_crit_edge: ; preds = %if.end.i.i453
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

if.end22.lr.ph.i.i:                               ; preds = %if.end.i.i453
  %conv.i.i = zext i32 %445 to i64
  %conv50.i.i = zext i32 %mul.i.i445 to i64
  %sub52.i.i = sub i32 100, %445
  %conv53.i.i = zext i32 %sub52.i.i to i64
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then93.i.i.if.end22.i.i_crit_edge, %if.end22.lr.ph.i.i
  %node.0167.i.i = phi ptr [ %450, %if.end22.lr.ph.i.i ], [ %call94.i.i, %if.then93.i.i.if.end22.i.i_crit_edge ]
  %iter.0166.i.i = phi i32 [ 0, %if.end22.lr.ph.i.i ], [ %iter.1.i.i, %if.then93.i.i.if.end22.i.i_crit_edge ]
  %451 = getelementptr inbounds %struct.victim_entry, ptr %node.0167.i.i, i32 0, i32 1
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_load8_noabort(i32 %452)
  %453 = load i64, ptr %451, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i448, i64 %453)
  %cmp23.not.i.i454 = icmp ule i64 %add.i.i448, %453
  call void @__sanitizer_cov_trace_cmp8(i64 %453, i64 %432)
  %cmp25.i.i = icmp ult i64 %453, %432
  %or.cond.i.i = select i1 %cmp23.not.i.i454, i1 true, i1 %cmp25.i.i
  br i1 %or.cond.i.i, label %if.end22.i.i.skip.i.i_crit_edge, label %if.end27.i.i

if.end22.i.i.skip.i.i_crit_edge:                  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip.i.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  %sub29.i.i = sub i64 %add.i.i448, %453
  %mul30.i.i = mul i64 %sub29.i.i, %448
  %call31.i.i455 = call i64 @div64_u64(i64 noundef %mul30.i.i, i64 noundef %sub.i.i449) #16
  %mul32.i.i = mul i64 %call31.i.i455, %conv.i.i
  %segno.i.i456 = getelementptr inbounds %struct.victim_entry, ptr %node.0167.i.i, i32 0, i32 1, i32 0, i32 1
  %454 = ptrtoint ptr %segno.i.i456 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %segno.i.i456, align 8
  %456 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %457)
  %cmp.i.i.i457 = icmp ugt i32 %457, 1
  %458 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %sm_info.i.i, align 8
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %459, align 4
  br i1 %cmp.i.i.i457, label %if.then.i.i.i459, label %if.else.i.i.i470

if.then.i.i.i459:                                 ; preds = %if.end27.i.i
  %sec_entries.i.i.i.i458 = getelementptr inbounds %struct.sit_info, ptr %461, i32 0, i32 15
  %462 = ptrtoint ptr %sec_entries.i.i.i.i458 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %sec_entries.i.i.i.i458, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %455)
  %cmp.i.i.i.i = icmp eq i32 %455, -1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i459.get_sec_entry.exit.i.i.i464_crit_edge, label %cond.false.i.i.i.i461

if.then.i.i.i459.get_sec_entry.exit.i.i.i464_crit_edge: ; preds = %if.then.i.i.i459
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_sec_entry.exit.i.i.i464

cond.false.i.i.i.i461:                            ; preds = %if.then.i.i.i459
  call void @__sanitizer_cov_trace_pc() #18
  %div.i.i.i.i460 = udiv i32 %455, %457
  br label %get_sec_entry.exit.i.i.i464

get_sec_entry.exit.i.i.i464:                      ; preds = %cond.false.i.i.i.i461, %if.then.i.i.i459.get_sec_entry.exit.i.i.i464_crit_edge
  %cond.i.i.i.i462 = phi i32 [ %div.i.i.i.i460, %cond.false.i.i.i.i461 ], [ -1, %if.then.i.i.i459.get_sec_entry.exit.i.i.i464_crit_edge ]
  %arrayidx.i.i.i.i463 = getelementptr %struct.sec_entry, ptr %463, i32 %cond.i.i.i.i462
  %464 = ptrtoint ptr %arrayidx.i.i.i.i463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx.i.i.i.i463, align 4
  br label %get_valid_blocks.exit.i.i473

if.else.i.i.i470:                                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sentries.i.i.i.i465 = getelementptr inbounds %struct.sit_info, ptr %461, i32 0, i32 14
  %466 = ptrtoint ptr %sentries.i.i.i.i465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %sentries.i.i.i.i465, align 4
  %arrayidx.i6.i.i.i466 = getelementptr %struct.seg_entry, ptr %467, i32 %455
  %468 = ptrtoint ptr %arrayidx.i6.i.i.i466 to i32
  call void @__asan_load4_noabort(i32 %468)
  %bf.load.i.i.i467 = load i32, ptr %arrayidx.i6.i.i.i466, align 8
  %bf.lshr.i.i.i468 = lshr i32 %bf.load.i.i.i467, 16
  %bf.clear.i.i.i469 = and i32 %bf.lshr.i.i.i468, 1023
  br label %get_valid_blocks.exit.i.i473

get_valid_blocks.exit.i.i473:                     ; preds = %if.else.i.i.i470, %get_sec_entry.exit.i.i.i464
  %retval.0.i.i.i471 = phi i32 [ %465, %get_sec_entry.exit.i.i.i464 ], [ %bf.clear.i.i.i469, %if.else.i.i.i470 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i471)
  %tobool34.not.i.i = icmp eq i32 %retval.0.i.i.i471, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i445, i32 %retval.0.i.i.i471)
  %cmp35.i.i472 = icmp eq i32 %mul.i.i445, %retval.0.i.i.i471
  %spec.select163.i.i = select i1 %tobool34.not.i.i, i1 true, i1 %cmp35.i.i472, !prof !116
  br i1 %spec.select163.i.i, label %do.body40.i.i, label %do.end46.i.i, !prof !116

do.body40.i.i:                                    ; preds = %get_valid_blocks.exit.i.i473
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 514, 0\0A.popsection", ""() #16, !srcloc !165
  unreachable

do.end46.i.i:                                     ; preds = %get_valid_blocks.exit.i.i473
  %sub47.i.i = sub i32 %mul.i.i445, %retval.0.i.i.i471
  %conv48.i.i = zext i32 %sub47.i.i to i64
  %mul49.i.i = mul nuw nsw i64 %448, %conv48.i.i
  %call51.i.i = call i64 @div64_u64(i64 noundef %mul49.i.i, i64 noundef %conv50.i.i) #16
  %mul54.i.i = mul i64 %call51.i.i, %conv53.i.i
  %add56.i.i = add i64 %mul54.i.i, %mul32.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %add56.i.i)
  %cmp57.i.i = icmp ugt i64 %add56.i.i, 4294967294
  br i1 %cmp57.i.i, label %do.body66.i.i, label %do.end74.i.i, !prof !116

do.body66.i.i:                                    ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 520, 0\0A.popsection", ""() #16, !srcloc !166
  unreachable

do.end74.i.i:                                     ; preds = %do.end46.i.i
  %469 = trunc i64 %add56.i.i to i32
  %conv77.i.i = xor i32 %469, -1
  %inc.i.i474 = add i32 %iter.0166.i.i, 1
  %470 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %min_cost510, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %471, i32 %conv77.i.i)
  %cmp78.i.i = icmp ugt i32 %471, %conv77.i.i
  br i1 %cmp78.i.i, label %do.end74.i.i.if.then86.i.i_crit_edge, label %lor.lhs.false80.i.i

do.end74.i.i.if.then86.i.i_crit_edge:             ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then86.i.i

lor.lhs.false80.i.i:                              ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %471, i32 %conv77.i.i)
  %cmp82.i.i = icmp eq i32 %471, %conv77.i.i
  br i1 %cmp82.i.i, label %land.lhs.true.i.i, label %lor.lhs.false80.i.i.skip.i.i_crit_edge

lor.lhs.false80.i.i.skip.i.i_crit_edge:           ; preds = %lor.lhs.false80.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false80.i.i
  %472 = ptrtoint ptr %oldest_age to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %oldest_age, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul32.i.i, i64 %473)
  %cmp84.i.i = icmp ugt i64 %mul32.i.i, %473
  br i1 %cmp84.i.i, label %land.lhs.true.i.i.if.then86.i.i_crit_edge, label %land.lhs.true.i.i.skip.i.i_crit_edge

land.lhs.true.i.i.skip.i.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip.i.i

land.lhs.true.i.i.if.then86.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then86.i.i

if.then86.i.i:                                    ; preds = %land.lhs.true.i.i.if.then86.i.i_crit_edge, %do.end74.i.i.if.then86.i.i_crit_edge
  %474 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %conv77.i.i, ptr %min_cost510, align 8
  %475 = ptrtoint ptr %oldest_age to i32
  call void @__asan_store8_noabort(i32 %475)
  store i64 %mul32.i.i, ptr %oldest_age, align 8
  %476 = ptrtoint ptr %segno.i.i456 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %segno.i.i456, align 8
  %478 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %477, ptr %min_segno, align 8
  br label %skip.i.i

skip.i.i:                                         ; preds = %if.then86.i.i, %land.lhs.true.i.i.skip.i.i_crit_edge, %lor.lhs.false80.i.i.skip.i.i_crit_edge, %if.end22.i.i.skip.i.i_crit_edge
  %iter.1.i.i = phi i32 [ %iter.0166.i.i, %if.end22.i.i.skip.i.i_crit_edge ], [ %inc.i.i474, %if.then86.i.i ], [ %inc.i.i474, %land.lhs.true.i.i.skip.i.i_crit_edge ], [ %inc.i.i474, %lor.lhs.false80.i.i.skip.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %iter.1.i.i, i32 %443)
  %cmp91.i.i = icmp ult i32 %iter.1.i.i, %443
  br i1 %cmp91.i.i, label %if.then93.i.i, label %skip.i.i.lookup_victim_by_age.exit_crit_edge

skip.i.i.lookup_victim_by_age.exit_crit_edge:     ; preds = %skip.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

if.then93.i.i:                                    ; preds = %skip.i.i
  %call94.i.i = call ptr @rb_next(ptr noundef nonnull %node.0167.i.i) #16
  %tobool.not.i.i475 = icmp eq ptr %call94.i.i, null
  br i1 %tobool.not.i.i475, label %if.then93.i.i.lookup_victim_by_age.exit_crit_edge, label %if.then93.i.i.if.end22.i.i_crit_edge

if.then93.i.i.if.end22.i.i_crit_edge:             ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i.i

if.then93.i.i.lookup_victim_by_age.exit_crit_edge: ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

if.else.i:                                        ; preds = %do.end6.i
  %479 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %480)
  %cmp8.i = icmp eq i32 %480, 2
  br i1 %cmp8.i, label %if.then9.i, label %do.body12.i

if.then9.i:                                       ; preds = %if.else.i
  %481 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %sm_info.i.i, align 8
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %482, align 4
  %dirty_max_mtime.i26.i = getelementptr inbounds %struct.sit_info, ptr %484, i32 0, i32 21
  %485 = ptrtoint ptr %dirty_max_mtime.i26.i to i32
  call void @__asan_load8_noabort(i32 %485)
  %486 = load i64, ptr %dirty_max_mtime.i26.i, align 8
  %dirty_min_mtime.i27.i = getelementptr inbounds %struct.sit_info, ptr %484, i32 0, i32 20
  %487 = ptrtoint ptr %dirty_min_mtime.i27.i to i32
  call void @__asan_load8_noabort(i32 %487)
  %488 = load i64, ptr %dirty_min_mtime.i27.i, align 8
  %489 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %blocks_per_seg.i, align 4
  %491 = ptrtoint ptr %max_candidate_count.i29.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %max_candidate_count.i29.i, align 4
  %493 = ptrtoint ptr %candidate_ratio.i30.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %candidate_ratio.i30.i, align 8
  %495 = ptrtoint ptr %victim_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %victim_count.i.i.i, align 4
  %mul.i32.i = mul i32 %496, %494
  %div.i33.i = udiv i32 %mul.i32.i, 100
  %497 = call i32 @llvm.umax.i32(i32 %492, i32 %div.i33.i) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %486, i64 %488)
  %cmp2.i.i = icmp ult i64 %486, %488
  br i1 %cmp2.i.i, label %if.then9.i.lookup_victim_by_age.exit_crit_edge, label %if.end.i38.i

if.then9.i.lookup_victim_by_age.exit_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

if.end.i38.i:                                     ; preds = %if.then9.i
  %add.i34.i = add i64 %486, 1
  %add.neg.i.i = xor i64 %486, -1
  br label %next_stage.i.i

next_stage.i.i:                                   ; preds = %next_stage.i.i.backedge, %if.end.i38.i
  %cmp12.i.i = phi i1 [ true, %if.end.i38.i ], [ false, %next_stage.i.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.i.i.i) #16
  %498 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store ptr null, ptr %parent.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %left_most.i.i.i) #16
  %499 = ptrtoint ptr %left_most.i.i.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 -1, ptr %left_most.i.i.i, align 1, !annotation !140
  %500 = ptrtoint ptr %age3 to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %age3, align 8
  %call.i.i.i = call ptr @f2fs_lookup_rb_tree_ext(ptr noundef %sbi, ptr noundef %root.i.i, ptr noundef nonnull %parent.i.i.i, i64 noundef %501, ptr noundef nonnull %left_most.i.i.i) #16
  %502 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %parent.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %left_most.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i.i) #16
  %tobool.not133.i.i = icmp eq ptr %503, null
  br i1 %tobool.not133.i.i, label %next_stage.i.i.if.then11.i.i_crit_edge, label %next_stage.i.i.if.end15.i.i_crit_edge

next_stage.i.i.if.end15.i.i_crit_edge:            ; preds = %next_stage.i.i
  br label %if.end15.i.i

next_stage.i.i.if.then11.i.i_crit_edge:           ; preds = %next_stage.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end68.i.i.if.then11.i.i_crit_edge, %next_stage.i.i.if.then11.i.i_crit_edge
  br i1 %cmp12.i.i, label %if.then11.i.i.next_stage.i.i.backedge_crit_edge, label %if.then11.i.i.lookup_victim_by_age.exit_crit_edge

if.then11.i.i.lookup_victim_by_age.exit_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

if.then11.i.i.next_stage.i.i.backedge_crit_edge:  ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_stage.i.i.backedge

if.end15.i.i:                                     ; preds = %if.end68.i.i.if.end15.i.i_crit_edge, %next_stage.i.i.if.end15.i.i_crit_edge
  %node.0135.i.i = phi ptr [ %node.1.i.i, %if.end68.i.i.if.end15.i.i_crit_edge ], [ %503, %next_stage.i.i.if.end15.i.i_crit_edge ]
  %iter.1134.i.i = phi i32 [ %iter.2.i.i, %if.end68.i.i.if.end15.i.i_crit_edge ], [ 0, %next_stage.i.i.if.end15.i.i_crit_edge ]
  %504 = getelementptr inbounds %struct.victim_entry, ptr %node.0135.i.i, i32 0, i32 1
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_load8_noabort(i32 %505)
  %506 = load i64, ptr %504, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %506, i64 %add.i34.i)
  %cmp16.not.i.i = icmp uge i64 %506, %add.i34.i
  call void @__sanitizer_cov_trace_cmp8(i64 %506, i64 %488)
  %cmp18.i.i = icmp ult i64 %506, %488
  %or.cond.i39.i = select i1 %cmp16.not.i.i, i1 true, i1 %cmp18.i.i
  br i1 %or.cond.i39.i, label %if.end15.i.i.skip_node.i.i_crit_edge, label %if.end20.i.i481

if.end15.i.i.skip_node.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_node.i.i

if.end20.i.i481:                                  ; preds = %if.end15.i.i
  %sub.neg.i.i = add i64 %506, %add.neg.i.i
  %segno.i40.i = getelementptr inbounds %struct.victim_entry, ptr %node.0135.i.i, i32 0, i32 1, i32 0, i32 1
  %507 = ptrtoint ptr %segno.i40.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %segno.i40.i, align 8
  %509 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %sm_info.i.i, align 8
  %511 = ptrtoint ptr %510 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %510, align 4
  %sentries.i.i.i476 = getelementptr inbounds %struct.sit_info, ptr %512, i32 0, i32 14
  %513 = ptrtoint ptr %sentries.i.i.i476 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %sentries.i.i.i476, align 4
  %arrayidx.i.i.i477 = getelementptr %struct.seg_entry, ptr %514, i32 %508
  %515 = ptrtoint ptr %arrayidx.i.i.i477 to i32
  call void @__asan_load4_noabort(i32 %515)
  %bf.load.i.i478 = load i32, ptr %arrayidx.i.i.i477, align 8
  %bf.lshr.i.i479 = lshr i32 %bf.load.i.i478, 6
  %bf.clear.i.i480 = and i32 %bf.lshr.i.i479, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i480)
  %tobool23.not.i.i = icmp eq i32 %bf.clear.i.i480, 0
  br i1 %tobool23.not.i.i, label %do.body28.i.i, label %do.end34.i.i, !prof !116

do.body28.i.i:                                    ; preds = %if.end20.i.i481
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 583, 0\0A.popsection", ""() #16, !srcloc !167
  unreachable

do.end34.i.i:                                     ; preds = %if.end20.i.i481
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i.i480, i32 %490)
  %cmp35.i41.i = icmp eq i32 %bf.clear.i.i480, %490
  br i1 %cmp35.i41.i, label %do.end34.i.i.skip_node.i.i_crit_edge, label %if.end37.i.i

do.end34.i.i.skip_node.i.i_crit_edge:             ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_node.i.i

if.end37.i.i:                                     ; preds = %do.end34.i.i
  %inc.i42.i = add i32 %iter.1134.i.i, 1
  %516 = ptrtoint ptr %age3 to i32
  call void @__asan_load8_noabort(i32 %516)
  %517 = load i64, ptr %age3, align 8
  %sub39.i.i = add i64 %sub.neg.i.i, %517
  %518 = call i64 @llvm.abs.i64(i64 %sub39.i.i, i1 false) #16
  %sub47.i43.i = sub i64 %add.i34.i, %518
  %sub48.i.i = xor i32 %bf.clear.i.i480, -1
  %519 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %min_cost510, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %520, i32 %sub48.i.i)
  %cmp49.i.i = icmp ugt i32 %520, %sub48.i.i
  br i1 %cmp49.i.i, label %if.end37.i.i.if.then54.i.i_crit_edge, label %lor.lhs.false50.i.i

if.end37.i.i.if.then54.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54.i.i

lor.lhs.false50.i.i:                              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %520, i32 %sub48.i.i)
  %cmp52.i.i = icmp eq i32 %520, %sub48.i.i
  br i1 %cmp52.i.i, label %land.lhs.true.i44.i, label %lor.lhs.false50.i.i.skip_node.i.i_crit_edge

lor.lhs.false50.i.i.skip_node.i.i_crit_edge:      ; preds = %lor.lhs.false50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_node.i.i

land.lhs.true.i44.i:                              ; preds = %lor.lhs.false50.i.i
  %521 = ptrtoint ptr %oldest_age to i32
  call void @__asan_load8_noabort(i32 %521)
  %522 = load i64, ptr %oldest_age, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub47.i43.i, i64 %522)
  %cmp53.i.i = icmp ugt i64 %sub47.i43.i, %522
  br i1 %cmp53.i.i, label %land.lhs.true.i44.i.if.then54.i.i_crit_edge, label %land.lhs.true.i44.i.skip_node.i.i_crit_edge

land.lhs.true.i44.i.skip_node.i.i_crit_edge:      ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_node.i.i

land.lhs.true.i44.i.if.then54.i.i_crit_edge:      ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54.i.i

if.then54.i.i:                                    ; preds = %land.lhs.true.i44.i.if.then54.i.i_crit_edge, %if.end37.i.i.if.then54.i.i_crit_edge
  %523 = ptrtoint ptr %min_cost510 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %sub48.i.i, ptr %min_cost510, align 8
  %524 = ptrtoint ptr %oldest_age to i32
  call void @__asan_store8_noabort(i32 %524)
  store i64 %sub47.i43.i, ptr %oldest_age, align 8
  %525 = ptrtoint ptr %segno.i40.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %segno.i40.i, align 8
  %527 = ptrtoint ptr %min_segno to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 %526, ptr %min_segno, align 8
  br label %skip_node.i.i

skip_node.i.i:                                    ; preds = %if.then54.i.i, %land.lhs.true.i44.i.skip_node.i.i_crit_edge, %lor.lhs.false50.i.i.skip_node.i.i_crit_edge, %do.end34.i.i.skip_node.i.i_crit_edge, %if.end15.i.i.skip_node.i.i_crit_edge
  %iter.2.i.i = phi i32 [ %iter.1134.i.i, %if.end15.i.i.skip_node.i.i_crit_edge ], [ %iter.1134.i.i, %do.end34.i.i.skip_node.i.i_crit_edge ], [ %inc.i42.i, %if.then54.i.i ], [ %inc.i42.i, %land.lhs.true.i44.i.skip_node.i.i_crit_edge ], [ %inc.i42.i, %lor.lhs.false50.i.i.skip_node.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %iter.2.i.i, i32 %497)
  %cmp59.i.i = icmp ult i32 %iter.2.i.i, %497
  br i1 %cmp59.i.i, label %if.then60.i.i, label %skip_stage.i.i

if.then60.i.i:                                    ; preds = %skip_node.i.i
  br i1 %cmp12.i.i, label %if.then62.i.i, label %if.then65.i.i

if.then62.i.i:                                    ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call63.i.i = call ptr @rb_prev(ptr noundef nonnull %node.0135.i.i) #16
  br label %if.end68.i.i

if.then65.i.i:                                    ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call66.i.i = call ptr @rb_next(ptr noundef nonnull %node.0135.i.i) #16
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then65.i.i, %if.then62.i.i
  %node.1.i.i = phi ptr [ %call63.i.i, %if.then62.i.i ], [ %call66.i.i, %if.then65.i.i ]
  %tobool.not.i45.i = icmp eq ptr %node.1.i.i, null
  br i1 %tobool.not.i45.i, label %if.end68.i.i.if.then11.i.i_crit_edge, label %if.end68.i.i.if.end15.i.i_crit_edge

if.end68.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i.i

if.end68.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

skip_stage.i.i:                                   ; preds = %skip_node.i.i
  br i1 %cmp12.i.i, label %skip_stage.i.i.next_stage.i.i.backedge_crit_edge, label %skip_stage.i.i.lookup_victim_by_age.exit_crit_edge

skip_stage.i.i.lookup_victim_by_age.exit_crit_edge: ; preds = %skip_stage.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lookup_victim_by_age.exit

skip_stage.i.i.next_stage.i.i.backedge_crit_edge: ; preds = %skip_stage.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_stage.i.i.backedge

next_stage.i.i.backedge:                          ; preds = %skip_stage.i.i.next_stage.i.i.backedge_crit_edge, %if.then11.i.i.next_stage.i.i.backedge_crit_edge
  br label %next_stage.i.i

do.body12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 626, 0\0A.popsection", ""() #16, !srcloc !168
  unreachable

lookup_victim_by_age.exit:                        ; preds = %skip_stage.i.i.lookup_victim_by_age.exit_crit_edge, %if.then11.i.i.lookup_victim_by_age.exit_crit_edge, %if.then9.i.lookup_victim_by_age.exit_crit_edge, %if.then93.i.i.lookup_victim_by_age.exit_crit_edge, %skip.i.i.lookup_victim_by_age.exit_crit_edge, %if.end.i.i453.lookup_victim_by_age.exit_crit_edge, %if.then7.i.lookup_victim_by_age.exit_crit_edge
  %528 = ptrtoint ptr %victim_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %victim_list.i.i.i, align 4
  %cmp.not56.i = icmp eq ptr %529, %victim_list.i.i.i
  br i1 %cmp.not56.i, label %for.end.i487thread-pre-split, label %lookup_victim_by_age.exit.for.body.i484_crit_edge

lookup_victim_by_age.exit.for.body.i484_crit_edge: ; preds = %lookup_victim_by_age.exit
  br label %for.body.i484

for.body.i484:                                    ; preds = %list_del.exit.i.for.body.i484_crit_edge, %lookup_victim_by_age.exit.for.body.i484_crit_edge
  %.pn.in57.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i484_crit_edge ], [ %529, %lookup_victim_by_age.exit.for.body.i484_crit_edge ]
  %ve.0.i = getelementptr i8, ptr %.pn.in57.i, i32 -32
  %530 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %.pn.i = load ptr, ptr %.pn.in57.i, align 8
  %call.i.i.i483 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in57.i) #16
  br i1 %call.i.i.i483, label %if.end.i.i.i, label %for.body.i484.list_del.exit.i_crit_edge

for.body.i484.list_del.exit.i_crit_edge:          ; preds = %for.body.i484
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i484
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in57.i, i32 0, i32 1
  %531 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %prev.i.i.i, align 4
  %533 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %.pn.in57.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %534, i32 0, i32 1
  %535 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %532, ptr %prev1.i.i.i.i, align 4
  %536 = ptrtoint ptr %532 to i32
  call void @__asan_store4_noabort(i32 %536)
  store volatile ptr %534, ptr %532, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i484.list_del.exit.i_crit_edge
  %537 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in57.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in57.i, i32 0, i32 1
  %538 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %539 = load ptr, ptr @victim_entry_slab, align 4
  call void @kmem_cache_free(ptr noundef %539, ptr noundef %ve.0.i) #16
  %540 = ptrtoint ptr %victim_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %victim_count.i.i.i, align 4
  %dec.i = add i32 %541, -1
  store i32 %dec.i, ptr %victim_count.i.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %victim_list.i.i.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i487_crit_edge, label %list_del.exit.i.for.body.i484_crit_edge

list_del.exit.i.for.body.i484_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i484

list_del.exit.i.for.end.i487_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i487

for.end.i487thread-pre-split:                     ; preds = %lookup_victim_by_age.exit
  call void @__sanitizer_cov_trace_pc() #18
  %542 = ptrtoint ptr %victim_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %.pr651 = load i32, ptr %victim_count.i.i.i, align 4
  br label %for.end.i487

for.end.i487:                                     ; preds = %for.end.i487thread-pre-split, %list_del.exit.i.for.end.i487_crit_edge
  %543 = phi i32 [ %.pr651, %for.end.i487thread-pre-split ], [ %dec.i, %list_del.exit.i.for.end.i487_crit_edge ]
  %544 = ptrtoint ptr %root.i.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store ptr null, ptr %root.i.i, align 4
  %545 = ptrtoint ptr %rb_leftmost.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr null, ptr %rb_leftmost.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %543)
  %tobool.not.i486 = icmp eq i32 %543, 0
  br i1 %tobool.not.i486, label %do.body25.i, label %do.body19.i, !prof !115

do.body19.i:                                      ; preds = %for.end.i487
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #16, !srcloc !169
  unreachable

do.body25.i:                                      ; preds = %for.end.i487
  %546 = ptrtoint ptr %victim_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load volatile ptr, ptr %victim_list.i.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %547, %victim_list.i.i.i
  br i1 %cmp.i.not.i, label %release_victim_entry.exit, label %do.body37.i, !prof !115

do.body37.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/gc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #16, !srcloc !170
  unreachable

release_victim_entry.exit:                        ; preds = %do.body25.i
  %548 = ptrtoint ptr %min_segno to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %min_segno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %549)
  %cmp199 = icmp eq i32 %549, -1
  br i1 %cmp199, label %land.lhs.true201, label %release_victim_entry.exit.got_it_crit_edge

release_victim_entry.exit.got_it_crit_edge:       ; preds = %release_victim_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_it

land.lhs.true201:                                 ; preds = %release_victim_entry.exit
  %550 = ptrtoint ptr %elapsed_time to i32
  call void @__asan_load8_noabort(i32 %550)
  %551 = load i64, ptr %elapsed_time, align 8
  %552 = ptrtoint ptr %age_threshold4 to i32
  call void @__asan_load8_noabort(i32 %552)
  %553 = load i64, ptr %age_threshold4, align 8
  %cmp203 = icmp ult i64 %551, %553
  br i1 %cmp203, label %land.lhs.true201.retry_crit_edge, label %land.lhs.true201.if.end207_crit_edge

land.lhs.true201.if.end207_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end207

land.lhs.true201.retry_crit_edge:                 ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry

if.end207:                                        ; preds = %land.lhs.true201.if.end207_crit_edge, %while.end.if.end207_crit_edge
  %554 = ptrtoint ptr %min_segno to i32
  call void @__asan_load4_noabort(i32 %554)
  %.pr = load i32, ptr %min_segno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp209.not = icmp eq i32 %.pr, -1
  br i1 %cmp209.not, label %if.end207.if.end246_crit_edge, label %if.end207.got_it_crit_edge

if.end207.got_it_crit_edge:                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_it

if.end207.if.end246_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end246

got_it:                                           ; preds = %if.end207.got_it_crit_edge, %release_victim_entry.exit.got_it_crit_edge, %check_bg_victims.exit.got_it_crit_edge
  %555 = ptrtoint ptr %min_segno to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %min_segno, align 8
  %557 = ptrtoint ptr %ofs_unit12.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %ofs_unit12.i, align 4
  %559 = urem i32 %556, %558
  %mul216 = sub i32 %556, %559
  %560 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %mul216, ptr %result, align 4
  br label %got_result

got_result:                                       ; preds = %got_it, %if.then54, %if.then39
  %561 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %562)
  %cmp218 = icmp eq i32 %562, 0
  br i1 %cmp218, label %if.then220, label %got_result.out_crit_edge

got_result.out_crit_edge:                         ; preds = %got_result
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then220:                                       ; preds = %got_result
  %563 = ptrtoint ptr %min_segno to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %min_segno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %564)
  %cmp222 = icmp eq i32 %564, -1
  br i1 %cmp222, label %if.then220.cond.end229_crit_edge, label %cond.false225

if.then220.cond.end229_crit_edge:                 ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end229

cond.false225:                                    ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #18
  %565 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %segs_per_sec, align 8
  %div228 = udiv i32 %564, %566
  br label %cond.end229

cond.end229:                                      ; preds = %cond.false225, %if.then220.cond.end229_crit_edge
  %cond230 = phi i32 [ %div228, %cond.false225 ], [ -1, %if.then220.cond.end229_crit_edge ]
  br i1 %cmp33.not.i, label %if.then233, label %if.else234

if.then233:                                       ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #18
  %567 = ptrtoint ptr %cur_victim_sec.i.i to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 %cond230, ptr %cur_victim_sec.i.i, align 8
  br label %out

if.else234:                                       ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #18
  %568 = ptrtoint ptr %victim_secmap to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %victim_secmap, align 4
  call void @_set_bit(i32 noundef %cond230, ptr noundef %569) #16
  br label %out

out:                                              ; preds = %if.else234, %if.then233, %got_result.out_crit_edge, %if.end25.out_crit_edge, %sec_usage_check.exit.out_crit_edge, %lor.lhs.false36.i.out_crit_edge, %lor.lhs.false30.i.out_crit_edge, %lor.lhs.false24.i.out_crit_edge, %lor.lhs.false18.i.out_crit_edge, %lor.lhs.false12.i.out_crit_edge, %lor.lhs.false6.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %cond.end.out_crit_edge, %if.then13.out_crit_edge
  %ret.1.ph = phi i32 [ 0, %got_result.out_crit_edge ], [ 0, %if.else234 ], [ 0, %if.then233 ], [ -16, %sec_usage_check.exit.out_crit_edge ], [ -61, %if.then13.out_crit_edge ], [ -16, %lor.lhs.false36.i.out_crit_edge ], [ -16, %lor.lhs.false30.i.out_crit_edge ], [ -16, %lor.lhs.false24.i.out_crit_edge ], [ -16, %lor.lhs.false18.i.out_crit_edge ], [ -16, %lor.lhs.false12.i.out_crit_edge ], [ -16, %lor.lhs.false6.i.out_crit_edge ], [ -16, %lor.lhs.false.i.out_crit_edge ], [ -16, %cond.end.out_crit_edge ], [ -61, %if.end25.out_crit_edge ]
  %570 = ptrtoint ptr %min_segno to i32
  call void @__asan_load4_noabort(i32 %570)
  %.pr531 = load i32, ptr %min_segno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr531)
  %cmp240.not = icmp eq i32 %.pr531, -1
  br i1 %cmp240.not, label %out.if.end246_crit_edge, label %out.if.then242_crit_edge

out.if.then242_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then242

out.if.end246_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end246

if.then242:                                       ; preds = %out.if.then242_crit_edge, %out.thread535
  %ret.1538 = phi i32 [ %ret.0, %out.thread535 ], [ %ret.1.ph, %out.if.then242_crit_edge ]
  %571 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %sbi, align 8
  %573 = ptrtoint ptr %cur_victim_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %cur_victim_sec.i.i, align 8
  %575 = ptrtoint ptr %sm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %sm_info.i.i, align 8
  %dirty_info.i.i489 = getelementptr inbounds %struct.f2fs_sm_info, ptr %576, i32 0, i32 2
  %577 = ptrtoint ptr %dirty_info.i.i489 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %dirty_info.i.i489, align 4
  %arrayidx.i490 = getelementptr %struct.dirty_seglist_info, ptr %578, i32 0, i32 4, i32 7
  %579 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %arrayidx.i490, align 4
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %576, i32 0, i32 1
  %581 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %free_info.i.i, align 4
  %free_segments.i = getelementptr inbounds %struct.free_segmap_info, ptr %582, i32 0, i32 1
  %583 = ptrtoint ptr %free_segments.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %free_segments.i, align 4
  call fastcc void @trace_f2fs_get_victim(ptr noundef %572, i32 noundef %type, i32 noundef %gc_type, ptr noundef nonnull %p, i32 noundef %574, i32 noundef %580, i32 noundef %584)
  br label %if.end246

if.end246:                                        ; preds = %if.then242, %out.if.end246_crit_edge, %if.end207.if.end246_crit_edge
  %ret.1534 = phi i32 [ %ret.1538, %if.then242 ], [ %ret.1.ph, %out.if.end246_crit_edge ], [ -61, %if.end207.if.end246_crit_edge ]
  call void @mutex_unlock(ptr noundef %seglist_lock) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %p) #16
  ret i32 %ret.1534
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ckpt_valid_blocks(ptr nocapture noundef readonly %sbi, i32 noundef %segno) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %segs_per_sec = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %2 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_info.i.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sentries.i = getelementptr inbounds %struct.sit_info, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %sentries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sentries.i, align 4
  br i1 %cmp, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %entry
  %8 = urem i32 %segno, 55
  %mul = sub i32 %segno, %8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %blocks.06 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %start_segno.05 = phi i32 [ %inc3, %for.body.for.body_crit_edge ], [ %mul, %for.body.preheader ]
  %arrayidx.i = getelementptr %struct.seg_entry, ptr %7, i32 %start_segno.05
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %arrayidx.i, align 8
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1023
  %add = add i32 %bf.clear, %blocks.06
  %inc = add nuw i32 %i.07, 1
  %inc3 = add i32 %start_segno.05, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.return_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i3 = getelementptr %struct.seg_entry, ptr %7, i32 %segno
  %10 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load5 = load i32, ptr %arrayidx.i3, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 6
  %bf.clear7 = and i32 %bf.lshr6, 1023
  br label %return

return:                                           ; preds = %if.end, %for.body.return_crit_edge
  %retval.0 = phi i32 [ %bf.clear7, %if.end ], [ %add, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_segment_has_free_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_get_victim(ptr noundef %sb, i32 noundef %type, i32 noundef %gc_type, ptr noundef %p, i32 noundef %pre_victim, i32 noundef %prefree, i32 noundef %free) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_get_victim, i32 0, i32 1), ptr blockaddress(@trace_f2fs_get_victim, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !126

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !171
  %call42 = tail call i32 @__traceiter_f2fs_get_victim(ptr noundef null, ptr noundef %sb, i32 noundef %type, i32 noundef %gc_type, ptr noundef %p, i32 noundef %pre_victim, i32 noundef %prefree, i32 noundef %free) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !115

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_get_victim, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_get_victim, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_get_victim.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_f2fs_get_victim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 810, ptr noundef nonnull @.str.18) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_lookup_rb_tree_ext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_check_rb_tree_consistence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_get_victim(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_allocate_segment_for_resize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !94, !96, !97, !99, !101, !102}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @f2fs_start_gc_thread.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/f2fs/gc.c", i32 180, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @f2fs_start_gc_thread.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/f2fs/gc.c", i32 181, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/gc.c", i32 182, i32 33}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/f2fs/gc.c", i32 1707, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/f2fs/gc.c", i32 1821, i32 45}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/f2fs/gc.c", i32 2021, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/gc.c", i32 2026, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/f2fs/gc.c", i32 2100, i32 3}
!18 = !{ptr @victim_entry_slab, !19, !"victim_entry_slab", i1 false, i1 false}
!19 = !{!"../fs/f2fs/gc.c", i32 26, i32 27}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!22 = !{ptr @f2fs_kmalloc._rs, !21, !"_rs", i1 false, i1 false}
!23 = !{ptr @__func__.f2fs_kmalloc, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @f2fs_kmalloc._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @f2fs_kmalloc._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/f2fs/gc.c", i32 45, i32 3}
!31 = !{ptr @gc_thread_func._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../fs/f2fs/gc.c", i32 72, i32 4}
!33 = !{ptr @__func__.gc_thread_func, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gc_thread_func._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gc_thread_func._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/f2fs.h", i32 625, i32 1}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/trace/events/f2fs.h", i32 653, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/f2fs/gc.c", i32 1649, i32 4}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/mm.h", i32 717, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/f2fs/gc.c", i32 1036, i32 3}
!65 = !{ptr @__func__.is_alive, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/f2fs/gc.c", i32 1055, i32 5}
!68 = !{ptr @f2fs_grab_cache_page._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../fs/f2fs/f2fs.h", i32 2571, i32 4}
!70 = !{ptr @__func__.f2fs_grab_cache_page, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @f2fs_grab_cache_page._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @f2fs_grab_cache_page._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @f2fs_pagecache_get_page._rs, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../fs/f2fs/f2fs.h", i32 2587, i32 3}
!75 = !{ptr @__func__.f2fs_pagecache_get_page, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @f2fs_pagecache_get_page._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @f2fs_pagecache_get_page._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!80 = !{ptr @__func__.f2fs_kmem_cache_alloc, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @f2fs_kmem_cache_alloc._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/sched/mm.h", i32 230, i32 2}
!93 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/trace/events/f2fs.h", i32 705, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = !{ptr @default_v_ops, !98, !"default_v_ops", i1 false, i1 false}
!98 = !{!"../fs/f2fs/gc.c", i32 847, i32 38}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/trace/events/f2fs.h", i32 760, i32 1}
!101 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/f2fs/gc.c", i32 1921, i32 3}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148703669, i64 2148703695, i64 2148703724, i64 2148703758, i64 2148703789, i64 2148703812}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i64 2152396023}
!118 = !{i64 1108349, i64 1108410}
!119 = !{i64 1111081}
!120 = !{i64 1111366}
!121 = !{i64 2152404873}
!122 = !{i8 0, i8 2}
!123 = !{i64 2152405615}
!124 = !{i64 2152415110}
!125 = !{i64 2152424587}
!126 = !{i64 2148528267, i64 2148528272, i64 2148528285, i64 2148528329, i64 2148528363, i64 2148528384}
!127 = !{i64 2156117299}
!128 = !{i64 2156117704}
!129 = !{i64 2149524674}
!130 = !{i64 2149525710}
!131 = !{i64 2155534646, i64 2155535127, i64 2155534683, i64 2155534739, i64 2155534773, i64 2155534797, i64 2155534838, i64 2155534859, i64 2155534887, i64 2155534921}
!132 = !{i64 2153426610, i64 2153427093, i64 2153426647, i64 2153426703, i64 2153426737, i64 2153426761, i64 2153426802, i64 2153426823, i64 2153426851, i64 2153426885}
!133 = !{i64 2148792145}
!134 = !{i64 2148706854, i64 2148706886, i64 2148706915, i64 2148706949, i64 2148706980, i64 2148707003}
!135 = !{i64 2148792374}
!136 = !{i64 2150612414, i64 2150612905, i64 2150612451, i64 2150612507, i64 2150612541, i64 2150612565, i64 2150612606, i64 2150612627, i64 2150612655, i64 2150612689}
!137 = !{i64 2151362306}
!138 = !{i64 2148706134, i64 2148706160, i64 2148706189, i64 2148706223, i64 2148706254, i64 2148706277}
!139 = !{i64 2154949518}
!140 = !{!"auto-init"}
!141 = !{i64 2151371290, i64 2151371463, i64 2151371478, i64 2151371530, i64 2151371589, i64 2151371613, i64 2151371654, i64 2151371675, i64 2151371703, i64 2151371735}
!142 = !{i64 2151372165, i64 2151372338, i64 2151372353, i64 2151372405, i64 2151372464, i64 2151372488, i64 2151372529, i64 2151372550, i64 2151372578, i64 2151372610}
!143 = !{i64 2148712527, i64 2148712559, i64 2148712588, i64 2148712622, i64 2148712653, i64 2148712676}
!144 = !{i64 2148801632}
!145 = !{i64 2150682806, i64 2150682979, i64 2150682994, i64 2150683046, i64 2150683105, i64 2150683129, i64 2150683170, i64 2150683191, i64 2150683219, i64 2150683251}
!146 = !{i64 2150683681, i64 2150683854, i64 2150683869, i64 2150683921, i64 2150683980, i64 2150684004, i64 2150684045, i64 2150684066, i64 2150684094, i64 2150684126}
!147 = !{i64 2151128268, i64 2151128759, i64 2151128305, i64 2151128361, i64 2151128395, i64 2151128419, i64 2151128460, i64 2151128481, i64 2151128509, i64 2151128543}
!148 = !{i64 2150722323, i64 2150722814, i64 2150722360, i64 2150722416, i64 2150722450, i64 2150722474, i64 2150722515, i64 2150722536, i64 2150722564, i64 2150722598}
!149 = !{i64 2156142336}
!150 = !{i64 2156142755}
!151 = !{i64 2148553454, i64 2148553734, i64 2148554068, i64 2148554402}
!152 = !{i64 2157106567, i64 2157107045, i64 2157106604, i64 2157106660, i64 2157106694, i64 2157106718, i64 2157106759, i64 2157106780, i64 2157106808, i64 2157106842}
!153 = !{i64 2156097134}
!154 = !{i64 2156097385}
!155 = !{i64 2150619847, i64 2150620338, i64 2150619884, i64 2150619940, i64 2150619974, i64 2150619998, i64 2150620039, i64 2150620060, i64 2150620088, i64 2150620122}
!156 = !{i64 2155018480, i64 2155018960, i64 2155018517, i64 2155018573, i64 2155018607, i64 2155018631, i64 2155018672, i64 2155018693, i64 2155018721, i64 2155018755}
!157 = !{i64 2151071120, i64 2151071611, i64 2151071157, i64 2151071213, i64 2151071247, i64 2151071271, i64 2151071312, i64 2151071333, i64 2151071361, i64 2151071395}
!158 = !{i64 2153446522, i64 2153447006, i64 2153446559, i64 2153446615, i64 2153446649, i64 2153446673, i64 2153446714, i64 2153446735, i64 2153446763, i64 2153446797}
!159 = !{i64 2151076371, i64 2151076544, i64 2151076559, i64 2151076611, i64 2151076670, i64 2151076694, i64 2151076735, i64 2151076756, i64 2151076784, i64 2151076816}
!160 = !{i64 2151080950, i64 2151081123, i64 2151081138, i64 2151081190, i64 2151081249, i64 2151081273, i64 2151081314, i64 2151081335, i64 2151081363, i64 2151081395}
!161 = !{i64 2157052999, i64 2157053476, i64 2157053036, i64 2157053092, i64 2157053126, i64 2157053150, i64 2157053191, i64 2157053212, i64 2157053240, i64 2157053274}
!162 = !{i64 2157074278, i64 2157074755, i64 2157074315, i64 2157074371, i64 2157074405, i64 2157074429, i64 2157074470, i64 2157074491, i64 2157074519, i64 2157074553}
!163 = !{i64 1067910, i64 1067937, i64 1067959, i64 1067987}
!164 = !{i64 1068318, i64 1068345, i64 1068378, i64 1068399, i64 1068426, i64 1068452}
!165 = !{i64 2157060774, i64 2157061251, i64 2157060811, i64 2157060867, i64 2157060901, i64 2157060925, i64 2157060966, i64 2157060987, i64 2157061015, i64 2157061049}
!166 = !{i64 2157062382, i64 2157062859, i64 2157062419, i64 2157062475, i64 2157062509, i64 2157062533, i64 2157062574, i64 2157062595, i64 2157062623, i64 2157062657}
!167 = !{i64 2157067478, i64 2157067955, i64 2157067515, i64 2157067571, i64 2157067605, i64 2157067629, i64 2157067670, i64 2157067691, i64 2157067719, i64 2157067753}
!168 = !{i64 2157079896, i64 2157080373, i64 2157079933, i64 2157079989, i64 2157080023, i64 2157080047, i64 2157080088, i64 2157080109, i64 2157080137, i64 2157080171}
!169 = !{i64 2157086306, i64 2157086783, i64 2157086343, i64 2157086399, i64 2157086433, i64 2157086457, i64 2157086498, i64 2157086519, i64 2157086547, i64 2157086581}
!170 = !{i64 2157087947, i64 2157088424, i64 2157087984, i64 2157088040, i64 2157088074, i64 2157088098, i64 2157088139, i64 2157088160, i64 2157088188, i64 2157088222}
!171 = !{i64 2156161616}
!172 = !{i64 2156161903}
