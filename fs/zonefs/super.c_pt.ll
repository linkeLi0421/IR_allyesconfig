; ModuleID = '/llk/IR_all_yes/fs/zonefs/super.c_pt.bc'
source_filename = "../fs/zonefs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.102 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.104, %struct.trace_event, ptr, ptr, %union.anon.105, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.104 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_writeback_ops = type { ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_raw_zonefs_zone_mgmt = type { %struct.trace_entry, i32, i32, i32, i64, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.zonefs_inode_info = type { %struct.inode, i32, i64, i64, i64, i64, %struct.mutex, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_zonefs_file_dio_append = type { %struct.trace_entry, i32, i32, i64, i32, i64, i32, [0 x i8] }
%struct.trace_event_raw_zonefs_iomap_begin = type { %struct.trace_entry, i32, i32, i64, i64, i64, [0 x i8] }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.47, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.47 = type { ptr }
%struct.zonefs_zone_data = type { ptr, [2 x i32], ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.zonefs_sb_info = type { i32, %struct.spinlock, i64, %struct.kuid_t, %struct.kgid_t, i16, %struct.uuid_t, i32, [2 x i32], i64, i64, i32, %struct.atomic_t }
%struct.zonefs_super = type { i32, i32, [64 x i8], [16 x i8], i64, i32, i32, i32, [3988 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.substring_t = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.16, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.zonefs_ioerr_data = type { ptr, i8 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.iomap_writepage_ctx = type { %struct.iomap, ptr, ptr }

@__tpstrtab_zonefs_zone_mgmt = internal constant [17 x i8] c"zonefs_zone_mgmt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_zonefs_zone_mgmt = dso_local global %struct.static_call_key { ptr @__traceiter_zonefs_zone_mgmt }, align 4
@__tracepoint_zonefs_zone_mgmt = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_zonefs_zone_mgmt, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_zonefs_zone_mgmt, ptr null, ptr @__traceiter_zonefs_zone_mgmt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_zonefs_zone_mgmt = internal constant ptr @__tracepoint_zonefs_zone_mgmt, section "__tracepoints_ptrs", align 4
@__tpstrtab_zonefs_file_dio_append = internal constant [23 x i8] c"zonefs_file_dio_append\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_zonefs_file_dio_append = dso_local global %struct.static_call_key { ptr @__traceiter_zonefs_file_dio_append }, align 4
@__tracepoint_zonefs_file_dio_append = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_zonefs_file_dio_append, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_zonefs_file_dio_append, ptr null, ptr @__traceiter_zonefs_file_dio_append, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_zonefs_file_dio_append = internal constant ptr @__tracepoint_zonefs_file_dio_append, section "__tracepoints_ptrs", align 4
@__tpstrtab_zonefs_iomap_begin = internal constant [19 x i8] c"zonefs_iomap_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_zonefs_iomap_begin = dso_local global %struct.static_call_key { ptr @__traceiter_zonefs_iomap_begin }, align 4
@__tracepoint_zonefs_iomap_begin = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_zonefs_iomap_begin, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_zonefs_iomap_begin, ptr null, ptr @__traceiter_zonefs_iomap_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_zonefs_iomap_begin = internal constant ptr @__tracepoint_zonefs_iomap_begin, section "__tracepoints_ptrs", align 4
@str__zonefs__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zonefs\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_zonefs_zone_mgmt = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.102 { %struct.anon.103 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.102 { %struct.anon.103 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.102 { %struct.anon.103 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.102 { %struct.anon.103 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.102 { %struct.anon.103 { ptr @.str.8, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_zonefs_zone_mgmt = internal global %struct.trace_event_class { ptr @str__zonefs__trace_system_name, ptr @trace_event_raw_event_zonefs_zone_mgmt, ptr @perf_trace_zonefs_zone_mgmt, ptr @trace_event_reg, ptr @trace_event_fields_zonefs_zone_mgmt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_zonefs_zone_mgmt, i64 24), ptr getelementptr (i8, ptr @event_class_zonefs_zone_mgmt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_zonefs_zone_mgmt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_zonefs_zone_mgmt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_zonefs_zone_mgmt = internal global { [223 x i8], [33 x i8] } { [223 x i8] c"\22bdev=(%d,%d), ino=%lu op=%s, sector=%llu, nr_sectors=%llu\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), (unsigned long)REC->ino, blk_op_str(REC->op), REC->sector, REC->nr_sectors\00", [33 x i8] zeroinitializer }, align 32
@event_zonefs_zone_mgmt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_zonefs_zone_mgmt, %union.anon.104 { ptr @__tracepoint_zonefs_zone_mgmt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_zonefs_zone_mgmt }, ptr @print_fmt_zonefs_zone_mgmt, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_zonefs_zone_mgmt = internal global ptr @event_zonefs_zone_mgmt, section "_ftrace_events", align 4
@trace_event_fields_zonefs_file_dio_append = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.102 { %struct.anon.103 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.102 { %struct.anon.103 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.102 { %struct.anon.103 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.102 { %struct.anon.103 { ptr @.str.11, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.102 { %struct.anon.103 { ptr @.str.13, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.102 { %struct.anon.103 { ptr @.str.14, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_zonefs_file_dio_append = internal global %struct.trace_event_class { ptr @str__zonefs__trace_system_name, ptr @trace_event_raw_event_zonefs_file_dio_append, ptr @perf_trace_zonefs_file_dio_append, ptr @trace_event_reg, ptr @trace_event_fields_zonefs_file_dio_append, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_zonefs_file_dio_append, i64 24), ptr getelementptr (i8, ptr @event_class_zonefs_file_dio_append, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_zonefs_file_dio_append = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_zonefs_file_dio_append, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_zonefs_file_dio_append = internal global { [233 x i8], [55 x i8] } { [233 x i8] c"\22bdev=(%d, %d), ino=%lu, sector=%llu, size=%zu, wpoffset=%llu, ret=%zu\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), (unsigned long)REC->ino, REC->sector, REC->size, REC->wpoffset, REC->ret\00", [55 x i8] zeroinitializer }, align 32
@event_zonefs_file_dio_append = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_zonefs_file_dio_append, %union.anon.104 { ptr @__tracepoint_zonefs_file_dio_append }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_zonefs_file_dio_append }, ptr @print_fmt_zonefs_file_dio_append, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_zonefs_file_dio_append = internal global ptr @event_zonefs_file_dio_append, section "_ftrace_events", align 4
@trace_event_fields_zonefs_iomap_begin = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.102 { %struct.anon.103 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.102 { %struct.anon.103 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.102 { %struct.anon.103 { ptr @.str.17, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.102 { %struct.anon.103 { ptr @.str.18, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.102 { %struct.anon.103 { ptr @.str.19, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_zonefs_iomap_begin = internal global %struct.trace_event_class { ptr @str__zonefs__trace_system_name, ptr @trace_event_raw_event_zonefs_iomap_begin, ptr @perf_trace_zonefs_iomap_begin, ptr @trace_event_reg, ptr @trace_event_fields_zonefs_iomap_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_zonefs_iomap_begin, i64 24), ptr getelementptr (i8, ptr @event_class_zonefs_iomap_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_zonefs_iomap_begin = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_zonefs_iomap_begin, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_zonefs_iomap_begin = internal global { [210 x i8], [46 x i8] } { [210 x i8] c"\22bdev=(%d,%d), ino=%lu, addr=%llu, offset=%llu, length=%llu\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), (unsigned long)REC->ino, REC->addr, REC->offset, REC->length\00", [46 x i8] zeroinitializer }, align 32
@event_zonefs_iomap_begin = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_zonefs_iomap_begin, %union.anon.104 { ptr @__tracepoint_zonefs_iomap_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_zonefs_iomap_begin }, ptr @print_fmt_zonefs_iomap_begin, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_zonefs_iomap_begin = internal global ptr @event_zonefs_iomap_begin, section "_ftrace_events", align 4
@__bpf_trace_tp_map_zonefs_zone_mgmt = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_zonefs_zone_mgmt, ptr @__bpf_trace_zonefs_zone_mgmt, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_zonefs_file_dio_append = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_zonefs_file_dio_append, ptr @__bpf_trace_zonefs_file_dio_append, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_zonefs_iomap_begin = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_zonefs_iomap_begin, ptr @__bpf_trace_zonefs_iomap_begin, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@zonefs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.21, i32 1, ptr null, ptr null, ptr @zonefs_mount, ptr @zonefs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author334 = internal constant [29 x i8] c"zonefs.author=Damien Le Moal\00", section ".modinfo", align 1
@__UNIQUE_ID_description335 = internal constant [60 x i8] c"zonefs.description=Zone file system for zoned block devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [29 x i8] c"zonefs.file=fs/zonefs/zonefs\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [19 x i8] c"zonefs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias338 = internal constant [23 x i8] c"zonefs.alias=fs-zonefs\00", section ".modinfo", align 1
@__initcall__kmod_zonefs__339_1791_zonefs_init6 = internal global ptr @zonefs_init, section ".initcall6.init", align 4
@__exitcall_zonefs_exit = internal global ptr @zonefs_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev_t\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ino_t\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ino\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sector_t\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sector\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_sectors\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bdev=(%d,%d), ino=%lu op=%s, sector=%llu, nr_sectors=%llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssize_t\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wpoffset\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"bdev=(%d, %d), ino=%lu, sector=%llu, size=%zu, wpoffset=%llu, ret=%zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"bdev=(%d,%d), ino=%lu, addr=%llu, offset=%llu, length=%llu\0A\00", [36 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@zonefs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zonefs\00", [25 x i8] zeroinitializer }, align 32
@zonefs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013zonefs (%s) ERROR: Not a zoned block device\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zonefs_fill_super\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/zonefs/super.c\00", [46 x i8] zeroinitializer }, align 32
@zonefs_fill_super._entry_ptr = internal global ptr @zonefs_fill_super._entry, section ".printk_index", align 4
@zonefs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sbi->s_lock\00", [19 x i8] zeroinitializer }, align 32
@zonefs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @zonefs_alloc_inode, ptr null, ptr @zonefs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zonefs_statfs, ptr @zonefs_remount, ptr null, ptr @zonefs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@zonefs_fill_super._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.24, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016zonefs (%s): No open zones limit. Ignoring explicit_open mount option\0A\00", [55 x i8] zeroinitializer }, align 32
@zonefs_fill_super._entry_ptr.28 = internal global ptr @zonefs_fill_super._entry.26, section ".printk_index", align 4
@zonefs_fill_super._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.24, i32 1682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016zonefs (%s): Mounting %u zones\00", [63 x i8] zeroinitializer }, align 32
@zonefs_fill_super._entry_ptr.31 = internal global ptr @zonefs_fill_super._entry.29, section ".printk_index", align 4
@zonefs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zonefs_inode_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zonefs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&zi->i_truncate_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",errors=remount-ro\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",errors=zone-ro\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",errors=zone-offline\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",errors=repair\00", [17 x i8] zeroinitializer }, align 32
@zonefs_read_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.24, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013zonefs (%s) ERROR: Invalid checksum (Expected 0x%08x, got 0x%08x)\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zonefs_read_super\00", [46 x i8] zeroinitializer }, align 32
@zonefs_read_super._entry_ptr = internal global ptr @zonefs_read_super._entry, section ".printk_index", align 4
@zonefs_read_super._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.24, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013zonefs (%s) ERROR: Unknown features set 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@zonefs_read_super._entry_ptr.41 = internal global ptr @zonefs_read_super._entry.39, section ".printk_index", align 4
@zonefs_read_super._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.24, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013zonefs (%s) ERROR: Invalid UID feature\0A\00", [54 x i8] zeroinitializer }, align 32
@zonefs_read_super._entry_ptr.44 = internal global ptr @zonefs_read_super._entry.42, section ".printk_index", align 4
@zonefs_read_super._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.38, ptr @.str.24, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013zonefs (%s) ERROR: Invalid GID feature\0A\00", [54 x i8] zeroinitializer }, align 32
@zonefs_read_super._entry_ptr.48 = internal global ptr @zonefs_read_super._entry.46, section ".printk_index", align 4
@zonefs_read_super._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.38, ptr @.str.24, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013zonefs (%s) ERROR: Reserved area is being used\0A\00", [46 x i8] zeroinitializer }, align 32
@zonefs_read_super._entry_ptr.51 = internal global ptr @zonefs_read_super._entry.49, section ".printk_index", align 4
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [6 x %struct.match_token], [48 x i8] } { [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.55 }, %struct.match_token { i32 1, ptr @.str.56 }, %struct.match_token { i32 2, ptr @.str.57 }, %struct.match_token { i32 3, ptr @.str.58 }, %struct.match_token { i32 4, ptr @.str.59 }, %struct.match_token { i32 5, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"errors=remount-ro\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"errors=zone-ro\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"errors=zone-offline\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"errors=repair\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"explicit-open\00", [18 x i8] zeroinitializer }, align 32
@zonefs_get_zone_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.24, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013zonefs (%s) ERROR: Zone report failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zonefs_get_zone_info\00", [43 x i8] zeroinitializer }, align 32
@zonefs_get_zone_info._entry_ptr = internal global ptr @zonefs_get_zone_info._entry, section ".printk_index", align 4
@zonefs_get_zone_info._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.24, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013zonefs (%s) ERROR: Invalid zone report (%d/%u zones)\0A\00", [40 x i8] zeroinitializer }, align 32
@zonefs_get_zone_info._entry_ptr.64 = internal global ptr @zonefs_get_zone_info._entry.62, section ".printk_index", align 4
@zonefs_get_zone_info_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.24, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013zonefs (%s) ERROR: Unsupported zone type 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zonefs_get_zone_info_cb\00", [40 x i8] zeroinitializer }, align 32
@zonefs_get_zone_info_cb._entry_ptr = internal global ptr @zonefs_get_zone_info_cb._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@zonefs_zone_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.24, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013zonefs (%s) ERROR: Zone management operation %s at %llu failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zonefs_zone_mgmt\00", [47 x i8] zeroinitializer }, align 32
@zonefs_zone_mgmt._entry_ptr = internal global ptr @zonefs_zone_mgmt._entry, section ".printk_index", align 4
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/zonefs/trace.h\00", [46 x i8] zeroinitializer }, align 32
@trace_zonefs_zone_mgmt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cnv\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"seq\00", [28 x i8] zeroinitializer }, align 32
@zonefs_create_zgroup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.24, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013zonefs (%s) ERROR: Invalid conventional zone capacity\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zonefs_create_zgroup\00", [43 x i8] zeroinitializer }, align 32
@zonefs_create_zgroup._entry_ptr = internal global ptr @zonefs_create_zgroup._entry, section ".printk_index", align 4
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@zonefs_create_zgroup._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.24, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016zonefs (%s): Zone group \22%s\22 has %u file%s\0A\00", [50 x i8] zeroinitializer }, align 32
@zonefs_create_zgroup._entry_ptr.79 = internal global ptr @zonefs_create_zgroup._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@zonefs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zonefs_inode_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@zonefs_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @zonefs_file_llseek, ptr null, ptr null, ptr @zonefs_file_read_iter, ptr @zonefs_file_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zonefs_file_mmap, i32 0, ptr @zonefs_file_open, ptr null, ptr @zonefs_file_release, ptr @zonefs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@zonefs_file_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @zonefs_writepage, ptr @zonefs_readpage, ptr @zonefs_writepages, ptr @__set_page_dirty_nobuffers, ptr null, ptr @zonefs_readahead, ptr null, ptr null, ptr null, ptr @iomap_invalidatepage, ptr @iomap_releasepage, ptr null, ptr @noop_direct_IO, ptr @iomap_migrate_page, ptr null, ptr null, ptr null, ptr @iomap_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr @zonefs_swap_activate, ptr null }, [40 x i8] zeroinitializer }, align 32
@zonefs_check_zone_condition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.24, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014zonefs (%s) WARNING: inode %lu: offline zone\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zonefs_check_zone_condition\00", [36 x i8] zeroinitializer }, align 32
@zonefs_check_zone_condition._entry_ptr = internal global ptr @zonefs_check_zone_condition._entry, section ".printk_index", align 4
@zonefs_check_zone_condition._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.24, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014zonefs (%s) WARNING: inode %lu: read-only zone\0A\00", [46 x i8] zeroinitializer }, align 32
@zonefs_check_zone_condition._entry_ptr.86 = internal global ptr @zonefs_check_zone_condition._entry.84, section ".printk_index", align 4
@zonefs_iomap_ops = internal constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @zonefs_iomap_begin, ptr null }, [24 x i8] zeroinitializer }, align 32
@zonefs_read_dio_ops = internal constant { %struct.iomap_dio_ops, [24 x i8] } { %struct.iomap_dio_ops { ptr @zonefs_file_read_dio_end_io, ptr null }, [24 x i8] zeroinitializer }, align 32
@zonefs_iomap_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@zonefs_iomap_begin.__already_done.87 = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_zonefs_iomap_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__zonefs_io_error._entry = internal constant %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.24, i32 427, ptr null, ptr null }, align 1
@.str.88 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013zonefs (%s) ERROR: Get inode %lu zone information failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__zonefs_io_error\00", [46 x i8] zeroinitializer }, align 32
@__zonefs_io_error._entry_ptr = internal global ptr @__zonefs_io_error._entry, section ".printk_index", align 4
@zonefs_io_error_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.24, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014zonefs (%s) WARNING: inode %lu: invalid size %lld (should be %lld)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zonefs_io_error_cb\00", [45 x i8] zeroinitializer }, align 32
@zonefs_io_error_cb._entry_ptr = internal global ptr @zonefs_io_error_cb._entry, section ".printk_index", align 4
@zonefs_io_error_cb._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.24, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014zonefs (%s) WARNING: inode %lu: read/write access disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@zonefs_io_error_cb._entry_ptr.94 = internal global ptr @zonefs_io_error_cb._entry.92, section ".printk_index", align 4
@zonefs_io_error_cb._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.24, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014zonefs (%s) WARNING: inode %lu: write access disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@zonefs_io_error_cb._entry_ptr.97 = internal global ptr @zonefs_io_error_cb._entry.95, section ".printk_index", align 4
@zonefs_io_error_cb._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.24, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014zonefs (%s) WARNING: remounting filesystem read-only\0A\00", [40 x i8] zeroinitializer }, align 32
@zonefs_io_error_cb._entry_ptr.100 = internal global ptr @zonefs_io_error_cb._entry.98, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@zonefs_write_dio_ops = internal constant { %struct.iomap_dio_ops, [24 x i8] } { %struct.iomap_dio_ops { ptr @zonefs_file_write_dio_end_io, ptr null }, [24 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@trace_zonefs_file_dio_append.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@zonefs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @zonefs_filemap_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zonefs_filemap_page_mkwrite.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@zonefs_close_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.24, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014zonefs (%s) WARNING: closing zone failed, remounting filesystem read-only\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zonefs_close_zone\00", [46 x i8] zeroinitializer }, align 32
@zonefs_close_zone._entry_ptr = internal global ptr @zonefs_close_zone._entry, section ".printk_index", align 4
@zonefs_writeback_ops = internal constant { %struct.iomap_writeback_ops, [20 x i8] } { %struct.iomap_writeback_ops { ptr @zonefs_map_blocks, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@zonefs_map_blocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@zonefs_map_blocks.__already_done.107 = internal unnamed_addr global i1 false, section ".data.once", align 1
@zonefs_swap_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.24, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013zonefs (%s) ERROR: swap file: not a conventional zone file\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zonefs_swap_activate\00", [43 x i8] zeroinitializer }, align 32
@zonefs_swap_activate._entry_ptr = internal global ptr @zonefs_swap_activate._entry, section ".printk_index", align 4
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zonefs_inode_cache\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 15]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 8, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 15]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 15]
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"str__zonefs__trace_system_name\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 36, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [36 x i8] c"trace_event_fields_zonefs_zone_mgmt\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_zonefs_zone_mgmt\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"print_fmt_zonefs_zone_mgmt\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [23 x i8] c"event_zonefs_zone_mgmt\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [42 x i8] c"trace_event_fields_zonefs_file_dio_append\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_zonefs_file_dio_append\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [33 x i8] c"print_fmt_zonefs_file_dio_append\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [29 x i8] c"event_zonefs_file_dio_append\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [38 x i8] c"trace_event_fields_zonefs_iomap_begin\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_zonefs_iomap_begin\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [29 x i8] c"print_fmt_zonefs_iomap_begin\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"event_zonefs_iomap_begin\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"zonefs_type\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1733, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 47, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 73, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"zonefs_inode_cachep\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1134, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1735, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1627, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1641, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"zonefs_sops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1272, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1663, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1681, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1145, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1254, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1256, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1258, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1260, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1564, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1571, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1580, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1589, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1598, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 44, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1214, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1196, i32 28 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1197, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1198, i32 20 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1199, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1200, i32 23 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1201, i32 23 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1509, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1514, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1485, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 42, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [23 x i8] c"../fs/zonefs/./trace.h\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 22, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 108, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1392, i32 17 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1394, i32 17 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1434, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1443, i32 44 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1452, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [23 x i8] c"zonefs_file_operations\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1121, i32 37 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"zonefs_file_aops\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 183, i32 46 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 248, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 264, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant [17 x i8] c"zonefs_iomap_ops\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 112, i32 31 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c"zonefs_read_dio_ops\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 944, i32 35 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 426, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 333, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 344, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 353, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 378, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.470, i32 271, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [21 x i8] c"zonefs_write_dio_ops\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 672, i32 35 }
@___asan_gen_.475 = private unnamed_addr constant [19 x i8] c"zonefs_file_vm_ops\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 606, i32 42 }
@___asan_gen_.479 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 49, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 34, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1096, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant [21 x i8] c"zonefs_writeback_ops\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 149, i32 41 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 175, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.509 = private constant [21 x i8] c"../fs/zonefs/super.c\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 1743, i32 42 }
@llvm.compiler.used = appending global [178 x ptr] [ptr @__UNIQUE_ID_alias338, ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__bpf_trace_tp_map_zonefs_file_dio_append, ptr @__bpf_trace_tp_map_zonefs_iomap_begin, ptr @__bpf_trace_tp_map_zonefs_zone_mgmt, ptr @__event_zonefs_file_dio_append, ptr @__event_zonefs_iomap_begin, ptr @__event_zonefs_zone_mgmt, ptr @__exitcall_zonefs_exit, ptr @__initcall__kmod_zonefs__339_1791_zonefs_init6, ptr @__tracepoint_ptr_zonefs_file_dio_append, ptr @__tracepoint_ptr_zonefs_iomap_begin, ptr @__tracepoint_ptr_zonefs_zone_mgmt, ptr @__tracepoint_zonefs_file_dio_append, ptr @__tracepoint_zonefs_iomap_begin, ptr @__tracepoint_zonefs_zone_mgmt, ptr @__zonefs_io_error._entry, ptr @__zonefs_io_error._entry_ptr, ptr @event_class_zonefs_file_dio_append, ptr @event_class_zonefs_iomap_begin, ptr @event_class_zonefs_zone_mgmt, ptr @event_zonefs_file_dio_append, ptr @event_zonefs_iomap_begin, ptr @event_zonefs_zone_mgmt, ptr @zonefs_check_zone_condition._entry, ptr @zonefs_check_zone_condition._entry.84, ptr @zonefs_check_zone_condition._entry_ptr, ptr @zonefs_check_zone_condition._entry_ptr.86, ptr @zonefs_close_zone._entry, ptr @zonefs_close_zone._entry_ptr, ptr @zonefs_create_zgroup._entry, ptr @zonefs_create_zgroup._entry.77, ptr @zonefs_create_zgroup._entry_ptr, ptr @zonefs_create_zgroup._entry_ptr.79, ptr @zonefs_exit, ptr @zonefs_fill_super._entry, ptr @zonefs_fill_super._entry.26, ptr @zonefs_fill_super._entry.29, ptr @zonefs_fill_super._entry_ptr, ptr @zonefs_fill_super._entry_ptr.28, ptr @zonefs_fill_super._entry_ptr.31, ptr @zonefs_get_zone_info._entry, ptr @zonefs_get_zone_info._entry.62, ptr @zonefs_get_zone_info._entry_ptr, ptr @zonefs_get_zone_info._entry_ptr.64, ptr @zonefs_get_zone_info_cb._entry, ptr @zonefs_get_zone_info_cb._entry_ptr, ptr @zonefs_io_error_cb._entry, ptr @zonefs_io_error_cb._entry.92, ptr @zonefs_io_error_cb._entry.95, ptr @zonefs_io_error_cb._entry.98, ptr @zonefs_io_error_cb._entry_ptr, ptr @zonefs_io_error_cb._entry_ptr.100, ptr @zonefs_io_error_cb._entry_ptr.94, ptr @zonefs_io_error_cb._entry_ptr.97, ptr @zonefs_read_super._entry, ptr @zonefs_read_super._entry.39, ptr @zonefs_read_super._entry.42, ptr @zonefs_read_super._entry.46, ptr @zonefs_read_super._entry.49, ptr @zonefs_read_super._entry_ptr, ptr @zonefs_read_super._entry_ptr.41, ptr @zonefs_read_super._entry_ptr.44, ptr @zonefs_read_super._entry_ptr.48, ptr @zonefs_read_super._entry_ptr.51, ptr @zonefs_swap_activate._entry, ptr @zonefs_swap_activate._entry_ptr, ptr @zonefs_zone_mgmt._entry, ptr @zonefs_zone_mgmt._entry_ptr, ptr @str__zonefs__trace_system_name, ptr @trace_event_fields_zonefs_zone_mgmt, ptr @trace_event_type_funcs_zonefs_zone_mgmt, ptr @print_fmt_zonefs_zone_mgmt, ptr @trace_event_fields_zonefs_file_dio_append, ptr @trace_event_type_funcs_zonefs_file_dio_append, ptr @print_fmt_zonefs_file_dio_append, ptr @trace_event_fields_zonefs_iomap_begin, ptr @trace_event_type_funcs_zonefs_iomap_begin, ptr @print_fmt_zonefs_iomap_begin, ptr @zonefs_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @zonefs_inode_cachep, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @zonefs_fill_super.__key, ptr @.str.25, ptr @zonefs_sops, ptr @.str.27, ptr @.str.30, ptr @zonefs_alloc_inode.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @tokens, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @zonefs_file_operations, ptr @zonefs_file_aops, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @zonefs_iomap_ops, ptr @zonefs_read_dio_ops, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @zonefs_write_dio_ops, ptr @zonefs_file_vm_ops, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @zonefs_writeback_ops, ptr @.str.108, ptr @.str.109, ptr @.str.110], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__zonefs__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_zonefs_zone_mgmt to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_zonefs_zone_mgmt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_zonefs_zone_mgmt to i32), i32 223, i32 256, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_zonefs_zone_mgmt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_zonefs_file_dio_append to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_zonefs_file_dio_append to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_zonefs_file_dio_append to i32), i32 233, i32 288, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_zonefs_file_dio_append to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_zonefs_iomap_begin to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_zonefs_iomap_begin to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_zonefs_iomap_begin to i32), i32 210, i32 256, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_zonefs_iomap_begin to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_fill_super._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_fill_super._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_read_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_read_super._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_read_super._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_read_super._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_read_super._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_get_zone_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_get_zone_info._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_get_zone_info_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_zone_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_create_zgroup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_create_zgroup._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_file_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_check_zone_condition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_check_zone_condition._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_read_dio_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_io_error_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_io_error_cb._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_io_error_cb._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_io_error_cb._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_write_dio_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_close_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_writeback_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zonefs_swap_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_zonefs_zone_mgmt(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_zone_mgmt, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %op) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_zonefs_file_dio_append(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %size, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_file_dio_append, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %size, i32 noundef %ret) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_zonefs_iomap_begin(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_iomap_begin, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %iomap) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_zonefs_zone_mgmt(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %op) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !288

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !289

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ino, align 4
  %op6 = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %op6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %op, ptr %op6, align 8
  %i_zsector = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %12 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_zsector, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sector, align 8
  %i_zone_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 5
  %15 = ptrtoint ptr %i_zone_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_zone_size, align 8
  %shr = ashr i64 %16, 9
  %nr_sectors = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shr, ptr %nr_sectors, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_zonefs_zone_mgmt(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %op) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !290
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !290
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !278) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ino, align 4
  %op17 = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %op17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %op, ptr %op17, align 8
  %i_zsector = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %36 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_zsector, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %sector, align 8
  %i_zone_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 5
  %39 = ptrtoint ptr %i_zone_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_zone_size, align 8
  %shr = ashr i64 %40, 9
  %nr_sectors = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %shr, ptr %nr_sectors, align 8
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_zonefs_file_dio_append(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %size, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !288

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !289

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ino, align 4
  %i_zsector = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %11 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_zsector, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %sector, align 8
  %size7 = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %size7, align 8
  %i_wpoffset = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 3
  %15 = ptrtoint ptr %i_wpoffset to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_wpoffset, align 8
  %wpoffset = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %wpoffset to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %wpoffset, align 8
  %ret9 = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %ret9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ret, ptr %ret9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_zonefs_file_dio_append(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %size, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !290
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !290
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !278) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ino, align 4
  %i_zsector = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %35 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_zsector, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %sector, align 8
  %size18 = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %size, ptr %size18, align 8
  %i_wpoffset = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 3
  %39 = ptrtoint ptr %i_wpoffset to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_wpoffset, align 8
  %wpoffset = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %wpoffset to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %wpoffset, align 8
  %ret20 = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %ret20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %ret, ptr %ret20, align 8
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_zonefs_iomap_begin(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !288

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !289

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ino, align 4
  %11 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %iomap, align 8
  %addr6 = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %addr6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %addr6, align 8
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset, align 8
  %offset7 = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %offset7 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %offset7, align 8
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %length8 = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %length8 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %length8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_zonefs_iomap_begin(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !290
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !290
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !278) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ino, align 4
  %35 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %iomap, align 8
  %addr17 = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %addr17 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %addr17, align 8
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %offset, align 8
  %offset18 = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %offset18 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %offset18, align 8
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %length, align 8
  %length19 = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %length19 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %length19, align 8
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_zonefs_zone_mgmt(ptr noundef %__data, ptr noundef %inode, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %op to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_zonefs_file_dio_append(ptr noundef %__data, ptr noundef %inode, i32 noundef %size, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %size to i64
  %conv8 = zext i32 %ret to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_zonefs_iomap_begin(ptr noundef %__data, ptr noundef %inode, ptr noundef %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %iomap to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zonefs_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rcu_barrier() #14
  %0 = load ptr, ptr @zonefs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @zonefs_type) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.110, i32 noundef 928, i32 noundef 0, i32 noundef 68288512, ptr noundef null) #14
  store ptr %call.i, ptr @zonefs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @zonefs_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rcu_barrier() #14
  %0 = load ptr, ptr @zonefs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_zonefs_zone_mgmt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %op = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op, align 8
  %call2 = tail call ptr @blk_op_str(i32 noundef %7) #14
  %sector = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sector, align 8
  %nr_sectors = getelementptr inbounds %struct.trace_event_raw_zonefs_zone_mgmt, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nr_sectors, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %and, i32 noundef %5, ptr noundef %call2, i64 noundef %9, i64 noundef %11) #14
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_op_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_zonefs_file_dio_append(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %sector = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %wpoffset = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %wpoffset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wpoffset, align 8
  %ret2 = getelementptr inbounds %struct.trace_event_raw_zonefs_file_dio_append, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ret2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret2, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and, i32 noundef %5, i64 noundef %7, i32 noundef %9, i64 noundef %11, i32 noundef %13) #14
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_zonefs_iomap_begin(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_zonefs_iomap_begin, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and, i32 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #14
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zonefs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @zonefs_fill_super) #14
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zonefs_kill_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_genocide(ptr noundef nonnull %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kill_block_super(ptr noundef %sb) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %bio_vec.i = alloca %struct.bio_vec, align 4
  %bio.i = alloca %struct.bio, align 8
  %zd = alloca %struct.zonefs_zone_data, align 4
  %tmp63 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zd) #14
  %0 = getelementptr inbounds %struct.zonefs_zone_data, ptr %zd, i32 0, i32 2
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %1 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %bdev_is_zoned.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

bdev_is_zoned.exit:                               ; preds = %entry
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 27
  %5 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end, label %bdev_is_zoned.exit.do.end_crit_edge

bdev_is_zoned.exit.do.end_crit_edge:              ; preds = %bdev_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %bdev_is_zoned.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %s_id) #17
  br label %cleanup73

if.end:                                           ; preds = %bdev_is_zoned.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 120) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup73_crit_edge, label %do.body5

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

do.body5:                                         ; preds = %if.end
  %s_lock = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %s_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @zonefs_fill_super.__key, i16 noundef signext 3) #14
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %9 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1515144787, ptr %s_magic, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %10 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %s_maxbytes, align 8
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %11 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @zonefs_sops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %12 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %s_time_gran, align 4
  %13 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i128 = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %bd_queue.i.i128 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_queue.i.i128, align 4
  %zone_write_granularity.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 20
  %17 = ptrtoint ptr %zone_write_granularity.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zone_write_granularity.i.i, align 4
  %call11 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %18) #14
  %19 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i129 = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %bd_queue.i.i129 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_queue.i.i129, align 4
  %tobool.not.i130 = icmp eq ptr %22, null
  br i1 %tobool.not.i130, label %do.body5.bdev_zone_sectors.exit.thread_crit_edge, label %if.then.i131

do.body5.bdev_zone_sectors.exit.thread_crit_edge: ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdev_zone_sectors.exit.thread

if.then.i131:                                     ; preds = %do.body5
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 37, i32 27
  %23 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bdev_zone_sectors.exit, label %if.then.i131.bdev_zone_sectors.exit.thread_crit_edge

if.then.i131.bdev_zone_sectors.exit.thread_crit_edge: ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdev_zone_sectors.exit.thread

bdev_zone_sectors.exit:                           ; preds = %if.then.i131
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 37, i32 5
  %25 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #14, !range !291
  %sub.i.i.op.i = xor i32 %27, 31
  br i1 %tobool.not.i.i.i, label %bdev_zone_sectors.exit.bdev_zone_sectors.exit.thread_crit_edge, label %bdev_zone_sectors.exit._crit_edge

bdev_zone_sectors.exit._crit_edge:                ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %28

bdev_zone_sectors.exit.bdev_zone_sectors.exit.thread_crit_edge: ; preds = %bdev_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdev_zone_sectors.exit.thread

bdev_zone_sectors.exit.thread:                    ; preds = %bdev_zone_sectors.exit.bdev_zone_sectors.exit.thread_crit_edge, %if.then.i131.bdev_zone_sectors.exit.thread_crit_edge, %do.body5.bdev_zone_sectors.exit.thread_crit_edge
  br label %28

28:                                               ; preds = %bdev_zone_sectors.exit.thread, %bdev_zone_sectors.exit._crit_edge
  %29 = phi i32 [ -1, %bdev_zone_sectors.exit.thread ], [ %sub.i.i.op.i, %bdev_zone_sectors.exit._crit_edge ]
  %s_zone_sectors_shift = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %s_zone_sectors_shift to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %s_zone_sectors_shift, align 4
  %s_uid = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %s_uid, align 8
  %s_gid = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %s_gid, align 4
  %s_perm = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %s_perm to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 416, ptr %s_perm, align 8
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %bd_queue.i.i129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bd_queue.i.i129, align 4
  %tobool.not.i134 = icmp eq ptr %36, null
  br i1 %tobool.not.i134, label %.bdev_max_open_zones.exit_crit_edge, label %if.then.i135

.bdev_max_open_zones.exit_crit_edge:              ; preds = %28
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdev_max_open_zones.exit

if.then.i135:                                     ; preds = %28
  call void @__sanitizer_cov_trace_pc() #16
  %max_open_zones.i.i = getelementptr inbounds %struct.request_queue, ptr %36, i32 0, i32 42
  %37 = ptrtoint ptr %max_open_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_open_zones.i.i, align 8
  br label %bdev_max_open_zones.exit

bdev_max_open_zones.exit:                         ; preds = %if.then.i135, %.bdev_max_open_zones.exit_crit_edge
  %retval.0.i136 = phi i32 [ %38, %if.then.i135 ], [ 0, %.bdev_max_open_zones.exit_crit_edge ]
  %s_max_open_zones = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %s_max_open_zones to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i136, ptr %s_max_open_zones, align 8
  %s_open_zones = getelementptr inbounds %struct.zonefs_sb_info, ptr %call7.i.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_open_zones, i32 noundef 4) #14
  %40 = ptrtoint ptr %s_open_zones to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %s_open_zones, align 4
  %41 = ptrtoint ptr %s_max_open_zones to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_max_open_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool20.not = icmp eq i32 %42, 0
  br i1 %tobool20.not, label %land.lhs.true, label %bdev_max_open_zones.exit.if.end33_crit_edge

bdev_max_open_zones.exit.if.end33_crit_edge:      ; preds = %bdev_max_open_zones.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true:                                    ; preds = %bdev_max_open_zones.exit
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end33_crit_edge, label %do.end26

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

do.end26:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %s_id28 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %s_id28) #17
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call7.i.i, align 8
  %and32 = and i32 %46, -17
  store i32 %and32, ptr %call7.i.i, align 8
  br label %if.end33

if.end33:                                         ; preds = %do.end26, %land.lhs.true.if.end33_crit_edge, %bdev_max_open_zones.exit.if.end33_crit_edge
  %47 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bio_vec.i) #14
  %49 = ptrtoint ptr %bio_vec.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %bio_vec.i, align 4, !annotation !290
  %50 = getelementptr inbounds %struct.bio_vec, ptr %bio_vec.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !290
  %52 = getelementptr inbounds %struct.bio_vec, ptr %bio_vec.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4, !annotation !290
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio.i) #14
  %54 = call ptr @memset(ptr %bio.i, i32 255, i32 104)
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool.not.i137 = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i137, label %zonefs_read_super.exit.thread, label %if.end.i

zonefs_read_super.exit.thread:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bio_vec.i) #14
  br label %cleanup73

if.end.i:                                         ; preds = %if.end33
  call void @bio_init(ptr noundef nonnull %bio.i, ptr noundef nonnull %bio_vec.i, i16 noundef zeroext 1) #14
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio.i, i32 0, i32 8
  %55 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %bi_iter.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.i, i32 0, i32 2
  %56 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %bi_opf.i, align 8
  %57 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_bdev, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.i, i32 0, i32 3
  %59 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %60, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio.i, i32 0, i32 1
  %61 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %62, %58
  br i1 %cmp.not.i.i, label %if.end.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.end.i.bio_set_dev.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i = and i16 %60, -2177
  %63 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.end.i.bio_set_dev.exit.i_crit_edge
  %64 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio.i) #14
  %call2.i = call i32 @bio_add_page(ptr noundef nonnull %bio.i, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 4096, i32 noundef 0) #14
  %call3.i = call i32 @submit_bio_wait(ptr noundef nonnull %bio.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %zonefs_read_super.exit.thread163

zonefs_read_super.exit.thread163:                 ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bio_vec.i) #14
  br label %cleanup73

if.end6.i:                                        ; preds = %bio_set_dev.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.53, i32 noundef 44) #14
  %65 = ptrtoint ptr %call38.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call38.i.i.i.i, align 4
  %shr.i.i.i = lshr i32 %66, 30
  %67 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.end6.i.if.then.i145.i_crit_edge [
    i32 2, label %if.end6.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end6.i.if.else.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

if.end6.i.if.then.i145.i_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i145.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %68 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp2.i.not.i.i = icmp eq i32 %68, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i145.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i145.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i145.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

if.then.i145.i:                                   ; preds = %is_highmem_idx.exit.i.i.if.then.i145.i_crit_edge, %if.end6.i.if.then.i145.i_crit_edge
  %call5.i.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #14
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.end6.i.if.else.i.i_crit_edge
  %call6.i.i = call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i.i) #14
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i145.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i145.i ]
  %69 = ptrtoint ptr %addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %addr.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1397116762, i32 %70)
  %cmp.not.i = icmp eq i32 %70, 1397116762
  br i1 %cmp.not.i, label %if.end9.i, label %kmap.exit.i.unmap.i_crit_edge

kmap.exit.i.unmap.i_crit_edge:                    ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unmap.i

if.end9.i:                                        ; preds = %kmap.exit.i
  %s_crc.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %s_crc.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %s_crc.i, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #14
  %74 = ptrtoint ptr %s_crc.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 0, ptr %s_crc.i, align 1
  %call11.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.0.i.i, i32 noundef 4096) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %73)
  %cmp12.not.i = icmp eq i32 %call11.i, %73
  br i1 %cmp12.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %s_id.i, i32 noundef %call11.i, i32 noundef %73) #17
  br label %unmap.i

if.end15.i:                                       ; preds = %if.end9.i
  %s_features.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %s_features.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %s_features.i, align 1
  %77 = call i64 @llvm.bswap.i64(i64 %76) #14
  %s_features16.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %48, i32 0, i32 2
  %78 = ptrtoint ptr %s_features16.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %s_features16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %77)
  %tobool18.not.i = icmp ult i64 %77, 16
  br i1 %tobool18.not.i, label %if.end28.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id24.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %s_id24.i, i64 noundef %77) #17
  br label %unmap.i

if.end28.i:                                       ; preds = %if.end15.i
  %and30.i = and i64 %77, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30.i)
  %tobool31.not.i = icmp eq i64 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end54.i_crit_edge, label %if.then32.i

if.end28.i.if.end54.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then32.i:                                      ; preds = %if.end28.i
  %s_uid.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %48, i32 0, i32 3
  %79 = call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 99
  %83 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %84, i32 0, i32 25
  %85 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %user_ns.i, align 4
  %s_uid40.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %s_uid40.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %s_uid40.i, align 1
  %89 = call i32 @llvm.bswap.i32(i32 %88) #14
  %call41.i = call i32 @make_kuid(ptr noundef %86, i32 noundef %89) #14
  %90 = ptrtoint ptr %s_uid.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call41.i, ptr %s_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i.not.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i.not.i, label %do.end48.i, label %if.then32.i.if.end54.i_crit_edge

if.then32.i.if.end54.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

do.end48.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id50.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %s_id50.i) #17
  br label %unmap.i

if.end54.i:                                       ; preds = %if.then32.i.if.end54.i_crit_edge, %if.end28.i.if.end54.i_crit_edge
  %91 = ptrtoint ptr %s_features16.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %s_features16.i, align 8
  %and56.i = and i64 %92, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and56.i)
  %tobool57.not.i = icmp eq i64 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end54.i.if.end84.i_crit_edge, label %if.then58.i

if.end54.i.if.end84.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.i

if.then58.i:                                      ; preds = %if.end54.i
  %s_gid.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %48, i32 0, i32 4
  %93 = call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i146.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i146.i to ptr
  %task66.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task66.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task66.i, align 8
  %cred67.i = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 99
  %97 = ptrtoint ptr %cred67.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cred67.i, align 16
  %user_ns68.i = getelementptr inbounds %struct.cred, ptr %98, i32 0, i32 25
  %99 = ptrtoint ptr %user_ns68.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %user_ns68.i, align 4
  %s_gid69.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 6
  %101 = ptrtoint ptr %s_gid69.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %s_gid69.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #14
  %call70.i = call i32 @make_kgid(ptr noundef %100, i32 noundef %103) #14
  %104 = ptrtoint ptr %s_gid.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call70.i, ptr %s_gid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call70.i)
  %cmp.i147.not.i = icmp eq i32 %call70.i, -1
  br i1 %cmp.i147.not.i, label %do.end78.i, label %if.then58.i.if.end84.i_crit_edge

if.then58.i.if.end84.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.i

do.end78.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id80.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %s_id80.i) #17
  br label %unmap.i

if.end84.i:                                       ; preds = %if.then58.i.if.end84.i_crit_edge, %if.end54.i.if.end84.i_crit_edge
  %105 = ptrtoint ptr %s_features16.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %s_features16.i, align 8
  %and86.i = and i64 %106, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86.i)
  %tobool87.not.i = icmp eq i64 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end84.i.if.end90.i_crit_edge, label %if.then88.i

if.end84.i.if.end90.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

if.then88.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_perm.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 7
  %107 = ptrtoint ptr %s_perm.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %s_perm.i, align 1
  %109 = call i32 @llvm.bswap.i32(i32 %108) #14
  %conv.i = trunc i32 %109 to i16
  %s_perm89.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %48, i32 0, i32 5
  %110 = ptrtoint ptr %s_perm89.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i, ptr %s_perm89.i, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then88.i, %if.end84.i.if.end90.i_crit_edge
  %s_reserved.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 8
  %call92.i = call ptr @memchr_inv(ptr noundef %s_reserved.i, i32 noundef 0, i32 noundef 3988) #14
  %tobool93.not.i = icmp eq ptr %call92.i, null
  br i1 %tobool93.not.i, label %if.end102.i, label %do.end97.i

do.end97.i:                                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id99.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %s_id99.i) #17
  br label %unmap.i

if.end102.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_uuid.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %48, i32 0, i32 6
  %s_uuid103.i = getelementptr inbounds %struct.zonefs_super, ptr %addr.0.i.i, i32 0, i32 3
  %111 = call ptr @memcpy(ptr %s_uuid.i, ptr %s_uuid103.i, i32 16)
  br label %unmap.i

unmap.i:                                          ; preds = %if.end102.i, %do.end97.i, %do.end78.i, %do.end48.i, %do.end22.i, %do.end.i, %kmap.exit.i.unmap.i_crit_edge
  %tobool35.not = phi i1 [ true, %if.end102.i ], [ false, %do.end97.i ], [ false, %do.end78.i ], [ false, %do.end48.i ], [ false, %do.end22.i ], [ false, %do.end.i ], [ false, %kmap.exit.i.unmap.i_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.end102.i ], [ -22, %do.end97.i ], [ -22, %do.end78.i ], [ -22, %do.end48.i ], [ -22, %do.end22.i ], [ -22, %do.end.i ], [ -22, %kmap.exit.i.unmap.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.53, i32 noundef 55) #14
  %112 = ptrtoint ptr %call38.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %call38.i.i.i.i, align 4
  %shr.i.i148.i = lshr i32 %113, 30
  %114 = zext i32 %shr.i.i148.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %shr.i.i148.i, label %unmap.i.zonefs_read_super.exit_crit_edge [
    i32 2, label %unmap.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i150.i
  ]

unmap.i.if.end.i.i_crit_edge:                     ; preds = %unmap.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

unmap.i.zonefs_read_super.exit_crit_edge:         ; preds = %unmap.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_read_super.exit

is_highmem_idx.exit.i150.i:                       ; preds = %unmap.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %115 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp2.i.not.i149.i = icmp eq i32 %115, 2
  br i1 %cmp2.i.not.i149.i, label %is_highmem_idx.exit.i150.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i150.i.zonefs_read_super.exit_crit_edge

is_highmem_idx.exit.i150.i.zonefs_read_super.exit_crit_edge: ; preds = %is_highmem_idx.exit.i150.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_read_super.exit

is_highmem_idx.exit.i150.i.if.end.i.i_crit_edge:  ; preds = %is_highmem_idx.exit.i150.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i150.i.if.end.i.i_crit_edge, %unmap.i.if.end.i.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %call38.i.i.i.i) #14
  br label %zonefs_read_super.exit

zonefs_read_super.exit:                           ; preds = %if.end.i.i, %is_highmem_idx.exit.i150.i.zonefs_read_super.exit_crit_edge, %unmap.i.zonefs_read_super.exit_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bio_vec.i) #14
  br i1 %tobool35.not, label %if.end37, label %zonefs_read_super.exit.cleanup73_crit_edge

zonefs_read_super.exit.cleanup73_crit_edge:       ; preds = %zonefs_read_super.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

if.end37:                                         ; preds = %zonefs_read_super.exit
  %call38 = call fastcc i32 @zonefs_parse_options(ptr noundef %sb, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup73_crit_edge

if.end37.cleanup73_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

if.end41:                                         ; preds = %if.end37
  %116 = getelementptr inbounds i8, ptr %zd, i32 4
  %117 = call ptr @memset(ptr %116, i32 0, i32 12)
  %118 = ptrtoint ptr %zd to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %sb, ptr %zd, align 4
  %119 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s_bdev, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %120, i32 0, i32 17
  %121 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bd_disk.i, align 8
  %call.i = call i32 @blkdev_nr_zones(ptr noundef %122) #14
  %123 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 64) #14
  %124 = extractvalue { i32, i1 } %123, 1
  br i1 %124, label %kvcalloc.exit.thread.i, label %kvcalloc.exit.i, !prof !289

kvcalloc.exit.thread.i:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %0, align 4
  br label %cleanup

kvcalloc.exit.i:                                  ; preds = %if.end41
  %126 = extractvalue { i32, i1 } %123, 0
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %126, i32 noundef 3520, i32 noundef -1) #20
  %127 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i.i.i.i, ptr %0, align 4
  %tobool.not.i140 = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i140, label %kvcalloc.exit.i.cleanup_crit_edge, label %if.end.i142

kvcalloc.exit.i.cleanup_crit_edge:                ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i142:                                      ; preds = %kvcalloc.exit.i
  %call3.i141 = call i32 @blkdev_report_zones(ptr noundef %120, i64 noundef 0, i32 noundef -1, ptr noundef nonnull @zonefs_get_zone_info_cb, ptr noundef nonnull %zd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i141)
  %cmp.i = icmp slt i32 %call3.i141, 0
  br i1 %cmp.i, label %do.end.i144, label %if.end7.i

do.end.i144:                                      ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %zd, align 4
  %s_id.i143 = getelementptr inbounds %struct.super_block, ptr %129, i32 0, i32 39
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %s_id.i143, i32 noundef %call3.i141) #17
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i142
  %130 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bd_disk.i, align 8
  %call9.i = call i32 @blkdev_nr_zones(ptr noundef %131) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i141, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call3.i141, %call9.i
  br i1 %cmp10.not.i, label %do.end49, label %do.end14.i

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %zd, align 4
  %s_id17.i = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 39
  %134 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bd_disk.i, align 8
  %call20.i = call i32 @blkdev_nr_zones(ptr noundef %135) #14
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %s_id17.i, i32 noundef %call3.i141, i32 noundef %call20.i) #17
  br label %cleanup

do.end49:                                         ; preds = %if.end7.i
  %s_id51 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %136 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %137, i32 0, i32 17
  %138 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bd_disk, align 8
  %call54 = call i32 @blkdev_nr_zones(ptr noundef %139) #14
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %s_id51, i32 noundef %call54) #17
  %call56 = call ptr @new_inode(ptr noundef %sb) #14
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %do.end49.cleanup_crit_edge, label %if.end59

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end59:                                         ; preds = %do.end49
  %140 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_bdev, align 4
  %bd_disk61 = getelementptr inbounds %struct.block_device, ptr %141, i32 0, i32 17
  %142 = ptrtoint ptr %bd_disk61 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bd_disk61, align 8
  %call62 = call i32 @blkdev_nr_zones(ptr noundef %143) #14
  %i_ino = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 11
  %144 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call62, ptr %i_ino, align 8
  %145 = ptrtoint ptr %call56 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 16749, ptr %call56, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp63) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp63, ptr noundef nonnull %call56) #14
  %146 = call ptr @memcpy(ptr %i_atime, ptr %tmp63, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp63) #14
  %147 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  %148 = call ptr @memcpy(ptr %i_ctime, ptr %i_atime, i32 16)
  %i_op = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 7
  %149 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @zonefs_dir_inode_operations, ptr %i_op, align 8
  %150 = getelementptr inbounds %struct.inode, ptr %call56, i32 0, i32 44
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @simple_dir_operations, ptr %150, align 8
  call void @set_nlink(ptr noundef nonnull %call56, i32 noundef 2) #14
  %call64 = call ptr @d_make_root(ptr noundef nonnull %call56) #14
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %152 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call64, ptr %s_root, align 64
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %if.end59.cleanup_crit_edge, label %if.end59.for.body_crit_edge

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  br label %for.body

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end59.for.body_crit_edge
  %t.0182 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end59.for.body_crit_edge ]
  %153 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %zd, align 4
  %s_fs_info.i.i146 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 33
  %155 = ptrtoint ptr %s_fs_info.i.i146 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %s_fs_info.i.i146, align 16
  %arrayidx.i = getelementptr %struct.zonefs_zone_data, ptr %zd, i32 0, i32 1, i32 %t.0182
  %157 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i147 = icmp eq i32 %158, 0
  br i1 %tobool.not.i147, label %for.body.for.inc_crit_edge, label %if.end.i149

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i149:                                      ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %159 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i148 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %159, i32 noundef 3264, i32 noundef 16) #18
  %tobool3.not.i = icmp eq ptr %call7.i.i148, null
  br i1 %tobool3.not.i, label %if.end.i149.cleanup_crit_edge, label %if.end5.i

if.end.i149.cleanup_crit_edge:                    ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0182)
  %cmp.i150 = icmp eq i32 %t.0182, 0
  %.str.72..str.73.i = select i1 %cmp.i150, ptr @.str.72, ptr @.str.73
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 13
  %160 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_root.i, align 64
  %call8.i = call fastcc ptr @zonefs_create_inode(ptr noundef %161, ptr noundef nonnull %.str.72..str.73.i, ptr noundef null, i32 noundef %t.0182) #14
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end5.i.zonefs_create_zgroup.exit.thread173_crit_edge, label %if.end11.i

if.end5.i.zonefs_create_zgroup.exit.thread173_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_create_zgroup.exit.thread173

if.end11.i:                                       ; preds = %if.end5.i
  %162 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %0, align 4
  %s_bdev.i152 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 26
  %164 = ptrtoint ptr %s_bdev.i152 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_bdev.i152, align 4
  %bd_disk.i153 = getelementptr inbounds %struct.block_device, ptr %165, i32 0, i32 17
  %166 = ptrtoint ptr %bd_disk.i153 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bd_disk.i153, align 8
  %call12.i = call i32 @blkdev_nr_zones(ptr noundef %167) #14
  %add.ptr.i = getelementptr %struct.blk_zone, ptr %163, i32 %call12.i
  %168 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %0, align 4
  %arrayidx14.i = getelementptr %struct.blk_zone, ptr %169, i32 1
  %cmp15138.i = icmp ult ptr %arrayidx14.i, %add.ptr.i
  br i1 %cmp15138.i, label %for.body.lr.ph.i, label %if.end11.i.zonefs_create_zgroup.exit_crit_edge

if.end11.i.zonefs_create_zgroup.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_create_zgroup.exit

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %s_features.i154 = getelementptr inbounds %struct.zonefs_sb_info, ptr %156, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc65.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.0142.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %n.1.i, %for.inc65.i.for.body.i_crit_edge ]
  %zone.0139.i = phi ptr [ %arrayidx14.i, %for.body.lr.ph.i ], [ %next.2.i, %for.inc65.i.for.body.i_crit_edge ]
  %add.ptr16.i = getelementptr %struct.blk_zone, ptr %zone.0139.i, i32 1
  %type.i.i = getelementptr inbounds %struct.blk_zone, ptr %zone.0139.i, i32 0, i32 3
  %170 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %171)
  %cmp.i.i = icmp ne i8 %171, 1
  %..i.i = zext i1 %cmp.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %t.0182, i32 %..i.i)
  %cmp18.not.i = icmp eq i32 %t.0182, %..i.i
  br i1 %cmp18.not.i, label %if.end20.i, label %for.body.i.for.inc65.i_crit_edge

for.body.i.for.inc65.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc65.i

if.end20.i:                                       ; preds = %for.body.i
  br i1 %cmp.i150, label %land.lhs.true.i, label %if.end20.i.if.end59.i_crit_edge

if.end20.i.if.end59.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %172 = ptrtoint ptr %s_features.i154 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %s_features.i154, align 8
  %and.i = and i64 %173, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool22.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.end59.i_crit_edge, label %for.cond24.preheader.i

land.lhs.true.i.if.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

for.cond24.preheader.i:                           ; preds = %land.lhs.true.i
  %cmp25135.i = icmp ult ptr %add.ptr16.i, %add.ptr.i
  br i1 %cmp25135.i, label %for.body26.lr.ph.i, label %for.cond24.preheader.i.for.end.i_crit_edge

for.cond24.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body26.lr.ph.i:                               ; preds = %for.cond24.preheader.i
  %len31.i = getelementptr inbounds %struct.blk_zone, ptr %zone.0139.i, i32 0, i32 1
  %capacity32.i = getelementptr inbounds %struct.blk_zone, ptr %zone.0139.i, i32 0, i32 8
  %cond49.i = getelementptr inbounds %struct.blk_zone, ptr %zone.0139.i, i32 0, i32 4
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %for.body26.lr.ph.i
  %next.0136.i = phi ptr [ %add.ptr16.i, %for.body26.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body26.i_crit_edge ]
  %type.i129.i = getelementptr inbounds %struct.blk_zone, ptr %next.0136.i, i32 0, i32 3
  %174 = ptrtoint ptr %type.i129.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %type.i129.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %175)
  %cmp.i130.not.i = icmp eq i8 %175, 1
  br i1 %cmp.i130.not.i, label %if.end30.i, label %for.body26.i.for.end.i_crit_edge

for.body26.i.for.end.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end30.i:                                       ; preds = %for.body26.i
  %len.i = getelementptr inbounds %struct.blk_zone, ptr %next.0136.i, i32 0, i32 1
  %176 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %len.i, align 8
  %178 = ptrtoint ptr %len31.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %len31.i, align 8
  %add.i = add i64 %179, %177
  store i64 %add.i, ptr %len31.i, align 8
  %capacity.i = getelementptr inbounds %struct.blk_zone, ptr %next.0136.i, i32 0, i32 8
  %180 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %capacity.i, align 8
  %182 = ptrtoint ptr %capacity32.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %capacity32.i, align 8
  %add33.i = add i64 %183, %181
  store i64 %add33.i, ptr %capacity32.i, align 8
  %cond.i = getelementptr inbounds %struct.blk_zone, ptr %next.0136.i, i32 0, i32 4
  %184 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %cond.i, align 1
  %186 = zext i8 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %185, label %if.end30.i.for.inc.i_crit_edge [
    i8 13, label %land.lhs.true36.i
    i8 15, label %if.end30.i.for.inc.sink.split.i_crit_edge
  ]

if.end30.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split.i

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true36.i:                                ; preds = %if.end30.i
  %187 = ptrtoint ptr %cond49.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %cond49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %188)
  %cmp39.not.i = icmp eq i8 %188, 15
  br i1 %cmp39.not.i, label %land.lhs.true36.i.for.inc.i_crit_edge, label %land.lhs.true36.i.for.inc.sink.split.i_crit_edge

land.lhs.true36.i.for.inc.sink.split.i_crit_edge: ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split.i

land.lhs.true36.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %land.lhs.true36.i.for.inc.sink.split.i_crit_edge, %if.end30.i.for.inc.sink.split.i_crit_edge
  %189 = ptrtoint ptr %cond49.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %185, ptr %cond49.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %land.lhs.true36.i.for.inc.i_crit_edge, %if.end30.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.blk_zone, ptr %next.0136.i, i32 1
  %cmp25.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp25.i, label %for.inc.i.for.body26.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body26.i.for.end.i_crit_edge, %for.cond24.preheader.i.for.end.i_crit_edge
  %next.0.lcssa.i = phi ptr [ %add.ptr16.i, %for.cond24.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.inc.i.for.end.i_crit_edge ], [ %next.0136.i, %for.body26.i.for.end.i_crit_edge ]
  %capacity52.i = getelementptr inbounds %struct.blk_zone, ptr %zone.0139.i, i32 0, i32 8
  %190 = ptrtoint ptr %capacity52.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %capacity52.i, align 8
  %len53.i = getelementptr inbounds %struct.blk_zone, ptr %zone.0139.i, i32 0, i32 1
  %192 = ptrtoint ptr %len53.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %len53.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %191, i64 %193)
  %cmp54.not.i = icmp eq i64 %191, %193
  br i1 %cmp54.not.i, label %for.end.i.if.end59.i_crit_edge, label %do.end.i156

for.end.i.if.end59.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

do.end.i156:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id.i155 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 39
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %s_id.i155) #17
  br label %zonefs_create_zgroup.exit.thread173

if.end59.i:                                       ; preds = %for.end.i.if.end59.i_crit_edge, %land.lhs.true.i.if.end59.i_crit_edge, %if.end20.i.if.end59.i_crit_edge
  %next.1.i = phi ptr [ %next.0.lcssa.i, %for.end.i.if.end59.i_crit_edge ], [ %add.ptr16.i, %land.lhs.true.i.if.end59.i_crit_edge ], [ %add.ptr16.i, %if.end20.i.if.end59.i_crit_edge ]
  %call60.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i148, i32 noundef 15, ptr noundef nonnull @.str.76, i32 noundef %n.0142.i) #14
  %call61.i = call fastcc ptr @zonefs_create_inode(ptr noundef nonnull %call8.i, ptr noundef nonnull %call7.i.i148, ptr noundef %zone.0139.i, i32 noundef %t.0182) #14
  %tobool62.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool62.not.i, label %if.end59.i.zonefs_create_zgroup.exit.thread173_crit_edge, label %if.end64.i

if.end59.i.zonefs_create_zgroup.exit.thread173_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_create_zgroup.exit.thread173

if.end64.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i32 %n.0142.i, 1
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %if.end64.i, %for.body.i.for.inc65.i_crit_edge
  %next.2.i = phi ptr [ %add.ptr16.i, %for.body.i.for.inc65.i_crit_edge ], [ %next.1.i, %if.end64.i ]
  %n.1.i = phi i32 [ %n.0142.i, %for.body.i.for.inc65.i_crit_edge ], [ %inc.i, %if.end64.i ]
  %cmp15.i = icmp ult ptr %next.2.i, %add.ptr.i
  br i1 %cmp15.i, label %for.inc65.i.for.body.i_crit_edge, label %do.end69.i

for.inc65.i.for.body.i_crit_edge:                 ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end69.i:                                       ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.1.i)
  %cmp73.i = icmp ugt i32 %n.1.i, 1
  %spec.select.i = select i1 %cmp73.i, ptr @.str.80, ptr @.str.81
  br label %zonefs_create_zgroup.exit

zonefs_create_zgroup.exit.thread173:              ; preds = %if.end59.i.zonefs_create_zgroup.exit.thread173_crit_edge, %do.end.i156, %if.end5.i.zonefs_create_zgroup.exit.thread173_crit_edge
  %ret.0.i157.ph = phi i32 [ -22, %do.end.i156 ], [ -12, %if.end59.i.zonefs_create_zgroup.exit.thread173_crit_edge ], [ -12, %if.end5.i.zonefs_create_zgroup.exit.thread173_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i148) #14
  br label %cleanup

zonefs_create_zgroup.exit:                        ; preds = %do.end69.i, %if.end11.i.zonefs_create_zgroup.exit_crit_edge
  %n.0.lcssa147.i = phi i32 [ %n.1.i, %do.end69.i ], [ 0, %if.end11.i.zonefs_create_zgroup.exit_crit_edge ]
  %194 = phi ptr [ %spec.select.i, %do.end69.i ], [ @.str.81, %if.end11.i.zonefs_create_zgroup.exit_crit_edge ]
  %s_id71148.i = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 39
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %s_id71148.i, ptr noundef nonnull %.str.72..str.73.i, i32 noundef %n.0.lcssa147.i, ptr noundef nonnull %194) #17
  %arrayidx77.i = getelementptr %struct.zonefs_sb_info, ptr %156, i32 0, i32 8, i32 %t.0182
  %195 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %n.0.lcssa147.i, ptr %arrayidx77.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i148) #14
  br label %for.inc

for.inc:                                          ; preds = %zonefs_create_zgroup.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %t.0182, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %zonefs_create_zgroup.exit.thread173, %if.end.i149.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %do.end14.i, %do.end.i144, %kvcalloc.exit.i.cleanup_crit_edge, %kvcalloc.exit.thread.i
  %ret.1 = phi i32 [ -12, %if.end59.cleanup_crit_edge ], [ -12, %do.end49.cleanup_crit_edge ], [ %ret.0.i157.ph, %zonefs_create_zgroup.exit.thread173 ], [ -12, %kvcalloc.exit.thread.i ], [ -12, %kvcalloc.exit.i.cleanup_crit_edge ], [ -5, %do.end14.i ], [ %call3.i141, %do.end.i144 ], [ -12, %if.end.i149.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  %196 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %0, align 4
  call void @kvfree(ptr noundef %197) #14
  br label %cleanup73

cleanup73:                                        ; preds = %cleanup, %if.end37.cleanup73_crit_edge, %zonefs_read_super.exit.cleanup73_crit_edge, %zonefs_read_super.exit.thread163, %zonefs_read_super.exit.thread, %if.end.cleanup73_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %cleanup ], [ -22, %do.end ], [ -12, %if.end.cleanup73_crit_edge ], [ %ret.0.i, %zonefs_read_super.exit.cleanup73_crit_edge ], [ %call38, %if.end37.cleanup73_crit_edge ], [ -12, %zonefs_read_super.exit.thread ], [ %call3.i, %zonefs_read_super.exit.thread163 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zd) #14
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zonefs_parse_options(ptr nocapture noundef readonly %sb, ptr noundef %options) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #14
  %tobool.not = icmp eq ptr %options, null
  %3 = call ptr @memset(ptr %args, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %while.cond.preheader

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup25

while.cond.preheader:                             ; preds = %entry
  %call138 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.54) #14
  %cmp.not39 = icmp eq ptr %call138, null
  br i1 %cmp.not39, label %while.cond.preheader.cleanup25_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup25_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup25

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call140 = phi ptr [ %call1, %cleanup.while.body_crit_edge ], [ %call138, %while.cond.preheader.while.body_crit_edge ]
  %4 = ptrtoint ptr %call140 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %if.end4

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call140, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #14
  %6 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call5, label %if.end4.cleanup25_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb12
    i32 3, label %sw.bb17
    i32 4, label %sw.bb22
  ]

if.end4.cleanup25_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup25

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 8
  %and = and i32 %8, -16
  %or = or i32 %and, 1
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 8
  %and9 = and i32 %10, -16
  %or11 = or i32 %and9, 2
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 8
  %and14 = and i32 %12, -16
  %or16 = or i32 %and14, 4
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 8
  %and19 = and i32 %14, -16
  %or21 = or i32 %and19, 8
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 8
  %or24 = or i32 %16, 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb22, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb
  %or.sink = phi i32 [ %or, %sw.bb ], [ %or11, %sw.bb7 ], [ %or16, %sw.bb12 ], [ %or21, %sw.bb17 ], [ %or24, %sw.bb22 ]
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.sink, ptr %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.cleanup_crit_edge
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.54) #14
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %cleanup.cleanup25_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.cleanup25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup.cleanup25_crit_edge, %if.end4.cleanup25_crit_edge, %while.cond.preheader.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup25_crit_edge ], [ 0, %while.cond.preheader.cleanup25_crit_edge ], [ 0, %cleanup.cleanup25_crit_edge ], [ -22, %if.end4.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #14
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_nr_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zonefs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zonefs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @inode_init_once(ptr noundef nonnull %call) #14
  %i_truncate_mutex = getelementptr inbounds %struct.zonefs_inode_info, ptr %call, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %i_truncate_mutex, ptr noundef nonnull @.str.32, ptr noundef nonnull @zonefs_alloc_inode.__key) #14
  %i_wr_refcnt = getelementptr inbounds %struct.zonefs_inode_info, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %i_wr_refcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %i_wr_refcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zonefs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zonefs_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inode) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1515144787, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %f_bsize, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %8 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %f_namelen, align 8
  %s_lock = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #14
  %s_blocks = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %s_blocks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %s_blocks, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %f_blocks, align 8
  %s_used_blocks = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %s_used_blocks to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %s_used_blocks, align 8
  %14 = load i64, ptr %s_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %14)
  %cmp = icmp sgt i64 %13, %14
  br i1 %cmp, label %do.end, label %if.else, !prof !289

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1172, i32 noundef 9, ptr noundef null) #14
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i64 %10, %13
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.end
  %sub.sink = phi i64 [ 0, %do.end ], [ %sub, %if.else ]
  %15 = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub.sink, ptr %15, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %17 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub.sink, ptr %f_bavail, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %arrayidx = getelementptr %struct.zonefs_sb_info, ptr %3, i32 0, i32 8, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %if.end25.for.inc_crit_edge, label %if.then29

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %19, 1
  %conv = zext i32 %add to i64
  %20 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %f_files, align 8
  %add32 = add i64 %21, %conv
  store i64 %add32, ptr %f_files, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end25.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.zonefs_sb_info, ptr %3, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not.1 = icmp eq i32 %23, 0
  br i1 %tobool28.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then29.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then29.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %add.1 = add i32 %23, 1
  %conv.1 = zext i32 %add.1 to i64
  %24 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %f_files, align 8
  %add32.1 = add i64 %25, %conv.1
  store i64 %add32.1, ptr %f_files, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then29.1, %for.inc.for.inc.1_crit_edge
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %26 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %f_ffree, align 8
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #14
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %s_uuid = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %s_uuid to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %s_uuid, align 8, !noalias !292
  %add.ptr.i = getelementptr %struct.zonefs_sb_info, ptr %3, i32 0, i32 6, i32 0, i32 8
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i, align 8, !noalias !292
  %31 = xor i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #14
  %tmp35.sroa.0.0.insert.insert = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 32)
  %33 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %tmp35.sroa.0.0.insert.insert, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_remount(ptr noundef %sb, ptr nocapture noundef readnone %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #14
  %call1 = tail call fastcc i32 @zonefs_parse_options(ptr noundef %sb, ptr noundef %data)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.33) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.34) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %and7 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.35) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %and12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.36) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_get_zone_info_cb(ptr nocapture noundef %zone, i32 noundef %idx, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %1, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb1_crit_edge
    i8 3, label %entry.sw.bb1_crit_edge22
  ]

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %zone, align 8
  %len = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %len, align 8
  %add = add i64 %6, %4
  %wp = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %7 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %wp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %nr_zones = getelementptr inbounds %struct.zonefs_zone_data, ptr %data, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool2.not = icmp eq i32 %idx, 0
  br i1 %tobool2.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then3

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5 = getelementptr %struct.zonefs_zone_data, ptr %data, i32 0, i32 1, i32 1
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %1 to i32
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 39
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %s_id, i32 noundef %conv) #17
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.then3, %if.then
  %arrayidx5.sink21 = phi ptr [ %arrayidx5, %if.then3 ], [ %nr_zones, %if.then ]
  %10 = ptrtoint ptr %arrayidx5.sink21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.sink21, align 4
  %inc6 = add i32 %11, 1
  store i32 %inc6, ptr %arrayidx5.sink21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %zones = getelementptr inbounds %struct.zonefs_zone_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zones, align 4
  %arrayidx10 = getelementptr %struct.blk_zone, ptr %13, i32 %idx
  %14 = call ptr @memcpy(ptr %arrayidx10, ptr %zone, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_inode_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !288

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iattr, align 8
  %and7 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %land.lhs.true

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br i1 %cmp, label %land.lhs.true11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %9 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ia_mode, align 4
  %11 = and i16 %10, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %land.lhs.true11.if.end16_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %and18 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.lor.lhs.false_crit_edge, label %land.lhs.true20

if.end16.lor.lhs.false_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true20:                                  ; preds = %if.end16
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack69 = load i32, ptr %ia_uid, align 8
  %13 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack70 = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack69, i32 %.unpack70)
  %cmp.i = icmp eq i32 %.unpack69, %.unpack70
  br i1 %cmp.i, label %land.lhs.true20.lor.lhs.false_crit_edge, label %land.lhs.true20.if.then30_crit_edge

land.lhs.true20.if.then30_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

land.lhs.true20.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true20.lor.lhs.false_crit_edge, %if.end16.lor.lhs.false_crit_edge
  %and24 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.end35_crit_edge, label %land.lhs.true26

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %ia_gid, align 4
  %15 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack68 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack68)
  %cmp.i71 = icmp eq i32 %.unpack, %.unpack68
  br i1 %cmp.i71, label %land.lhs.true26.if.end35_crit_edge, label %land.lhs.true26.if.then30_crit_edge

land.lhs.true26.if.then30_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then30:                                        ; preds = %land.lhs.true26.if.then30_crit_edge, %land.lhs.true20.if.then30_crit_edge
  %call31 = tail call i32 @dquot_transfer(ptr noundef %1, ptr noundef %iattr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end35_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %land.lhs.true26.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge
  %16 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iattr, align 8
  %and37 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end44_crit_edge, label %if.then39

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then39:                                        ; preds = %if.end35
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %18 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ia_size, align 8
  %i_ztype.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ztype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.else.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  %i_max_size.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %i_max_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_max_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %19)
  %cmp2.i = icmp eq i64 %23, %19
  br i1 %cmp2.i, label %if.else.i.if.end6.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %op.0.i = phi i32 [ 15, %if.end.i.if.end6.i_crit_edge ], [ 12, %if.else.i.if.end6.i_crit_edge ]
  tail call void @inode_dio_wait(ptr noundef %1) #14
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i.i) #14
  %i_truncate_mutex.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex.i, i32 noundef 0) #14
  %call7.i = tail call fastcc i64 @i_size_read(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %19)
  %cmp8.i = icmp eq i64 %call7.i, %19
  br i1 %cmp8.i, label %if.end6.i.zonefs_file_truncate.exit_crit_edge, label %if.end10.i

if.end6.i.zonefs_file_truncate.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_file_truncate.exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end10.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end10.i.if.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end10.i
  %dep_map.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 6, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !289

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 36, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end10.i.if.end.i.i_crit_edge
  tail call fastcc void @trace_zonefs_zone_mgmt(ptr noundef %1, i32 noundef %op.0.i) #14
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 26
  %29 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev.i.i, align 4
  %i_zsector.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_zsector.i.i, align 8
  %i_zone_size.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %i_zone_size.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_zone_size.i.i, align 8
  %shr.i.i = ashr i64 %34, 9
  %call25.i.i = tail call i32 @blkdev_zone_mgmt(ptr noundef %30, i32 noundef %op.0.i, i64 noundef %32, i64 noundef %shr.i.i, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end14.i, label %zonefs_zone_mgmt.exit.i

zonefs_zone_mgmt.exit.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i, align 4
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 39
  %call33.i.i = tail call ptr @blk_op_str(i32 noundef %op.0.i) #14
  %37 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_zsector.i.i, align 8
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %s_id.i.i, ptr noundef %call33.i.i, i64 noundef %38, i32 noundef %call25.i.i) #17
  br label %zonefs_file_truncate.exit

if.end14.i:                                       ; preds = %if.end.i.i
  %i_flags.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end24.i_crit_edge, label %if.then16.i

if.end14.i.if.end24.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

if.then16.i:                                      ; preds = %if.end14.i
  br i1 %tobool.not.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  %call19.i = tail call fastcc i32 @zonefs_zone_mgmt(ptr noundef %1, i32 noundef 10) #14
  br label %if.end24.i

if.else20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  %and22.i = and i32 %40, -2
  %41 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and22.i, ptr %i_flags.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else20.i, %if.then18.i, %if.end14.i.if.end24.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else20.i ], [ %call19.i, %if.then18.i ], [ 0, %if.end14.i.if.end24.i_crit_edge ]
  %42 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %call1.i.i = tail call fastcc i64 @i_size_read(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i.i, i64 %19)
  %cmp.i.i = icmp eq i64 %call1.i.i, %19
  br i1 %cmp.i.i, label %if.end24.i.zonefs_update_stats.exit.i_crit_edge, label %if.end.i52.i

if.end24.i.zonefs_update_stats.exit.i_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_update_stats.exit.i

if.end.i52.i:                                     ; preds = %if.end24.i
  %s_lock.i.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %45, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %s_lock.i.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i.i, i64 %19)
  %cmp2.i.i = icmp sgt i64 %call1.i.i, %19
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else11.i.i

if.then3.i.i:                                     ; preds = %if.end.i52.i
  %sub.i.i = sub i64 %call1.i.i, %19
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %47 to i64
  %shr.i53.i = ashr i64 %sub.i.i, %sh_prom.i.i
  %s_used_blocks.i.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %45, i32 0, i32 10
  %48 = ptrtoint ptr %s_used_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %s_used_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %shr.i53.i)
  %cmp4.i.i = icmp sgt i64 %49, %shr.i53.i
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub8.i.i = sub i64 %49, %shr.i53.i
  %50 = ptrtoint ptr %s_used_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub8.i.i, ptr %s_used_blocks.i.i, align 8
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %s_used_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %s_used_blocks.i.i, align 8
  br label %if.end25.i.i

if.else11.i.i:                                    ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub12.i.i = sub i64 %19, %call1.i.i
  %s_blocksize_bits13.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 2
  %52 = ptrtoint ptr %s_blocksize_bits13.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_blocksize_bits13.i.i, align 4
  %sh_prom15.i.i = zext i8 %53 to i64
  %shr16.i.i = ashr i64 %sub12.i.i, %sh_prom15.i.i
  %s_used_blocks17.i.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %45, i32 0, i32 10
  %54 = ptrtoint ptr %s_used_blocks17.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %s_used_blocks17.i.i, align 8
  %add.i.i = add i64 %shr16.i.i, %55
  %s_blocks.i.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %45, i32 0, i32 9
  %56 = ptrtoint ptr %s_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %s_blocks.i.i, align 8
  %58 = tail call i64 @llvm.smin.i64(i64 %add.i.i, i64 %57) #14
  %59 = ptrtoint ptr %s_used_blocks17.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %s_used_blocks17.i.i, align 8
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else11.i.i, %if.else.i.i, %if.then6.i.i
  tail call void @_raw_spin_unlock(ptr noundef %s_lock.i.i) #14
  br label %zonefs_update_stats.exit.i

zonefs_update_stats.exit.i:                       ; preds = %if.end25.i.i, %if.end24.i.zonefs_update_stats.exit.i_crit_edge
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %19) #14
  %i_wpoffset.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %i_wpoffset.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %19, ptr %i_wpoffset.i, align 8
  br label %zonefs_file_truncate.exit

zonefs_file_truncate.exit:                        ; preds = %zonefs_update_stats.exit.i, %zonefs_zone_mgmt.exit.i, %if.end6.i.zonefs_file_truncate.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end6.i.zonefs_file_truncate.exit_crit_edge ], [ %call25.i.i, %zonefs_zone_mgmt.exit.i ], [ %ret.0.i, %zonefs_update_stats.exit.i ]
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex.i) #14
  %61 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i54.i = getelementptr inbounds %struct.address_space, ptr %62, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock.i54.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool41.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool41.not, label %zonefs_file_truncate.exit.if.end44_crit_edge, label %zonefs_file_truncate.exit.cleanup_crit_edge

zonefs_file_truncate.exit.cleanup_crit_edge:      ; preds = %zonefs_file_truncate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

zonefs_file_truncate.exit.if.end44_crit_edge:     ; preds = %zonefs_file_truncate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.end44:                                         ; preds = %zonefs_file_truncate.exit.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %iattr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %zonefs_file_truncate.exit.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -1, %land.lhs.true11.cleanup_crit_edge ], [ %call31, %if.then30.cleanup_crit_edge ], [ %ret.1.i, %zonefs_file_truncate.exit.cleanup_crit_edge ], [ -1, %if.then39.cleanup_crit_edge ], [ -1, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !295
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !296
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !289

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !297
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !298
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !299
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !300
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !301
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zonefs_zone_mgmt(ptr noundef %inode, i32 noundef %op) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !289

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 36, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @trace_zonefs_zone_mgmt(ptr noundef %inode, i32 noundef %op)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev, align 4
  %i_zsector = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %5 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_zsector, align 8
  %i_zone_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 5
  %7 = ptrtoint ptr %i_zone_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_zone_size, align 8
  %shr = ashr i64 %8, 9
  %call25 = tail call i32 @blkdev_zone_mgmt(ptr noundef %4, i32 noundef %op, i64 noundef %6, i64 noundef %shr, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %do.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 39
  %call33 = tail call ptr @blk_op_str(i32 noundef %op) #14
  %11 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_zsector, align 8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %s_id, ptr noundef %call33, i64 noundef %12, i32 noundef %call25) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end.cleanup_crit_edge
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_zonefs_zone_mgmt(ptr noundef %inode, i32 noundef %op) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_zone_mgmt, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_zonefs_zone_mgmt, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !302

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !278) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !288

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !303
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_zone_mgmt, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %inode, i32 noundef %op) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !304
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !304
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !288

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !305
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_zone_mgmt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_zonefs_zone_mgmt.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_zonefs_zone_mgmt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 45, ptr noundef nonnull @.str.70) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !306
  %38 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_zone_mgmt(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @zonefs_create_inode(ptr noundef %parent, ptr noundef %name, ptr noundef %zone, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call ptr @d_alloc_name(ptr noundef %parent, ptr noundef %name) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %call2 = tail call ptr @new_inode(ptr noundef %3) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %dput, label %if.end5

if.end5:                                          ; preds = %if.end
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 15
  %i_ctime6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %4 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime6, i32 16)
  %5 = call ptr @memmove(ptr %i_mtime, ptr %i_ctime6, i32 16)
  %6 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %tobool7.not = icmp eq ptr %zone, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %11 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %zone, align 8
  %s_zone_sectors_shift.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %10, i32 0, i32 7
  %13 = ptrtoint ptr %s_zone_sectors_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_zone_sectors_shift.i, align 4
  %sh_prom.i = zext i32 %14 to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %i_ino.i, align 8
  %s_perm.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %s_perm.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %s_perm.i, align 8
  %18 = or i16 %17, -32768
  %19 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %call2, align 8
  %i_ztype.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %call2, i32 0, i32 1
  %20 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %type, ptr %i_ztype.i, align 8
  %21 = load i64, ptr %zone, align 8
  %i_zsector.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %call2, i32 0, i32 2
  %22 = ptrtoint ptr %i_zsector.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %i_zsector.i, align 8
  %len.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %len.i, align 8
  %shl.i = shl i64 %24, 9
  %i_zone_size.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %call2, i32 0, i32 5
  %25 = ptrtoint ptr %i_zone_size.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %shl.i, ptr %i_zone_size.i, align 8
  %capacity.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 8
  %26 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %capacity.i, align 8
  %shl5.i = shl i64 %27, 9
  %28 = tail call i64 @llvm.smin.i64(i64 %shl5.i, i64 17592186040320) #14
  %i_max_size.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %call2, i32 0, i32 4
  %29 = ptrtoint ptr %i_max_size.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %i_max_size.i, align 8
  %call7.i = tail call fastcc i64 @zonefs_check_zone_condition(ptr noundef nonnull %call2, ptr noundef nonnull %zone, i1 noundef zeroext true, i1 noundef zeroext true) #14
  %i_wpoffset.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %call2, i32 0, i32 3
  %30 = ptrtoint ptr %i_wpoffset.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call7.i, ptr %i_wpoffset.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 2
  %s_uid.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %10, i32 0, i32 3
  %31 = ptrtoint ptr %s_uid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_uid.i, align 8
  %33 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 3
  %s_gid.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %10, i32 0, i32 4
  %34 = ptrtoint ptr %s_gid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_gid.i, align 4
  %36 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %i_gid.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 14
  %37 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call7.i, ptr %i_size.i, align 8
  %38 = ptrtoint ptr %i_max_size.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_max_size.i, align 8
  %shr10.i = ashr i64 %39, 9
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 22
  %40 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %shr10.i, ptr %i_blocks.i, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %41 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @zonefs_file_inode_operations, ptr %i_op.i, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @zonefs_file_operations, ptr %42, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  %44 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @zonefs_file_aops, ptr %a_ops.i, align 4
  %47 = load i64, ptr %i_max_size.i, align 8
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 4
  %48 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %s_maxbytes.i, align 8
  %50 = tail call i64 @llvm.smax.i64(i64 %47, i64 %49) #14
  %51 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %s_maxbytes.i, align 8
  %52 = ptrtoint ptr %i_max_size.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_max_size.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %54 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom22.i = zext i8 %55 to i64
  %shr23.i = ashr i64 %53, %sh_prom22.i
  %s_blocks.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %10, i32 0, i32 9
  %56 = ptrtoint ptr %s_blocks.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %s_blocks.i, align 8
  %add.i = add i64 %shr23.i, %57
  store i64 %add.i, ptr %s_blocks.i, align 8
  %58 = ptrtoint ptr %i_wpoffset.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_wpoffset.i, align 8
  %60 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom27.i = zext i8 %60 to i64
  %shr28.i = ashr i64 %59, %sh_prom27.i
  %s_used_blocks.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %10, i32 0, i32 10
  %61 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %s_used_blocks.i, align 8
  %add29.i = add i64 %shr28.i, %62
  store i64 %add29.i, ptr %s_used_blocks.i, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %63 = ptrtoint ptr %i_sb.i27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb.i27, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 26
  %65 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bd_disk.i, align 8
  %call.i = tail call i32 @blkdev_nr_zones(ptr noundef %68) #14
  %add.i28 = add i32 %type, 1
  %add1.i = add i32 %add.i28, %call.i
  %i_ino.i29 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %69 = ptrtoint ptr %i_ino.i29 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add1.i, ptr %i_ino.i29, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call2, ptr noundef %1, i16 noundef zeroext 16749) #14
  %i_op.i30 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %70 = ptrtoint ptr %i_op.i30 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @zonefs_dir_inode_operations, ptr %i_op.i30, align 8
  %71 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @simple_dir_operations, ptr %71, align 8
  tail call void @set_nlink(ptr noundef nonnull %call2, i32 noundef 2) #14
  tail call void @inc_nlink(ptr noundef %1) #14
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  tail call void @d_add(ptr noundef nonnull %call1, ptr noundef nonnull %call2) #14
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %73 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %i_size, align 8
  %inc = add i64 %74, 1
  store i64 %inc, ptr %i_size, align 8
  br label %cleanup

dput:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %dput, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end9 ], [ null, %dput ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @zonefs_check_zone_condition(ptr noundef %inode, ptr nocapture noundef %zone, i1 noundef zeroext %warn, i1 noundef zeroext %mount) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cond, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %1, label %sw.default [
    i8 15, label %sw.bb
    i8 13, label %sw.bb5
    i8 14, label %sw.bb35
  ]

sw.bb:                                            ; preds = %entry
  br i1 %warn, label %do.end, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %s_id, i32 noundef %6) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %or = or i32 %8, 8
  store i32 %or, ptr %i_flags, align 4
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode, align 8
  %11 = and i16 %10, -512
  store i16 %11, ptr %inode, align 8
  %12 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %zone, align 8
  %wp = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %14 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %wp, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  br i1 %warn, label %do.end10, label %sw.bb5.if.end17_crit_edge

sw.bb5.if.end17_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end10:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb12 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb12, align 4
  %s_id13 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 39
  %i_ino15 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino15, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %s_id13, i32 noundef %18) #17
  br label %if.end17

if.end17:                                         ; preds = %do.end10, %sw.bb5.if.end17_crit_edge
  %i_flags18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %19 = ptrtoint ptr %i_flags18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags18, align 4
  %or19 = or i32 %20, 8
  store i32 %or19, ptr %i_flags18, align 4
  br i1 %mount, label %if.then21, label %if.end29

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 15, ptr %cond, align 1
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %inode, align 8
  %24 = and i16 %23, -512
  store i16 %24, ptr %inode, align 8
  %25 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %zone, align 8
  %wp28 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %27 = ptrtoint ptr %wp28 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %wp28, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inode, align 8
  %30 = and i16 %29, -147
  store i16 %30, ptr %inode, align 8
  %call34 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_max_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 4
  %31 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_max_size, align 8
  br label %cleanup

sw.default:                                       ; preds = %entry
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 1
  %33 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then37, label %if.end39

if.then37:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %i_max_size38 = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 4
  %35 = ptrtoint ptr %i_max_size38 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_max_size38, align 8
  br label %cleanup

if.end39:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %wp40 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %37 = ptrtoint ptr %wp40 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %wp40, align 8
  %39 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %zone, align 8
  %sub = sub i64 %38, %40
  %shl = shl i64 %sub, 9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then37, %sw.bb35, %if.end29, %if.then21, %if.end
  %retval.0 = phi i64 [ %36, %if.then37 ], [ %shl, %if.end39 ], [ %32, %sw.bb35 ], [ 0, %if.then21 ], [ %call34, %if.end29 ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @zonefs_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %call2 = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %call1, i64 noundef %call1) #14
  ret i64 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 8
  %10 = and i16 %9, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool3.not = icmp eq i16 %10, 0
  br i1 %tobool3.not, label %land.rhs.cleanup49_crit_edge, label %land.rhs.if.end_crit_edge, !prof !289

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs.cleanup49_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %11 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ki_pos, align 8
  %i_max_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp.not = icmp slt i64 %12, %14
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup49_crit_edge

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

if.end9:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %15 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ki_flags, align 8
  %and10 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %i_rwsem.i79 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call.i = tail call i32 @down_read_trylock(ptr noundef %i_rwsem.i79) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.then12.cleanup49_crit_edge, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then12.cleanup49_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup49

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @down_read(ptr noundef %i_rwsem.i79) #14
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12.if.end17_crit_edge
  %i_truncate_mutex = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %call18 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %17 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %18)
  %cmp20.not = icmp sgt i64 %call18, %18
  br i1 %cmp20.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br label %inode_unlock

if.end24:                                         ; preds = %if.end17
  %sub = sub i64 %call18, %18
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %19 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count1.i, align 8
  %conv.i = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv.i)
  %cmp.i = icmp ult i64 %sub, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end24.iov_iter_truncate.exit_crit_edge

if.end24.iov_iter_truncate.exit_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %conv3.i = trunc i64 %sub to i32
  %21 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv3.i, ptr %count1.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.end24.iov_iter_truncate.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  %22 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ki_flags, align 8
  %and28 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else42, label %if.then30

if.then30:                                        ; preds = %iov_iter_truncate.exit
  %24 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count1.i, align 8
  %26 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ki_pos, align 8
  %conv33 = zext i32 %25 to i64
  %or = or i64 %27, %conv33
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize, align 16
  %sub34 = add i32 %29, -1
  %conv35 = zext i32 %sub34 to i64
  %and36 = and i64 %or, %conv35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then30.inode_unlock_crit_edge

if.then30.inode_unlock_crit_edge:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_unlock

if.end39:                                         ; preds = %if.then30
  %30 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iocb, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i80, label %if.end39.file_accessed.exit_crit_edge

if.end39.file_accessed.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %file_accessed.exit

if.then.i80:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %f_path.i = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #14
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i80, %if.end39.file_accessed.exit_crit_edge
  %call41 = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull @zonefs_iomap_ops, ptr noundef nonnull @zonefs_read_dio_ops, i32 noundef 0, i32 noundef 0) #14
  br label %inode_unlock

if.else42:                                        ; preds = %iov_iter_truncate.exit
  %call43 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call43)
  %cmp44 = icmp eq i32 %call43, -5
  br i1 %cmp44, label %if.then46, label %if.else42.inode_unlock_crit_edge

if.else42.inode_unlock_crit_edge:                 ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_unlock

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @zonefs_io_error(ptr noundef %3, i1 noundef zeroext false)
  br label %inode_unlock

inode_unlock:                                     ; preds = %if.then46, %if.else42.inode_unlock_crit_edge, %file_accessed.exit, %if.then30.inode_unlock_crit_edge, %if.then22
  %ret.1 = phi i32 [ 0, %if.then22 ], [ -5, %if.then46 ], [ %call43, %if.else42.inode_unlock_crit_edge ], [ %call41, %file_accessed.exit ], [ -22, %if.then30.inode_unlock_crit_edge ]
  %i_rwsem.i81 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @up_read(ptr noundef %i_rwsem.i81) #14
  br label %cleanup49

cleanup49:                                        ; preds = %inode_unlock, %if.then12.cleanup49_crit_edge, %if.end.cleanup49_crit_edge, %land.rhs.cleanup49_crit_edge
  %retval.0 = phi i32 [ %ret.1, %inode_unlock ], [ -1, %land.rhs.cleanup49_crit_edge ], [ 0, %if.end.cleanup49_crit_edge ], [ -11, %if.then12.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup18_crit_edge, !prof !288

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup18_crit_edge

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end5:                                          ; preds = %if.end
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %10 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ki_pos, align 8
  %i_max_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.not = icmp slt i64 %11, %13
  br i1 %cmp.not, label %if.end8, label %if.end5.cleanup18_crit_edge

if.end5.cleanup18_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end8:                                          ; preds = %if.end5
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %14 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags, align 8
  %and9 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %ki_complete.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %16 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i.i = icmp eq ptr %17, null
  %i_ztype.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ztype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp ne i32 %19, 1
  %brmerge.i = select i1 %cmp.i, i1 true, i1 %cmp.i.i
  %and.i27 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool4.not.i = icmp eq i32 %and.i27, 0
  %or.cond = select i1 %brmerge.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond, label %if.end.i, label %if.then11.cleanup18_crit_edge

if.then11.cleanup18_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end.i:                                         ; preds = %if.then11
  %i_rwsem.i99.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  br i1 %tobool4.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @down_write_trylock(ptr noundef %i_rwsem.i99.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.cleanup18_crit_edge, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then8.i.cleanup18_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @down_write(ptr noundef %i_rwsem.i99.i) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then8.i.if.end13.i_crit_edge
  %call14.i = tail call fastcc i32 @zonefs_write_checks(ptr noundef %iocb, ptr noundef %from) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 1
  br i1 %cmp15.i, label %if.end13.i.zonefs_file_dio_write.exit_crit_edge, label %if.end17.i

if.end13.i.zonefs_file_dio_write.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_file_dio_write.exit

if.end17.i:                                       ; preds = %if.end13.i
  %20 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ki_pos, align 8
  %conv98.i = zext i32 %call14.i to i64
  %or.i = or i64 %21, %conv98.i
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %23, -1
  %conv18.i = zext i32 %sub.i to i64
  %and19.i = and i64 %or.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.zonefs_file_dio_write.exit.thread44_crit_edge

if.end17.i.zonefs_file_dio_write.exit.thread44_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_file_dio_write.exit.thread44

if.end22.i:                                       ; preds = %if.end17.i
  %24 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ztype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp24.i = icmp eq i32 %25, 1
  br i1 %cmp24.i, label %if.then26.i, label %if.end22.i.if.else40.i_crit_edge

if.end22.i.if.else40.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else40.i

if.then26.i:                                      ; preds = %if.end22.i
  %i_truncate_mutex.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex.i, i32 noundef 0) #14
  %26 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ki_pos, align 8
  %i_wpoffset.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %i_wpoffset.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_wpoffset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp28.not.i = icmp eq i64 %27, %29
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex.i) #14
  br i1 %cmp28.not.i, label %if.end32.i, label %if.then26.i.zonefs_file_dio_write.exit.thread44_crit_edge

if.then26.i.zonefs_file_dio_write.exit.thread44_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_file_dio_write.exit.thread44

if.end32.i:                                       ; preds = %if.then26.i
  br i1 %cmp.i.i, label %if.then38.i, label %if.end32.i.if.else40.i_crit_edge

if.end32.i.if.else40.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else40.i

if.then38.i:                                      ; preds = %if.end32.i
  %30 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iocb, align 8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 26
  %36 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_bdev.i.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bd_queue.i.i.i, align 4
  %max_zone_append_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 37, i32 17
  %40 = ptrtoint ptr %max_zone_append_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_zone_append_sectors.i.i.i, align 4
  %max_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 37, i32 6
  %42 = ptrtoint ptr %max_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_sectors.i.i.i, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %43) #14
  %shl.i.i = shl i32 %44, 9
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 3
  %45 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_blocksize.i.i, align 16
  %neg.i.i = sub i32 0, %46
  %and.i.i = and i32 %shl.i.i, %neg.i.i
  %count1.i.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %47 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and.i.i)
  %cmp.i.i.i = icmp ugt i32 %48, %and.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then38.i.iov_iter_truncate.exit.i.i_crit_edge

if.then38.i.iov_iter_truncate.exit.i.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iov_iter_truncate.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i.i, ptr %count1.i.i.i, align 8
  br label %iov_iter_truncate.exit.i.i

iov_iter_truncate.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then38.i.iov_iter_truncate.exit.i.i_crit_edge
  %call12.i.i = tail call i32 @iov_iter_npages(ptr noundef %from, i32 noundef 256) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not.i.i, label %iov_iter_truncate.exit.i.i.if.end42.i_crit_edge, label %if.end.i.i

iov_iter_truncate.exit.i.i.if.end42.i_crit_edge:  ; preds = %iov_iter_truncate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.end.i.i:                                       ; preds = %iov_iter_truncate.exit.i.i
  %conv13.i.i = trunc i32 %call12.i.i to i16
  %call.i.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext %conv13.i.i, ptr noundef nonnull @fs_bio_set) #14
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %51, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %53, %37
  br i1 %cmp.not.i.i.i, label %if.end.i.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i84.i.i

if.end.i.i.bio_set_dev.exit.i.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit.i.i

if.then.i84.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i.i = and i16 %51, -2177
  %54 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i84.i.i, %if.end.i.i.bio_set_dev.exit.i.i_crit_edge
  %55 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %37, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i.i) #14
  %i_zsector.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %33, i32 0, i32 2
  %56 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_zsector.i.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %bi_iter.i.i, align 8
  %ki_hint.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 5
  %59 = ptrtoint ptr %ki_hint.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ki_hint.i.i, align 4
  %bi_write_hint.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %bi_write_hint.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %bi_write_hint.i.i, align 8
  %ki_ioprio.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 6
  %62 = ptrtoint ptr %ki_ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ki_ioprio.i.i, align 2
  %bi_ioprio.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %bi_ioprio.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %bi_ioprio.i.i, align 2
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 34829, ptr %bi_opf.i.i, align 8
  %66 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ki_flags, align 8
  %and15.i.i = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %spec.store.select.i.i = select i1 %tobool16.not.i.i, i32 34829, i32 165901
  %68 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.store.select.i.i, ptr %bi_opf.i.i, align 8
  %call22.i.i = tail call i32 @bio_iov_iter_get_pages(ptr noundef %call.i.i.i, ptr noundef %from) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end27.i.i, label %bio_set_dev.exit.i.i.out_release.i.i_crit_edge, !prof !288

bio_set_dev.exit.i.i.out_release.i.i_crit_edge:   ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_release.i.i

if.end27.i.i:                                     ; preds = %bio_set_dev.exit.i.i
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i.i, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bi_size.i.i, align 8
  %conv.i85.i.i = zext i32 %70 to i64
  %71 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i, align 8
  %write_bytes.i.i.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 155, i32 5
  %75 = ptrtoint ptr %write_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %write_bytes.i.i.i, align 8
  %add.i.i.i = add i64 %76, %conv.i85.i.i
  store i64 %add.i.i.i, ptr %write_bytes.i.i.i, align 8
  %77 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ki_flags, align 8
  %and30.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end27.i.i.if.end33.i.i_crit_edge, label %if.then32.i.i

if.end27.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %if.end27.i.i
  %79 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bi_opf.i.i, align 8
  %81 = or i32 %80, 16777216
  store i32 %81, ptr %bi_opf.i.i, align 8
  %82 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i.i.i.i = icmp eq ptr %83, null
  br i1 %cmp.i.i.i.i, label %if.then32.i.i.if.end33.i.i_crit_edge, label %if.then.i86.i.i

if.then32.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i.i

if.then.i86.i.i:                                  ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %84 = or i32 %80, 18874368
  %85 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %bi_opf.i.i, align 8
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then.i86.i.i, %if.then32.i.i.if.end33.i.i_crit_edge, %if.end27.i.i.if.end33.i.i_crit_edge
  %call34.i.i = tail call i32 @submit_bio_wait(ptr noundef %call.i.i.i) #14
  %call35.i.i = tail call i32 @zonefs_file_write_dio_end_io(ptr noundef %iocb, i32 noundef %70, i32 noundef %call34.i.i, i32 noundef 0) #14
  tail call fastcc void @trace_zonefs_file_dio_append(ptr noundef %33, i32 noundef %70, i32 noundef %call34.i.i) #14
  br label %out_release.i.i

out_release.i.i:                                  ; preds = %if.end33.i.i, %bio_set_dev.exit.i.i.out_release.i.i_crit_edge
  %size.0.i.i = phi i32 [ -1, %bio_set_dev.exit.i.i.out_release.i.i_crit_edge ], [ %70, %if.end33.i.i ]
  %ret.0.i.i = phi i32 [ %call22.i.i, %bio_set_dev.exit.i.i.out_release.i.i_crit_edge ], [ %call34.i.i, %if.end33.i.i ]
  %86 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %88 = and i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp.i.not.i.i.i = icmp eq i16 %88, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i88.i.i, label %out_release.i.i.bio_release_pages.exit.i.i_crit_edge

out_release.i.i.bio_release_pages.exit.i.i_crit_edge: ; preds = %out_release.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_release_pages.exit.i.i

if.then.i88.i.i:                                  ; preds = %out_release.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__bio_release_pages(ptr noundef %call.i.i.i, i1 noundef zeroext false) #14
  br label %bio_release_pages.exit.i.i

bio_release_pages.exit.i.i:                       ; preds = %if.then.i88.i.i, %out_release.i.i.bio_release_pages.exit.i.i_crit_edge
  tail call void @bio_put(ptr noundef %call.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i.i)
  %cmp.i100.i = icmp sgt i32 %ret.0.i.i, -1
  br i1 %cmp.i100.i, label %if.then37.i.i, label %bio_release_pages.exit.i.i.if.end42.i_crit_edge

bio_release_pages.exit.i.i.if.end42.i_crit_edge:  ; preds = %bio_release_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.then37.i.i:                                    ; preds = %bio_release_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv38.i.i = sext i32 %size.0.i.i to i64
  %89 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ki_pos, align 8
  %add39.i.i = add i64 %90, %conv38.i.i
  store i64 %add39.i.i, ptr %ki_pos, align 8
  br label %if.end42.i

if.else40.i:                                      ; preds = %if.end32.i.if.else40.i_crit_edge, %if.end22.i.if.else40.i_crit_edge
  %call41.i = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @zonefs_iomap_ops, ptr noundef nonnull @zonefs_write_dio_ops, i32 noundef 0, i32 noundef 0) #14
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else40.i, %if.then37.i.i, %bio_release_pages.exit.i.i.if.end42.i_crit_edge, %iov_iter_truncate.exit.i.i.if.end42.i_crit_edge
  %ret.0.i = phi i32 [ %call41.i, %if.else40.i ], [ %size.0.i.i, %if.then37.i.i ], [ 0, %iov_iter_truncate.exit.i.i.if.end42.i_crit_edge ], [ %ret.0.i.i, %bio_release_pages.exit.i.i.if.end42.i_crit_edge ]
  %91 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_ztype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp44.i = icmp eq i32 %92, 1
  br i1 %cmp44.i, label %land.lhs.true46.i, label %if.end42.i.zonefs_file_dio_write.exit_crit_edge

if.end42.i.zonefs_file_dio_write.exit_crit_edge:  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_file_dio_write.exit

land.lhs.true46.i:                                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp47.i = icmp sgt i32 %ret.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %ret.0.i)
  %cmp49.i = icmp eq i32 %ret.0.i, -529
  %or.cond.i = or i1 %cmp47.i, %cmp49.i
  br i1 %or.cond.i, label %if.then51.i, label %land.lhs.true46.i.zonefs_file_dio_write.exit_crit_edge

land.lhs.true46.i.zonefs_file_dio_write.exit_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_file_dio_write.exit

if.then51.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select.i = select i1 %cmp47.i, i32 %ret.0.i, i32 %call14.i
  %i_truncate_mutex56.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex56.i, i32 noundef 0) #14
  %conv57102.i = zext i32 %spec.select.i to i64
  %i_wpoffset58.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 3
  %93 = ptrtoint ptr %i_wpoffset58.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %i_wpoffset58.i, align 8
  %add.i = add i64 %94, %conv57102.i
  store i64 %add.i, ptr %i_wpoffset58.i, align 8
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex56.i) #14
  br label %zonefs_file_dio_write.exit

zonefs_file_dio_write.exit.thread44:              ; preds = %if.then26.i.zonefs_file_dio_write.exit.thread44_crit_edge, %if.end17.i.zonefs_file_dio_write.exit.thread44_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i99.i) #14
  br label %cleanup18

zonefs_file_dio_write.exit:                       ; preds = %if.then51.i, %land.lhs.true46.i.zonefs_file_dio_write.exit_crit_edge, %if.end42.i.zonefs_file_dio_write.exit_crit_edge, %if.end13.i.zonefs_file_dio_write.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.then51.i ], [ %ret.0.i, %if.end42.i.zonefs_file_dio_write.exit_crit_edge ], [ %call14.i, %if.end13.i.zonefs_file_dio_write.exit_crit_edge ], [ %ret.0.i, %land.lhs.true46.i.zonefs_file_dio_write.exit_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i99.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %ret.1.i)
  %cmp13.not = icmp eq i32 %ret.1.i, -15
  br i1 %cmp13.not, label %zonefs_file_dio_write.exit.if.end16_crit_edge, label %zonefs_file_dio_write.exit.cleanup18_crit_edge

zonefs_file_dio_write.exit.cleanup18_crit_edge:   ; preds = %zonefs_file_dio_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

zonefs_file_dio_write.exit.if.end16_crit_edge:    ; preds = %zonefs_file_dio_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end16:                                         ; preds = %zonefs_file_dio_write.exit.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %95 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iocb, align 8
  %f_inode.i.i28 = getelementptr inbounds %struct.file, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %f_inode.i.i28 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %f_inode.i.i28, align 8
  %i_ztype.i29 = getelementptr inbounds %struct.zonefs_inode_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %i_ztype.i29 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_ztype.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.not.i = icmp eq i32 %100, 0
  br i1 %cmp.not.i, label %if.end.i32, label %if.end16.cleanup18_crit_edge

if.end16.cleanup18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end.i32:                                       ; preds = %if.end16
  %101 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ki_flags, align 8
  %and.i31 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.not.i = icmp eq i32 %and.i31, 0
  %i_rwsem.i44.i = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 25
  br i1 %tobool.not.i, label %if.else.i35, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i32
  %call.i.i33 = tail call i32 @down_write_trylock(ptr noundef %i_rwsem.i44.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool4.not.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %tobool4.not.i34, label %if.then2.i.cleanup18_crit_edge, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then2.i.cleanup18_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.else.i35:                                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @down_write(ptr noundef %i_rwsem.i44.i) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i35, %if.then2.i.if.end7.i_crit_edge
  %call8.i = tail call fastcc i32 @zonefs_write_checks(ptr noundef %iocb, ptr noundef %from) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 1
  br i1 %cmp9.i, label %if.end7.i.inode_unlock.thread.i_crit_edge, label %if.end11.i

if.end7.i.inode_unlock.thread.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_unlock.thread.i

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = tail call i32 @iomap_file_buffered_write(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @zonefs_iomap_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then23.i, label %if.else15.i

if.else15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call12.i)
  %cmp16.i = icmp eq i32 %call12.i, -5
  br i1 %cmp16.i, label %if.then18.i, label %if.else15.i.inode_unlock.thread.i_crit_edge

if.else15.i.inode_unlock.thread.i_crit_edge:      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_unlock.thread.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @zonefs_io_error(ptr noundef %98, i1 noundef zeroext true) #14
  br label %inode_unlock.thread.i

inode_unlock.thread.i:                            ; preds = %if.then18.i, %if.else15.i.inode_unlock.thread.i_crit_edge, %if.end7.i.inode_unlock.thread.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call12.i, %if.else15.i.inode_unlock.thread.i_crit_edge ], [ -5, %if.then18.i ], [ %call8.i, %if.end7.i.inode_unlock.thread.i_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i44.i) #14
  br label %cleanup18

if.then23.i:                                      ; preds = %if.end11.i
  %conv51.i = zext i32 %call12.i to i64
  %103 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %ki_pos, align 8
  %add.i37 = add i64 %104, %conv51.i
  store i64 %add.i37, ptr %ki_pos, align 8
  tail call void @up_write(ptr noundef %i_rwsem.i44.i) #14
  %105 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ki_flags, align 8
  %and.i.i38 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.not.i.i39 = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.not.i.i39, label %if.then23.i.if.end8.i.i_crit_edge, label %if.then.i.i

if.then23.i.if.end8.i.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %if.then23.i
  %107 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %iocb, align 8
  %109 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %ki_pos, align 8
  %sub.i.i = sub i64 %110, %conv51.i
  %sub2.i.i = add i64 %110, -1
  %and4.i.i = lshr i32 %106, 2
  %and4.lobit.i.i = and i32 %and4.i.i, 1
  %111 = xor i32 %and4.lobit.i.i, 1
  %call.i46.i = tail call i32 @vfs_fsync_range(ptr noundef %108, i64 noundef %sub.i.i, i64 noundef %sub2.i.i, i32 noundef %111) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool6.not.i.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.end8.i.i_crit_edge, label %if.then.i.i.cleanup18_crit_edge

if.then.i.i.cleanup18_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i.i.if.end8.i.i_crit_edge, %if.then23.i.if.end8.i.i_crit_edge
  br label %cleanup18

cleanup18:                                        ; preds = %if.end8.i.i, %if.then.i.i.cleanup18_crit_edge, %inode_unlock.thread.i, %if.then2.i.cleanup18_crit_edge, %if.end16.cleanup18_crit_edge, %zonefs_file_dio_write.exit.cleanup18_crit_edge, %zonefs_file_dio_write.exit.thread44, %if.then8.i.cleanup18_crit_edge, %if.then11.cleanup18_crit_edge, %if.end5.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.1 = phi i32 [ %ret.1.i, %zonefs_file_dio_write.exit.cleanup18_crit_edge ], [ -1, %entry.cleanup18_crit_edge ], [ -30, %if.end.cleanup18_crit_edge ], [ -27, %if.end5.cleanup18_crit_edge ], [ -22, %zonefs_file_dio_write.exit.thread44 ], [ -5, %if.end16.cleanup18_crit_edge ], [ -11, %if.then2.i.cleanup18_crit_edge ], [ %ret.0.ph.i, %inode_unlock.thread.i ], [ %call.i46.i, %if.then.i.i.cleanup18_crit_edge ], [ %call12.i, %if.end8.i.i ], [ -11, %if.then8.i.cleanup18_crit_edge ], [ -95, %if.then11.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_mmap(ptr noundef %file, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %6 = and i32 %5, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %6)
  %.not = icmp eq i32 %6, 40
  br i1 %.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #14
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %9 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @zonefs_file_vm_ops, ptr %vm_ops, align 4
  br label %return

return:                                           ; preds = %file_accessed.exit, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %file_accessed.exit ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %file) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %i_ztype.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ztype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %zonefs_file_use_exp_open.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

zonefs_file_use_exp_open.exit:                    ; preds = %if.end.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode.i, align 8
  %and4.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i.not, label %zonefs_file_use_exp_open.exit.cleanup_crit_edge, label %if.then2

zonefs_file_use_exp_open.exit.cleanup_crit_edge:  ; preds = %zonefs_file_use_exp_open.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %zonefs_file_use_exp_open.exit
  %i_truncate_mutex.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex.i, i32 noundef 0) #14
  %i_wr_refcnt.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 7
  %10 = ptrtoint ptr %i_wr_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_wr_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i11 = icmp eq i32 %11, 0
  br i1 %tobool.not.i11, label %if.then.i, label %if.then2.if.end14.i_crit_edge

if.then2.if.end14.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then.i:                                        ; preds = %if.then2
  %s_open_zones.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_open_zones.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !307
  tail call void @llvm.prefetch.p0(ptr %s_open_zones.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_open_zones.i, ptr %s_open_zones.i, i32 1, ptr elementtype(i32) %s_open_zones.i) #14, !srcloc !308
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !309
  %s_max_open_zones.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %s_max_open_zones.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_max_open_zones.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %14)
  %cmp.i = icmp ugt i32 %asmresult.i.i.i.i.i, %14
  br i1 %cmp.i, label %if.then3.i, label %if.end.i12

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_open_zones.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %s_open_zones.i, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_open_zones.i, ptr %s_open_zones.i, i32 1, ptr elementtype(i32) %s_open_zones.i) #14, !srcloc !310
  br label %zonefs_open_zone.exit

if.end.i12:                                       ; preds = %if.then.i
  %call5.i = tail call fastcc i64 @i_size_read(ptr noundef %inode) #14
  %i_max_size.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 4
  %16 = ptrtoint ptr %i_max_size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_max_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %17)
  %cmp6.i = icmp slt i64 %call5.i, %17
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i12.if.end14.i_crit_edge

if.end.i12.if.end14.i_crit_edge:                  ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.then7.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then7.i.if.end.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then7.i
  %dep_map.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6, i32 5
  %call.i.i31.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i31.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !289

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 36, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then7.i.if.end.i.i_crit_edge
  tail call fastcc void @trace_zonefs_zone_mgmt(ptr noundef %inode, i32 noundef 10) #14
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev.i.i, align 4
  %i_zsector.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %23 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_zsector.i.i, align 8
  %i_zone_size.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 5
  %25 = ptrtoint ptr %i_zone_size.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_zone_size.i.i, align 8
  %shr.i.i = ashr i64 %26, 9
  %call25.i.i = tail call i32 @blkdev_zone_mgmt(ptr noundef %22, i32 noundef 10, i64 noundef %24, i64 noundef %shr.i.i, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 39
  %call33.i.i = tail call ptr @blk_op_str(i32 noundef 10) #14
  %29 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_zsector.i.i, align 8
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %s_id.i.i, ptr noundef %call33.i.i, i64 noundef %30, i32 noundef %call25.i.i) #17
  %call.i.i30.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_open_zones.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %s_open_zones.i, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_open_zones.i, ptr %s_open_zones.i, i32 1, ptr elementtype(i32) %s_open_zones.i) #14, !srcloc !310
  br label %zonefs_open_zone.exit

if.end12.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_flags.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 8
  %32 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags.i, align 8
  %or.i = or i32 %33, 1
  store i32 %or.i, ptr %i_flags.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end12.i, %if.end.i12.if.end14.i_crit_edge, %if.then2.if.end14.i_crit_edge
  %34 = ptrtoint ptr %i_wr_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_wr_refcnt.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %i_wr_refcnt.i, align 4
  br label %zonefs_open_zone.exit

zonefs_open_zone.exit:                            ; preds = %if.end14.i, %if.then10.i, %if.then3.i
  %ret.1.i = phi i32 [ 0, %if.end14.i ], [ -16, %if.then3.i ], [ %call25.i.i, %if.then10.i ]
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex.i) #14
  br label %cleanup

cleanup:                                          ; preds = %zonefs_open_zone.exit, %zonefs_file_use_exp_open.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.i, %zonefs_open_zone.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %zonefs_file_use_exp_open.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_release(ptr noundef %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  %err.i.i = alloca %struct.zonefs_ioerr_data, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %i_ztype.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %i_ztype.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ztype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %zonefs_file_use_exp_open.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

zonefs_file_use_exp_open.exit:                    ; preds = %if.end.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode.i, align 8
  %and4.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i.not, label %zonefs_file_use_exp_open.exit.if.end_crit_edge, label %if.then

zonefs_file_use_exp_open.exit.if.end_crit_edge:   ; preds = %zonefs_file_use_exp_open.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %zonefs_file_use_exp_open.exit
  %i_truncate_mutex.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex.i, i32 noundef 0) #14
  %i_wr_refcnt.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 7
  %10 = ptrtoint ptr %i_wr_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_wr_refcnt.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %i_wr_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i2 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i2, label %if.then.i, label %if.then.zonefs_close_zone.exit_crit_edge

if.then.zonefs_close_zone.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_close_zone.exit

if.then.i:                                        ; preds = %if.then
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i4 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i4, align 16
  %i_flags.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 8
  %16 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags.i, align 8
  %and.i5 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool4.not.i = icmp eq i32 %and.i5, 0
  br i1 %tobool4.not.i, label %if.then.i.dec21.i_crit_edge, label %if.end.i6

if.then.i.dec21.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dec21.i

if.end.i6:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i6.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end.i6.if.end.i.i_crit_edge:                   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end.i6
  %dep_map.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6, i32 5
  %call.i.i36.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i36.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !289

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 36, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end.i6.if.end.i.i_crit_edge
  tail call fastcc void @trace_zonefs_zone_mgmt(ptr noundef %inode, i32 noundef 11) #14
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev.i.i, align 4
  %i_zsector.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %23 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_zsector.i.i, align 8
  %i_zone_size.i.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 5
  %25 = ptrtoint ptr %i_zone_size.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_zone_size.i.i, align 8
  %shr.i.i = ashr i64 %26, 9
  %call25.i.i = tail call i32 @blkdev_zone_mgmt(ptr noundef %22, i32 noundef 11, i64 noundef %24, i64 noundef %shr.i.i, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end.i.i.if.end18.i_crit_edge, label %if.then8.i

if.end.i.i.if.end18.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then8.i:                                       ; preds = %if.end.i.i
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 39
  %call33.i.i = tail call ptr @blk_op_str(i32 noundef 11) #14
  %29 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_zsector.i.i, align 8
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %s_id.i.i, ptr noundef %call33.i.i, i64 noundef %30, i32 noundef %call25.i.i) #17
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %35 = ptrtoint ptr %i_zone_size.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_zone_size.i.i, align 8
  %s_zone_sectors_shift.i.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %34, i32 0, i32 7
  %37 = ptrtoint ptr %s_zone_sectors_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_zone_sectors_shift.i.i, align 4
  %add.i.i = add i32 %38, 9
  %sh_prom.i.i = zext i32 %add.i.i to i64
  %shr.i39.i = ashr i64 %36, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i39.i to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err.i.i) #14
  %39 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -4278190081, ptr %err.i.i, align 8, !annotation !290
  store ptr %inode, ptr %err.i.i, align 8
  %40 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags1.i.i.i, align 4
  %or.i.i.i = or i32 %45, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  %s_bdev.i40.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 26
  %46 = ptrtoint ptr %s_bdev.i40.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_bdev.i40.i, align 4
  %48 = ptrtoint ptr %i_zsector.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_zsector.i.i, align 8
  %call6.i.i = call i32 @blkdev_report_zones(ptr noundef %47, i64 noundef %49, i32 noundef %conv.i.i, ptr noundef nonnull @zonefs_io_error_cb, ptr noundef nonnull %err.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %conv.i.i)
  %cmp.not.i42.i = icmp eq i32 %call6.i.i, %conv.i.i
  br i1 %cmp.not.i42.i, label %if.then8.i.__zonefs_io_error.exit.i_crit_edge, label %do.end.i44.i

if.then8.i.__zonefs_io_error.exit.i_crit_edge:    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__zonefs_io_error.exit.i

do.end.i44.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id.i43.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 39
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %50 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_ino.i.i, align 8
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %s_id.i43.i, i32 noundef %51, i32 noundef %call6.i.i) #17
  br label %__zonefs_io_error.exit.i

__zonefs_io_error.exit.i:                         ; preds = %do.end.i44.i, %if.then8.i.__zonefs_io_error.exit.i_crit_edge
  %and.i.i.i = and i32 %45, 524288
  %52 = call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i17.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i17.i.i to ptr
  %task.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i18.i.i, align 8
  %flags1.i19.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %flags1.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags1.i19.i.i, align 4
  %and.i20.i.i = and i32 %57, -524289
  %or.i21.i.i = or i32 %and.i20.i.i, %and.i.i.i
  store i32 %or.i21.i.i, ptr %flags1.i19.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err.i.i) #14
  %58 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_flags.i, align 8
  %and10.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %__zonefs_io_error.exit.i.if.end18.i_crit_edge, label %land.lhs.true.i

__zonefs_io_error.exit.i.if.end18.i_crit_edge:    ; preds = %__zonefs_io_error.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %__zonefs_io_error.exit.i
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %60 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_flags.i, align 4
  %and12.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.end.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 39
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %s_id.i) #17
  %62 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %63, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %land.lhs.true.i.if.end18.i_crit_edge, %__zonefs_io_error.exit.i.if.end18.i_crit_edge, %if.end.i.i.if.end18.i_crit_edge
  %64 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_flags.i, align 8
  %and20.i = and i32 %65, -2
  store i32 %and20.i, ptr %i_flags.i, align 8
  br label %dec21.i

dec21.i:                                          ; preds = %if.end18.i, %if.then.i.dec21.i_crit_edge
  %s_open_zones.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %15, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_open_zones.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %s_open_zones.i, i32 1, i32 3, i32 1) #14
  %66 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_open_zones.i, ptr %s_open_zones.i, i32 1, ptr elementtype(i32) %s_open_zones.i) #14, !srcloc !310
  br label %zonefs_close_zone.exit

zonefs_close_zone.exit:                           ; preds = %dec21.i, %if.then.zonefs_close_zone.exit_crit_edge
  call void @mutex_unlock(ptr noundef %i_truncate_mutex.i) #14
  br label %if.end

if.end:                                           ; preds = %zonefs_close_zone.exit, %zonefs_file_use_exp_open.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !288

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end6:                                          ; preds = %if.end
  %call5 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.end6.if.then12_crit_edge

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %call9 = tail call i32 @blkdev_issue_flush(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  %ret.125 = phi i32 [ %call9, %if.end10.if.then12_crit_edge ], [ %call5, %if.end6.if.then12_crit_edge ]
  tail call fastcc void @zonefs_io_error(ptr noundef %1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %ret.125, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zonefs_io_error(ptr noundef %inode, i1 noundef zeroext %write) unnamed_addr #0 align 64 {
entry:
  %err.i = alloca %struct.zonefs_ioerr_data, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_truncate_mutex = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %frombool.i = zext i1 %write to i8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_zone_size.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 5
  %4 = ptrtoint ptr %i_zone_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_zone_size.i, align 8
  %s_zone_sectors_shift.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %s_zone_sectors_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_zone_sectors_shift.i, align 4
  %add.i = add i32 %7, 9
  %sh_prom.i = zext i32 %add.i to i64
  %shr.i = ashr i64 %5, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err.i) #14
  %8 = ptrtoint ptr %err.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %err.i, align 8, !annotation !290
  store ptr %inode, ptr %err.i, align 8
  %write3.i = getelementptr inbounds %struct.zonefs_ioerr_data, ptr %err.i, i32 0, i32 1
  %9 = ptrtoint ptr %write3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %write3.i, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1.i.i, align 4
  %or.i.i = or i32 %15, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %i_zsector.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %18 = ptrtoint ptr %i_zsector.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_zsector.i, align 8
  %call6.i = call i32 @blkdev_report_zones(ptr noundef %17, i64 noundef %19, i32 noundef %conv.i, ptr noundef nonnull @zonefs_io_error_cb, ptr noundef nonnull %err.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %call6.i, %conv.i
  br i1 %cmp.not.i, label %entry.__zonefs_io_error.exit_crit_edge, label %do.end.i

entry.__zonefs_io_error.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__zonefs_io_error.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %s_id.i, i32 noundef %21, i32 noundef %call6.i) #17
  br label %__zonefs_io_error.exit

__zonefs_io_error.exit:                           ; preds = %do.end.i, %entry.__zonefs_io_error.exit_crit_edge
  %and.i.i = and i32 %15, 524288
  %22 = call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i17.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i17.i to ptr
  %task.i18.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i18.i, align 8
  %flags1.i19.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %flags1.i19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags1.i19.i, align 4
  %and.i20.i = and i32 %27, -524289
  %or.i21.i = or i32 %and.i20.i, %and.i.i
  store i32 %or.i21.i, ptr %flags1.i19.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err.i) #14
  call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %add = add i64 %length, %offset
  %i_max_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp sgt i64 %add, %3
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b185 = load i1, ptr @zonefs_iomap_begin.__already_done, align 1
  br i1 %.b185, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !288

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @zonefs_iomap_begin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 73, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end37:                                         ; preds = %entry
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 1
  %4 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp39 = icmp ne i32 %5, 1
  %6 = and i32 %flags, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp ne i32 %6, 1
  %8 = or i1 %7, %cmp39
  br i1 %8, label %if.end101, label %land.rhs53

land.rhs53:                                       ; preds = %if.end37
  %.b183184 = load i1, ptr @zonefs_iomap_begin.__already_done.87, align 1
  br i1 %.b183184, label %land.rhs53.cleanup_crit_edge, label %if.then64, !prof !288

land.rhs53.cleanup_crit_edge:                     ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then64:                                        ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @zonefs_iomap_begin.__already_done.87, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 82, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end101:                                        ; preds = %if.end37
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  %i_truncate_mutex = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %call102 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call102, i64 %offset)
  %cmp103.not = icmp sgt i64 %call102, %offset
  %spec.select = select i1 %cmp103.not, i16 2, i16 3
  %9 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %spec.select, ptr %9, align 8
  br i1 %tobool40.not, label %if.else111, label %if.then109

if.then109:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_max_size, align 8
  %sub = sub i64 %12, %offset
  br label %if.end115

if.else111:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  %sub112 = sub i64 %call102, %offset
  %13 = tail call i64 @llvm.smin.i64(i64 %sub112, i64 %length)
  br label %if.end115

if.end115:                                        ; preds = %if.else111, %if.then109
  %length.addr.0 = phi i64 [ %sub, %if.then109 ], [ %13, %if.else111 ]
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize, align 16
  %sub117 = add i32 %15, -1
  %conv = zext i32 %sub117 to i64
  %conv120 = zext i32 %15 to i64
  %sub118 = add i64 %offset, -1
  %sub121 = add i64 %sub118, %conv120
  %add122 = sub i64 %sub121, %conv
  %neg = sub nsw i64 0, %conv120
  %and126 = and i64 %add122, %neg
  %offset127 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %16 = ptrtoint ptr %offset127 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %and126, ptr %offset127, align 8
  %17 = load i32, ptr %s_blocksize, align 16
  %conv130 = zext i32 %17 to i64
  %add128 = add i64 %sub118, %length.addr.0
  %add132 = add i64 %add128, %conv130
  %neg136 = sub nsw i64 0, %conv130
  %and137 = and i64 %add132, %neg136
  %sub139 = sub i64 %and137, %and126
  %length140 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %18 = ptrtoint ptr %length140 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub139, ptr %length140, align 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %bdev, align 4
  %i_zsector = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 2
  %24 = ptrtoint ptr %i_zsector to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_zsector, align 8
  %shl = shl i64 %25, 9
  %add143 = add i64 %shl, %and126
  %26 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add143, ptr %iomap, align 8
  tail call fastcc void @trace_zonefs_iomap_begin(ptr noundef %inode, ptr noundef %iomap)
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then64, %land.rhs53.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end115 ], [ -5, %if.then ], [ -5, %if.then64 ], [ -5, %land.rhs.cleanup_crit_edge ], [ -5, %land.rhs53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_zonefs_iomap_begin(ptr noundef %inode, ptr noundef %iomap) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_iomap_begin, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_zonefs_iomap_begin, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !302

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !278) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !288

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !311
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_iomap_begin, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %inode, ptr noundef %iomap) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !312
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !312
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !288

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !305
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_iomap_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_zonefs_iomap_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_zonefs_iomap_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 94, ptr noundef nonnull @.str.70) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !306
  %38 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_read_dio_end_io(ptr nocapture noundef readonly %iocb, i32 noundef %size, i32 noundef %error, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  tail call fastcc void @zonefs_io_error(ptr noundef %3, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i32 %error
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_io_error_cb(ptr nocapture noundef %zone, i32 noundef %idx, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call3 = tail call fastcc i64 @zonefs_check_zone_condition(ptr noundef %1, ptr noundef %zone, i1 noundef zeroext true, i1 noundef zeroext false)
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %cond = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %6 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cond, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %7, label %land.lhs.true10 [
    i8 15, label %entry.if.end_crit_edge
    i8 13, label %entry.if.end_crit_edge174
  ]

entry.if.end_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %write = getelementptr inbounds %struct.zonefs_ioerr_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %call3)
  %cmp12 = icmp eq i64 %call4, %call3
  %or.cond = select i1 %tobool.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge174
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14 = icmp ne i32 %12, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %call3)
  %cmp17.not = icmp eq i64 %call4, %call3
  %or.cond148 = select i1 %cmp14, i1 true, i1 %cmp17.not
  br i1 %or.cond148, label %if.end.if.end21_crit_edge, label %do.end

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %s_id = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %s_id, i32 noundef %14, i64 noundef %call4, i64 noundef %call3) #17
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.if.end21_crit_edge
  %15 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %16)
  %cmp24 = icmp eq i8 %16, 15
  br i1 %cmp24, label %if.end21.do.end30_crit_edge, label %lor.lhs.false

if.end21.do.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

lor.lhs.false:                                    ; preds = %if.end21
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 8
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %lor.lhs.false.do.end30_crit_edge

lor.lhs.false.do.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

do.end30:                                         ; preds = %lor.lhs.false.do.end30_crit_edge, %if.end21.do.end30_crit_edge
  %s_id32 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %i_ino34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino34, align 8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %s_id32, i32 noundef %20) #17
  %21 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %22)
  %cmp38.not = icmp eq i8 %22, 15
  br i1 %cmp38.not, label %do.end30.if.end70_crit_edge, label %zonefs_check_zone_condition.exit

do.end30.if.end70_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

zonefs_check_zone_condition.exit:                 ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 15, ptr %cond, align 1
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %25, 8
  store i32 %or.i, ptr %i_flags.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 8
  %28 = and i16 %27, -512
  store i16 %28, ptr %1, align 8
  %29 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %zone, align 8
  %wp.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %31 = ptrtoint ptr %wp.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %wp.i, align 8
  br label %if.end70

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %16)
  %cmp46 = icmp ne i8 %16, 13
  %and50 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond149 = select i1 %cmp46, i1 %tobool51.not, i1 false
  br i1 %or.cond149, label %if.else.if.end70_crit_edge, label %do.end55

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

do.end55:                                         ; preds = %if.else
  %s_id57 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %i_ino59 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino59, align 8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %s_id57, i32 noundef %33) #17
  %34 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %35)
  %cmp63.not = icmp eq i8 %35, 13
  br i1 %cmp63.not, label %do.end55.if.end70_crit_edge, label %zonefs_check_zone_condition.exit171

do.end55.if.end70_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

zonefs_check_zone_condition.exit171:              ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 13, ptr %cond, align 1
  %i_flags18.i156 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %i_flags18.i156 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags18.i156, align 4
  %or19.i157 = or i32 %38, 8
  store i32 %or19.i157, ptr %i_flags18.i156, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 8
  %41 = and i16 %40, -147
  store i16 %41, ptr %1, align 8
  %call34.i158 = tail call fastcc i64 @i_size_read(ptr noundef %1) #14
  br label %if.end70

if.end70:                                         ; preds = %zonefs_check_zone_condition.exit171, %do.end55.if.end70_crit_edge, %if.else.if.end70_crit_edge, %zonefs_check_zone_condition.exit, %do.end30.if.end70_crit_edge
  %data_size.0 = phi i64 [ 0, %zonefs_check_zone_condition.exit ], [ %call3, %do.end30.if.end70_crit_edge ], [ %call34.i158, %zonefs_check_zone_condition.exit171 ], [ %call3, %do.end55.if.end70_crit_edge ], [ %call3, %if.else.if.end70_crit_edge ]
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 8
  %and72 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end86_crit_edge, label %land.lhs.true74

if.end70.if.end86_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.lhs.true74:                                  ; preds = %if.end70
  %44 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cond, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %45, label %land.lhs.true74.if.end86_crit_edge [
    i8 15, label %land.lhs.true74.if.then84_crit_edge
    i8 13, label %land.lhs.true74.if.then84_crit_edge175
  ]

land.lhs.true74.if.then84_crit_edge175:           ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then84

land.lhs.true74.if.then84_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then84

land.lhs.true74.if.end86_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then84:                                        ; preds = %land.lhs.true74.if.then84_crit_edge, %land.lhs.true74.if.then84_crit_edge175
  %i_flags = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_flags, align 8
  %and85 = and i32 %48, -2
  store i32 %and85, ptr %i_flags, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %land.lhs.true74.if.end86_crit_edge, %if.end70.if.end86_crit_edge
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %5, align 8
  %and88 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.if.end100_crit_edge, label %land.lhs.true90

if.end86.if.end100_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

land.lhs.true90:                                  ; preds = %if.end86
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %51 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end95, label %land.lhs.true90.if.end100_crit_edge

land.lhs.true90.if.end100_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

do.end95:                                         ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #16
  %s_id97 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %s_id97) #17
  %53 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %54, 1
  store i32 %or, ptr %s_flags.i, align 4
  br label %if.end100

if.end100:                                        ; preds = %do.end95, %land.lhs.true90.if.end100_crit_edge, %if.end86.if.end100_crit_edge
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i, i64 %data_size.0)
  %cmp.i172 = icmp eq i64 %call1.i, %data_size.0
  br i1 %cmp.i172, label %if.end100.zonefs_update_stats.exit_crit_edge, label %if.end.i

if.end100.zonefs_update_stats.exit_crit_edge:     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_update_stats.exit

if.end.i:                                         ; preds = %if.end100
  %s_lock.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %58, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %s_lock.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i, i64 %data_size.0)
  %cmp2.i = icmp sgt i64 %call1.i, %data_size.0
  br i1 %cmp2.i, label %if.then3.i, label %if.else11.i

if.then3.i:                                       ; preds = %if.end.i
  %sub.i173 = sub i64 %call1.i, %data_size.0
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %60 to i64
  %shr.i = ashr i64 %sub.i173, %sh_prom.i
  %s_used_blocks.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %58, i32 0, i32 10
  %61 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %s_used_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %shr.i)
  %cmp4.i = icmp sgt i64 %62, %shr.i
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub8.i = sub i64 %62, %shr.i
  %63 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %sub8.i, ptr %s_used_blocks.i, align 8
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %s_used_blocks.i, align 8
  br label %if.end25.i

if.else11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub12.i = sub i64 %data_size.0, %call1.i
  %s_blocksize_bits13.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 2
  %65 = ptrtoint ptr %s_blocksize_bits13.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %s_blocksize_bits13.i, align 4
  %sh_prom15.i = zext i8 %66 to i64
  %shr16.i = ashr i64 %sub12.i, %sh_prom15.i
  %s_used_blocks17.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %58, i32 0, i32 10
  %67 = ptrtoint ptr %s_used_blocks17.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %s_used_blocks17.i, align 8
  %add.i = add i64 %shr16.i, %68
  %s_blocks.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %58, i32 0, i32 9
  %69 = ptrtoint ptr %s_blocks.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %s_blocks.i, align 8
  %71 = tail call i64 @llvm.smin.i64(i64 %add.i, i64 %70) #14
  %72 = ptrtoint ptr %s_used_blocks17.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %s_used_blocks17.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else11.i, %if.else.i, %if.then6.i
  tail call void @_raw_spin_unlock(ptr noundef %s_lock.i) #14
  br label %zonefs_update_stats.exit

zonefs_update_stats.exit:                         ; preds = %if.end25.i, %if.end100.zonefs_update_stats.exit_crit_edge
  tail call fastcc void @zonefs_i_size_write(ptr noundef %1, i64 noundef %data_size.0)
  %i_wpoffset = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 3
  %73 = ptrtoint ptr %i_wpoffset to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %data_size.0, ptr %i_wpoffset, align 8
  br label %cleanup

cleanup:                                          ; preds = %zonefs_update_stats.exit, %land.lhs.true10.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zonefs_i_size_write(ptr noundef %inode, i64 noundef %isize) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !314
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %entry.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

entry.i_size_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !315
  %9 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !316
  %18 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i7.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i29.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i9.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %29, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !317
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !318
  %37 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i12.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %40, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !288

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.101, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %entry.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !319
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %isize, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !320
  %46 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !321
  %48 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i26.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %i_max_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 4
  %52 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %isize)
  %cmp.not = icmp sgt i64 %53, %isize
  br i1 %cmp.not, label %i_size_write.exit.if.end_crit_edge, label %if.then

i_size_write.exit.if.end_crit_edge:               ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_flags = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 8
  %54 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_flags, align 8
  %and = and i32 %55, -2
  store i32 %and, ptr %i_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %i_size_write.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zonefs_write_checks(ptr nocapture noundef %iocb, ptr nocapture noundef %from) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %8 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ki_flags, align 8
  %10 = and i32 %9, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %and14 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %if.then16

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %if.end18, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %i_truncate_mutex = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %i_wpoffset = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %i_wpoffset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_wpoffset, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %16 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %ki_pos, align 8
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end12.if.end20_crit_edge
  %ki_pos21 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %17 = ptrtoint ptr %ki_pos21 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ki_pos21, align 8
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 8
  %conv = zext i32 %20 to i64
  %21 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 111
  %27 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %28, i32 0, i32 51, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %conv.i = zext i32 %30 to i64
  %i_max_size.i = getelementptr inbounds %struct.zonefs_inode_info, ptr %22, i32 0, i32 4
  %31 = ptrtoint ptr %i_max_size.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_max_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.not.i = icmp eq i32 %30, -1
  br i1 %cmp.not.i, label %if.end20.if.end11.i_crit_edge, label %if.then.i

if.end20.if.end11.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv.i)
  %cmp4.not.i = icmp slt i64 %18, %conv.i
  br i1 %cmp4.not.i, label %if.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i, align 8
  %call8.i = tail call i32 @send_sig(i32 noundef 25, ptr noundef %36, i32 noundef 0) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub i64 %conv.i, %18
  %37 = tail call i64 @llvm.smin.i64(i64 %sub.i, i64 %conv) #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %if.end20.if.end11.i_crit_edge
  %count.addr.0.i = phi i64 [ %37, %if.end.i ], [ %conv, %if.end20.if.end11.i_crit_edge ]
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %39, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %40 = tail call i64 @llvm.smin.i64(i64 %32, i64 2147483647) #14
  %max_size.0.i = select i1 %tobool.not.i, i64 %40, i64 %32
  call void @__sanitizer_cov_trace_cmp8(i64 %max_size.0.i, i64 %18)
  %cmp21.not.i = icmp sgt i64 %max_size.0.i, %18
  br i1 %cmp21.not.i, label %zonefs_write_check_limits.exit, label %if.end11.i.cleanup_crit_edge, !prof !288

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

zonefs_write_check_limits.exit:                   ; preds = %if.end11.i
  %sub27.i = sub i64 %max_size.0.i, %18
  %41 = tail call i64 @llvm.smin.i64(i64 %count.addr.0.i, i64 %sub27.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp24 = icmp slt i64 %41, 0
  %extract.t = trunc i64 %41 to i32
  br i1 %cmp24, label %zonefs_write_check_limits.exit.cleanup_crit_edge, label %if.end28

zonefs_write_check_limits.exit.cleanup_crit_edge: ; preds = %zonefs_write_check_limits.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %zonefs_write_check_limits.exit
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count.i, align 8
  %conv.i49 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv.i49)
  %cmp.i = icmp ult i64 %41, %conv.i49
  br i1 %cmp.i, label %if.then.i50, label %if.end28.iov_iter_truncate.exit_crit_edge

if.end28.iov_iter_truncate.exit_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %iov_iter_truncate.exit

if.then.i50:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %extract.t, ptr %count.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i50, %if.end28.iov_iter_truncate.exit_crit_edge
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %iov_iter_truncate.exit, %zonefs_write_check_limits.exit.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.then6.i, %if.then16.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %iov_iter_truncate.exit ], [ -26, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ %extract.t, %zonefs_write_check_limits.exit.cleanup_crit_edge ], [ -27, %if.then6.i ], [ -27, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_iov_iter_get_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_file_write_dio_end_io(ptr nocapture noundef readonly %iocb, i32 noundef %size, i32 noundef %error, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @zonefs_io_error(ptr noundef %3, i1 noundef zeroext true)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not = icmp eq i32 %size, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %i_truncate_mutex = getelementptr inbounds %struct.zonefs_inode_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ki_pos, align 8
  %conv = sext i32 %size to i64
  %add = add i64 %7, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %add)
  %cmp5 = icmp slt i64 %call4, %add
  br i1 %cmp5, label %if.then7, label %if.then3.if.end14_crit_edge

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then7:                                         ; preds = %if.then3
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i, i64 %add)
  %cmp.i = icmp eq i64 %call1.i, %add
  br i1 %cmp.i, label %if.then7.zonefs_update_stats.exit_crit_edge, label %if.end.i

if.then7.zonefs_update_stats.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %zonefs_update_stats.exit

if.end.i:                                         ; preds = %if.then7
  %s_lock.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %s_lock.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i, i64 %add)
  %cmp2.i = icmp sgt i64 %call1.i, %add
  br i1 %cmp2.i, label %if.then3.i, label %if.else11.i

if.then3.i:                                       ; preds = %if.end.i
  %sub.i = sub i64 %call1.i, %add
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %13 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %s_used_blocks.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %s_used_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %shr.i)
  %cmp4.i = icmp sgt i64 %15, %shr.i
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub8.i = sub i64 %15, %shr.i
  %16 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub8.i, ptr %s_used_blocks.i, align 8
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %s_used_blocks.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %s_used_blocks.i, align 8
  br label %if.end25.i

if.else11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub12.i = sub i64 %add, %call1.i
  %s_blocksize_bits13.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %s_blocksize_bits13.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s_blocksize_bits13.i, align 4
  %sh_prom15.i = zext i8 %19 to i64
  %shr16.i = ashr i64 %sub12.i, %sh_prom15.i
  %s_used_blocks17.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %11, i32 0, i32 10
  %20 = ptrtoint ptr %s_used_blocks17.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_used_blocks17.i, align 8
  %add.i = add i64 %shr16.i, %21
  %s_blocks.i = getelementptr inbounds %struct.zonefs_sb_info, ptr %11, i32 0, i32 9
  %22 = ptrtoint ptr %s_blocks.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_blocks.i, align 8
  %24 = tail call i64 @llvm.smin.i64(i64 %add.i, i64 %23) #14
  %25 = ptrtoint ptr %s_used_blocks17.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %s_used_blocks17.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else11.i, %if.else.i, %if.then6.i
  tail call void @_raw_spin_unlock(ptr noundef %s_lock.i) #14
  br label %zonefs_update_stats.exit

zonefs_update_stats.exit:                         ; preds = %if.end25.i, %if.then7.zonefs_update_stats.exit_crit_edge
  %26 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ki_pos, align 8
  %add13 = add i64 %27, %conv
  tail call fastcc void @zonefs_i_size_write(ptr noundef %3, i64 noundef %add13)
  br label %if.end14

if.end14:                                         ; preds = %zonefs_update_stats.exit, %if.then3.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret i32 %error
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_zonefs_file_dio_append(ptr noundef %inode, i32 noundef %size, i32 noundef %ret) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_file_dio_append, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_zonefs_file_dio_append, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !302

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !278) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !288

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !322
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_file_dio_append, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %inode, i32 noundef %size, i32 noundef %ret) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !323
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !323
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !288

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !305
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_zonefs_file_dio_append, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_zonefs_file_dio_append.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_zonefs_file_dio_append.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 71, ptr noundef nonnull @.str.70) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !306
  %38 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_file_buffered_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_filemap_page_mkwrite(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !288

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end50, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b68 = load i1, ptr @zonefs_filemap_page_mkwrite.__already_done, align 1
  br i1 %.b68, label %land.rhs.cleanup_crit_edge, label %if.then18, !prof !288

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @zonefs_filemap_page_mkwrite.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 591, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end50:                                         ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %11, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.102, i32 noundef 49) #14
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %11, i32 0, i32 32, i32 2, i32 1, i32 5
  %12 = tail call ptr @llvm.returnaddress(i32 0) #14
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %13) #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !324
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end50.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end50.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end50
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 35, ptr noundef nonnull @.str.104) #14
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end50.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %18 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !288

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !295
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %11, i32 0, i32 32, i32 2, i32 1, i32 1
  %21 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_count.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add21.i.i.i = add i32 %32, 1
  store i32 %add21.i.i.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !296
  %and.i.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !289

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #14, !srcloc !297
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #14
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !325
  %34 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i58.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %38 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vmf, align 4
  %vm_file52 = getelementptr inbounds %struct.vm_area_struct, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %vm_file52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vm_file52, align 4
  %call53 = tail call i32 @file_update_time(ptr noundef %41) #14
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %42 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 2
  tail call void @down_read(ptr noundef %invalidate_lock.i) #14
  %call54 = tail call i32 @iomap_page_mkwrite(ptr noundef %vmf, ptr noundef nonnull @zonefs_iomap_ops) #14
  %44 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i70 = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 2
  tail call void @up_read(ptr noundef %invalidate_lock.i70) #14
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i71 = getelementptr %struct.super_block, ptr %47, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i72 = getelementptr %struct.super_block, ptr %47, i32 0, i32 32, i32 2, i32 1, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i.i.i72, i32 noundef %13) #14
  %48 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i.i.i73 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i74, align 4
  %add.i.i.i.i75 = add i32 %51, 1
  store volatile i32 %add.i.i.i.i75, ptr %preempt_count.i.i.i.i.i74, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !326
  %call.i.i.i.i76 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i76)
  %tobool.not.i.i.i.i77 = icmp eq i32 %call.i.i.i.i76, 0
  br i1 %tobool.not.i.i.i.i77, label %land.lhs.true.i.i.i.i80, label %sb_start_pagefault.exit.rcu_sync_is_idle.exit.i.i.i85_crit_edge

sb_start_pagefault.exit.rcu_sync_is_idle.exit.i.i.i85_crit_edge: ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i85

land.lhs.true.i.i.i.i80:                          ; preds = %sb_start_pagefault.exit
  %call1.i.i.i.i78 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i78)
  %tobool2.not.i.i.i.i79 = icmp eq i32 %call1.i.i.i.i78, 0
  br i1 %tobool2.not.i.i.i.i79, label %land.lhs.true.i.i.i.i80.rcu_sync_is_idle.exit.i.i.i85_crit_edge, label %land.lhs.true3.i.i.i.i82

land.lhs.true.i.i.i.i80.rcu_sync_is_idle.exit.i.i.i85_crit_edge: ; preds = %land.lhs.true.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i85

land.lhs.true3.i.i.i.i82:                         ; preds = %land.lhs.true.i.i.i.i80
  %.b8.i.i.i.i81 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i81, label %land.lhs.true3.i.i.i.i82.rcu_sync_is_idle.exit.i.i.i85_crit_edge, label %if.then.i.i.i.i83

land.lhs.true3.i.i.i.i82.rcu_sync_is_idle.exit.i.i.i85_crit_edge: ; preds = %land.lhs.true3.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i85

if.then.i.i.i.i83:                                ; preds = %land.lhs.true3.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 35, ptr noundef nonnull @.str.104) #14
  br label %rcu_sync_is_idle.exit.i.i.i85

rcu_sync_is_idle.exit.i.i.i85:                    ; preds = %if.then.i.i.i.i83, %land.lhs.true3.i.i.i.i82.rcu_sync_is_idle.exit.i.i.i85_crit_edge, %land.lhs.true.i.i.i.i80.rcu_sync_is_idle.exit.i.i.i85_crit_edge, %sb_start_pagefault.exit.rcu_sync_is_idle.exit.i.i.i85_crit_edge
  %52 = ptrtoint ptr %add.ptr1.i.i71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %add.ptr1.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not.i.i.i.i84 = icmp eq i32 %53, 0
  br i1 %tobool7.not.i.i.i.i84, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !288

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i85
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !295
  %read_count.i.i.i86 = getelementptr %struct.super_block, ptr %47, i32 0, i32 32, i32 2, i32 1, i32 1
  %55 = ptrtoint ptr %read_count.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_count.i.i.i86, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i.i87 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i87 to ptr
  %cpu.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i.i88, align 4
  %arrayidx.i.i.i89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i89, align 4
  %add.i.i.i90 = add i32 %63, %57
  %64 = inttoptr i32 %add.i.i.i90 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add17.i.i.i = add i32 %66, -1
  store i32 %add17.i.i.i, ptr %64, align 4
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !296
  %and.i.i.i.i.i91 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i91)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i91, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !289

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #14, !srcloc !297
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !327
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !295
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %47, i32 0, i32 32, i32 2, i32 1, i32 1
  %69 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_count75.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i122.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %77, %71
  %78 = inttoptr i32 %add80.i.i.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add81.i.i.i = add i32 %80, -1
  store i32 %add81.i.i.i, ptr %78, align 4
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !296
  %and.i.i123.i.i.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !289

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #14, !srcloc !297
  %writer.i.i.i = getelementptr %struct.super_block, ptr %47, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #14
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !328
  %82 = tail call i32 @llvm.read_register.i32(metadata !278) #14
  %and.i.i.i120.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i92 = add i32 %85, -1
  store volatile i32 %sub.i.i.i.i92, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sb_end_pagefault.exit, %if.then18, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %sb_end_pagefault.exit ], [ 2, %entry.cleanup_crit_edge ], [ 256, %if.then18 ], [ 256, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_page_mkwrite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  %wpc = alloca %struct.iomap_writepage_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wpc) #14
  %0 = call ptr @memset(ptr %wpc, i32 0, i32 56)
  %call = call i32 @iomap_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef nonnull %wpc, ptr noundef nonnull @zonefs_writeback_ops) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wpc) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_readpage(ptr nocapture noundef readnone %unused, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iomap_readpage(ptr noundef %page, ptr noundef nonnull @zonefs_iomap_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  %wpc = alloca %struct.iomap_writepage_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wpc) #14
  %0 = call ptr @memset(ptr %wpc, i32 0, i32 56)
  %call = call i32 @iomap_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull %wpc, ptr noundef nonnull @zonefs_writeback_ops) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wpc) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zonefs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iomap_readahead(ptr noundef %rac, ptr noundef nonnull @zonefs_iomap_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_invalidatepage(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_releasepage(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_direct_IO(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_swap_activate(ptr noundef %sis, ptr noundef %swap_file, ptr noundef %span) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %swap_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 39
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %s_id) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @iomap_swapfile_activate(ptr noundef %sis, ptr noundef %swap_file, ptr noundef %span, ptr noundef nonnull @zonefs_iomap_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_writepage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zonefs_map_blocks(ptr noundef %wpc, ptr noundef %inode, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ztype = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %i_ztype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ztype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end37, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b122 = load i1, ptr @zonefs_map_blocks.__already_done, align 1
  br i1 %.b122, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !288

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @zonefs_map_blocks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 135, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end37:                                         ; preds = %entry
  %call39 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call39, i64 %offset)
  %cmp40.not = icmp sgt i64 %call39, %offset
  br i1 %cmp40.not, label %if.end95, label %land.rhs47

land.rhs47:                                       ; preds = %if.end37
  %.b120121 = load i1, ptr @zonefs_map_blocks.__already_done.107, align 1
  br i1 %.b120121, label %land.rhs47.cleanup_crit_edge, label %if.then58, !prof !288

land.rhs47.cleanup_crit_edge:                     ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then58:                                        ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @zonefs_map_blocks.__already_done.107, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 137, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end95:                                         ; preds = %if.end37
  %offset96 = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 1
  %2 = ptrtoint ptr %offset96 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset96, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp97.not = icmp sgt i64 %3, %offset
  br i1 %cmp97.not, label %if.end95.if.end103_crit_edge, label %land.lhs.true

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end95
  %length = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  %add = add i64 %5, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp101 = icmp ugt i64 %add, %offset
  br i1 %cmp101, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end103_crit_edge

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end103:                                        ; preds = %land.lhs.true.if.end103_crit_edge, %if.end95.if.end103_crit_edge
  %i_max_size = getelementptr inbounds %struct.zonefs_inode_info, ptr %inode, i32 0, i32 4
  %6 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_max_size, align 8
  %sub = sub i64 %7, %offset
  %call105 = tail call i32 @zonefs_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %sub, i32 noundef 1, ptr noundef %wpc, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %land.lhs.true.cleanup_crit_edge, %if.then58, %land.rhs47.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call105, %if.end103 ], [ -5, %if.then ], [ -5, %if.then58 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ], [ -5, %land.rhs47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_writepages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_swapfile_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !169, !170, !171, !172, !173, !174, !175, !176, !178, !179, !181, !183, !185, !186, !187, !188, !190, !192, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !216, !217, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !250, !252, !254, !256, !257, !258, !260, !261, !262, !263, !265, !267, !269, !271, !273, !274, !275, !276}
!llvm.named.register.sp = !{!278}
!llvm.module.flags = !{!279, !280, !281, !282, !283, !284, !285, !286}
!llvm.ident = !{!287}

!0 = !{ptr @__tracepoint_zonefs_zone_mgmt, !1, !"__tracepoint_zonefs_zone_mgmt", i1 false, i1 false}
!1 = !{!"../fs/zonefs/./trace.h", i32 22, i32 1}
!2 = !{ptr @__tracepoint_ptr_zonefs_zone_mgmt, !1, !"__tracepoint_ptr_zonefs_zone_mgmt", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_zonefs_zone_mgmt, !1, !"__SCK__tp_func_zonefs_zone_mgmt", i1 false, i1 false}
!4 = !{ptr @__tracepoint_zonefs_file_dio_append, !5, !"__tracepoint_zonefs_file_dio_append", i1 false, i1 false}
!5 = !{!"../fs/zonefs/./trace.h", i32 47, i32 1}
!6 = !{ptr @__tracepoint_ptr_zonefs_file_dio_append, !5, !"__tracepoint_ptr_zonefs_file_dio_append", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_zonefs_file_dio_append, !5, !"__SCK__tp_func_zonefs_file_dio_append", i1 false, i1 false}
!8 = !{ptr @__tracepoint_zonefs_iomap_begin, !9, !"__tracepoint_zonefs_iomap_begin", i1 false, i1 false}
!9 = !{!"../fs/zonefs/./trace.h", i32 73, i32 1}
!10 = !{ptr @__tracepoint_ptr_zonefs_iomap_begin, !9, !"__tracepoint_ptr_zonefs_iomap_begin", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_zonefs_iomap_begin, !9, !"__SCK__tp_func_zonefs_iomap_begin", i1 false, i1 false}
!12 = !{ptr @event_class_zonefs_zone_mgmt, !1, !"event_class_zonefs_zone_mgmt", i1 false, i1 false}
!13 = !{ptr @event_zonefs_zone_mgmt, !1, !"event_zonefs_zone_mgmt", i1 false, i1 false}
!14 = !{ptr @__event_zonefs_zone_mgmt, !1, !"__event_zonefs_zone_mgmt", i1 false, i1 false}
!15 = !{ptr @event_class_zonefs_file_dio_append, !5, !"event_class_zonefs_file_dio_append", i1 false, i1 false}
!16 = !{ptr @event_zonefs_file_dio_append, !5, !"event_zonefs_file_dio_append", i1 false, i1 false}
!17 = !{ptr @__event_zonefs_file_dio_append, !5, !"__event_zonefs_file_dio_append", i1 false, i1 false}
!18 = !{ptr @event_class_zonefs_iomap_begin, !9, !"event_class_zonefs_iomap_begin", i1 false, i1 false}
!19 = !{ptr @event_zonefs_iomap_begin, !9, !"event_zonefs_iomap_begin", i1 false, i1 false}
!20 = !{ptr @__event_zonefs_iomap_begin, !9, !"__event_zonefs_iomap_begin", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_zonefs_zone_mgmt, !1, !"__bpf_trace_tp_map_zonefs_zone_mgmt", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_zonefs_file_dio_append, !5, !"__bpf_trace_tp_map_zonefs_file_dio_append", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_zonefs_iomap_begin, !9, !"__bpf_trace_tp_map_zonefs_iomap_begin", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_author334, !25, !"__UNIQUE_ID_author334", i1 false, i1 false}
!25 = !{!"../fs/zonefs/super.c", i32 1787, i32 1}
!26 = !{ptr @__UNIQUE_ID_description335, !27, !"__UNIQUE_ID_description335", i1 false, i1 false}
!27 = !{!"../fs/zonefs/super.c", i32 1788, i32 1}
!28 = !{ptr @__UNIQUE_ID_file336, !29, !"__UNIQUE_ID_file336", i1 false, i1 false}
!29 = !{!"../fs/zonefs/super.c", i32 1789, i32 1}
!30 = !{ptr @__UNIQUE_ID_license337, !29, !"__UNIQUE_ID_license337", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_alias338, !32, !"__UNIQUE_ID_alias338", i1 false, i1 false}
!32 = !{!"../fs/zonefs/super.c", i32 1790, i32 1}
!33 = !{ptr @__initcall__kmod_zonefs__339_1791_zonefs_init6, !34, !"__initcall__kmod_zonefs__339_1791_zonefs_init6", i1 false, i1 false}
!34 = !{!"../fs/zonefs/super.c", i32 1791, i32 1}
!35 = !{ptr @__exitcall_zonefs_exit, !36, !"__exitcall_zonefs_exit", i1 false, i1 false}
!36 = !{!"../fs/zonefs/super.c", i32 1792, i32 1}
!37 = !{ptr @__tpstrtab_zonefs_zone_mgmt, !1, !"__tpstrtab_zonefs_zone_mgmt", i1 false, i1 false}
!38 = !{ptr @__tpstrtab_zonefs_file_dio_append, !5, !"__tpstrtab_zonefs_file_dio_append", i1 false, i1 false}
!39 = !{ptr @__tpstrtab_zonefs_iomap_begin, !9, !"__tpstrtab_zonefs_iomap_begin", i1 false, i1 false}
!40 = !{ptr @str__zonefs__trace_system_name, !41, !"str__zonefs__trace_system_name", i1 false, i1 false}
!41 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!42 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @trace_event_fields_zonefs_zone_mgmt, !1, !"trace_event_fields_zonefs_zone_mgmt", i1 false, i1 false}
!52 = !{ptr @trace_event_type_funcs_zonefs_zone_mgmt, !1, !"trace_event_type_funcs_zonefs_zone_mgmt", i1 false, i1 false}
!53 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @print_fmt_zonefs_zone_mgmt, !1, !"print_fmt_zonefs_zone_mgmt", i1 false, i1 false}
!55 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @trace_event_fields_zonefs_file_dio_append, !5, !"trace_event_fields_zonefs_file_dio_append", i1 false, i1 false}
!61 = !{ptr @trace_event_type_funcs_zonefs_file_dio_append, !5, !"trace_event_type_funcs_zonefs_file_dio_append", i1 false, i1 false}
!62 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @print_fmt_zonefs_file_dio_append, !5, !"print_fmt_zonefs_file_dio_append", i1 false, i1 false}
!64 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.19, !9, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @trace_event_fields_zonefs_iomap_begin, !9, !"trace_event_fields_zonefs_iomap_begin", i1 false, i1 false}
!69 = !{ptr @trace_event_type_funcs_zonefs_iomap_begin, !9, !"trace_event_type_funcs_zonefs_iomap_begin", i1 false, i1 false}
!70 = !{ptr @.str.20, !9, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @print_fmt_zonefs_iomap_begin, !9, !"print_fmt_zonefs_iomap_begin", i1 false, i1 false}
!72 = !{ptr @zonefs_inode_cachep, !73, !"zonefs_inode_cachep", i1 false, i1 false}
!73 = !{!"../fs/zonefs/super.c", i32 1134, i32 27}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/zonefs/super.c", i32 1735, i32 11}
!76 = !{ptr @zonefs_type, !77, !"zonefs_type", i1 false, i1 false}
!77 = !{!"../fs/zonefs/super.c", i32 1733, i32 32}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/zonefs/super.c", i32 1627, i32 3}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @zonefs_fill_super._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @zonefs_fill_super._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @zonefs_fill_super.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../fs/zonefs/super.c", i32 1641, i32 2}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/zonefs/super.c", i32 1663, i32 3}
!89 = !{ptr @zonefs_fill_super._entry.26, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @zonefs_fill_super._entry_ptr.28, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/zonefs/super.c", i32 1681, i32 2}
!93 = !{ptr @zonefs_fill_super._entry.29, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @zonefs_fill_super._entry_ptr.31, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @zonefs_sops, !96, !"zonefs_sops", i1 false, i1 false}
!96 = !{!"../fs/zonefs/super.c", i32 1272, i32 38}
!97 = !{ptr @zonefs_alloc_inode.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../fs/zonefs/super.c", i32 1145, i32 2}
!99 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/zonefs/super.c", i32 1254, i32 17}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/zonefs/super.c", i32 1256, i32 17}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/zonefs/super.c", i32 1258, i32 17}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/zonefs/super.c", i32 1260, i32 17}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/zonefs/super.c", i32 1564, i32 3}
!110 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @zonefs_read_super._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @zonefs_read_super._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/zonefs/super.c", i32 1571, i32 3}
!115 = !{ptr @zonefs_read_super._entry.39, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @zonefs_read_super._entry_ptr.41, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../fs/zonefs/super.c", i32 1577, i32 26}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/zonefs/super.c", i32 1580, i32 4}
!121 = !{ptr @zonefs_read_super._entry.42, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @zonefs_read_super._entry_ptr.44, !120, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../fs/zonefs/super.c", i32 1586, i32 26}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/zonefs/super.c", i32 1589, i32 4}
!127 = !{ptr @zonefs_read_super._entry.46, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @zonefs_read_super._entry_ptr.48, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/zonefs/super.c", i32 1598, i32 3}
!131 = !{ptr @zonefs_read_super._entry.49, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @zonefs_read_super._entry_ptr.51, !130, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/zonefs/super.c", i32 1214, i32 31}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/zonefs/super.c", i32 1197, i32 19}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/zonefs/super.c", i32 1198, i32 20}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/zonefs/super.c", i32 1199, i32 20}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/zonefs/super.c", i32 1200, i32 23}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/zonefs/super.c", i32 1201, i32 23}
!149 = !{ptr @tokens, !150, !"tokens", i1 false, i1 false}
!150 = !{!"../fs/zonefs/super.c", i32 1196, i32 28}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/zonefs/super.c", i32 1509, i32 3}
!153 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @zonefs_get_zone_info._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @zonefs_get_zone_info._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/zonefs/super.c", i32 1514, i32 3}
!158 = !{ptr @zonefs_get_zone_info._entry.62, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @zonefs_get_zone_info._entry_ptr.64, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/zonefs/super.c", i32 1485, i32 3}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @zonefs_get_zone_info_cb._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @zonefs_get_zone_info_cb._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @zonefs_dir_inode_operations, !166, !"zonefs_dir_inode_operations", i1 false, i1 false}
!166 = !{!"../fs/zonefs/super.c", i32 1280, i32 38}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/zonefs/super.c", i32 42, i32 3}
!169 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @zonefs_zone_mgmt._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @zonefs_zone_mgmt._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!173 = !{ptr @.str.69, !1, !"<string literal>", i1 false, i1 false}
!174 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!175 = !{ptr @.str.70, !1, !"<string literal>", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!178 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/zonefs/super.c", i32 1392, i32 17}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/zonefs/super.c", i32 1394, i32 17}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/zonefs/super.c", i32 1434, i32 5}
!185 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @zonefs_create_zgroup._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @zonefs_create_zgroup._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/zonefs/super.c", i32 1443, i32 44}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/zonefs/super.c", i32 1452, i32 2}
!192 = !{ptr @zonefs_create_zgroup._entry.77, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @zonefs_create_zgroup._entry_ptr.79, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/zonefs/super.c", i32 248, i32 4}
!198 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @zonefs_check_zone_condition._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @zonefs_check_zone_condition._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/zonefs/super.c", i32 264, i32 4}
!203 = !{ptr @zonefs_check_zone_condition._entry.84, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @zonefs_check_zone_condition._entry_ptr.86, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @zonefs_file_inode_operations, !206, !"zonefs_file_inode_operations", i1 false, i1 false}
!206 = !{!"../fs/zonefs/super.c", i32 550, i32 38}
!207 = !{ptr @zonefs_file_operations, !208, !"zonefs_file_operations", i1 false, i1 false}
!208 = !{!"../fs/zonefs/super.c", i32 1121, i32 37}
!209 = !{ptr @zonefs_iomap_ops, !210, !"zonefs_iomap_ops", i1 false, i1 false}
!210 = !{!"../fs/zonefs/super.c", i32 112, i32 31}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../fs/zonefs/super.c", i32 73, i32 6}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../fs/zonefs/super.c", i32 81, i32 6}
!215 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!216 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!217 = !{ptr @zonefs_read_dio_ops, !218, !"zonefs_read_dio_ops", i1 false, i1 false}
!218 = !{!"../fs/zonefs/super.c", i32 944, i32 35}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/zonefs/super.c", i32 426, i32 3}
!221 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @__zonefs_io_error._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @__zonefs_io_error._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/zonefs/super.c", i32 333, i32 3}
!226 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @zonefs_io_error_cb._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @zonefs_io_error_cb._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.93, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/zonefs/super.c", i32 344, i32 3}
!231 = !{ptr @zonefs_io_error_cb._entry.92, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @zonefs_io_error_cb._entry_ptr.94, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.96, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/zonefs/super.c", i32 353, i32 3}
!235 = !{ptr @zonefs_io_error_cb._entry.95, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @zonefs_io_error_cb._entry_ptr.97, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/zonefs/super.c", i32 378, i32 3}
!239 = !{ptr @zonefs_io_error_cb._entry.98, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @zonefs_io_error_cb._entry_ptr.100, !238, !"_entry_ptr", i1 false, i1 false}
!241 = distinct !{null, !242, !"__already_done", i1 false, i1 false}
!242 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!243 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!244 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!245 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!246 = !{ptr @zonefs_write_dio_ops, !247, !"zonefs_write_dio_ops", i1 false, i1 false}
!247 = !{!"../fs/zonefs/super.c", i32 672, i32 35}
!248 = !{ptr @zonefs_file_vm_ops, !249, !"zonefs_file_vm_ops", i1 false, i1 false}
!249 = !{!"../fs/zonefs/super.c", i32 606, i32 42}
!250 = distinct !{null, !251, !"__already_done", i1 false, i1 false}
!251 = !{!"../fs/zonefs/super.c", i32 591, i32 6}
!252 = !{ptr @.str.102, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!254 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!255 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!256 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.104, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.105, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/zonefs/super.c", i32 1096, i32 5}
!260 = !{ptr @.str.106, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @zonefs_close_zone._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @zonefs_close_zone._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @zonefs_file_aops, !264, !"zonefs_file_aops", i1 false, i1 false}
!264 = !{!"../fs/zonefs/super.c", i32 183, i32 46}
!265 = !{ptr @zonefs_writeback_ops, !266, !"zonefs_writeback_ops", i1 false, i1 false}
!266 = !{!"../fs/zonefs/super.c", i32 149, i32 41}
!267 = distinct !{null, !268, !"__already_done", i1 false, i1 false}
!268 = !{!"../fs/zonefs/super.c", i32 135, i32 6}
!269 = distinct !{null, !270, !"__already_done", i1 false, i1 false}
!270 = !{!"../fs/zonefs/super.c", i32 137, i32 6}
!271 = !{ptr @.str.108, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/zonefs/super.c", i32 175, i32 3}
!273 = !{ptr @.str.109, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @zonefs_swap_activate._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @zonefs_swap_activate._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/zonefs/super.c", i32 1743, i32 42}
!278 = !{!"sp"}
!279 = !{i32 1, !"wchar_size", i32 2}
!280 = !{i32 1, !"min_enum_size", i32 4}
!281 = !{i32 8, !"branch-target-enforcement", i32 0}
!282 = !{i32 8, !"sign-return-address", i32 0}
!283 = !{i32 8, !"sign-return-address-all", i32 0}
!284 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!285 = !{i32 7, !"uwtable", i32 1}
!286 = !{i32 7, !"frame-pointer", i32 2}
!287 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!288 = !{!"branch_weights", i32 2000, i32 1}
!289 = !{!"branch_weights", i32 1, i32 2000}
!290 = !{!"auto-init"}
!291 = !{i32 0, i32 33}
!292 = !{!293}
!293 = distinct !{!293, !294, !"uuid_to_fsid: %agg.result"}
!294 = distinct !{!294, !"uuid_to_fsid"}
!295 = !{i64 789025, i64 789086}
!296 = !{i64 791757}
!297 = !{i64 792042}
!298 = !{i64 2153345558}
!299 = !{i64 2153345400}
!300 = !{i64 2153345728}
!301 = !{i64 2150017151}
!302 = !{i64 2148998702, i64 2148998707, i64 2148998720, i64 2148998764, i64 2148998798, i64 2148998819}
!303 = !{i64 2155052490}
!304 = !{i64 2155052703}
!305 = !{i64 2149410043}
!306 = !{i64 2149411079}
!307 = !{i64 2148470760}
!308 = !{i64 2148386045, i64 2148386077, i64 2148386106, i64 2148386140, i64 2148386171, i64 2148386194}
!309 = !{i64 2148470989}
!310 = !{i64 2148387790, i64 2148387816, i64 2148387845, i64 2148387879, i64 2148387910, i64 2148387933}
!311 = !{i64 2155090375}
!312 = !{i64 2155090598}
!313 = !{i8 0, i8 2}
!314 = !{i64 2153347489}
!315 = !{i64 2149909483}
!316 = !{i64 2149914415}
!317 = !{i64 2149936127}
!318 = !{i64 2149941019}
!319 = !{i64 2150017476}
!320 = !{i64 2150017801}
!321 = !{i64 2153359351}
!322 = !{i64 2155069338}
!323 = !{i64 2155069577}
!324 = !{i64 2153181808}
!325 = !{i64 2153190658}
!326 = !{i64 2153200612}
!327 = !{i64 2153210107}
!328 = !{i64 2153219584}
