; ModuleID = '/llk/IR_all_yes/fs/nilfs2/segment.c_pt.bc'
source_filename = "../fs/nilfs2/segment.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.105, %struct.trace_event, ptr, ptr, %union.anon.106, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.105 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.nilfs_sc_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_nilfs2_collection_stage_transition = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.nilfs_sc_info = type { ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, ptr, i32, ptr, i64, i64, %struct.list_head, %struct.list_head, i32, ptr, %struct.nilfs_cstage, %struct.nilfs_segsum_pointer, %struct.nilfs_segsum_pointer, i32, i32, i32, i64, i64, i32, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nilfs_cstage = type { i32, i32, ptr, ptr }
%struct.nilfs_segsum_pointer = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_nilfs2_transaction_transition = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_nilfs2_segment_usage_check = type { %struct.trace_entry, ptr, i64, i32, [0 x i8] }
%struct.trace_event_raw_nilfs2_segment_usage_allocated = type { %struct.trace_entry, ptr, i64, [0 x i8] }
%struct.trace_event_raw_nilfs2_segment_usage_freed = type { %struct.trace_entry, ptr, i64, [0 x i8] }
%struct.trace_event_raw_nilfs2_mdt_insert_new_block = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_nilfs2_mdt_submit_block = type { %struct.trace_entry, ptr, i32, i32, i32, [0 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_segctor_wait_request = type { %struct.wait_queue_entry, i32, i32, %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.nilfs_binfo = type { %struct.nilfs_binfo_v }
%struct.nilfs_binfo_v = type { i64, i64 }
%struct.nilfs_root = type { i64, %struct.rb_node, %struct.refcount_struct, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.kobject, %struct.completion }
%struct.atomic64_t = type { i64 }
%struct.nilfs_segment_buffer = type { ptr, %struct.list_head, %struct.nilfs_segsum_info, i64, i64, i64, i64, i64, i32, %struct.list_head, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.completion }
%struct.nilfs_segsum_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.nilfs_inode_info = type { i32, i32, ptr, %struct.nilfs_bmap, i64, i32, i64, %struct.address_space, %struct.list_head, ptr, ptr, %struct.inode }
%struct.nilfs_bmap = type { %union.anon.82, %struct.rw_semaphore, ptr, ptr, i64, i64, i32, i32, i16 }
%union.anon.82 = type { [7 x i64] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_finfo = type { i64, i64, i32, i32 }
%struct.page = type { i32, %union.anon.18, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.nilfs_checkpoint = type { i32, i32, %struct.nilfs_snapshot_list, i64, i64, i64, i64, i64, %struct.nilfs_inode }
%struct.nilfs_snapshot_list = type { i64, i64 }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.nilfs_super_root = type { i32, i16, i16, i64, %struct.nilfs_inode, %struct.nilfs_inode, %struct.nilfs_inode }
%struct.nilfs_argv = type { i64, i32, i16, i16, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.pagevec = type { i8, i8, [15 x ptr] }

@__tpstrtab_nilfs2_collection_stage_transition = internal constant [35 x i8] c"nilfs2_collection_stage_transition\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_collection_stage_transition = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_collection_stage_transition }, align 4
@__tracepoint_nilfs2_collection_stage_transition = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_collection_stage_transition, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_collection_stage_transition, ptr null, ptr @__traceiter_nilfs2_collection_stage_transition, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_collection_stage_transition = internal constant ptr @__tracepoint_nilfs2_collection_stage_transition, section "__tracepoints_ptrs", align 4
@__tpstrtab_nilfs2_transaction_transition = internal constant [30 x i8] c"nilfs2_transaction_transition\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_transaction_transition = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_transaction_transition }, align 4
@__tracepoint_nilfs2_transaction_transition = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_transaction_transition, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_transaction_transition, ptr null, ptr @__traceiter_nilfs2_transaction_transition, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_transaction_transition = internal constant ptr @__tracepoint_nilfs2_transaction_transition, section "__tracepoints_ptrs", align 4
@__tpstrtab_nilfs2_segment_usage_check = internal constant [27 x i8] c"nilfs2_segment_usage_check\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_segment_usage_check = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_segment_usage_check }, align 4
@__tracepoint_nilfs2_segment_usage_check = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_segment_usage_check, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_segment_usage_check, ptr null, ptr @__traceiter_nilfs2_segment_usage_check, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_segment_usage_check = internal constant ptr @__tracepoint_nilfs2_segment_usage_check, section "__tracepoints_ptrs", align 4
@__tpstrtab_nilfs2_segment_usage_allocated = internal constant [31 x i8] c"nilfs2_segment_usage_allocated\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_segment_usage_allocated = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_segment_usage_allocated }, align 4
@__tracepoint_nilfs2_segment_usage_allocated = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_segment_usage_allocated, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_segment_usage_allocated, ptr null, ptr @__traceiter_nilfs2_segment_usage_allocated, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_segment_usage_allocated = internal constant ptr @__tracepoint_nilfs2_segment_usage_allocated, section "__tracepoints_ptrs", align 4
@__tpstrtab_nilfs2_segment_usage_freed = internal constant [27 x i8] c"nilfs2_segment_usage_freed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_segment_usage_freed = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_segment_usage_freed }, align 4
@__tracepoint_nilfs2_segment_usage_freed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_segment_usage_freed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_segment_usage_freed, ptr null, ptr @__traceiter_nilfs2_segment_usage_freed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_segment_usage_freed = internal constant ptr @__tracepoint_nilfs2_segment_usage_freed, section "__tracepoints_ptrs", align 4
@__tpstrtab_nilfs2_mdt_insert_new_block = internal constant [28 x i8] c"nilfs2_mdt_insert_new_block\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_mdt_insert_new_block = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_mdt_insert_new_block }, align 4
@__tracepoint_nilfs2_mdt_insert_new_block = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_mdt_insert_new_block, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_mdt_insert_new_block, ptr null, ptr @__traceiter_nilfs2_mdt_insert_new_block, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_mdt_insert_new_block = internal constant ptr @__tracepoint_nilfs2_mdt_insert_new_block, section "__tracepoints_ptrs", align 4
@__tpstrtab_nilfs2_mdt_submit_block = internal constant [24 x i8] c"nilfs2_mdt_submit_block\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nilfs2_mdt_submit_block = dso_local global %struct.static_call_key { ptr @__traceiter_nilfs2_mdt_submit_block }, align 4
@__tracepoint_nilfs2_mdt_submit_block = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nilfs2_mdt_submit_block, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nilfs2_mdt_submit_block, ptr null, ptr @__traceiter_nilfs2_mdt_submit_block, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nilfs2_mdt_submit_block = internal constant ptr @__tracepoint_nilfs2_mdt_submit_block, section "__tracepoints_ptrs", align 4
@str__nilfs2__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nilfs2\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_nilfs2_collection_stage_transition = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.103 { %struct.anon.104 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_nilfs2_collection_stage_transition = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_collection_stage_transition, ptr @perf_trace_nilfs2_collection_stage_transition, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_collection_stage_transition, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_collection_stage_transition, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_collection_stage_transition, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_collection_stage_transition = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_collection_stage_transition, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_collection_stage_transition = internal global { [363 x i8], [85 x i8] } { [363 x i8] c"\22sci = %p stage = %s\22, REC->sci, __print_symbolic(REC->stage, { NILFS_ST_INIT, \22ST_INIT\22 }, { NILFS_ST_GC, \22ST_GC\22 }, { NILFS_ST_FILE, \22ST_FILE\22 }, { NILFS_ST_IFILE, \22ST_IFILE\22 }, { NILFS_ST_CPFILE, \22ST_CPFILE\22 }, { NILFS_ST_SUFILE, \22ST_SUFILE\22 }, { NILFS_ST_DAT, \22ST_DAT\22 }, { NILFS_ST_SR, \22ST_SR\22 }, { NILFS_ST_DSYNC, \22ST_DSYNC\22 }, { NILFS_ST_DONE, \22ST_DONE\22})\00", [85 x i8] zeroinitializer }, align 32
@event_nilfs2_collection_stage_transition = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_collection_stage_transition, %union.anon.105 { ptr @__tracepoint_nilfs2_collection_stage_transition }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_collection_stage_transition }, ptr @print_fmt_nilfs2_collection_stage_transition, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_collection_stage_transition = internal global ptr @event_nilfs2_collection_stage_transition, section "_ftrace_events", align 4
@trace_event_fields_nilfs2_transaction_transition = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.103 { %struct.anon.104 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.103 { %struct.anon.104 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.103 { %struct.anon.104 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.24, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_nilfs2_transaction_transition = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_transaction_transition, ptr @perf_trace_nilfs2_transaction_transition, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_transaction_transition, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_transaction_transition, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_transaction_transition, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_transaction_transition = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_transaction_transition, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_transaction_transition = internal global { [399 x i8], [113 x i8] } { [399 x i8] c"\22sb = %p ti = %p count = %d flags = %x state = %s\22, REC->sb, REC->ti, REC->count, REC->flags, __print_symbolic(REC->state, { TRACE_NILFS2_TRANSACTION_BEGIN, \22BEGIN\22 }, { TRACE_NILFS2_TRANSACTION_COMMIT, \22COMMIT\22 }, { TRACE_NILFS2_TRANSACTION_ABORT, \22ABORT\22 }, { TRACE_NILFS2_TRANSACTION_TRYLOCK, \22TRYLOCK\22 }, { TRACE_NILFS2_TRANSACTION_LOCK, \22LOCK\22 }, { TRACE_NILFS2_TRANSACTION_UNLOCK, \22UNLOCK\22 })\00", [113 x i8] zeroinitializer }, align 32
@event_nilfs2_transaction_transition = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_transaction_transition, %union.anon.105 { ptr @__tracepoint_nilfs2_transaction_transition }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_transaction_transition }, ptr @print_fmt_nilfs2_transaction_transition, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_transaction_transition = internal global ptr @event_nilfs2_transaction_transition, section "_ftrace_events", align 4
@trace_event_fields_nilfs2_segment_usage_check = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.103 { %struct.anon.104 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.103 { %struct.anon.104 { ptr @.str.35, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.103 { %struct.anon.104 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_nilfs2_segment_usage_check = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_segment_usage_check, ptr @perf_trace_nilfs2_segment_usage_check, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_segment_usage_check, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_segment_usage_check, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_segment_usage_check, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_segment_usage_check = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_segment_usage_check, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_segment_usage_check = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22sufile = %p segnum = %llu cnt = %lu\22, REC->sufile, REC->segnum, REC->cnt\00", [54 x i8] zeroinitializer }, align 32
@event_nilfs2_segment_usage_check = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_segment_usage_check, %union.anon.105 { ptr @__tracepoint_nilfs2_segment_usage_check }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_segment_usage_check }, ptr @print_fmt_nilfs2_segment_usage_check, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_segment_usage_check = internal global ptr @event_nilfs2_segment_usage_check, section "_ftrace_events", align 4
@trace_event_fields_nilfs2_segment_usage_allocated = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.103 { %struct.anon.104 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.103 { %struct.anon.104 { ptr @.str.35, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_nilfs2_segment_usage_allocated = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_segment_usage_allocated, ptr @perf_trace_nilfs2_segment_usage_allocated, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_segment_usage_allocated, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_segment_usage_allocated, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_segment_usage_allocated, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_segment_usage_allocated = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_segment_usage_allocated, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_segment_usage_allocated = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\22sufile = %p segnum = %llu\22, REC->sufile, REC->segnum\00", [42 x i8] zeroinitializer }, align 32
@event_nilfs2_segment_usage_allocated = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_segment_usage_allocated, %union.anon.105 { ptr @__tracepoint_nilfs2_segment_usage_allocated }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_segment_usage_allocated }, ptr @print_fmt_nilfs2_segment_usage_allocated, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_segment_usage_allocated = internal global ptr @event_nilfs2_segment_usage_allocated, section "_ftrace_events", align 4
@trace_event_fields_nilfs2_segment_usage_freed = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.103 { %struct.anon.104 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.103 { %struct.anon.104 { ptr @.str.35, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_nilfs2_segment_usage_freed = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_segment_usage_freed, ptr @perf_trace_nilfs2_segment_usage_freed, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_segment_usage_freed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_segment_usage_freed, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_segment_usage_freed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_segment_usage_freed = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_segment_usage_freed, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_segment_usage_freed = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\22sufile = %p segnum = %llu\22, REC->sufile, REC->segnum\00", [42 x i8] zeroinitializer }, align 32
@event_nilfs2_segment_usage_freed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_segment_usage_freed, %union.anon.105 { ptr @__tracepoint_nilfs2_segment_usage_freed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_segment_usage_freed }, ptr @print_fmt_nilfs2_segment_usage_freed, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_segment_usage_freed = internal global ptr @event_nilfs2_segment_usage_freed, section "_ftrace_events", align 4
@trace_event_fields_nilfs2_mdt_insert_new_block = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.103 { %struct.anon.104 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.103 { %struct.anon.104 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.103 { %struct.anon.104 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_nilfs2_mdt_insert_new_block = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_mdt_insert_new_block, ptr @perf_trace_nilfs2_mdt_insert_new_block, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_mdt_insert_new_block, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_mdt_insert_new_block, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_mdt_insert_new_block, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_mdt_insert_new_block = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_mdt_insert_new_block, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_mdt_insert_new_block = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22inode = %p ino = %lu block = %lu\22, REC->inode, REC->ino, REC->block\00", [59 x i8] zeroinitializer }, align 32
@event_nilfs2_mdt_insert_new_block = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_mdt_insert_new_block, %union.anon.105 { ptr @__tracepoint_nilfs2_mdt_insert_new_block }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_mdt_insert_new_block }, ptr @print_fmt_nilfs2_mdt_insert_new_block, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_mdt_insert_new_block = internal global ptr @event_nilfs2_mdt_insert_new_block, section "_ftrace_events", align 4
@trace_event_fields_nilfs2_mdt_submit_block = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.103 { %struct.anon.104 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.103 { %struct.anon.104 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.103 { %struct.anon.104 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_nilfs2_mdt_submit_block = internal global %struct.trace_event_class { ptr @str__nilfs2__trace_system_name, ptr @trace_event_raw_event_nilfs2_mdt_submit_block, ptr @perf_trace_nilfs2_mdt_submit_block, ptr @trace_event_reg, ptr @trace_event_fields_nilfs2_mdt_submit_block, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nilfs2_mdt_submit_block, i64 24), ptr getelementptr (i8, ptr @event_class_nilfs2_mdt_submit_block, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nilfs2_mdt_submit_block = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nilfs2_mdt_submit_block, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nilfs2_mdt_submit_block = internal global { [92 x i8], [36 x i8] } { [92 x i8] c"\22inode = %p ino = %lu blkoff = %lu mode = %x\22, REC->inode, REC->ino, REC->blkoff, REC->mode\00", [36 x i8] zeroinitializer }, align 32
@event_nilfs2_mdt_submit_block = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nilfs2_mdt_submit_block, %union.anon.105 { ptr @__tracepoint_nilfs2_mdt_submit_block }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nilfs2_mdt_submit_block }, ptr @print_fmt_nilfs2_mdt_submit_block, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nilfs2_mdt_submit_block = internal global ptr @event_nilfs2_mdt_submit_block, section "_ftrace_events", align 4
@__bpf_trace_tp_map_nilfs2_collection_stage_transition = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_collection_stage_transition, ptr @__bpf_trace_nilfs2_collection_stage_transition, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nilfs2_transaction_transition = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_transaction_transition, ptr @__bpf_trace_nilfs2_transaction_transition, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nilfs2_segment_usage_check = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_segment_usage_check, ptr @__bpf_trace_nilfs2_segment_usage_check, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nilfs2_segment_usage_allocated = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_segment_usage_allocated, ptr @__bpf_trace_nilfs2_segment_usage_allocated, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nilfs2_segment_usage_freed = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_segment_usage_freed, ptr @__bpf_trace_nilfs2_segment_usage_freed, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nilfs2_mdt_insert_new_block = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_mdt_insert_new_block, ptr @__bpf_trace_nilfs2_mdt_insert_new_block, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nilfs2_mdt_submit_block = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_nilfs2_mdt_submit_block, ptr @__bpf_trace_nilfs2_mdt_submit_block, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@nilfs_transaction_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014error %d cleaning segments\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nilfs2/segment.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014error %d on discard request, turning discards off for the device\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014disposed unprocessed dirty file(s) when detaching log writer\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sci\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stage\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sci = %p stage = %s\0A\00", [43 x i8] zeroinitializer }, align 32
@trace_raw_output_nilfs2_collection_stage_transition.symbols = internal constant { [11 x %struct.trace_print_flags], [40 x i8] } { [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.9 }, %struct.trace_print_flags { i32 1, ptr @.str.10 }, %struct.trace_print_flags { i32 2, ptr @.str.11 }, %struct.trace_print_flags { i32 3, ptr @.str.12 }, %struct.trace_print_flags { i32 4, ptr @.str.13 }, %struct.trace_print_flags { i32 5, ptr @.str.14 }, %struct.trace_print_flags { i32 6, ptr @.str.15 }, %struct.trace_print_flags { i32 7, ptr @.str.16 }, %struct.trace_print_flags { i32 8, ptr @.str.17 }, %struct.trace_print_flags { i32 9, ptr @.str.18 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_INIT\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ST_GC\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_FILE\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_IFILE\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ST_CPFILE\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ST_SUFILE\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ST_DAT\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ST_SR\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_DSYNC\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_DONE\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sb\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ti\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sb = %p ti = %p count = %d flags = %x state = %s\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_raw_output_nilfs2_transaction_transition.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.26 }, %struct.trace_print_flags { i32 1, ptr @.str.27 }, %struct.trace_print_flags { i32 2, ptr @.str.28 }, %struct.trace_print_flags { i32 3, ptr @.str.29 }, %struct.trace_print_flags { i32 4, ptr @.str.30 }, %struct.trace_print_flags { i32 5, ptr @.str.31 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BEGIN\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMMIT\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ABORT\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TRYLOCK\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOCK\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNLOCK\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"struct inode *\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sufile\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u64\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"segnum\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cnt\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sufile = %p segnum = %llu cnt = %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sufile = %p segnum = %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ino\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inode = %p ino = %lu block = %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"blkoff\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"inode = %p ino = %lu blkoff = %lu mode = %x\0A\00", [51 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014journal info from a different FS\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/nilfs2.h\00", [34 x i8] zeroinitializer }, align 32
@trace_nilfs2_transaction_transition.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@trace_nilfs2_collection_stage_transition.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014log writer: error %d getting inode block (ino=%lu)\00", [43 x i8] zeroinitializer }, align 32
@nilfs_sc_file_ops = internal constant { %struct.nilfs_sc_operations, [44 x i8] } { %struct.nilfs_sc_operations { ptr @nilfs_collect_file_data, ptr @nilfs_collect_file_node, ptr @nilfs_collect_file_bmap, ptr @nilfs_write_file_data_binfo, ptr @nilfs_write_file_node_binfo }, [44 x i8] zeroinitializer }, align 32
@nilfs_sc_dat_ops = internal constant { %struct.nilfs_sc_operations, [44 x i8] } { %struct.nilfs_sc_operations { ptr @nilfs_collect_dat_data, ptr @nilfs_collect_file_node, ptr @nilfs_collect_dat_bmap, ptr @nilfs_write_dat_data_binfo, ptr @nilfs_write_dat_node_binfo }, [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@nilfs_sc_dsync_ops = internal constant { %struct.nilfs_sc_operations, [44 x i8] } { %struct.nilfs_sc_operations { ptr @nilfs_collect_file_data, ptr null, ptr null, ptr @nilfs_write_file_data_binfo, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nilfs_segctor_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sci->sc_wait_request\00", [42 x i8] zeroinitializer }, align 32
@nilfs_segctor_new.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sci->sc_wait_daemon\00", [43 x i8] zeroinitializer }, align 32
@nilfs_segctor_new.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sci->sc_wait_task\00", [45 x i8] zeroinitializer }, align 32
@nilfs_segctor_new.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sci->sc_state_lock\00", [44 x i8] zeroinitializer }, align 32
@nilfs_segctor_new.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&sci->sc_iput_work)\00", [58 x i8] zeroinitializer }, align 32
@nilfs_segctor_new.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&sci->sc_timer)\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"segctord\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013error %d creating segctord thread\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016segctord starting. Construction interval = %lu seconds, CP frequency < %lu seconds\00", [43 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014disposed unprocessed dirty file(s) when stopping log writer\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014disposed unprocessed inode(s) in iput queue when stopping log writer\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967289]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"str__nilfs2__trace_system_name\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 36, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [54 x i8] c"trace_event_fields_nilfs2_collection_stage_transition\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [58 x i8] c"trace_event_type_funcs_nilfs2_collection_stage_transition\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [45 x i8] c"print_fmt_nilfs2_collection_stage_transition\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [41 x i8] c"event_nilfs2_collection_stage_transition\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [49 x i8] c"trace_event_fields_nilfs2_transaction_transition\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_nilfs2_transaction_transition\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [40 x i8] c"print_fmt_nilfs2_transaction_transition\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [36 x i8] c"event_nilfs2_transaction_transition\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [46 x i8] c"trace_event_fields_nilfs2_segment_usage_check\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_nilfs2_segment_usage_check\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [37 x i8] c"print_fmt_nilfs2_segment_usage_check\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [33 x i8] c"event_nilfs2_segment_usage_check\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [50 x i8] c"trace_event_fields_nilfs2_segment_usage_allocated\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [54 x i8] c"trace_event_type_funcs_nilfs2_segment_usage_allocated\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [41 x i8] c"print_fmt_nilfs2_segment_usage_allocated\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [37 x i8] c"event_nilfs2_segment_usage_allocated\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [46 x i8] c"trace_event_fields_nilfs2_segment_usage_freed\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_nilfs2_segment_usage_freed\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [37 x i8] c"print_fmt_nilfs2_segment_usage_freed\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [33 x i8] c"event_nilfs2_segment_usage_freed\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 145, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant [47 x i8] c"trace_event_fields_nilfs2_mdt_insert_new_block\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_nilfs2_mdt_insert_new_block\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [38 x i8] c"print_fmt_nilfs2_mdt_insert_new_block\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [34 x i8] c"event_nilfs2_mdt_insert_new_block\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [43 x i8] c"trace_event_fields_nilfs2_mdt_submit_block\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_nilfs2_mdt_submit_block\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [34 x i8] c"print_fmt_nilfs2_mdt_submit_block\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [30 x i8] c"event_nilfs2_mdt_submit_block\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2452, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2453, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2460, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2815, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 25, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 99, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 124, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 166, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 191, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 156, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [33 x i8] c"../include/trace/events/nilfs2.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 66, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 108, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 49, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 34, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1943, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant [18 x i8] c"nilfs_sc_file_ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 612, i32 41 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"nilfs_sc_dat_ops\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 661, i32 41 }
@___asan_gen_.350 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 788, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 260, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 452, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 461, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 416, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant [19 x i8] c"nilfs_sc_dsync_ops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 669, i32 41 }
@___asan_gen_.368 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 44, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2659, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2660, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2661, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2662, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2668, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2669, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2615, i32 6 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2619, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2543, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 57, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2730, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.422 = private constant [23 x i8] c"../fs/nilfs2/segment.c\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 2736, i32 3 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__bpf_trace_tp_map_nilfs2_collection_stage_transition, ptr @__bpf_trace_tp_map_nilfs2_mdt_insert_new_block, ptr @__bpf_trace_tp_map_nilfs2_mdt_submit_block, ptr @__bpf_trace_tp_map_nilfs2_segment_usage_allocated, ptr @__bpf_trace_tp_map_nilfs2_segment_usage_check, ptr @__bpf_trace_tp_map_nilfs2_segment_usage_freed, ptr @__bpf_trace_tp_map_nilfs2_transaction_transition, ptr @__event_nilfs2_collection_stage_transition, ptr @__event_nilfs2_mdt_insert_new_block, ptr @__event_nilfs2_mdt_submit_block, ptr @__event_nilfs2_segment_usage_allocated, ptr @__event_nilfs2_segment_usage_check, ptr @__event_nilfs2_segment_usage_freed, ptr @__event_nilfs2_transaction_transition, ptr @__tracepoint_nilfs2_collection_stage_transition, ptr @__tracepoint_nilfs2_mdt_insert_new_block, ptr @__tracepoint_nilfs2_mdt_submit_block, ptr @__tracepoint_nilfs2_segment_usage_allocated, ptr @__tracepoint_nilfs2_segment_usage_check, ptr @__tracepoint_nilfs2_segment_usage_freed, ptr @__tracepoint_nilfs2_transaction_transition, ptr @__tracepoint_ptr_nilfs2_collection_stage_transition, ptr @__tracepoint_ptr_nilfs2_mdt_insert_new_block, ptr @__tracepoint_ptr_nilfs2_mdt_submit_block, ptr @__tracepoint_ptr_nilfs2_segment_usage_allocated, ptr @__tracepoint_ptr_nilfs2_segment_usage_check, ptr @__tracepoint_ptr_nilfs2_segment_usage_freed, ptr @__tracepoint_ptr_nilfs2_transaction_transition, ptr @event_class_nilfs2_collection_stage_transition, ptr @event_class_nilfs2_mdt_insert_new_block, ptr @event_class_nilfs2_mdt_submit_block, ptr @event_class_nilfs2_segment_usage_allocated, ptr @event_class_nilfs2_segment_usage_check, ptr @event_class_nilfs2_segment_usage_freed, ptr @event_class_nilfs2_transaction_transition, ptr @event_nilfs2_collection_stage_transition, ptr @event_nilfs2_mdt_insert_new_block, ptr @event_nilfs2_mdt_submit_block, ptr @event_nilfs2_segment_usage_allocated, ptr @event_nilfs2_segment_usage_check, ptr @event_nilfs2_segment_usage_freed, ptr @event_nilfs2_transaction_transition, ptr @str__nilfs2__trace_system_name, ptr @trace_event_fields_nilfs2_collection_stage_transition, ptr @trace_event_type_funcs_nilfs2_collection_stage_transition, ptr @print_fmt_nilfs2_collection_stage_transition, ptr @trace_event_fields_nilfs2_transaction_transition, ptr @trace_event_type_funcs_nilfs2_transaction_transition, ptr @print_fmt_nilfs2_transaction_transition, ptr @trace_event_fields_nilfs2_segment_usage_check, ptr @trace_event_type_funcs_nilfs2_segment_usage_check, ptr @print_fmt_nilfs2_segment_usage_check, ptr @trace_event_fields_nilfs2_segment_usage_allocated, ptr @trace_event_type_funcs_nilfs2_segment_usage_allocated, ptr @print_fmt_nilfs2_segment_usage_allocated, ptr @trace_event_fields_nilfs2_segment_usage_freed, ptr @trace_event_type_funcs_nilfs2_segment_usage_freed, ptr @print_fmt_nilfs2_segment_usage_freed, ptr @trace_event_fields_nilfs2_mdt_insert_new_block, ptr @trace_event_type_funcs_nilfs2_mdt_insert_new_block, ptr @print_fmt_nilfs2_mdt_insert_new_block, ptr @trace_event_fields_nilfs2_mdt_submit_block, ptr @trace_event_type_funcs_nilfs2_mdt_submit_block, ptr @print_fmt_nilfs2_mdt_submit_block, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @trace_raw_output_nilfs2_collection_stage_transition.symbols, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @trace_raw_output_nilfs2_transaction_transition.symbols, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @nilfs_sc_file_ops, ptr @nilfs_sc_dat_ops, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @nilfs_sc_dsync_ops, ptr @.str.61, ptr @nilfs_segctor_new.__key, ptr @.str.62, ptr @nilfs_segctor_new.__key.63, ptr @.str.64, ptr @nilfs_segctor_new.__key.65, ptr @.str.66, ptr @nilfs_segctor_new.__key.67, ptr @.str.68, ptr @nilfs_segctor_new.__key.69, ptr @.str.70, ptr @nilfs_segctor_new.__key.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__nilfs2__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_collection_stage_transition to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_collection_stage_transition to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_collection_stage_transition to i32), i32 363, i32 448, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_collection_stage_transition to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_transaction_transition to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_transaction_transition to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_transaction_transition to i32), i32 399, i32 512, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_transaction_transition to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_segment_usage_check to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_segment_usage_check to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_segment_usage_check to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_segment_usage_check to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_segment_usage_allocated to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_segment_usage_allocated to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_segment_usage_allocated to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_segment_usage_allocated to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_segment_usage_freed to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_segment_usage_freed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_segment_usage_freed to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_segment_usage_freed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_mdt_insert_new_block to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_mdt_insert_new_block to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_mdt_insert_new_block to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_mdt_insert_new_block to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nilfs2_mdt_submit_block to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nilfs2_mdt_submit_block to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nilfs2_mdt_submit_block to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nilfs2_mdt_submit_block to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_nilfs2_collection_stage_transition.symbols to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_nilfs2_transaction_transition.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_sc_file_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_sc_dat_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_sc_dsync_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_new.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_new.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_new.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_new.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_segctor_new.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_collection_stage_transition(ptr nocapture readnone %__data, ptr noundef %sci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_collection_stage_transition, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %sci) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_transaction_transition(ptr nocapture readnone %__data, ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_transaction_transition, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_segment_usage_check(ptr nocapture readnone %__data, ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_segment_usage_check, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_segment_usage_allocated(ptr nocapture readnone %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_segment_usage_allocated, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %sufile, i64 noundef %segnum) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_segment_usage_freed(ptr nocapture readnone %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_segment_usage_freed, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %sufile, i64 noundef %segnum) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_mdt_insert_new_block(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_mdt_insert_new_block, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %ino, i32 noundef %block) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nilfs2_mdt_submit_block(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_mdt_submit_block, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff, i32 noundef %mode) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_collection_stage_transition(ptr noundef %__data, ptr noundef %sci) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sci6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_collection_stage_transition, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sci6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sci, ptr %sci6, align 4
  %sc_stage = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16
  %4 = ptrtoint ptr %sc_stage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sc_stage, align 8
  %stage = getelementptr inbounds %struct.trace_event_raw_nilfs2_collection_stage_transition, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %stage, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_collection_stage_transition(ptr noundef %__data, ptr noundef %sci) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sci17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_collection_stage_transition, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sci17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sci, ptr %sci17, align 4
  %sc_stage = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16
  %28 = ptrtoint ptr %sc_stage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sc_stage, align 8
  %stage = getelementptr inbounds %struct.trace_event_raw_nilfs2_collection_stage_transition, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %stage, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_transaction_transition(ptr noundef %__data, ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sb6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sb6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sb, ptr %sb6, align 4
  %ti7 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ti7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ti, ptr %ti7, align 4
  %count8 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %count8, align 4
  %flags9 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags9, align 4
  %state10 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %state, ptr %state10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_transaction_transition(ptr noundef %__data, ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sb17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sb17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sb, ptr %sb17, align 4
  %ti18 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ti18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ti, ptr %ti18, align 4
  %count19 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %count19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %count, ptr %count19, align 4
  %flags20 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags, ptr %flags20, align 4
  %state21 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %state, ptr %state21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_segment_usage_check(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sufile6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sufile6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sufile, ptr %sufile6, align 8
  %segnum7 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %segnum7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %segnum, ptr %segnum7, align 8
  %cnt8 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %cnt8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cnt, ptr %cnt8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_segment_usage_check(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sufile17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sufile17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sufile, ptr %sufile17, align 8
  %segnum18 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %segnum18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %segnum, ptr %segnum18, align 8
  %cnt19 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %cnt19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cnt, ptr %cnt19, align 8
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_segment_usage_allocated(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sufile6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_allocated, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sufile6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sufile, ptr %sufile6, align 8
  %segnum7 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_allocated, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %segnum7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %segnum, ptr %segnum7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_segment_usage_allocated(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sufile17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_allocated, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sufile17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sufile, ptr %sufile17, align 8
  %segnum18 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_allocated, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %segnum18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %segnum, ptr %segnum18, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_segment_usage_freed(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sufile6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_freed, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %sufile6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sufile, ptr %sufile6, align 8
  %segnum7 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_freed, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %segnum7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %segnum, ptr %segnum7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_segment_usage_freed(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sufile17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_freed, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %sufile17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sufile, ptr %sufile17, align 8
  %segnum18 = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_freed, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %segnum18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %segnum, ptr %segnum18, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_mdt_insert_new_block(ptr noundef %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %block) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %inode6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %inode6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %inode, ptr %inode6, align 4
  %ino7 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ino7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ino, ptr %ino7, align 4
  %block8 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %block8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %block, ptr %block8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_mdt_insert_new_block(ptr noundef %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %block) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %inode17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %inode17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inode, ptr %inode17, align 4
  %ino18 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ino18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ino, ptr %ino18, align 4
  %block19 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %block19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %block, ptr %block19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nilfs2_mdt_submit_block(ptr noundef %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff, i32 noundef %mode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !222

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %inode6 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %inode6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %inode, ptr %inode6, align 4
  %ino7 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ino7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ino, ptr %ino7, align 4
  %blkoff8 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %blkoff8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %blkoff, ptr %blkoff8, align 4
  %mode9 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mode, ptr %mode9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nilfs2_mdt_submit_block(ptr noundef %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff, i32 noundef %mode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !223
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !211) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %inode17 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %inode17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inode, ptr %inode17, align 4
  %ino18 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ino18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ino, ptr %ino18, align 4
  %blkoff19 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %blkoff19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %blkoff, ptr %blkoff19, align 4
  %mode20 = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %mode20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mode, ptr %mode20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_collection_stage_transition(ptr noundef %__data, ptr noundef %sci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sci to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_transaction_transition(ptr noundef %__data, ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sb to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %ti to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %count to i64
  %conv12 = zext i32 %flags to i64
  %conv16 = zext i32 %state to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_segment_usage_check(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum, i32 noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sufile to i32
  %conv = zext i32 %0 to i64
  %conv7 = zext i32 %cnt to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %segnum, i64 noundef %conv7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_segment_usage_allocated(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sufile to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %segnum) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_segment_usage_freed(ptr noundef %__data, ptr noundef %sufile, i64 noundef %segnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sufile to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %segnum) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_mdt_insert_new_block(ptr noundef %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ino to i64
  %conv8 = zext i32 %block to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nilfs2_mdt_submit_block(ptr noundef %__data, ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ino to i64
  %conv8 = zext i32 %blkoff to i64
  %conv12 = zext i32 %mode to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_transaction_begin(ptr noundef %sb, ptr noundef %ti, i32 noundef %vacancy_check) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %7)
  %cmp.i = icmp eq i32 %7, -639397125
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.47) #9
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %journal_info4.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 146
  %10 = ptrtoint ptr %journal_info4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %journal_info4.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %entry.if.end5.i_crit_edge
  %save.0.i = phi ptr [ %11, %if.end.i ], [ null, %entry.if.end5.i_crit_edge ]
  %tobool6.not.i = icmp eq ptr %ti, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_transaction_cachep to i32))
  %12 = load ptr, ptr @nilfs_transaction_cachep, align 4
  %call8.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 3136) #9
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then7.i.cleanup_crit_edge, label %if.end11.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %call8.i, i32 0, i32 2
  %13 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %ti_flags.i, align 8
  br label %if.end.thread

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %ti_flags12.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %ti, i32 0, i32 2
  %14 = ptrtoint ptr %ti_flags12.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %ti_flags12.i, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.else.i, %if.end11.i
  %ti.addr.0.i = phi ptr [ %ti, %if.else.i ], [ %call8.i, %if.end11.i ]
  %ti_count14.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %ti.addr.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %ti_count14.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %ti_count14.i, align 2
  %ti_save.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %ti.addr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %ti_save.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %save.0.i, ptr %ti_save.i, align 4
  %17 = ptrtoint ptr %ti.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -639397125, ptr %ti.addr.0.i, align 4
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %journal_info18.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 146
  %20 = ptrtoint ptr %journal_info18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ti.addr.0.i, ptr %journal_info18.i, align 4
  br label %if.end6

if.end:                                           ; preds = %if.then.i
  %ti_count.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %ti_count.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ti_count.i, align 2
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr %ti_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i)
  %cmp2.not = icmp eq i16 %inc.i, 0
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 146
  %27 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %journal_info, align 4
  %ti_count = getelementptr inbounds %struct.nilfs_transaction_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ti_count, align 2
  %conv = zext i16 %30 to i32
  %ti_flags = getelementptr inbounds %struct.nilfs_transaction_info, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ti_flags, align 4
  %conv5 = zext i16 %32 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef %28, i32 noundef %conv, i32 noundef %conv5, i32 noundef 0)
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.thread
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 49) #9
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %33 = tail call ptr @llvm.returnaddress(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %34) #9
  %35 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !224
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end6.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end6.rcu_sync_is_idle.exit.i.i.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end6
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 35, ptr noundef nonnull @.str.53) #9
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end6.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %39 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool7.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !221

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !225
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %42 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_count.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %50, %44
  %51 = inttoptr i32 %add.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add21.i.i.i = add i32 %53, 1
  store i32 %add21.i.i.i, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !226
  %and.i.i.i.i.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !222

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #9, !srcloc !227
  br label %sb_start_intwrite.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #9
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !228
  %55 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i58.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %59 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info, align 16
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %60, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vacancy_check)
  %tobool7.not = icmp eq i32 %vacancy_check, 0
  br i1 %tobool7.not, label %sb_start_intwrite.exit.if.end12_crit_edge, label %land.lhs.true

sb_start_intwrite.exit.if.end12_crit_edge:        ; preds = %sb_start_intwrite.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %sb_start_intwrite.exit
  %call8 = tail call i32 @nilfs_near_disk_full(ptr noundef %60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  tail call void @up_read(ptr noundef %ns_segctor_sem) #9
  %61 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i51 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i51 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task21, align 8
  %journal_info22 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 146
  %65 = ptrtoint ptr %journal_info22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %journal_info22, align 4
  %ti_save = getelementptr inbounds %struct.nilfs_transaction_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %ti_save to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ti_save, align 4
  store ptr %68, ptr %journal_info22, align 4
  %ti_flags26 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %ti_flags26 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ti_flags26, align 4
  %71 = and i16 %70, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool28.not = icmp eq i16 %71, 0
  br i1 %tobool28.not, label %if.then10.if.end30_crit_edge, label %if.then29

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %sb_start_intwrite.exit.if.end12_crit_edge
  %72 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i52 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i52 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task14, align 8
  %journal_info15 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 146
  %76 = ptrtoint ptr %journal_info15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %journal_info15, align 4
  %ti_count16 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %ti_count16 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ti_count16, align 2
  %conv17 = zext i16 %79 to i32
  %ti_flags18 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %ti_flags18 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %ti_flags18, align 4
  %conv19 = zext i16 %81 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef %77, i32 noundef %conv17, i32 noundef %conv19, i32 noundef 0)
  br label %cleanup

if.then29:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_transaction_cachep to i32))
  %82 = load ptr, ptr @nilfs_transaction_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %82, ptr noundef %66) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then10.if.end30_crit_edge
  tail call fastcc void @sb_end_intwrite(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end12, %if.then3, %if.then7.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -28, %if.end30 ], [ 0, %if.end12 ], [ -12, %if.then7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_transaction_transition, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nilfs2_transaction_transition, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !229

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !221

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !230
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_transaction_transition, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %sb, ptr noundef %ti, i32 noundef %count, i32 noundef %flags, i32 noundef %state) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !221

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_transaction_transition, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nilfs2_transaction_transition.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nilfs2_transaction_transition.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 97, ptr noundef nonnull @.str.49) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !233
  %38 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_near_disk_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #9
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !234
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 35, ptr noundef nonnull @.str.53) #9
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !221

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !225
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17.i.i = add i32 %20, -1
  store i32 %add17.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !226
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !222

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !227
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !235
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !225
  %read_count75.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %23 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i122.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add80.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81.i.i = add i32 %34, -1
  store i32 %add81.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !226
  %and.i.i123.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !222

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #9, !srcloc !227
  %writer.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #9
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !236
  %36 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i120.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_transaction_commit(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !222

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %9)
  %cmp1.not = icmp eq i32 %9, -639397125
  br i1 %cmp1.not, label %do.end8, label %lor.rhs.do.body3_crit_edge, !prof !221

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #9, !srcloc !237
  unreachable

do.end8:                                          ; preds = %lor.rhs
  %ti_flags = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ti_flags, align 4
  %12 = or i16 %11, 8
  store i16 %12, ptr %ti_flags, align 4
  %ti_count = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ti_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp11.not = icmp eq i16 %14, 0
  br i1 %cmp11.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i16 %14, -1
  %15 = ptrtoint ptr %ti_count to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %dec, ptr %ti_count, align 2
  %conv16 = zext i16 %dec to i32
  %conv18 = zext i16 %12 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %5, i32 noundef %conv16, i32 noundef %conv18, i32 noundef 1)
  br label %cleanup

if.end19:                                         ; preds = %do.end8
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 27
  %16 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ns_writer, align 8
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end19.if.end33_crit_edge, label %if.then26

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then26:                                        ; preds = %if.end19
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %sc_state.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %sc_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sc_state.i, align 8
  %and.i81 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then26.nilfs_segctor_start_timer.exit_crit_edge

if.then26.nilfs_segctor_start_timer.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_start_timer.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sc_interval.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 35
  %21 = ptrtoint ptr %sc_interval.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sc_interval.i, align 4
  %add.i = add i32 %22, %20
  %sc_timer.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 39
  %expires.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 39, i32 1
  %23 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %sc_timer.i) #9
  %24 = ptrtoint ptr %sc_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sc_state.i, align 8
  %or.i = or i32 %25, 4
  store i32 %or.i, ptr %sc_state.i, align 8
  br label %nilfs_segctor_start_timer.exit

nilfs_segctor_start_timer.exit:                   ; preds = %if.then.i, %if.then26.nilfs_segctor_start_timer.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  %ns_ndirtyblks = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ns_ndirtyblks, i32 noundef 4) #9
  %26 = ptrtoint ptr %ns_ndirtyblks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %ns_ndirtyblks, align 4
  %sc_watermark = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 38
  %28 = ptrtoint ptr %sc_watermark to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sc_watermark, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp29 = icmp ugt i32 %27, %29
  br i1 %cmp29, label %if.then31, label %nilfs_segctor_start_timer.exit.if.end33_crit_edge

nilfs_segctor_start_timer.exit.if.end33_crit_edge: ; preds = %nilfs_segctor_start_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %nilfs_segctor_start_timer.exit
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %sc_flush_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 27
  %30 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sc_flush_request.i, align 4
  %and.i83 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %if.then.i86, label %if.then31.nilfs_segctor_do_flush.exit_crit_edge

if.then31.nilfs_segctor_do_flush.exit_crit_edge:  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_do_flush.exit

if.then.i86:                                      ; preds = %if.then31
  %or.i85 = or i32 %31, 1
  %32 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i85, ptr %sc_flush_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i86.nilfs_segctor_do_flush.exit_crit_edge

if.then.i86.nilfs_segctor_do_flush.exit_crit_edge: ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_do_flush.exit

if.then5.i:                                       ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #11
  %sc_wait_daemon.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %17, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %sc_wait_daemon.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %nilfs_segctor_do_flush.exit

nilfs_segctor_do_flush.exit:                      ; preds = %if.then5.i, %if.then.i86.nilfs_segctor_do_flush.exit_crit_edge, %if.then31.nilfs_segctor_do_flush.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  br label %if.end33

if.end33:                                         ; preds = %nilfs_segctor_do_flush.exit, %nilfs_segctor_start_timer.exit.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 28
  tail call void @up_read(ptr noundef %ns_segctor_sem) #9
  %33 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ti_count, align 2
  %conv35 = zext i16 %34 to i32
  %35 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ti_flags, align 4
  %conv37 = zext i16 %36 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %5, i32 noundef %conv35, i32 noundef %conv37, i32 noundef 1)
  %ti_save = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %ti_save to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ti_save, align 4
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %journal_info40 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 146
  %41 = ptrtoint ptr %journal_info40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %journal_info40, align 4
  %42 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ti_flags, align 4
  %44 = and i16 %43, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool44.not = icmp eq i16 %44, 0
  br i1 %tobool44.not, label %if.end33.if.end47_crit_edge, label %if.then45

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %if.end33
  %45 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info, align 16
  %ns_writer.i = getelementptr inbounds %struct.the_nilfs, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %ns_writer.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ns_writer.i, align 8
  %tobool.not.i87 = icmp eq ptr %48, null
  br i1 %tobool.not.i87, label %if.then45.if.end47_crit_edge, label %do.body.i

if.then45.if.end47_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.body.i:                                        ; preds = %if.then45
  %49 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 146
  %53 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %journal_info.i, align 4
  %tobool1.not.i = icmp eq ptr %54, null
  br i1 %tobool1.not.i, label %do.body.i.do.end11.i_crit_edge, label %land.rhs.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

land.rhs.i:                                       ; preds = %do.body.i
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %56)
  %cmp.i = icmp eq i32 %56, -639397125
  br i1 %cmp.i, label %do.body5.i, label %land.rhs.i.do.end11.i_crit_edge, !prof !222

land.rhs.i.do.end11.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

do.body5.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2241, 0\0A.popsection", ""() #9, !srcloc !238
  unreachable

do.end11.i:                                       ; preds = %land.rhs.i.do.end11.i_crit_edge, %do.body.i.do.end11.i_crit_edge
  %call12.i = tail call fastcc i32 @nilfs_segctor_sync(ptr noundef nonnull %48) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end11.i, %if.then45.if.end47_crit_edge, %if.end33.if.end47_crit_edge
  %err.0 = phi i32 [ 0, %if.end33.if.end47_crit_edge ], [ %call12.i, %do.end11.i ], [ -30, %if.then45.if.end47_crit_edge ]
  %57 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ti_flags, align 4
  %59 = and i16 %58, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool51.not = icmp eq i16 %59, 0
  br i1 %tobool51.not, label %if.end47.if.end53_crit_edge, label %if.then52

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_transaction_cachep to i32))
  %60 = load ptr, ptr @nilfs_transaction_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %60, ptr noundef nonnull %5) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47.if.end53_crit_edge
  tail call fastcc void @sb_end_intwrite(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %err.0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_construct_segment(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_writer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %do.body.do.end11_crit_edge, label %land.rhs

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.rhs:                                         ; preds = %do.body
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %11)
  %cmp = icmp eq i32 %11, -639397125
  br i1 %cmp, label %do.body5, label %land.rhs.do.end11_crit_edge, !prof !222

land.rhs.do.end11_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.body5:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2241, 0\0A.popsection", ""() #9, !srcloc !238
  unreachable

do.end11:                                         ; preds = %land.rhs.do.end11_crit_edge, %do.body.do.end11_crit_edge
  %call12 = tail call fastcc i32 @nilfs_segctor_sync(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end11 ], [ -30, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_transaction_abort(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !222

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %9)
  %cmp1.not = icmp eq i32 %9, -639397125
  br i1 %cmp1.not, label %do.end8, label %lor.rhs.do.body3_crit_edge, !prof !221

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #9, !srcloc !239
  unreachable

do.end8:                                          ; preds = %lor.rhs
  %ti_count = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ti_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp9.not = icmp eq i16 %11, 0
  br i1 %cmp9.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i16 %11, -1
  %12 = ptrtoint ptr %ti_count to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %dec, ptr %ti_count, align 2
  %conv14 = zext i16 %dec to i32
  %ti_flags = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ti_flags, align 4
  %conv15 = zext i16 %14 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %5, i32 noundef %conv14, i32 noundef %conv15, i32 noundef 2)
  br label %cleanup

if.end16:                                         ; preds = %do.end8
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 28
  tail call void @up_read(ptr noundef %ns_segctor_sem) #9
  %15 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ti_count, align 2
  %conv18 = zext i16 %16 to i32
  %ti_flags19 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %ti_flags19 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ti_flags19, align 4
  %conv20 = zext i16 %18 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %5, i32 noundef %conv18, i32 noundef %conv20, i32 noundef 2)
  %ti_save = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %ti_save to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ti_save, align 4
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %journal_info23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 146
  %23 = ptrtoint ptr %journal_info23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %journal_info23, align 4
  %24 = ptrtoint ptr %ti_flags19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ti_flags19, align 4
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool26.not = icmp eq i16 %26, 0
  br i1 %tobool26.not, label %if.end16.if.end28_crit_edge, label %if.then27

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_transaction_cachep to i32))
  %27 = load ptr, ptr @nilfs_transaction_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %5) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end16.if.end28_crit_edge
  tail call fastcc void @sb_end_intwrite(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_relax_pressure_in_lock(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_writer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sc_flush_request = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sc_flush_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sc_flush_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sc_flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 3, ptr noundef %sc_flags) #9
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 28
  tail call void @up_read(ptr noundef %ns_segctor_sem) #9
  tail call void @down_write(ptr noundef %ns_segctor_sem) #9
  %6 = ptrtoint ptr %sc_flush_request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sc_flush_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %sc_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sc_flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 146
  %15 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %journal_info, align 4
  %ti_flags = getelementptr inbounds %struct.nilfs_transaction_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ti_flags, align 4
  %19 = or i16 %18, 16
  store i16 %19, ptr %ti_flags, align 4
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %20 = ptrtoint ptr %sc_flush_request to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sc_flush_request, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  %and.i25 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i = icmp eq i32 %and.i25, 0
  %cond.i = select i1 %tobool.not.i, i32 3, i32 4
  %call.i = tail call fastcc i32 @nilfs_segctor_do_construct(ptr noundef nonnull %3, i32 noundef %cond.i) #9
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %cond4.i = select i1 %tobool.not.i, i32 -2, i32 -9
  %22 = ptrtoint ptr %sc_flush_request to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sc_flush_request, align 4
  %and6.i = and i32 %23, %cond4.i
  store i32 %and6.i, ptr %sc_flush_request, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %sc_flags) #9
  %24 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ti_flags, align 4
  %26 = and i16 %25, -17
  store i16 %26, ptr %ti_flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @downgrade_write(ptr noundef %ns_segctor_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_flush_segment(ptr nocapture noundef readonly %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_writer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %9, null
  br i1 %cmp.i.i, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.i.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %11)
  %cmp1.not.i.i = icmp eq i32 %11, -639397125
  br i1 %cmp1.not.i.i, label %nilfs_doing_construction.exit, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

nilfs_doing_construction.exit:                    ; preds = %lor.lhs.false.i.i
  %ti_flags.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %ti_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ti_flags.i.i, align 4
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not = icmp eq i16 %14, 0
  br i1 %tobool1.not, label %nilfs_doing_construction.exit.if.end_crit_edge, label %nilfs_doing_construction.exit.cleanup_crit_edge

nilfs_doing_construction.exit.cleanup_crit_edge:  ; preds = %nilfs_doing_construction.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nilfs_doing_construction.exit.if.end_crit_edge:   ; preds = %nilfs_doing_construction.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %nilfs_doing_construction.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ns_first_ino = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 52
  %15 = ptrtoint ptr %ns_first_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ns_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %ino)
  %cmp = icmp ugt i32 %16, %ino
  %shl = shl nuw i32 1, %ino
  %and = and i32 %shl, 1272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %sc_flush_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 27
  %17 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sc_flush_request.i, align 4
  %spec.select.op = select i1 %tobool3.not, i32 1, i32 %shl
  %shl.i = select i1 %cmp, i32 %spec.select.op, i32 1
  %and.i = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.nilfs_segctor_do_flush.exit_crit_edge

if.end.nilfs_segctor_do_flush.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_do_flush.exit

if.then.i:                                        ; preds = %if.end
  %or.i = or i32 %18, %shl.i
  %19 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %sc_flush_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i = icmp eq i32 %18, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.nilfs_segctor_do_flush.exit_crit_edge

if.then.i.nilfs_segctor_do_flush.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_do_flush.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sc_wait_daemon.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %sc_wait_daemon.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %nilfs_segctor_do_flush.exit

nilfs_segctor_do_flush.exit:                      ; preds = %if.then5.i, %if.then.i.nilfs_segctor_do_flush.exit_crit_edge, %if.end.nilfs_segctor_do_flush.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %nilfs_segctor_do_flush.exit, %nilfs_doing_construction.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_sync(ptr noundef %sci) #0 align 64 {
entry:
  %wait_req = alloca %struct.nilfs_segctor_wait_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait_req) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_req, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait_req, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds %struct.nilfs_segctor_wait_request, ptr %wait_req, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nilfs_segctor_wait_request, ptr %wait_req, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nilfs_segctor_wait_request, ptr %wait_req, i32 0, i32 3
  %sc_state_lock = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 25
  %7 = getelementptr inbounds i8, ptr %wait_req, i32 20
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %2, ptr %2, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %2, ptr %3, align 4
  %17 = ptrtoint ptr %wait_req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wait_req, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %5, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #9
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %6, align 4
  %sc_seq_request = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 31
  %20 = ptrtoint ptr %sc_seq_request to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sc_seq_request, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %sc_seq_request, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %4, align 4
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock) #9
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %wait_req to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wait_req, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @default_wake_function, ptr %1, align 4
  %sc_wait_request = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 28
  call void @add_wait_queue(ptr noundef %sc_wait_request, ptr noundef nonnull %wait_req) #9
  br label %__here

__here:                                           ; preds = %entry
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@nilfs_segctor_sync, %__here) to i32), ptr %task_state_change, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %31, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !240
  %sc_wait_daemon = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 29
  call void @__wake_up(ptr noundef %sc_wait_daemon, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %call.i.i9699 = call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #9
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool77.not100 = icmp eq i32 %34, 0
  br i1 %tobool77.not100, label %__here.if.end80_crit_edge, label %__here.if.then78_crit_edge

__here.if.then78_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

__here.if.end80_crit_edge:                        ; preds = %__here
  br label %if.end80

if.then78:                                        ; preds = %if.then85.if.then78_crit_edge, %__here.if.then78_crit_edge
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %5, align 4
  br label %for.end

if.end80:                                         ; preds = %if.then85.if.end80_crit_edge, %__here.if.end80_crit_edge
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end80.for.end_crit_edge, !prof !221

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit:                              ; preds = %if.end80
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %40, align 4
  %and1.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool84.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool84.not, label %if.then85, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then85:                                        ; preds = %signal_pending.exit
  call void @schedule() #9
  %call.i.i96 = call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #9
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %6, align 4
  %tobool77.not = icmp eq i32 %47, 0
  br i1 %tobool77.not, label %if.then85.if.end80_crit_edge, label %if.then85.if.then78_crit_edge

if.then85.if.then78_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then85.if.end80_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.end:                                          ; preds = %signal_pending.exit.for.end_crit_edge, %if.end80.for.end_crit_edge, %if.then78
  %err.0 = phi i32 [ %36, %if.then78 ], [ -512, %signal_pending.exit.for.end_crit_edge ], [ -512, %if.end80.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %sc_wait_request, ptr noundef nonnull %wait_req) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_req) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_construct_dsync_segment(ptr noundef %sb, ptr noundef %inode, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_writer, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #9
  %tobool.not = icmp eq ptr %3, null
  %4 = call ptr @memset(ptr %ti, i32 255, i32 12)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @nilfs_transaction_lock(ptr noundef %sb, ptr noundef nonnull %ti, i32 noundef 0)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %ns_mount_opt = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ns_mount_opt, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %sc_flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %sc_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sc_flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.if.then10_crit_edge

lor.lhs.false4.if.then10_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end12, label %lor.lhs.false7.if.then10_crit_edge

lor.lhs.false7.if.then10_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false7.if.then10_crit_edge, %lor.lhs.false4.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %16 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 146
  %20 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %journal_info.i, align 4
  %22 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info, align 16
  %cmp.i = icmp eq ptr %21, null
  br i1 %cmp.i, label %if.then10.do.body3.i_crit_edge, label %lor.rhs.i, !prof !222

if.then10.do.body3.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %if.then10
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %25)
  %cmp1.not.i = icmp eq i32 %25, -639397125
  br i1 %cmp1.not.i, label %do.body9.i, label %lor.rhs.i.do.body3.i_crit_edge, !prof !221

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %if.then10.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.body9.i:                                       ; preds = %lor.rhs.i
  %ti_count.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %ti_count.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ti_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp10.not.i = icmp eq i16 %27, 0
  br i1 %cmp10.not.i, label %nilfs_transaction_unlock.exit, label %do.body19.i, !prof !221

do.body19.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

nilfs_transaction_unlock.exit:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  %ns_segctor_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %23, i32 0, i32 28
  call void @up_write(ptr noundef %ns_segctor_sem.i) #9
  %ti_save.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %ti_save.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ti_save.i, align 4
  %30 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i, align 8
  %journal_info30.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 146
  %32 = ptrtoint ptr %journal_info30.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %journal_info30.i, align 4
  %33 = ptrtoint ptr %ti_count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ti_count.i, align 2
  %conv32.i = zext i16 %34 to i32
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %21, i32 0, i32 2
  %35 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ti_flags.i, align 4
  %conv33.i = zext i16 %36 to i32
  call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %21, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef 5) #9
  %call11 = call fastcc i32 @nilfs_segctor_sync(ptr noundef nonnull %3)
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 35
  call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #9
  %37 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_state, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool15.not = icmp eq i32 %39, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %40 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %i_state, align 4
  %42 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool18.not = icmp eq i32 %42, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  call fastcc void @nilfs_transaction_unlock(ptr noundef %sb)
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  %sc_dsync_inode = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 9
  %43 = ptrtoint ptr %sc_dsync_inode to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i, ptr %sc_dsync_inode, align 8
  %sc_dsync_start = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 10
  %44 = ptrtoint ptr %sc_dsync_start to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %start, ptr %sc_dsync_start, align 8
  %sc_dsync_end = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 11
  %45 = ptrtoint ptr %sc_dsync_end to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %end, ptr %sc_dsync_end, align 8
  %call23 = call fastcc i32 @nilfs_segctor_do_construct(ptr noundef nonnull %3, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %ns_flushed_device = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %ns_flushed_device to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ns_flushed_device, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %47 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i58 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i58 to ptr
  %task.i59 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i59, align 8
  %journal_info.i60 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 146
  %51 = ptrtoint ptr %journal_info.i60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %journal_info.i60, align 4
  %53 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info, align 16
  %cmp.i62 = icmp eq ptr %52, null
  br i1 %cmp.i62, label %if.end26.do.body3.i65_crit_edge, label %lor.rhs.i64, !prof !222

if.end26.do.body3.i65_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i65

lor.rhs.i64:                                      ; preds = %if.end26
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %56)
  %cmp1.not.i63 = icmp eq i32 %56, -639397125
  br i1 %cmp1.not.i63, label %do.body9.i68, label %lor.rhs.i64.do.body3.i65_crit_edge, !prof !221

lor.rhs.i64.do.body3.i65_crit_edge:               ; preds = %lor.rhs.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i65

do.body3.i65:                                     ; preds = %lor.rhs.i64.do.body3.i65_crit_edge, %if.end26.do.body3.i65_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.body9.i68:                                     ; preds = %lor.rhs.i64
  %ti_count.i66 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %ti_count.i66 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ti_count.i66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp10.not.i67 = icmp eq i16 %58, 0
  br i1 %cmp10.not.i67, label %nilfs_transaction_unlock.exit76, label %do.body19.i69, !prof !221

do.body19.i69:                                    ; preds = %do.body9.i68
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

nilfs_transaction_unlock.exit76:                  ; preds = %do.body9.i68
  call void @__sanitizer_cov_trace_pc() #11
  %ns_segctor_sem.i70 = getelementptr inbounds %struct.the_nilfs, ptr %54, i32 0, i32 28
  call void @up_write(ptr noundef %ns_segctor_sem.i70) #9
  %ti_save.i71 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %52, i32 0, i32 1
  %59 = ptrtoint ptr %ti_save.i71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ti_save.i71, align 4
  %61 = ptrtoint ptr %task.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i59, align 8
  %journal_info30.i72 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 146
  %63 = ptrtoint ptr %journal_info30.i72 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %journal_info30.i72, align 4
  %64 = ptrtoint ptr %ti_count.i66 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ti_count.i66, align 2
  %conv32.i73 = zext i16 %65 to i32
  %ti_flags.i74 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %52, i32 0, i32 2
  %66 = ptrtoint ptr %ti_flags.i74 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ti_flags.i74, align 4
  %conv33.i75 = zext i16 %67 to i32
  call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %52, i32 noundef %conv32.i73, i32 noundef %conv33.i75, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %nilfs_transaction_unlock.exit76, %if.then19, %nilfs_transaction_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %nilfs_transaction_unlock.exit ], [ %call23, %nilfs_transaction_unlock.exit76 ], [ 0, %if.then19 ], [ -30, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_transaction_lock(ptr noundef %sb, ptr noundef %ti, i32 noundef %gcflag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns_writer, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ti_flags = getelementptr inbounds %struct.nilfs_transaction_info, ptr %ti, i32 0, i32 2
  %10 = ptrtoint ptr %ti_flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %ti_flags, align 4
  %ti_count = getelementptr inbounds %struct.nilfs_transaction_info, ptr %ti, i32 0, i32 3
  %11 = ptrtoint ptr %ti_count to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %ti_count, align 2
  %ti_save = getelementptr inbounds %struct.nilfs_transaction_info, ptr %ti, i32 0, i32 1
  %12 = ptrtoint ptr %ti_save to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %ti_save, align 4
  %13 = ptrtoint ptr %ti to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -639397125, ptr %ti, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info22 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ti, ptr %journal_info22, align 4
  %17 = load i16, ptr %ti_count, align 2
  %conv63 = zext i16 %17 to i32
  %18 = load i16, ptr %ti_flags, align 4
  %conv2564 = zext i16 %18 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef %ti, i32 noundef %conv63, i32 noundef %conv2564, i32 noundef 3)
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 28
  tail call void @down_write(ptr noundef %ns_segctor_sem) #9
  %sc_flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %9, i32 0, i32 24
  %19 = ptrtoint ptr %sc_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sc_flags, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not65 = icmp eq i32 %21, 0
  br i1 %tobool27.not65, label %if.end.for.end_crit_edge, label %if.end29.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end29.lr.ph:                                   ; preds = %if.end
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %9, i32 0, i32 25
  %sc_flush_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %9, i32 0, i32 27
  br label %if.end29

if.end29:                                         ; preds = %if.end29.if.end29_crit_edge, %if.end29.lr.ph
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %22 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sc_flush_request.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  %and.i61 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i = icmp eq i32 %and.i61, 0
  %cond.i = select i1 %tobool.not.i, i32 3, i32 4
  %call.i = tail call fastcc i32 @nilfs_segctor_do_construct(ptr noundef %9, i32 noundef %cond.i) #9
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %cond4.i = select i1 %tobool.not.i, i32 -2, i32 -9
  %24 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sc_flush_request.i, align 4
  %and6.i = and i32 %25, %cond4.i
  store i32 %and6.i, ptr %sc_flush_request.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %sc_flags) #9
  tail call void @up_write(ptr noundef %ns_segctor_sem) #9
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef 0) #9
  %call.i62 = tail call i32 @__cond_resched() #9
  %26 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ti_count, align 2
  %conv = zext i16 %27 to i32
  %28 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ti_flags, align 4
  %conv25 = zext i16 %29 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef %ti, i32 noundef %conv, i32 noundef %conv25, i32 noundef 3)
  tail call void @down_write(ptr noundef %ns_segctor_sem) #9
  %30 = ptrtoint ptr %sc_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %sc_flags, align 4
  %32 = and i32 %31, 8
  %tobool27.not = icmp eq i32 %32, 0
  br i1 %tobool27.not, label %if.end29.for.end_crit_edge, label %if.end29.if.end29_crit_edge

if.end29.if.end29_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gcflag)
  %tobool33.not = icmp eq i32 %gcflag, 0
  br i1 %tobool33.not, label %for.end.if.end38_crit_edge, label %if.then34

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ti_flags, align 4
  %35 = or i16 %34, 4
  store i16 %35, ptr %ti_flags, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.end.if.end38_crit_edge
  %36 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ti_count, align 2
  %conv40 = zext i16 %37 to i32
  %38 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ti_flags, align 4
  %conv42 = zext i16 %39 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef %ti, i32 noundef %conv40, i32 noundef %conv42, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_transaction_unlock(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.do.body3_crit_edge, label %lor.rhs, !prof !222

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

lor.rhs:                                          ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %9)
  %cmp1.not = icmp eq i32 %9, -639397125
  br i1 %cmp1.not, label %do.body9, label %lor.rhs.do.body3_crit_edge, !prof !221

lor.rhs.do.body3_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.body3:                                         ; preds = %lor.rhs.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.body9:                                         ; preds = %lor.rhs
  %ti_count = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ti_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp10.not = icmp eq i16 %11, 0
  br i1 %cmp10.not, label %do.end27, label %do.body19, !prof !221

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

do.end27:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %7, i32 0, i32 28
  tail call void @up_write(ptr noundef %ns_segctor_sem) #9
  %ti_save = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %ti_save to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ti_save, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info30 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %journal_info30, align 4
  %17 = ptrtoint ptr %ti_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ti_count, align 2
  %conv32 = zext i16 %18 to i32
  %ti_flags = getelementptr inbounds %struct.nilfs_transaction_info, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %ti_flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ti_flags, align 4
  %conv33 = zext i16 %20 to i32
  tail call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %5, i32 noundef %conv32, i32 noundef %conv33, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_do_construct(ptr noundef %sci, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %bh_cp.i = alloca ptr, align 4
  %raw_cp.i = alloca ptr, align 4
  %ssp.i.i = alloca %struct.nilfs_segsum_pointer, align 4
  %binfo.i.i = alloca %union.nilfs_binfo, align 8
  %bh.i.i = alloca ptr, align 4
  %nextnextnum.i.i = alloca i64, align 8
  %list.i.i = alloca %struct.list_head, align 4
  %data_buffers.i.i.i = alloca %struct.list_head, align 4
  %bh_cp.i.i.i = alloca ptr, align 4
  %raw_cp.i.i.i = alloca ptr, align 4
  %ndone.i.i = alloca i32, align 4
  %nextnum.i = alloca i64, align 8
  %ibh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %sc_stage.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16
  %4 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sc_stage.i, align 8
  tail call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  %ns_cno = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %ns_cno to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ns_cno, align 8
  %sc_cno = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 23
  %7 = ptrtoint ptr %sc_cno to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sc_cno, align 8
  %sc_root.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 1
  %8 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_root.i, align 4
  %ifile1.i = getelementptr inbounds %struct.nilfs_root, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ifile1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifile1.i, align 4
  %ns_inode_lock.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock.i) #9
  %ns_dirty_files.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 34
  %12 = ptrtoint ptr %ns_dirty_files.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns_dirty_files.i, align 8
  %cmp.not7176.i = icmp eq ptr %13, %ns_dirty_files.i
  br i1 %cmp.not7176.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.lr.ph.i:                           ; preds = %entry
  %i_state.i.i = getelementptr i8, ptr %11, i32 -588
  %sc_dirty_files.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 3
  %prev.i2.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.lr.ph.i
  %.pn.in72.i = phi ptr [ %13, %for.body.lr.ph.lr.ph.i ], [ %.pn.in72.i.be, %for.body.i.backedge ]
  %14 = ptrtoint ptr %.pn.in72.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn74.i = load ptr, ptr %.pn.in72.i, align 4
  %i_bh.i = getelementptr i8, ptr %.pn.in72.i, i32 8
  %15 = ptrtoint ptr %i_bh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_bh.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end31.i

if.then.i:                                        ; preds = %for.body.i
  %i_bh.i.le = getelementptr i8, ptr %.pn.in72.i, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibh.i) #9
  %17 = ptrtoint ptr %ibh.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %ibh.i, align 4, !annotation !223
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock.i) #9
  %i_ino.i = getelementptr i8, ptr %.pn.in72.i, i32 60
  %18 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino.i, align 8
  %call.i = call i32 @nilfs_ifile_get_inode_block(ptr noundef %11, i32 noundef %19, ptr noundef nonnull %ibh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end.i, label %nilfs_segctor_collect_dirty_files.exit, !prof !221

if.end.i:                                         ; preds = %if.then.i
  call void @_raw_spin_lock(ptr noundef %ns_inode_lock.i) #9
  %20 = ptrtoint ptr %i_bh.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_bh.i.le, align 4
  %tobool18.not.i = icmp eq ptr %21, null
  %22 = ptrtoint ptr %ibh.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ibh.i, align 4
  br i1 %tobool18.not.i, label %if.then27.i, label %if.else.i, !prof !221

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %i_bh.i.le to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %i_bh.i.le, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.else.i.cleanup.i_crit_edge, label %if.then.i.i

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %23) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i, %if.else.i.cleanup.i_crit_edge, %if.then27.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibh.i) #9
  %25 = ptrtoint ptr %ns_dirty_files.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns_dirty_files.i, align 8
  %cmp.not71.i = icmp eq ptr %26, %ns_dirty_files.i
  br i1 %cmp.not71.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.for.body.i.backedge_crit_edge

cleanup.i.for.body.i.backedge_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end31.i:                                       ; preds = %for.body.i
  call void @mark_buffer_dirty(ptr noundef nonnull %16) #9
  %27 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_state.i.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i66.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i66.i, label %if.then.i67.i, label %if.end31.i.nilfs_mdt_mark_dirty.exit.i_crit_edge

if.end31.i.nilfs_mdt_mark_dirty.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i67.i:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #9
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i67.i, %if.end31.i.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %i_state.i = getelementptr i8, ptr %.pn.in72.i, i32 -568
  call void @_clear_bit(i32 noundef 2, ptr noundef %i_state.i) #9
  call void @_set_bit(i32 noundef 3, ptr noundef %i_state.i) #9
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in72.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %nilfs_mdt_mark_dirty.exit.i.__list_del_entry.exit.i.i_crit_edge

nilfs_mdt_mark_dirty.exit.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in72.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %.pn.in72.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in72.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %nilfs_mdt_mark_dirty.exit.i.__list_del_entry.exit.i.i_crit_edge
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in72.i, ptr noundef %37, ptr noundef %sc_dirty_files.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in72.i, ptr %prev.i2.i.i, align 4
  %39 = ptrtoint ptr %.pn.in72.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sc_dirty_files.i, ptr %.pn.in72.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in72.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %.pn.in72.i, ptr %37, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn74.i, %ns_dirty_files.i
  br i1 %cmp.not.i, label %list_move_tail.exit.i.if.end_crit_edge, label %list_move_tail.exit.i.for.body.i.backedge_crit_edge

list_move_tail.exit.i.for.body.i.backedge_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

list_move_tail.exit.i.if.end_crit_edge:           ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.backedge:                              ; preds = %list_move_tail.exit.i.for.body.i.backedge_crit_edge, %cleanup.i.for.body.i.backedge_crit_edge
  %.pn.in72.i.be = phi ptr [ %.pn74.i, %list_move_tail.exit.i.for.body.i.backedge_crit_edge ], [ %26, %cleanup.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

nilfs_segctor_collect_dirty_files.exit:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino.i.le = getelementptr i8, ptr %.pn.in72.i, i32 60
  %42 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sci, align 8
  %44 = ptrtoint ptr %i_ino.i.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino.i.le, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %43, ptr noundef nonnull @.str.54, i32 noundef %call.i, i32 noundef %45) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibh.i) #9
  br label %out

if.end:                                           ; preds = %list_move_tail.exit.i.if.end_crit_edge, %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock.i) #9
  %46 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc_root.i, align 4
  %call3 = call fastcc i32 @nilfs_test_metadata_dirty(ptr noundef %3, ptr noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sc_flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  call void @_set_bit(i32 noundef 0, ptr noundef %sc_flags) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %sc_dirty_files.i153 = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 3
  %48 = ptrtoint ptr %sc_dirty_files.i153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %sc_dirty_files.i153, align 4
  %cmp.i.not.i = icmp eq ptr %49, %sc_dirty_files.i153
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end6.do.body.preheader_crit_edge

if.end6.do.body.preheader_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %if.end6
  %sc_flags.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  %50 = ptrtoint ptr %sc_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %sc_flags.i, align 4
  %and1.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.body.preheader_crit_edge

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sc_nfreesegs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 8
  %52 = ptrtoint ptr %sc_nfreesegs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_nfreesegs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i = icmp eq i32 %53, 0
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true3.i.do.body.preheader_crit_edge

land.lhs.true3.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

land.rhs.i:                                       ; preds = %land.lhs.true3.i
  %54 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i.i, align 8
  %journal_info.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 146
  %58 = ptrtoint ptr %journal_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %journal_info.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %59, null
  br i1 %cmp.i.i.i, label %land.rhs.i.out_crit_edge, label %lor.lhs.false.i.i.i

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false.i.i.i:                              ; preds = %land.rhs.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %61)
  %cmp1.not.i.i.i = icmp eq i32 %61, -639397125
  br i1 %cmp1.not.i.i.i, label %nilfs_doing_gc.exit.i, label %lor.lhs.false.i.i.i.out_crit_edge

lor.lhs.false.i.i.i.out_crit_edge:                ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

nilfs_doing_gc.exit.i:                            ; preds = %lor.lhs.false.i.i.i
  %ti_flags.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %59, i32 0, i32 2
  %62 = ptrtoint ptr %ti_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ti_flags.i.i.i, align 4
  %64 = and i16 %63, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool5.not.i = icmp eq i16 %64, 0
  br i1 %tobool5.not.i, label %nilfs_doing_gc.exit.i.out_crit_edge, label %nilfs_segctor_clean.exit

nilfs_doing_gc.exit.i.out_crit_edge:              ; preds = %nilfs_doing_gc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

nilfs_segctor_clean.exit:                         ; preds = %nilfs_doing_gc.exit.i
  %sc_gc_inodes.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 4
  %65 = ptrtoint ptr %sc_gc_inodes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %sc_gc_inodes.i, align 4
  %cmp.i11.i.not = icmp eq ptr %66, %sc_gc_inodes.i
  br i1 %cmp.i11.i.not, label %nilfs_segctor_clean.exit.out_crit_edge, label %nilfs_segctor_clean.exit.do.body.preheader_crit_edge

nilfs_segctor_clean.exit.do.body.preheader_crit_edge: ; preds = %nilfs_segctor_clean.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

nilfs_segctor_clean.exit.out_crit_edge:           ; preds = %nilfs_segctor_clean.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.preheader:                                ; preds = %nilfs_segctor_clean.exit.do.body.preheader_crit_edge, %land.lhs.true3.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %if.end6.do.body.preheader_crit_edge
  %flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16, i32 1
  %sc_write_logs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 13
  %prev16.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 13, i32 1
  %ns_segnum.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 14
  %ns_pseg_offset.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 16
  %ns_nextnum.i.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 15
  %ns_seg_seq.i.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 13
  %ns_sufile.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 31
  %sc_segbufs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 12, i32 1
  %sc_segbuf_nblocks.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 14
  %sc_seg_ctime = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 22
  %prev_stage.sroa.6.0.sc_stage.sroa_idx.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16, i32 2
  %prev_stage.sroa.7.0.sc_stage.sroa_idx.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16, i32 3
  %sc_nblk_this_inc.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 21
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %sc_finfo_ptr.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 17
  %offset.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 17, i32 1
  %sc_binfo_ptr.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 18
  %offset11.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 18, i32 1
  %sc_datablk_cnt.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 20
  %sc_blk_cnt.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 19
  %sc_flags.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  %sc_nblk_inc.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i.i = icmp eq i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp7.i.i = icmp eq i32 %mode, 4
  %sc_gc_inodes.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 4
  %add.ptr.i119.i = getelementptr %struct.nilfs_sc_info, ptr %sci, i32 -2, i32 39, i32 2
  %add.ptr51.i.i = getelementptr %struct.nilfs_sc_info, ptr %sci, i32 -2, i32 39, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp93.i.i = icmp eq i32 %mode, 3
  %sc_freesegs.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 7
  %sc_nfreesegs.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp173.i.i = icmp eq i32 %mode, 1
  %sc_dsync_inode.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 9
  %67 = getelementptr inbounds %struct.list_head, ptr %data_buffers.i.i.i, i32 0, i32 1
  %sc_dsync_start.i.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 10
  %sc_dsync_end.i.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 11
  %68 = getelementptr inbounds %struct.list_head, ptr %list.i.i, i32 0, i32 1
  %69 = getelementptr inbounds %struct.nilfs_segsum_pointer, ptr %ssp.i.i, i32 0, i32 1
  %ns_inode_size.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 51
  %ns_nongc_ctime.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 19
  %ns_dat.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 29
  %ns_cpfile.i245 = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 30
  %ns_blocksize.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 45
  %ns_crc_seed = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 53
  %ns_blocksize_bits = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 44
  %sc_lseg_stime.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 37
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and = and i32 %71, -7
  store i32 %and, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nextnum.i) #9
  %72 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sci, align 8
  %call.i154 = call ptr @nilfs_segbuf_new(ptr noundef %73) #9
  %tobool.not.i155 = icmp eq ptr %call.i154, null
  br i1 %tobool.not.i155, label %do.body.nilfs_segctor_begin_construction.exit.thread_crit_edge, label %if.end.i157, !prof !222

do.body.nilfs_segctor_begin_construction.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_begin_construction.exit.thread

if.end.i157:                                      ; preds = %do.body
  %74 = ptrtoint ptr %sc_write_logs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %sc_write_logs.i, align 4
  %cmp.i.not.i156 = icmp eq ptr %75, %sc_write_logs.i
  br i1 %cmp.i.not.i156, label %if.then6.i, label %if.else.i159

if.then6.i:                                       ; preds = %if.end.i157
  %76 = ptrtoint ptr %ns_segnum.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ns_segnum.i, align 8
  %78 = ptrtoint ptr %ns_pseg_offset.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ns_pseg_offset.i, align 8
  call void @nilfs_segbuf_map(ptr noundef nonnull %call.i154, i64 noundef %77, i32 noundef %79, ptr noundef %3) #9
  %sb_rest_blocks.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 8
  %80 = ptrtoint ptr %sb_rest_blocks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sb_rest_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp.i158 = icmp ult i32 %81, 2
  br i1 %cmp.i158, label %if.then7.i, label %if.then6.i.if.end9.i_crit_edge

if.then6.i.if.end9.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %ns_nextnum.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ns_nextnum.i.i, align 8
  %84 = ptrtoint ptr %ns_segnum.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %ns_segnum.i, align 8
  %85 = ptrtoint ptr %ns_pseg_offset.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %ns_pseg_offset.i, align 8
  %86 = ptrtoint ptr %ns_seg_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %ns_seg_seq.i.i, align 8
  %inc.i.i = add i64 %87, 1
  store i64 %inc.i.i, ptr %ns_seg_seq.i.i, align 8
  call void @nilfs_segbuf_map(ptr noundef nonnull %call.i154, i64 noundef %83, i32 noundef 0, ptr noundef %3) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then6.i.if.end9.i_crit_edge
  %88 = ptrtoint ptr %ns_seg_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ns_seg_seq.i.i, align 8
  %seg_seq.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 2, i32 6
  %90 = ptrtoint ptr %seg_seq.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %seg_seq.i, align 8
  %91 = ptrtoint ptr %ns_nextnum.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %ns_nextnum.i.i, align 8
  %93 = ptrtoint ptr %nextnum.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %nextnum.i, align 8
  %94 = ptrtoint ptr %ns_segnum.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ns_segnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %92)
  %cmp12.i = icmp ne i64 %95, %92
  br label %if.end30.i

if.else.i159:                                     ; preds = %if.end.i157
  %96 = ptrtoint ptr %prev16.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev16.i, align 4
  %add.ptr.i = getelementptr i8, ptr %97, i32 -4
  call void @nilfs_segbuf_map_cont(ptr noundef nonnull %call.i154, ptr noundef %add.ptr.i) #9
  %seg_seq18.i = getelementptr i8, ptr %97, i32 36
  %98 = ptrtoint ptr %seg_seq18.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %seg_seq18.i, align 8
  %seg_seq20.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 2, i32 6
  %100 = ptrtoint ptr %seg_seq20.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %seg_seq20.i, align 8
  %sb_nextnum.i = getelementptr i8, ptr %97, i32 76
  %101 = ptrtoint ptr %sb_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %sb_nextnum.i, align 8
  %103 = ptrtoint ptr %nextnum.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %nextnum.i, align 8
  %sb_rest_blocks21.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 8
  %104 = ptrtoint ptr %sb_rest_blocks21.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sb_rest_blocks21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp22.i = icmp ult i32 %105, 2
  br i1 %cmp22.i, label %if.then23.i, label %if.else.i159.if.end30.i_crit_edge

if.else.i159.if.end30.i_crit_edge:                ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %sb_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %sb_nextnum.i, align 8
  call void @nilfs_segbuf_map(ptr noundef nonnull %call.i154, i64 noundef %107, i32 noundef 0, ptr noundef %3) #9
  %108 = ptrtoint ptr %seg_seq20.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %seg_seq20.i, align 8
  %inc27.i = add i64 %109, 1
  store i64 %inc27.i, ptr %seg_seq20.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %if.else.i159.if.end30.i_crit_edge, %if.end9.i
  %tobool35.not.i = phi i1 [ true, %if.else.i159.if.end30.i_crit_edge ], [ false, %if.then23.i ], [ %cmp12.i, %if.end9.i ]
  %110 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ns_sufile.i, align 4
  %sb_segnum.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 3
  %112 = ptrtoint ptr %sb_segnum.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %sb_segnum.i, align 8
  %call31.i = call i32 @nilfs_sufile_mark_dirty(ptr noundef %111, i64 noundef %113) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.failed.i_crit_edge

if.end30.i.failed.i_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end34.i:                                       ; preds = %if.end30.i
  br i1 %tobool35.not.i, label %if.end34.i.if.end42.i_crit_edge, label %if.then36.i

if.end34.i.if.end42.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then36.i:                                      ; preds = %if.end34.i
  %114 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ns_sufile.i, align 4
  %call38.i = call i32 @nilfs_sufile_alloc(ptr noundef %115, ptr noundef nonnull %nextnum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then36.i.if.end42.i_crit_edge, label %if.then36.i.failed.i_crit_edge

if.then36.i.failed.i_crit_edge:                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.then36.i.if.end42.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then36.i.if.end42.i_crit_edge, %if.end34.i.if.end42.i_crit_edge
  %116 = ptrtoint ptr %nextnum.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %nextnum.i, align 8
  call void @nilfs_segbuf_set_next_segnum(ptr noundef nonnull %call.i154, i64 noundef %117, ptr noundef %3) #9
  %118 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %sc_segbufs.i, align 4
  %cmp.i106.not.i = icmp eq ptr %119, %sc_segbufs.i
  br i1 %cmp.i106.not.i, label %do.end60.i, label %do.body54.i, !prof !221

do.body54.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1323, 0\0A.popsection", ""() #9, !srcloc !243
  unreachable

do.end60.i:                                       ; preds = %if.end42.i
  %sb_list.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i160 = call zeroext i1 @__list_add_valid(ptr noundef %sb_list.i, ptr noundef %121, ptr noundef %sc_segbufs.i) #9
  br i1 %call.i.i.i160, label %if.end.i.i.i161, label %do.end60.i.if.end20_crit_edge

do.end60.i.if.end20_crit_edge:                    ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i.i.i161:                                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %sb_list.i, ptr %prev.i.i, align 4
  %123 = ptrtoint ptr %sb_list.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %sc_segbufs.i, ptr %sb_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %sb_list.i, ptr %121, align 4
  br label %if.end20

failed.i:                                         ; preds = %if.then36.i.failed.i_crit_edge, %if.end30.i.failed.i_crit_edge
  %err.0.i = phi i32 [ %call31.i, %if.end30.i.failed.i_crit_edge ], [ %call38.i, %if.then36.i.failed.i_crit_edge ]
  call void @nilfs_segbuf_free(ptr noundef nonnull %call.i154) #9
  br label %nilfs_segctor_begin_construction.exit.thread

nilfs_segctor_begin_construction.exit.thread:     ; preds = %failed.i, %do.body.nilfs_segctor_begin_construction.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %err.0.i, %failed.i ], [ -12, %do.body.nilfs_segctor_begin_construction.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nextnum.i) #9
  br label %out

if.end20:                                         ; preds = %if.end.i.i.i161, %do.end60.i.if.end20_crit_edge
  %sb_rest_blocks62.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call.i154, i32 0, i32 8
  %126 = ptrtoint ptr %sb_rest_blocks62.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sb_rest_blocks62.i, align 8
  %128 = ptrtoint ptr %sc_segbuf_nblocks.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %sc_segbuf_nblocks.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nextnum.i) #9
  %call21 = call i64 @ktime_get_real_seconds() #9
  %129 = ptrtoint ptr %sc_seg_ctime to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %call21, ptr %sc_seg_ctime, align 8
  %130 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %prev_stage.sroa.0.0.copyload.i = load i32, ptr %sc_stage.i, align 8
  %131 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %131)
  %prev_stage.sroa.5.0.copyload.i = load i32, ptr %flags, align 4
  %132 = ptrtoint ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %prev_stage.sroa.6.0.copyload.i = load ptr, ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i, align 8
  %133 = ptrtoint ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %prev_stage.sroa.7.0.copyload.i = load ptr, ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %nilfs_segctor_extend_segments.exit.thread.i, %if.end20
  %nadd.0.i = phi i32 [ 1, %if.end20 ], [ %418, %nilfs_segctor_extend_segments.exit.thread.i ]
  %134 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %sc_nblk_this_inc.i, align 8
  %135 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sc_segbufs.i, align 8
  %add.ptr.i166 = getelementptr i8, ptr %136, i32 -4
  %137 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %add.ptr.i166, ptr %sc_curseg.i, align 4
  %138 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task.i.i.i.i, align 8
  %journal_info.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 146
  %142 = ptrtoint ptr %journal_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %journal_info.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %143, null
  br i1 %cmp.i.i.i.i, label %for.cond.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

for.cond.i.nilfs_doing_gc.exit.thread.i.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %for.cond.i
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %145)
  %cmp1.not.i.i.i.i = icmp eq i32 %145, -639397125
  br i1 %cmp1.not.i.i.i.i, label %nilfs_doing_gc.exit.i.i, label %lor.lhs.false.i.i.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge

lor.lhs.false.i.i.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i

nilfs_doing_gc.exit.i.i:                          ; preds = %lor.lhs.false.i.i.i.i
  %ti_flags.i.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %143, i32 0, i32 2
  %146 = ptrtoint ptr %ti_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %ti_flags.i.i.i.i, align 4
  %148 = and i16 %147, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool.not.i.i167 = icmp eq i16 %148, 0
  br i1 %tobool.not.i.i167, label %nilfs_doing_gc.exit.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, label %nilfs_doing_gc.exit.i.i._crit_edge

nilfs_doing_gc.exit.i.i._crit_edge:               ; preds = %nilfs_doing_gc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %149

nilfs_doing_gc.exit.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge: ; preds = %nilfs_doing_gc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i

nilfs_doing_gc.exit.thread.i.i:                   ; preds = %nilfs_doing_gc.exit.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, %for.cond.i.nilfs_doing_gc.exit.thread.i.i_crit_edge
  br label %149

149:                                              ; preds = %nilfs_doing_gc.exit.thread.i.i, %nilfs_doing_gc.exit.i.i._crit_edge
  %150 = phi i32 [ 0, %nilfs_doing_gc.exit.thread.i.i ], [ 16, %nilfs_doing_gc.exit.i.i._crit_edge ]
  %151 = ptrtoint ptr %sc_seg_ctime to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %sc_seg_ctime, align 8
  %153 = ptrtoint ptr %sc_cno to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %sc_cno, align 8
  %call1.i.i = call i32 @nilfs_segbuf_reset(ptr noundef %add.ptr.i166, i32 noundef %150, i64 noundef %152, i64 noundef %154) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i168, label %.failed_crit_edge, !prof !221

.failed_crit_edge:                                ; preds = %149
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end.i168:                                      ; preds = %149
  %sb_segsum_buffers.i.i = getelementptr i8, ptr %136, i32 112
  %155 = ptrtoint ptr %sb_segsum_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sb_segsum_buffers.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %156, i32 -44
  %sumbytes7.i.i = getelementptr i8, ptr %136, i32 28
  %157 = ptrtoint ptr %sumbytes7.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %sumbytes7.i.i, align 8
  %159 = ptrtoint ptr %sc_finfo_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %add.ptr.i.i, ptr %sc_finfo_ptr.i.i, align 8
  %160 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %158, ptr %offset.i.i, align 4
  %161 = ptrtoint ptr %sc_binfo_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %add.ptr.i.i, ptr %sc_binfo_ptr.i.i, align 8
  %162 = ptrtoint ptr %offset11.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %158, ptr %offset11.i.i, align 4
  %163 = ptrtoint ptr %sc_datablk_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %sc_datablk_cnt.i.i, align 4
  %164 = ptrtoint ptr %sc_blk_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %sc_blk_cnt.i.i, align 8
  %165 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sci, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %166, i32 0, i32 33
  %167 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ndone.i.i) #9
  %169 = ptrtoint ptr %ndone.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %ndone.i.i, align 4, !annotation !223
  %170 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sc_stage.i, align 8
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values)
  switch i32 %171, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %if.end.i168.sw.bb10.i.i_crit_edge
    i32 2, label %if.end.i168.sw.bb43.i.i_crit_edge
    i32 3, label %if.end.i168.sw.bb98.i.i_crit_edge
    i32 4, label %if.end.i168.sw.bb119.i.i_crit_edge
    i32 5, label %if.end.i168.sw.bb130.i.i_crit_edge
    i32 6, label %if.end.i168.dat_stage.i.i_crit_edge
    i32 7, label %if.end.i168.sw.bb172.i.i_crit_edge
    i32 8, label %if.end.i168.dsync_mode.i.i_crit_edge
    i32 9, label %if.end.i168.nilfs_segctor_collect_blocks.exit.thread.i_crit_edge
  ]

if.end.i168.nilfs_segctor_collect_blocks.exit.thread.i_crit_edge: ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.thread.i

if.end.i168.dsync_mode.i.i_crit_edge:             ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsync_mode.i.i

if.end.i168.sw.bb172.i.i_crit_edge:               ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb172.i.i

if.end.i168.dat_stage.i.i_crit_edge:              ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %dat_stage.i.i

if.end.i168.sw.bb130.i.i_crit_edge:               ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb130.i.i

if.end.i168.sw.bb119.i.i_crit_edge:               ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb119.i.i

if.end.i168.sw.bb98.i.i_crit_edge:                ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb98.i.i

if.end.i168.sw.bb43.i.i_crit_edge:                ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i.i

if.end.i168.sw.bb10.i.i_crit_edge:                ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i.i

sw.bb.i.i:                                        ; preds = %if.end.i168
  %173 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %flags, align 4
  %174 = ptrtoint ptr %sc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %sc_flags.i.i, align 4
  %176 = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i109.i = icmp eq i32 %176, 0
  br i1 %tobool.not.i109.i, label %if.then.i.i169, label %sw.bb.i.i.if.end4.i.i_crit_edge

sw.bb.i.i.if.end4.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i

if.then.i.i169:                                   ; preds = %sw.bb.i.i
  %177 = ptrtoint ptr %sc_nblk_inc.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %sc_nblk_inc.i.i, align 8
  %178 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sc_curseg.i, align 4
  %sb_sum.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %sb_sum.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %sb_sum.i.i, align 8
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.i.i169.if.end4.i.i_crit_edge

if.then.i.i169.if.end4.i.i_crit_edge:             ; preds = %if.then.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 8, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %dsync_mode.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i169.if.end4.i.i_crit_edge, %sw.bb.i.i.if.end4.i.i_crit_edge
  %182 = ptrtoint ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i, align 8
  %183 = ptrtoint ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i, align 4
  br i1 %cmp7.i.i, label %dat_stage.i.thread.i, label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %sc_stage.i, align 8
  %inc.i.i.i = add i32 %185, 1
  store i32 %inc.i.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %sw.bb10.i.i

sw.bb10.i.i:                                      ; preds = %if.end9.i.i, %if.end.i168.sw.bb10.i.i_crit_edge
  %186 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i111.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i.i111.i to ptr
  %task.i.i.i112.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %task.i.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %task.i.i.i112.i, align 8
  %journal_info.i.i.i113.i = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 146
  %190 = ptrtoint ptr %journal_info.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %journal_info.i.i.i113.i, align 4
  %cmp.i.i.i114.i = icmp eq ptr %191, null
  br i1 %cmp.i.i.i114.i, label %sw.bb10.i.i.if.end42.i.i_crit_edge, label %lor.lhs.false.i.i.i116.i

sw.bb10.i.i.if.end42.i.i_crit_edge:               ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

lor.lhs.false.i.i.i116.i:                         ; preds = %sw.bb10.i.i
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %193)
  %cmp1.not.i.i.i115.i = icmp eq i32 %193, -639397125
  br i1 %cmp1.not.i.i.i115.i, label %nilfs_doing_gc.exit.i118.i, label %lor.lhs.false.i.i.i116.i.if.end42.i.i_crit_edge

lor.lhs.false.i.i.i116.i.if.end42.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

nilfs_doing_gc.exit.i118.i:                       ; preds = %lor.lhs.false.i.i.i116.i
  %ti_flags.i.i.i117.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %191, i32 0, i32 2
  %194 = ptrtoint ptr %ti_flags.i.i.i117.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %ti_flags.i.i.i117.i, align 4
  %196 = and i16 %195, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool12.not.i.i = icmp eq i16 %196, 0
  br i1 %tobool12.not.i.i, label %nilfs_doing_gc.exit.i118.i.if.end42.i.i_crit_edge, label %if.then13.i.i

nilfs_doing_gc.exit.i118.i.if.end42.i.i_crit_edge: ; preds = %nilfs_doing_gc.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

if.then13.i.i:                                    ; preds = %nilfs_doing_gc.exit.i118.i
  %197 = ptrtoint ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i, align 4
  %tobool16.not.i.i = icmp eq ptr %198, null
  %spec.select.i.i = select i1 %tobool16.not.i.i, ptr %add.ptr.i119.i, ptr %198
  %i_dirty.i.i = getelementptr inbounds %struct.nilfs_inode_info, ptr %spec.select.i.i, i32 0, i32 8
  %199 = ptrtoint ptr %i_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pn305346.i.i = load ptr, ptr %i_dirty.i.i, align 4
  %cmp21.not347.i.i = icmp eq ptr %.pn305346.i.i, %sc_gc_inodes.i.i
  br i1 %cmp21.not347.i.i, label %if.then13.i.i.for.end.i.i_crit_edge, label %if.then13.i.i.for.body.i.i_crit_edge

if.then13.i.i.for.body.i.i_crit_edge:             ; preds = %if.then13.i.i
  br label %for.body.i.i

if.then13.i.i.for.end.i.i_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end34.i.i.for.body.i.i_crit_edge, %if.then13.i.i.for.body.i.i_crit_edge
  %.pn305348.i.i = phi ptr [ %.pn305.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ %.pn305346.i.i, %if.then13.i.i.for.body.i.i_crit_edge ]
  %vfs_inode.i.i = getelementptr i8, ptr %.pn305348.i.i, i32 20
  %call22.i.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %vfs_inode.i.i, ptr noundef nonnull @nilfs_sc_file_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end34.i.i, label %if.then27.i.i, !prof !221

if.then27.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i170 = getelementptr inbounds %struct.list_head, ptr %.pn305348.i.i, i32 0, i32 1
  %200 = ptrtoint ptr %prev.i.i170 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i.i170, align 4
  %add.ptr31.i.i = getelementptr i8, ptr %201, i32 -572
  %202 = ptrtoint ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %add.ptr31.i.i, ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i, align 4
  br label %nilfs_segctor_collect_blocks.exit.i

if.end34.i.i:                                     ; preds = %for.body.i.i
  %i_state.i.i171 = getelementptr i8, ptr %.pn305348.i.i, i32 -568
  call void @_set_bit(i32 noundef 4, ptr noundef %i_state.i.i171) #9
  %203 = ptrtoint ptr %.pn305348.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %.pn305.i.i = load ptr, ptr %.pn305348.i.i, align 4
  %cmp21.not.i.i = icmp eq ptr %.pn305.i.i, %sc_gc_inodes.i.i
  br i1 %cmp21.not.i.i, label %if.end34.i.i.for.end.i.i_crit_edge, label %if.end34.i.i.for.body.i.i_crit_edge

if.end34.i.i.for.body.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end34.i.i.for.end.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end34.i.i.for.end.i.i_crit_edge, %if.then13.i.i.for.end.i.i_crit_edge
  %204 = ptrtoint ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %for.end.i.i, %nilfs_doing_gc.exit.i118.i.if.end42.i.i_crit_edge, %lor.lhs.false.i.i.i116.i.if.end42.i.i_crit_edge, %sw.bb10.i.i.if.end42.i.i_crit_edge
  %205 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %sc_stage.i, align 8
  %inc.i313.i.i = add i32 %206, 1
  store i32 %inc.i313.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %sw.bb43.i.i

sw.bb43.i.i:                                      ; preds = %if.end42.i.i, %if.end.i168.sw.bb43.i.i_crit_edge
  %207 = ptrtoint ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i, align 8
  %tobool46.not.i.i = icmp eq ptr %208, null
  %spec.select306.i.i = select i1 %tobool46.not.i.i, ptr %add.ptr51.i.i, ptr %208
  %i_dirty55.i.i = getelementptr inbounds %struct.nilfs_inode_info, ptr %spec.select306.i.i, i32 0, i32 8
  br label %for.cond59.i.i

for.cond59.i.i:                                   ; preds = %for.body64.i.i.for.cond59.i.i_crit_edge, %sw.bb43.i.i
  %.pn.in.i.i = phi ptr [ %i_dirty55.i.i, %sw.bb43.i.i ], [ %.pn.i.i, %for.body64.i.i.for.cond59.i.i_crit_edge ]
  %209 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp61.not.i.i = icmp eq ptr %.pn.i.i, %sc_dirty_files.i153
  br i1 %cmp61.not.i.i, label %for.end90.i.i, label %for.body64.i.i

for.body64.i.i:                                   ; preds = %for.cond59.i.i
  %i_state65.i.i = getelementptr i8, ptr %.pn.i.i, i32 -568
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_state65.i.i) #9
  %vfs_inode66.i.i = getelementptr i8, ptr %.pn.i.i, i32 20
  %call67.i.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %vfs_inode66.i.i, ptr noundef nonnull @nilfs_sc_file_ops) #9
  %tobool68.not.i.i = icmp eq i32 %call67.i.i, 0
  br i1 %tobool68.not.i.i, label %for.body64.i.i.for.cond59.i.i_crit_edge, label %if.then75.i.i, !prof !221

for.body64.i.i.for.cond59.i.i_crit_edge:          ; preds = %for.body64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59.i.i

if.then75.i.i:                                    ; preds = %for.body64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev78.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i, i32 0, i32 1
  %210 = ptrtoint ptr %prev78.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prev78.i.i, align 4
  %add.ptr80.i.i = getelementptr i8, ptr %211, i32 -572
  %212 = ptrtoint ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %add.ptr80.i.i, ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i, align 8
  br label %nilfs_segctor_collect_blocks.exit.i

for.end90.i.i:                                    ; preds = %for.cond59.i.i
  %213 = ptrtoint ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i, align 8
  br i1 %cmp93.i.i, label %for.end90.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge, label %if.end95.i.i

for.end90.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge: ; preds = %for.end90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.i

if.end95.i.i:                                     ; preds = %for.end90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %sc_stage.i, align 8
  %inc.i316.i.i = add i32 %215, 1
  store i32 %inc.i316.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  %216 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %flags, align 4
  %or.i.i = or i32 %217, 2
  store i32 %or.i.i, ptr %flags, align 4
  br label %sw.bb98.i.i

sw.bb98.i.i:                                      ; preds = %if.end95.i.i, %if.end.i168.sw.bb98.i.i_crit_edge
  %218 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %sc_root.i, align 4
  %ifile.i.i = getelementptr inbounds %struct.nilfs_root, ptr %219, i32 0, i32 4
  %220 = ptrtoint ptr %ifile.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ifile.i.i, align 4
  %call99.i.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %221, ptr noundef nonnull @nilfs_sc_file_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i.i)
  %tobool100.not.i.i = icmp eq i32 %call99.i.i, 0
  br i1 %tobool100.not.i.i, label %if.end108.i.i, label %sw.bb98.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

sw.bb98.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge: ; preds = %sw.bb98.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

if.end108.i.i:                                    ; preds = %sw.bb98.i.i
  %222 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %sc_stage.i, align 8
  %inc.i318.i.i = add i32 %223, 1
  store i32 %inc.i318.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  %224 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %sci, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %225, i32 0, i32 33
  %226 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_cp.i.i.i) #9
  %228 = ptrtoint ptr %bh_cp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh_cp.i.i.i, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cp.i.i.i) #9
  %229 = ptrtoint ptr %raw_cp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr inttoptr (i32 -1 to ptr), ptr %raw_cp.i.i.i, align 4, !annotation !223
  %ns_cpfile.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %227, i32 0, i32 30
  %230 = ptrtoint ptr %ns_cpfile.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ns_cpfile.i.i.i, align 8
  %ns_cno.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %227, i32 0, i32 17
  %232 = ptrtoint ptr %ns_cno.i.i.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %ns_cno.i.i.i, align 8
  %call.i.i.i172 = call i32 @nilfs_cpfile_get_checkpoint(ptr noundef %231, i64 noundef %233, i32 noundef 1, ptr noundef nonnull %raw_cp.i.i.i, ptr noundef nonnull %bh_cp.i.i.i) #9
  %234 = zext i32 %call.i.i.i172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call.i.i.i172, label %nilfs_segctor_create_checkpoint.exit.i.i [
    i32 0, label %if.then.i.i.i
    i32 -22, label %if.end108.i.i.nilfs_segctor_create_checkpoint.exit.thread338.i.i_crit_edge
    i32 -2, label %if.end108.i.i.nilfs_segctor_create_checkpoint.exit.thread338.i.i_crit_edge777
  ], !prof !244

if.end108.i.i.nilfs_segctor_create_checkpoint.exit.thread338.i.i_crit_edge777: ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_create_checkpoint.exit.thread338.i.i

if.end108.i.i.nilfs_segctor_create_checkpoint.exit.thread338.i.i_crit_edge: ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_create_checkpoint.exit.thread338.i.i

if.then.i.i.i:                                    ; preds = %if.end108.i.i
  %235 = ptrtoint ptr %bh_cp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bh_cp.i.i.i, align 4
  call void @mark_buffer_dirty(ptr noundef %236) #9
  %237 = ptrtoint ptr %ns_cpfile.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ns_cpfile.i.i.i, align 8
  %i_state.i.i.i.i = getelementptr i8, ptr %238, i32 -588
  %239 = ptrtoint ptr %i_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %i_state.i.i.i.i, align 4
  %241 = and i32 %240, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i.i.i.i = icmp eq i32 %241, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i.i.i.nilfs_segctor_create_checkpoint.exit.thread.i.i_crit_edge

if.then.i.i.i.nilfs_segctor_create_checkpoint.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_create_checkpoint.exit.thread.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i.i.i) #9
  br label %nilfs_segctor_create_checkpoint.exit.thread.i.i

nilfs_segctor_create_checkpoint.exit.thread.i.i:  ; preds = %if.then.i.i.i.i, %if.then.i.i.i.nilfs_segctor_create_checkpoint.exit.thread.i.i_crit_edge
  %242 = ptrtoint ptr %ns_cpfile.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ns_cpfile.i.i.i, align 8
  %244 = ptrtoint ptr %ns_cno.i.i.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %ns_cno.i.i.i, align 8
  %246 = ptrtoint ptr %bh_cp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %bh_cp.i.i.i, align 4
  call void @nilfs_cpfile_put_checkpoint(ptr noundef %243, i64 noundef %245, ptr noundef %247) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp.i.i.i) #9
  br label %sw.bb119.i.i

nilfs_segctor_create_checkpoint.exit.thread338.i.i: ; preds = %if.end108.i.i.nilfs_segctor_create_checkpoint.exit.thread338.i.i_crit_edge, %if.end108.i.i.nilfs_segctor_create_checkpoint.exit.thread338.i.i_crit_edge777
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 876, i32 noundef 9, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp.i.i.i) #9
  br label %nilfs_segctor_collect_blocks.exit.i

nilfs_segctor_create_checkpoint.exit.i.i:         ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp.i.i.i) #9
  br label %nilfs_segctor_collect_blocks.exit.i

sw.bb119.i.i:                                     ; preds = %nilfs_segctor_create_checkpoint.exit.thread.i.i, %if.end.i168.sw.bb119.i.i_crit_edge
  %ns_cpfile.i.i = getelementptr inbounds %struct.the_nilfs, ptr %168, i32 0, i32 30
  %248 = ptrtoint ptr %ns_cpfile.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ns_cpfile.i.i, align 8
  %call120.i.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %249, ptr noundef nonnull @nilfs_sc_file_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i.i)
  %tobool121.not.i.i = icmp eq i32 %call120.i.i, 0
  br i1 %tobool121.not.i.i, label %if.end129.i.i, label %sw.bb119.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

sw.bb119.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge: ; preds = %sw.bb119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

if.end129.i.i:                                    ; preds = %sw.bb119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %250 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %sc_stage.i, align 8
  %inc.i320.i.i = add i32 %251, 1
  store i32 %inc.i320.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %sw.bb130.i.i

sw.bb130.i.i:                                     ; preds = %if.end129.i.i, %if.end.i168.sw.bb130.i.i_crit_edge
  %ns_sufile.i.i = getelementptr inbounds %struct.the_nilfs, ptr %168, i32 0, i32 31
  %252 = ptrtoint ptr %ns_sufile.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ns_sufile.i.i, align 4
  %254 = ptrtoint ptr %sc_freesegs.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %sc_freesegs.i.i, align 8
  %256 = ptrtoint ptr %sc_nfreesegs.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %sc_nfreesegs.i.i, align 4
  %call.i321.i.i = call i32 @nilfs_sufile_updatev(ptr noundef %253, ptr noundef %255, i32 noundef %257, i32 noundef 0, ptr noundef nonnull %ndone.i.i, ptr noundef nonnull @nilfs_sufile_do_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321.i.i)
  %tobool132.not.i.i = icmp eq i32 %call.i321.i.i, 0
  br i1 %tobool132.not.i.i, label %if.end143.i.i, label %if.then139.i.i, !prof !221

if.then139.i.i:                                   ; preds = %sw.bb130.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %258 = ptrtoint ptr %ns_sufile.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ns_sufile.i.i, align 4
  %260 = ptrtoint ptr %sc_freesegs.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sc_freesegs.i.i, align 8
  %262 = ptrtoint ptr %ndone.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %ndone.i.i, align 4
  %call.i322.i.i = call i32 @nilfs_sufile_updatev(ptr noundef %259, ptr noundef %261, i32 noundef %263, i32 noundef 0, ptr noundef null, ptr noundef nonnull @nilfs_sufile_do_cancel_free) #9
  br label %nilfs_segctor_collect_blocks.exit.i

if.end143.i.i:                                    ; preds = %sw.bb130.i.i
  %264 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %flags, align 4
  %or146.i.i = or i32 %265, 4
  store i32 %or146.i.i, ptr %flags, align 4
  %266 = ptrtoint ptr %ns_sufile.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ns_sufile.i.i, align 4
  %call148.i.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %267, ptr noundef nonnull @nilfs_sc_file_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i.i)
  %tobool149.not.i.i = icmp eq i32 %call148.i.i, 0
  br i1 %tobool149.not.i.i, label %if.end157.i.i, label %if.end143.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

if.end143.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge: ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

if.end157.i.i:                                    ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %268 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %sc_stage.i, align 8
  %inc.i324.i.i = add i32 %269, 1
  store i32 %inc.i324.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %dat_stage.i.i

dat_stage.i.i:                                    ; preds = %if.end157.i.i, %if.end.i168.dat_stage.i.i_crit_edge
  %ns_dat.i.i = getelementptr inbounds %struct.the_nilfs, ptr %168, i32 0, i32 29
  %270 = ptrtoint ptr %ns_dat.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ns_dat.i.i, align 4
  %call159.i.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %271, ptr noundef nonnull @nilfs_sc_dat_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i.i)
  %tobool160.not.i.i = icmp eq i32 %call159.i.i, 0
  br i1 %tobool160.not.i.i, label %if.end168.i.i, label %dat_stage.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

dat_stage.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge: ; preds = %dat_stage.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

dat_stage.i.thread.i:                             ; preds = %if.end4.i.i
  %272 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 6, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  %ns_dat.i221.i = getelementptr inbounds %struct.the_nilfs, ptr %168, i32 0, i32 29
  %273 = ptrtoint ptr %ns_dat.i221.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ns_dat.i221.i, align 4
  %call159.i222.i = call fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %274, ptr noundef nonnull @nilfs_sc_dat_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i222.i)
  %tobool160.not.i223.i = icmp eq i32 %call159.i222.i, 0
  br i1 %tobool160.not.i223.i, label %dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge, label %dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.i_crit_edge: ; preds = %dat_stage.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge: ; preds = %dat_stage.i.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.i

if.end168.i.i:                                    ; preds = %dat_stage.i.i
  br i1 %cmp7.i.i, label %if.end168.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge, label %if.end171.i.i

if.end168.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge: ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.i

if.end171.i.i:                                    ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %275 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %sc_stage.i, align 8
  %inc.i327.i.i = add i32 %276, 1
  store i32 %inc.i327.i.i, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %sw.bb172.i.i

sw.bb172.i.i:                                     ; preds = %if.end171.i.i, %if.end.i168.sw.bb172.i.i_crit_edge
  br i1 %cmp173.i.i, label %if.then174.i.i, label %sw.bb172.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i_crit_edge

sw.bb172.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb172.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i

if.then174.i.i:                                   ; preds = %sw.bb172.i.i
  %277 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %sc_curseg.i, align 4
  %nblocks.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %278, i32 0, i32 2, i32 2
  %279 = ptrtoint ptr %nblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %nblocks.i.i.i, align 8
  %sb_rest_blocks.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %278, i32 0, i32 8
  %281 = ptrtoint ptr %sb_rest_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %sb_rest_blocks.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %282)
  %cmp.not.i.i.i = icmp ult i32 %280, %282
  br i1 %cmp.not.i.i.i, label %if.then174.i.i.if.end3.i.i.i_crit_edge, label %if.then.i329.i.i

if.then174.i.i.if.end3.i.i.i_crit_edge:           ; preds = %if.then174.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i.i

if.then.i329.i.i:                                 ; preds = %if.then174.i.i
  %283 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %add.i.i.i.i = add i32 %284, %280
  store i32 %add.i.i.i.i, ptr %sc_nblk_this_inc.i, align 8
  %sb_list.i.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %278, i32 0, i32 1
  %285 = ptrtoint ptr %sb_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sb_list.i.i.i.i, align 4
  %cmp.i.i328.i.i = icmp eq ptr %286, %sc_segbufs.i
  br i1 %cmp.i.i328.i.i, label %if.end16.thread.i, label %if.end.i.i330.i.i

if.end16.thread.i:                                ; preds = %if.then.i329.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ndone.i.i) #9
  %287 = ptrtoint ptr %nblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %nblocks.i.i.i, align 8
  %add149.i = add i32 %288, %add.i.i.i.i
  %289 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %add149.i, ptr %sc_nblk_this_inc.i, align 8
  br label %lor.lhs.false.i

if.end.i.i330.i.i:                                ; preds = %if.then.i329.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %286, i32 -4
  %290 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %add.ptr.i.i.i.i, ptr %sc_curseg.i, align 4
  %291 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i.i.i.i = and i32 %291, -16384
  %292 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %task.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %task.i.i.i.i.i.i.i, align 8
  %journal_info.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %294, i32 0, i32 146
  %295 = ptrtoint ptr %journal_info.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %journal_info.i.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i.i = icmp eq ptr %296, null
  br i1 %cmp.i.i.i.i.i.i.i, label %if.end.i.i330.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i.i

if.end.i.i330.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i330.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i:                      ; preds = %if.end.i.i330.i.i
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %298)
  %cmp1.not.i.i.i.i.i.i.i = icmp eq i32 %298, -639397125
  br i1 %cmp1.not.i.i.i.i.i.i.i, label %nilfs_doing_gc.exit.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i.i.i.i

nilfs_doing_gc.exit.i.i.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i.i.i
  %ti_flags.i.i.i.i.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %296, i32 0, i32 2
  %299 = ptrtoint ptr %ti_flags.i.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %ti_flags.i.i.i.i.i.i.i, align 4
  %301 = and i16 %300, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %301)
  %tobool.not.i.i.i.i.i = icmp eq i16 %301, 0
  br i1 %tobool.not.i.i.i.i.i, label %nilfs_doing_gc.exit.i.i.i.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge, label %nilfs_doing_gc.exit.i.i.i.i.i._crit_edge

nilfs_doing_gc.exit.i.i.i.i.i._crit_edge:         ; preds = %nilfs_doing_gc.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %302

nilfs_doing_gc.exit.i.i.i.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge: ; preds = %nilfs_doing_gc.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i.i.i.i

nilfs_doing_gc.exit.thread.i.i.i.i.i:             ; preds = %nilfs_doing_gc.exit.i.i.i.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge, %if.end.i.i330.i.i.nilfs_doing_gc.exit.thread.i.i.i.i.i_crit_edge
  br label %302

302:                                              ; preds = %nilfs_doing_gc.exit.thread.i.i.i.i.i, %nilfs_doing_gc.exit.i.i.i.i.i._crit_edge
  %303 = phi i32 [ 0, %nilfs_doing_gc.exit.thread.i.i.i.i.i ], [ 16, %nilfs_doing_gc.exit.i.i.i.i.i._crit_edge ]
  %304 = ptrtoint ptr %sc_seg_ctime to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %sc_seg_ctime, align 8
  %306 = ptrtoint ptr %sc_cno to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %sc_cno, align 8
  %call1.i.i.i.i.i = call i32 @nilfs_segbuf_reset(ptr noundef %add.ptr.i.i.i.i, i32 noundef %303, i64 noundef %305, i64 noundef %307) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i173, label %.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

.nilfs_segctor_collect_blocks.exit.i_crit_edge:   ; preds = %302
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

if.end.i.i.i173:                                  ; preds = %302
  call void @__sanitizer_cov_trace_pc() #11
  %sb_segsum_buffers.i.i.i.i.i = getelementptr i8, ptr %286, i32 112
  %308 = ptrtoint ptr %sb_segsum_buffers.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %sb_segsum_buffers.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %309, i32 -44
  %sumbytes7.i.i.i.i.i = getelementptr i8, ptr %286, i32 28
  %310 = ptrtoint ptr %sumbytes7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %sumbytes7.i.i.i.i.i, align 8
  %312 = ptrtoint ptr %sc_finfo_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %add.ptr.i.i.i.i.i, ptr %sc_finfo_ptr.i.i, align 8
  %313 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %311, ptr %offset.i.i, align 4
  %314 = ptrtoint ptr %sc_binfo_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %add.ptr.i.i.i.i.i, ptr %sc_binfo_ptr.i.i, align 8
  %315 = ptrtoint ptr %offset11.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %311, ptr %offset11.i.i, align 4
  %316 = ptrtoint ptr %sc_datablk_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %sc_datablk_cnt.i.i, align 4
  %317 = ptrtoint ptr %sc_blk_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 0, ptr %sc_blk_cnt.i.i, align 8
  %318 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %sc_curseg.i, align 4
  br label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i173, %if.then174.i.i.if.end3.i.i.i_crit_edge
  %segbuf.0.i.i.i = phi ptr [ %319, %if.end.i.i.i173 ], [ %278, %if.then174.i.i.if.end3.i.i.i_crit_edge ]
  %sb_super_root.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf.0.i.i.i, i32 0, i32 11
  %call4.i.i.i = call i32 @nilfs_segbuf_extend_payload(ptr noundef %segbuf.0.i.i.i, ptr noundef %sb_super_root.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %nilfs_segctor_add_super_root.exit.i.i, label %if.end3.i.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, !prof !221

if.end3.i.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.i

nilfs_segctor_add_super_root.exit.i.i:            ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sb_sum10.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf.0.i.i.i, i32 0, i32 2
  %320 = ptrtoint ptr %sb_sum10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %sb_sum10.i.i.i, align 8
  %or.i.i.i = or i32 %321, 4
  store i32 %or.i.i.i, ptr %sb_sum10.i.i.i, align 8
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i

dsync_mode.i.i:                                   ; preds = %if.then3.i.i, %if.end.i168.dsync_mode.i.i_crit_edge
  %322 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %sc_curseg.i, align 4
  %sb_sum192.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %323, i32 0, i32 2
  %324 = ptrtoint ptr %sb_sum192.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %sb_sum192.i.i, align 8
  %or194.i.i = or i32 %325, 8
  store i32 %or194.i.i, ptr %sb_sum192.i.i, align 8
  %326 = ptrtoint ptr %sc_dsync_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %sc_dsync_inode.i.i, align 8
  %i_state195.i.i = getelementptr inbounds %struct.nilfs_inode_info, ptr %327, i32 0, i32 1
  %328 = ptrtoint ptr %i_state195.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load volatile i32, ptr %i_state195.i.i, align 4
  %330 = and i32 %329, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool197.not.i.i = icmp eq i32 %330, 0
  br i1 %tobool197.not.i.i, label %dsync_mode.i.i.nilfs_segctor_collect_blocks.exit.thread.i_crit_edge, label %if.end199.i.i

dsync_mode.i.i.nilfs_segctor_collect_blocks.exit.thread.i_crit_edge: ; preds = %dsync_mode.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect_blocks.exit.thread.i

if.end199.i.i:                                    ; preds = %dsync_mode.i.i
  %vfs_inode200.i.i = getelementptr inbounds %struct.nilfs_inode_info, ptr %327, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_buffers.i.i.i) #9
  %331 = ptrtoint ptr %data_buffers.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %data_buffers.i.i.i, ptr %data_buffers.i.i.i, align 4
  %332 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %data_buffers.i.i.i, ptr %67, align 4
  %333 = ptrtoint ptr %sc_segbuf_nblocks.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %sc_segbuf_nblocks.i, align 8
  %335 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %337 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %sc_curseg.i, align 4
  %nblocks.i.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %338, i32 0, i32 2, i32 2
  %339 = ptrtoint ptr %nblocks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %nblocks.i.i.i.i, align 8
  %341 = add i32 %336, %340
  %sub.i.i.i.i = sub i32 %334, %341
  %add.i.i.i = add i32 %sub.i.i.i.i, 1
  %342 = ptrtoint ptr %sc_dsync_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %sc_dsync_start.i.i.i, align 8
  %344 = ptrtoint ptr %sc_dsync_end.i.i.i to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %sc_dsync_end.i.i.i, align 8
  %call1.i.i.i = call fastcc i32 @nilfs_lookup_dirty_data_buffers(ptr noundef %vfs_inode200.i.i, ptr noundef nonnull %data_buffers.i.i.i, i32 noundef %add.i.i.i, i64 noundef %343, i64 noundef %345) #9
  %call2.i.i.i = call fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %vfs_inode200.i.i, ptr noundef nonnull %data_buffers.i.i.i, ptr noundef nonnull @nilfs_collect_file_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i333.i.i, label %nilfs_segctor_scan_file_dsync.exit.i.i

if.then.i333.i.i:                                 ; preds = %if.end199.i.i
  call fastcc void @nilfs_segctor_end_finfo(ptr noundef %sci, ptr noundef %vfs_inode200.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i, i32 %sub.i.i.i.i)
  %cmp.i.i.i174 = icmp ugt i32 %call1.i.i.i, %sub.i.i.i.i
  br i1 %cmp.i.i.i174, label %do.body6.i.i.i, label %if.end210.i.i, !prof !222

do.body6.i.i.i:                                   ; preds = %if.then.i333.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1102, 0\0A.popsection", ""() #9, !srcloc !245
  unreachable

nilfs_segctor_scan_file_dsync.exit.i.i:           ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_buffers.i.i.i) #9
  br label %nilfs_segctor_collect_blocks.exit.i

if.end210.i.i:                                    ; preds = %if.then.i333.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_buffers.i.i.i) #9
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i

do.body.i.i:                                      ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1261, 0\0A.popsection", ""() #9, !srcloc !246
  unreachable

nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i: ; preds = %if.end210.i.i, %nilfs_segctor_add_super_root.exit.i.i, %sw.bb172.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i_crit_edge
  %346 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %sc_curseg.i, align 4
  %sb_sum212.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %347, i32 0, i32 2
  %348 = ptrtoint ptr %sb_sum212.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %sb_sum212.i.i, align 8
  %or189.i.i = or i32 %349, 2
  store i32 %or189.i.i, ptr %sb_sum212.i.i, align 8
  br label %nilfs_segctor_collect_blocks.exit.thread.sink.split.i

nilfs_segctor_collect_blocks.exit.thread.sink.split.i: ; preds = %nilfs_segctor_collect_blocks.exit.thread.sink.split.sink.split.i, %if.end168.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge, %dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge, %for.end90.i.i.nilfs_segctor_collect_blocks.exit.thread.sink.split.i_crit_edge
  %350 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 9, ptr %sc_stage.i, align 8
  call fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) #9
  br label %nilfs_segctor_collect_blocks.exit.thread.i

nilfs_segctor_collect_blocks.exit.thread.i:       ; preds = %nilfs_segctor_collect_blocks.exit.thread.sink.split.i, %dsync_mode.i.i.nilfs_segctor_collect_blocks.exit.thread.i_crit_edge, %if.end.i168.nilfs_segctor_collect_blocks.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ndone.i.i) #9
  %351 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %sc_curseg.i, align 4
  %nblocks144.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %352, i32 0, i32 2, i32 2
  %353 = ptrtoint ptr %nblocks144.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %nblocks144.i, align 8
  %355 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %add145.i = add i32 %356, %354
  store i32 %add145.i, ptr %sc_nblk_this_inc.i, align 8
  br label %for.end.i179

nilfs_segctor_collect_blocks.exit.i:              ; preds = %nilfs_segctor_scan_file_dsync.exit.i.i, %if.end3.i.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, %.nilfs_segctor_collect_blocks.exit.i_crit_edge, %dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, %dat_stage.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, %if.end143.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, %if.then139.i.i, %sw.bb119.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, %nilfs_segctor_create_checkpoint.exit.i.i, %nilfs_segctor_create_checkpoint.exit.thread338.i.i, %sw.bb98.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge, %if.then75.i.i, %if.then27.i.i
  %retval.0.i.i = phi i32 [ %call2.i.i.i, %nilfs_segctor_scan_file_dsync.exit.i.i ], [ %call159.i.i, %dat_stage.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge ], [ %call.i321.i.i, %if.then139.i.i ], [ %call148.i.i, %if.end143.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge ], [ %call120.i.i, %sw.bb119.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge ], [ %call99.i.i, %sw.bb98.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge ], [ %call.i.i.i172, %nilfs_segctor_create_checkpoint.exit.i.i ], [ %call67.i.i, %if.then75.i.i ], [ %call22.i.i, %if.then27.i.i ], [ %call.i.i.i172, %nilfs_segctor_create_checkpoint.exit.thread338.i.i ], [ %call1.i.i.i.i.i, %.nilfs_segctor_collect_blocks.exit.i_crit_edge ], [ %call4.i.i.i, %if.end3.i.i.i.nilfs_segctor_collect_blocks.exit.i_crit_edge ], [ %call159.i222.i, %dat_stage.i.thread.i.nilfs_segctor_collect_blocks.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ndone.i.i) #9
  %357 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %sc_curseg.i, align 4
  %nblocks.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %358, i32 0, i32 2, i32 2
  %359 = ptrtoint ptr %nblocks.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %nblocks.i, align 8
  %361 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %add.i = add i32 %362, %360
  store i32 %add.i, ptr %sc_nblk_this_inc.i, align 8
  %363 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %363, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %retval.0.i.i, label %nilfs_segctor_collect_blocks.exit.i.nilfs_segctor_collect.exit_crit_edge [
    i32 0, label %nilfs_segctor_collect_blocks.exit.i.for.end.i179_crit_edge
    i32 -7, label %if.end16.i
  ], !prof !247

nilfs_segctor_collect_blocks.exit.i.for.end.i179_crit_edge: ; preds = %nilfs_segctor_collect_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i179

nilfs_segctor_collect_blocks.exit.i.nilfs_segctor_collect.exit_crit_edge: ; preds = %nilfs_segctor_collect_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect.exit

if.end16.i:                                       ; preds = %nilfs_segctor_collect_blocks.exit.i
  br i1 %cmp173.i.i, label %if.end16.i.lor.lhs.false.i_crit_edge, label %if.end16.i.for.end.i179_crit_edge

if.end16.i.for.end.i179_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i179

if.end16.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end16.i.lor.lhs.false.i_crit_edge, %if.end16.thread.i
  %364 = phi ptr [ %278, %if.end16.thread.i ], [ %358, %if.end16.i.lor.lhs.false.i_crit_edge ]
  %365 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %sc_stage.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %366)
  %cmp19.i = icmp slt i32 %366, 4
  br i1 %cmp19.i, label %lor.lhs.false.i.for.end.i179_crit_edge, label %if.end21.i

lor.lhs.false.i.for.end.i179_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i179

if.end21.i:                                       ; preds = %lor.lhs.false.i
  call void @nilfs_clear_logs(ptr noundef %sc_segbufs.i) #9
  %367 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %flags, align 4
  %and.i = and i32 %368, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end57.i_crit_edge, label %if.then25.i

if.end21.i.if.end57.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then25.i:                                      ; preds = %if.end21.i
  %369 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ns_sufile.i, align 4
  %371 = ptrtoint ptr %sc_freesegs.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %sc_freesegs.i.i, align 8
  %373 = ptrtoint ptr %sc_nfreesegs.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %sc_nfreesegs.i.i, align 4
  %call.i.i = call i32 @nilfs_sufile_updatev(ptr noundef %370, ptr noundef %372, i32 noundef %374, i32 noundef 0, ptr noundef null, ptr noundef nonnull @nilfs_sufile_do_cancel_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool27.not.i, label %if.then25.i.if.end46.i_crit_edge, label %do.end.i, !prof !221

if.then25.i.if.end46.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

do.end.i:                                         ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1514, i32 noundef 9, ptr noundef null) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %if.then25.i.if.end46.i_crit_edge
  %375 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %flags, align 4
  %and56.i = and i32 %376, -5
  store i32 %and56.i, ptr %flags, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end46.i, %if.end21.i.if.end57.i_crit_edge
  %377 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ns_sufile.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nextnextnum.i.i) #9
  %379 = ptrtoint ptr %nextnextnum.i.i to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 -1, ptr %nextnextnum.i.i, align 8, !annotation !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i.i) #9
  %380 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %list.i.i, ptr %list.i.i, align 4
  %381 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %list.i.i, ptr %68, align 4
  %382 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %prev.i.i, align 4
  %sb_nextnum.i.i = getelementptr i8, ptr %383, i32 76
  %384 = ptrtoint ptr %sb_nextnum.i.i to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %sb_nextnum.i.i, align 8
  %call.i121.i = call i32 @nilfs_sufile_mark_dirty(ptr noundef %378, i64 noundef %385) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool.not.i122.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool.not.i122.i, label %if.end.i.i, label %nilfs_segctor_extend_segments.exit.thread153.i, !prof !221

nilfs_segctor_extend_segments.exit.thread153.i:   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nextnextnum.i.i) #9
  br label %failed

if.end.i.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nadd.0.i)
  %cmp112.i.i = icmp sgt i32 %nadd.0.i, 0
  br i1 %cmp112.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.for.end.i125.i_crit_edge

if.end.i.i.for.end.i125.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i125.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %add.ptr.i123.i = getelementptr i8, ptr %383, i32 -4
  br label %for.body.i124.i

for.body.i124.i:                                  ; preds = %list_add_tail.exit.i.i.for.body.i124.i_crit_edge, %for.body.lr.ph.i.i
  %prev.0114.i.i = phi ptr [ %add.ptr.i123.i, %for.body.lr.ph.i.i ], [ %call5.i.i, %list_add_tail.exit.i.i.for.body.i124.i_crit_edge ]
  %i.0113.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i178, %list_add_tail.exit.i.i.for.body.i124.i_crit_edge ]
  %386 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %sci, align 8
  %call5.i.i = call ptr @nilfs_segbuf_new(ptr noundef %387) #9
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %for.body.i124.i.failed.i.i_crit_edge, label %if.end16.i.i, !prof !222

for.body.i124.i.failed.i.i_crit_edge:             ; preds = %for.body.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i.i

if.end16.i.i:                                     ; preds = %for.body.i124.i
  %sb_nextnum17.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev.0114.i.i, i32 0, i32 4
  %388 = ptrtoint ptr %sb_nextnum17.i.i to i32
  call void @__asan_load8_noabort(i32 %388)
  %389 = load i64, ptr %sb_nextnum17.i.i, align 8
  call void @nilfs_segbuf_map(ptr noundef nonnull %call5.i.i, i64 noundef %389, i32 noundef 0, ptr noundef %3) #9
  %sb_rest_blocks.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call5.i.i, i32 0, i32 8
  %390 = ptrtoint ptr %sb_rest_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %sb_rest_blocks.i.i, align 8
  %392 = ptrtoint ptr %sc_segbuf_nblocks.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %sc_segbuf_nblocks.i, align 8
  %add.i.i = add i32 %393, %391
  store i32 %add.i.i, ptr %sc_segbuf_nblocks.i, align 8
  %call18.i.i = call i32 @nilfs_sufile_alloc(ptr noundef %378, ptr noundef nonnull %nextnextnum.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end27.i.i, label %failed_segbuf.i.i, !prof !221

if.end27.i.i:                                     ; preds = %if.end16.i.i
  %seg_seq.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev.0114.i.i, i32 0, i32 2, i32 6
  %394 = ptrtoint ptr %seg_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %seg_seq.i.i, align 8
  %add28.i.i = add i64 %395, 1
  %seg_seq30.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call5.i.i, i32 0, i32 2, i32 6
  %396 = ptrtoint ptr %seg_seq30.i.i to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 %add28.i.i, ptr %seg_seq30.i.i, align 8
  %397 = ptrtoint ptr %nextnextnum.i.i to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %nextnextnum.i.i, align 8
  call void @nilfs_segbuf_set_next_segnum(ptr noundef nonnull %call5.i.i, i64 noundef %398, ptr noundef %3) #9
  %sb_list.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call5.i.i, i32 0, i32 1
  %399 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %68, align 4
  %call.i.i.i.i175 = call zeroext i1 @__list_add_valid(ptr noundef %sb_list.i.i, ptr noundef %400, ptr noundef nonnull %list.i.i) #9
  br i1 %call.i.i.i.i175, label %if.end.i.i.i.i177, label %if.end27.i.i.list_add_tail.exit.i.i_crit_edge

if.end27.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i177:                                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %401 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %sb_list.i.i, ptr %68, align 4
  %402 = ptrtoint ptr %sb_list.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %list.i.i, ptr %sb_list.i.i, align 4
  %prev3.i.i.i.i176 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call5.i.i, i32 0, i32 1, i32 1
  %403 = ptrtoint ptr %prev3.i.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %400, ptr %prev3.i.i.i.i176, align 4
  %404 = ptrtoint ptr %400 to i32
  call void @__asan_store4_noabort(i32 %404)
  store volatile ptr %sb_list.i.i, ptr %400, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i177, %if.end27.i.i.list_add_tail.exit.i.i_crit_edge
  %inc.i.i178 = add nuw nsw i32 %i.0113.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i178, %nadd.0.i
  br i1 %exitcond.not.i.i, label %list_add_tail.exit.i.i.for.end.i125.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i124.i_crit_edge

list_add_tail.exit.i.i.for.body.i124.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i124.i

list_add_tail.exit.i.i.for.end.i125.i_crit_edge:  ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i125.i

for.end.i125.i:                                   ; preds = %list_add_tail.exit.i.i.for.end.i125.i_crit_edge, %if.end.i.i.for.end.i125.i_crit_edge
  %405 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %406, %list.i.i
  br i1 %cmp.i.not.i.i.i, label %for.end.i125.i.nilfs_segctor_extend_segments.exit.thread.i_crit_edge, label %if.then.i.i126.i

for.end.i125.i.nilfs_segctor_extend_segments.exit.thread.i_crit_edge: ; preds = %for.end.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_extend_segments.exit.thread.i

if.then.i.i126.i:                                 ; preds = %for.end.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  %407 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %prev.i.i, align 4
  %409 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %68, align 4
  %prev3.i.i110.i.i = getelementptr inbounds %struct.list_head, ptr %406, i32 0, i32 1
  %411 = ptrtoint ptr %prev3.i.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %408, ptr %prev3.i.i110.i.i, align 4
  %412 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %406, ptr %408, align 4
  %413 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %sc_segbufs.i, ptr %410, align 4
  store ptr %410, ptr %prev.i.i, align 4
  br label %nilfs_segctor_extend_segments.exit.thread.i

failed_segbuf.i.i:                                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @nilfs_segbuf_free(ptr noundef nonnull %call5.i.i) #9
  br label %failed.i.i

failed.i.i:                                       ; preds = %failed_segbuf.i.i, %for.body.i124.i.failed.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call18.i.i, %failed_segbuf.i.i ], [ -12, %for.body.i124.i.failed.i.i_crit_edge ]
  %414 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %.pn115.i.i = load ptr, ptr %list.i.i, align 4
  %cmp38.not116.i.i = icmp eq ptr %.pn115.i.i, %list.i.i
  br i1 %cmp38.not116.i.i, label %nilfs_segctor_extend_segments.exit.thread156.i, label %failed.i.i.for.body41.i.i_crit_edge

failed.i.i.for.body41.i.i_crit_edge:              ; preds = %failed.i.i
  br label %for.body41.i.i

nilfs_segctor_extend_segments.exit.thread156.i:   ; preds = %failed.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @nilfs_truncate_logs(ptr noundef nonnull %list.i.i, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nextnextnum.i.i) #9
  br label %failed

for.body41.i.i:                                   ; preds = %if.end63.i.i.for.body41.i.i_crit_edge, %failed.i.i.for.body41.i.i_crit_edge
  %.pn117.i.i = phi ptr [ %.pn.i128.i, %if.end63.i.i.for.body41.i.i_crit_edge ], [ %.pn115.i.i, %failed.i.i.for.body41.i.i_crit_edge ]
  %sb_nextnum42.i.i = getelementptr i8, ptr %.pn117.i.i, i32 76
  %415 = ptrtoint ptr %sb_nextnum42.i.i to i32
  call void @__asan_load8_noabort(i32 %415)
  %416 = load i64, ptr %sb_nextnum42.i.i, align 8
  %call.i.i127.i = call i32 @nilfs_sufile_update(ptr noundef %378, i64 noundef %416, i32 noundef 0, ptr noundef nonnull @nilfs_sufile_do_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127.i)
  %tobool44.not.i.i = icmp eq i32 %call.i.i127.i, 0
  br i1 %tobool44.not.i.i, label %for.body41.i.i.if.end63.i.i_crit_edge, label %do.end.i.i, !prof !221

for.body41.i.i.if.end63.i.i_crit_edge:            ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i

do.end.i.i:                                       ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1383, i32 noundef 9, ptr noundef null) #9
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %do.end.i.i, %for.body41.i.i.if.end63.i.i_crit_edge
  %417 = ptrtoint ptr %.pn117.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %.pn.i128.i = load ptr, ptr %.pn117.i.i, align 4
  %cmp38.not.i.i = icmp eq ptr %.pn.i128.i, %list.i.i
  br i1 %cmp38.not.i.i, label %nilfs_segctor_extend_segments.exit.i, label %if.end63.i.i.for.body41.i.i_crit_edge

if.end63.i.i.for.body41.i.i_crit_edge:            ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.i.i

nilfs_segctor_extend_segments.exit.thread.i:      ; preds = %if.then.i.i126.i, %for.end.i125.i.nilfs_segctor_extend_segments.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nextnextnum.i.i) #9
  %shl.i = shl i32 %nadd.0.i, 1
  %418 = call i32 @llvm.smin.i32(i32 %shl.i, i32 64) #9
  %419 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %prev_stage.sroa.0.0.copyload.i, ptr %sc_stage.i, align 8
  %420 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %prev_stage.sroa.5.0.copyload.i, ptr %flags, align 4
  %421 = ptrtoint ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %prev_stage.sroa.6.0.copyload.i, ptr %prev_stage.sroa.6.0.sc_stage.sroa_idx.i, align 8
  %422 = ptrtoint ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %prev_stage.sroa.7.0.copyload.i, ptr %prev_stage.sroa.7.0.sc_stage.sroa_idx.i, align 4
  br label %for.cond.i

nilfs_segctor_extend_segments.exit.i:             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @nilfs_truncate_logs(ptr noundef nonnull %list.i.i, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nextnextnum.i.i) #9
  br label %nilfs_segctor_collect.exit

for.end.i179:                                     ; preds = %lor.lhs.false.i.for.end.i179_crit_edge, %if.end16.i.for.end.i179_crit_edge, %nilfs_segctor_collect_blocks.exit.i.for.end.i179_crit_edge, %nilfs_segctor_collect_blocks.exit.thread.i
  %423 = phi ptr [ %352, %nilfs_segctor_collect_blocks.exit.thread.i ], [ %358, %nilfs_segctor_collect_blocks.exit.i.for.end.i179_crit_edge ], [ %358, %if.end16.i.for.end.i179_crit_edge ], [ %364, %lor.lhs.false.i.for.end.i179_crit_edge ]
  %424 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ns_sufile.i, align 4
  %sb_list.i130.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %423, i32 0, i32 1
  %426 = ptrtoint ptr %sb_list.i130.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %.pn37.i.i = load ptr, ptr %sb_list.i130.i, align 4
  %cmp.not38.i.i = icmp eq ptr %.pn37.i.i, %sc_segbufs.i
  br i1 %cmp.not38.i.i, label %for.end.i179.nilfs_segctor_collect.exit.thread396_crit_edge, label %for.end.i179.for.body.i138.i_crit_edge

for.end.i179.for.body.i138.i_crit_edge:           ; preds = %for.end.i179
  br label %for.body.i138.i

for.end.i179.nilfs_segctor_collect.exit.thread396_crit_edge: ; preds = %for.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect.exit.thread396

for.body.i138.i:                                  ; preds = %if.end.i141.i.for.body.i138.i_crit_edge, %for.end.i179.for.body.i138.i_crit_edge
  %.pn39.i.i = phi ptr [ %.pn.i140.i, %if.end.i141.i.for.body.i138.i_crit_edge ], [ %.pn37.i.i, %for.end.i179.for.body.i138.i_crit_edge ]
  %sb_rest_blocks.i134.i = getelementptr i8, ptr %.pn39.i.i, i32 108
  %427 = ptrtoint ptr %sb_rest_blocks.i134.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %sb_rest_blocks.i134.i, align 8
  %429 = ptrtoint ptr %sc_segbuf_nblocks.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %sc_segbuf_nblocks.i, align 8
  %sub.i.i = sub i32 %430, %428
  store i32 %sub.i.i, ptr %sc_segbuf_nblocks.i, align 8
  %sb_nextnum.i135.i = getelementptr i8, ptr %.pn39.i.i, i32 76
  %431 = ptrtoint ptr %sb_nextnum.i135.i to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %sb_nextnum.i135.i, align 8
  %call.i.i136.i = call i32 @nilfs_sufile_update(ptr noundef %425, i64 noundef %432, i32 noundef 0, ptr noundef nonnull @nilfs_sufile_do_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136.i)
  %tobool.not.i137.i = icmp eq i32 %call.i.i136.i, 0
  br i1 %tobool.not.i137.i, label %for.body.i138.i.if.end.i141.i_crit_edge, label %do.end.i139.i, !prof !221

for.body.i138.i.if.end.i141.i_crit_edge:          ; preds = %for.body.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i141.i

do.end.i139.i:                                    ; preds = %for.body.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1473, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i141.i

if.end.i141.i:                                    ; preds = %do.end.i139.i, %for.body.i138.i.if.end.i141.i_crit_edge
  %433 = ptrtoint ptr %.pn39.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %.pn.i140.i = load ptr, ptr %.pn39.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i140.i, %sc_segbufs.i
  br i1 %cmp.not.i.i, label %if.end.i141.i.nilfs_segctor_collect.exit.thread396_crit_edge, label %if.end.i141.i.for.body.i138.i_crit_edge

if.end.i141.i.for.body.i138.i_crit_edge:          ; preds = %if.end.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i138.i

if.end.i141.i.nilfs_segctor_collect.exit.thread396_crit_edge: ; preds = %if.end.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_collect.exit.thread396

nilfs_segctor_collect.exit.thread396:             ; preds = %if.end.i141.i.nilfs_segctor_collect.exit.thread396_crit_edge, %for.end.i179.nilfs_segctor_collect.exit.thread396_crit_edge
  call void @nilfs_truncate_logs(ptr noundef %sc_segbufs.i, ptr noundef %423) #9
  br label %if.end31

nilfs_segctor_collect.exit:                       ; preds = %nilfs_segctor_extend_segments.exit.i, %nilfs_segctor_collect_blocks.exit.i.nilfs_segctor_collect.exit_crit_edge
  %retval.0.i180 = phi i32 [ %err.0.i.i, %nilfs_segctor_extend_segments.exit.i ], [ %retval.0.i.i, %nilfs_segctor_collect_blocks.exit.i.nilfs_segctor_collect.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i180)
  %tobool23.not = icmp eq i32 %retval.0.i180, 0
  br i1 %tobool23.not, label %nilfs_segctor_collect.exit.if.end31_crit_edge, label %nilfs_segctor_collect.exit.failed_crit_edge, !prof !221

nilfs_segctor_collect.exit.failed_crit_edge:      ; preds = %nilfs_segctor_collect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

nilfs_segctor_collect.exit.if.end31_crit_edge:    ; preds = %nilfs_segctor_collect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %nilfs_segctor_collect.exit.if.end31_crit_edge, %nilfs_segctor_collect.exit.thread396
  %434 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %sc_stage.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %435)
  %cmp = icmp eq i32 %435, 9
  br i1 %cmp, label %land.lhs.true, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end31
  %436 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %sc_curseg.i, align 4
  %nblocks.i183 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %437, i32 0, i32 2, i32 2
  %438 = ptrtoint ptr %nblocks.i183 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %nblocks.i183, align 8
  %nsumblk.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %437, i32 0, i32 2, i32 3
  %440 = ptrtoint ptr %nsumblk.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %nsumblk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %439, i32 %441)
  %cmp.i184.not = icmp eq i32 %439, %441
  br i1 %cmp.i184.not, label %if.then35, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nilfs_segctor_abort_construction(ptr noundef %sci, ptr noundef %3, i32 noundef 1)
  br label %out

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  %442 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %.pn20.i = load ptr, ptr %sc_segbufs.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn20.i, %sc_segbufs.i
  br i1 %cmp.not22.i, label %if.end36.if.end46_crit_edge, label %if.end36.for.body.i188_crit_edge

if.end36.for.body.i188_crit_edge:                 ; preds = %if.end36
  br label %for.body.i188

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

for.body.i188:                                    ; preds = %if.end.i205.for.body.i188_crit_edge, %if.end36.for.body.i188_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %if.end.i205.for.body.i188_crit_edge ], [ %.pn20.i, %if.end36.for.body.i188_crit_edge ]
  %segbuf.024.i = getelementptr i8, ptr %.pn23.i, i32 -4
  %nfinfo1.i.i = getelementptr i8, ptr %.pn23.i, i32 16
  %443 = ptrtoint ptr %nfinfo1.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %nfinfo1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ssp.i.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %binfo.i.i) #9
  %445 = call ptr @memset(ptr %binfo.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %tobool.not.i.i187 = icmp eq i32 %444, 0
  br i1 %tobool.not.i.i187, label %for.body.i188.if.end.i205_crit_edge, label %if.end.i.i191

for.body.i188.if.end.i205_crit_edge:              ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i205

if.end.i.i191:                                    ; preds = %for.body.i188
  %sb_pseg_start.i.i = getelementptr i8, ptr %.pn23.i, i32 100
  %446 = ptrtoint ptr %sb_pseg_start.i.i to i32
  call void @__asan_load8_noabort(i32 %446)
  %447 = load i64, ptr %sb_pseg_start.i.i, align 8
  %nsumblk.i.i = getelementptr i8, ptr %.pn23.i, i32 24
  %448 = ptrtoint ptr %nsumblk.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %nsumblk.i.i, align 4
  %sb_segsum_buffers.i.i189 = getelementptr i8, ptr %.pn23.i, i32 112
  %450 = ptrtoint ptr %sb_segsum_buffers.i.i189 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %sb_segsum_buffers.i.i189, align 4
  %add.ptr.i.i190 = getelementptr i8, ptr %451, i32 -44
  %452 = ptrtoint ptr %ssp.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %add.ptr.i.i190, ptr %ssp.i.i, align 4
  %453 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 64, ptr %69, align 4
  %sb_payload_buffers.i.i = getelementptr i8, ptr %.pn23.i, i32 120
  %454 = ptrtoint ptr %sb_payload_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %.pn102.i.i = load ptr, ptr %sb_payload_buffers.i.i, align 4
  %storemerge103.i.i = getelementptr i8, ptr %.pn102.i.i, i32 -44
  %455 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %storemerge103.i.i, ptr %bh.i.i, align 4
  %cmp.not104.i.i = icmp eq ptr %.pn102.i.i, %sb_payload_buffers.i.i
  br i1 %cmp.not104.i.i, label %if.end.i.i191.if.end.i205_crit_edge, label %for.body.lr.ph.i.i193

if.end.i.i191.if.end.i205_crit_edge:              ; preds = %if.end.i.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i205

for.body.lr.ph.i.i193:                            ; preds = %if.end.i.i191
  %conv.i.i = zext i32 %449 to i64
  %add.i.i192 = add i64 %447, %conv.i.i
  %sb_super_root.i.i = getelementptr i8, ptr %.pn23.i, i32 128
  br label %for.body.i.i194

for.body.i.i194:                                  ; preds = %for.inc.i.i.for.body.i.i194_crit_edge, %for.body.lr.ph.i.i193
  %storemerge114.i.i = phi ptr [ %storemerge103.i.i, %for.body.lr.ph.i.i193 ], [ %storemerge.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %.pn112.i.i = phi ptr [ %.pn102.i.i, %for.body.lr.ph.i.i193 ], [ %.pn.i.i202, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %inode.0111.i.i = phi ptr [ null, %for.body.lr.ph.i.i193 ], [ %inode.1.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %blocknr.0110.i.i = phi i64 [ %add.i.i192, %for.body.lr.ph.i.i193 ], [ %inc.i.i200, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %nfinfo.0109.i.i = phi i32 [ %444, %for.body.lr.ph.i.i193 ], [ %nfinfo.1.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %nblocks.0108.i.i = phi i32 [ 0, %for.body.lr.ph.i.i193 ], [ %dec.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %ndatablk.0107.i.i = phi i32 [ 0, %for.body.lr.ph.i.i193 ], [ %ndatablk.2.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %finfo.0106.i.i = phi ptr [ null, %for.body.lr.ph.i.i193 ], [ %finfo.2.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %sc_op.0105.i.i = phi ptr [ null, %for.body.lr.ph.i.i193 ], [ %sc_op.1.i.i, %for.inc.i.i.for.body.i.i194_crit_edge ]
  %456 = ptrtoint ptr %sb_super_root.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %sb_super_root.i.i, align 4
  %cmp10.i.i = icmp eq ptr %storemerge114.i.i, %457
  br i1 %cmp10.i.i, label %for.body.i.i194.if.end.i205_crit_edge, label %if.end13.i.i

for.body.i.i194.if.end.i205_crit_edge:            ; preds = %for.body.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i205

if.end13.i.i:                                     ; preds = %for.body.i.i194
  %tobool14.not.i.i = icmp eq ptr %finfo.0106.i.i, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end13.i.i.if.end26.i.i_crit_edge

if.end13.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  %458 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %sci, align 8
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %459, i32 0, i32 3
  %460 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %s_blocksize.i.i.i, align 16
  %462 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %69, align 4
  %add.i.i.i195 = add i32 %463, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i195, i32 %461)
  %cmp.i.i.i196 = icmp ugt i32 %add.i.i.i195, %461
  br i1 %cmp.i.i.i196, label %if.then.i.i.i197, label %if.then15.i.i.nilfs_segctor_map_segsum_entry.exit.i.i_crit_edge, !prof !222

if.then15.i.i.nilfs_segctor_map_segsum_entry.exit.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit.i.i

if.then.i.i.i197:                                 ; preds = %if.then15.i.i
  %464 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %sc_curseg.i, align 4
  %466 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 0, ptr %69, align 4
  %467 = ptrtoint ptr %ssp.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %ssp.i.i, align 4
  %b_assoc_buffers.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %468, i32 0, i32 9
  %469 = ptrtoint ptr %b_assoc_buffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %b_assoc_buffers.i.i.i, align 4
  %sb_segsum_buffers.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %465, i32 0, i32 9
  %cmp3.i.i.i = icmp eq ptr %470, %sb_segsum_buffers.i.i.i
  br i1 %cmp3.i.i.i, label %do.body11.i.i.i, label %do.end16.i.i.i, !prof !222

do.body11.i.i.i:                                  ; preds = %if.then.i.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i.i.i:                                   ; preds = %if.then.i.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %470, i32 -44
  %471 = ptrtoint ptr %ssp.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %add.ptr.i.i.i, ptr %ssp.i.i, align 4
  br label %nilfs_segctor_map_segsum_entry.exit.i.i

nilfs_segctor_map_segsum_entry.exit.i.i:          ; preds = %do.end16.i.i.i, %if.then15.i.i.nilfs_segctor_map_segsum_entry.exit.i.i_crit_edge
  %472 = ptrtoint ptr %ssp.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %ssp.i.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %473, i32 0, i32 5
  %474 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %b_data.i.i.i, align 4
  %476 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %69, align 4
  %add.ptr24.i.i.i = getelementptr i8, ptr %475, i32 %477
  %add26.i.i.i = add i32 %477, 24
  store i32 %add26.i.i.i, ptr %69, align 4
  %fi_nblocks.i.i = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr24.i.i.i, i32 0, i32 2
  %478 = ptrtoint ptr %fi_nblocks.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %fi_nblocks.i.i, align 8
  %480 = call i32 @llvm.bswap.i32(i32 %479) #9
  %fi_ndatablk.i.i = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr24.i.i.i, i32 0, i32 3
  %481 = ptrtoint ptr %fi_ndatablk.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %fi_ndatablk.i.i, align 4
  %483 = call i32 @llvm.bswap.i32(i32 %482) #9
  %b_page.i.i = getelementptr i8, ptr %.pn112.i.i, i32 -36
  %484 = ptrtoint ptr %b_page.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %b_page.i.i, align 8
  %mapping.i.i = getelementptr inbounds %struct.page, ptr %485, i32 0, i32 1, i32 0, i32 1
  %486 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %mapping.i.i, align 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %487, align 4
  br i1 %cmp.i.i, label %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge, label %if.else.i.i

nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge: ; preds = %nilfs_segctor_map_segsum_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %nilfs_segctor_map_segsum_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %490 = ptrtoint ptr %add.ptr24.i.i.i to i32
  call void @__asan_load8_noabort(i32 %490)
  %491 = load i64, ptr %add.ptr24.i.i.i, align 8
  %492 = call i64 @llvm.bswap.i64(i64 %491) #9
  %conv16.i.i = trunc i64 %492 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv16.i.i)
  %cmp20.i.i = icmp eq i32 %conv16.i.i, 3
  %nilfs_sc_dat_ops.nilfs_sc_file_ops.i.i = select i1 %cmp20.i.i, ptr @nilfs_sc_dat_ops, ptr @nilfs_sc_file_ops
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.else.i.i, %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge, %if.end13.i.i.if.end26.i.i_crit_edge
  %sc_op.1.i.i = phi ptr [ %sc_op.0105.i.i, %if.end13.i.i.if.end26.i.i_crit_edge ], [ @nilfs_sc_dsync_ops, %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge ], [ %nilfs_sc_dat_ops.nilfs_sc_file_ops.i.i, %if.else.i.i ]
  %finfo.1.i.i = phi ptr [ %finfo.0106.i.i, %if.end13.i.i.if.end26.i.i_crit_edge ], [ %add.ptr24.i.i.i, %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge ], [ %add.ptr24.i.i.i, %if.else.i.i ]
  %ndatablk.1.i.i = phi i32 [ %ndatablk.0107.i.i, %if.end13.i.i.if.end26.i.i_crit_edge ], [ %483, %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge ], [ %483, %if.else.i.i ]
  %nblocks.1.i.i = phi i32 [ %nblocks.0108.i.i, %if.end13.i.i.if.end26.i.i_crit_edge ], [ %480, %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge ], [ %480, %if.else.i.i ]
  %inode.1.i.i = phi ptr [ %inode.0111.i.i, %if.end13.i.i.if.end26.i.i_crit_edge ], [ %489, %nilfs_segctor_map_segsum_entry.exit.i.i.if.end26.i.i_crit_edge ], [ %489, %if.else.i.i ]
  %b_count.i.i.i = getelementptr i8, ptr %.pn112.i.i, i32 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #9
  %493 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #9, !srcloc !249
  %i_bmap.i.i = getelementptr i8, ptr %inode.1.i.i, i32 -584
  %494 = ptrtoint ptr %i_bmap.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %i_bmap.i.i, align 8
  %conv28.i.i = trunc i64 %blocknr.0110.i.i to i32
  %call29.i.i = call i32 @nilfs_bmap_assign(ptr noundef %495, ptr noundef nonnull %bh.i.i, i32 noundef %conv28.i.i, ptr noundef nonnull %binfo.i.i) #9
  %496 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %bh.i.i, align 4
  %cmp30.not.i.i = icmp eq ptr %497, %storemerge114.i.i
  br i1 %cmp30.not.i.i, label %if.end26.i.i.if.end33.i.i_crit_edge, label %if.then32.i.i

if.end26.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %if.end26.i.i
  %b_assoc_buffers.i100.i.i = getelementptr inbounds %struct.buffer_head, ptr %497, i32 0, i32 9
  %498 = ptrtoint ptr %b_assoc_buffers.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load volatile ptr, ptr %b_assoc_buffers.i100.i.i, align 4
  %cmp.i.not.i.i.i198 = icmp eq ptr %499, %b_assoc_buffers.i100.i.i
  br i1 %cmp.i.not.i.i.i198, label %nilfs_list_replace_buffer.exit.i.i, label %do.body4.i.i.i, !prof !221

do.body4.i.i.i:                                   ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1535, 0\0A.popsection", ""() #9, !srcloc !250
  unreachable

nilfs_list_replace_buffer.exit.i.i:               ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %500 = ptrtoint ptr %.pn112.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %.pn112.i.i, align 4
  %502 = ptrtoint ptr %b_assoc_buffers.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr %501, ptr %b_assoc_buffers.i100.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %501, i32 0, i32 1
  %503 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %b_assoc_buffers.i100.i.i, ptr %prev.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %.pn112.i.i, i32 4
  %504 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %prev3.i.i.i.i.i, align 4
  %prev4.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %497, i32 0, i32 9, i32 1
  %506 = ptrtoint ptr %prev4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr %505, ptr %prev4.i.i.i.i.i, align 4
  %507 = ptrtoint ptr %505 to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %b_assoc_buffers.i100.i.i, ptr %505, align 4
  store volatile ptr %.pn112.i.i, ptr %.pn112.i.i, align 4
  store ptr %.pn112.i.i, ptr %prev3.i.i.i.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %nilfs_list_replace_buffer.exit.i.i, %if.end26.i.i.if.end33.i.i_crit_edge
  %tobool.not.i.i.i199 = icmp eq ptr %storemerge114.i.i, null
  br i1 %tobool.not.i.i.i199, label %if.end33.i.i.brelse.exit.i.i_crit_edge, label %if.then.i101.i.i

if.end33.i.i.brelse.exit.i.i_crit_edge:           ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i.i

if.then.i101.i.i:                                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %storemerge114.i.i) #9
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i101.i.i, %if.end33.i.i.brelse.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool34.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end39.i.i, label %nilfs_segctor_assign.exit, !prof !221

if.end39.i.i:                                     ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndatablk.1.i.i)
  %cmp40.not.i.i = icmp eq i32 %ndatablk.1.i.i, 0
  %write_node_binfo.i.i = getelementptr inbounds %struct.nilfs_sc_operations, ptr %sc_op.1.i.i, i32 0, i32 4
  %write_data_binfo.i.i = getelementptr inbounds %struct.nilfs_sc_operations, ptr %sc_op.1.i.i, i32 0, i32 3
  %write_node_binfo.sink.i.i = select i1 %cmp40.not.i.i, ptr %write_node_binfo.i.i, ptr %write_data_binfo.i.i
  %508 = ptrtoint ptr %write_node_binfo.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %write_node_binfo.sink.i.i, align 4
  call void %509(ptr noundef %sci, ptr noundef nonnull %ssp.i.i, ptr noundef nonnull %binfo.i.i) #9
  %inc.i.i200 = add i64 %blocknr.0110.i.i, 1
  %dec.i.i = add i32 %nblocks.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp45.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp45.i.i, label %if.then47.i.i, label %if.else53.i.i

if.then47.i.i:                                    ; preds = %if.end39.i.i
  %dec48.i.i = add i32 %nfinfo.0109.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec48.i.i)
  %cmp49.i.i = icmp eq i32 %dec48.i.i, 0
  br i1 %cmp49.i.i, label %if.then47.i.i.if.end.i205_crit_edge, label %if.then47.i.i.for.inc.i.i_crit_edge

if.then47.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then47.i.i.if.end.i205_crit_edge:              ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i205

if.else53.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec57.i.i = add i32 %ndatablk.1.i.i, -1
  %spec.select.i.i201 = select i1 %cmp40.not.i.i, i32 0, i32 %dec57.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else53.i.i, %if.then47.i.i.for.inc.i.i_crit_edge
  %finfo.2.i.i = phi ptr [ null, %if.then47.i.i.for.inc.i.i_crit_edge ], [ %finfo.1.i.i, %if.else53.i.i ]
  %ndatablk.2.i.i = phi i32 [ %ndatablk.1.i.i, %if.then47.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i201, %if.else53.i.i ]
  %nfinfo.1.i.i = phi i32 [ %dec48.i.i, %if.then47.i.i.for.inc.i.i_crit_edge ], [ %nfinfo.0109.i.i, %if.else53.i.i ]
  %510 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %bh.i.i, align 4
  %b_assoc_buffers61.i.i = getelementptr inbounds %struct.buffer_head, ptr %511, i32 0, i32 9
  %512 = ptrtoint ptr %b_assoc_buffers61.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %.pn.i.i202 = load ptr, ptr %b_assoc_buffers61.i.i, align 4
  %storemerge.i.i = getelementptr i8, ptr %.pn.i.i202, i32 -44
  store ptr %storemerge.i.i, ptr %bh.i.i, align 4
  %cmp.not.i.i203 = icmp eq ptr %.pn.i.i202, %sb_payload_buffers.i.i
  br i1 %cmp.not.i.i203, label %for.inc.i.i.if.end.i205_crit_edge, label %for.inc.i.i.for.body.i.i194_crit_edge

for.inc.i.i.for.body.i.i194_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i194

for.inc.i.i.if.end.i205_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i205

if.end.i205:                                      ; preds = %for.inc.i.i.if.end.i205_crit_edge, %if.then47.i.i.if.end.i205_crit_edge, %for.body.i.i194.if.end.i205_crit_edge, %if.end.i.i191.if.end.i205_crit_edge, %for.body.i188.if.end.i205_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %binfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssp.i.i) #9
  call void @nilfs_segbuf_fill_in_segsum(ptr noundef %segbuf.024.i) #9
  %513 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i204 = icmp eq ptr %.pn.i, %sc_segbufs.i
  br i1 %cmp.not.i204, label %if.end.i205.if.end46_crit_edge, label %if.end.i205.for.body.i188_crit_edge

if.end.i205.for.body.i188_crit_edge:              ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i188

if.end.i205.if.end46_crit_edge:                   ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

nilfs_segctor_assign.exit:                        ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %binfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssp.i.i) #9
  br label %failed

if.end46:                                         ; preds = %if.end.i205.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  %514 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %flags, align 4
  %and49 = and i32 %515, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end46.if.end52_crit_edge, label %if.then51

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then51:                                        ; preds = %if.end46
  %516 = ptrtoint ptr %sc_dirty_files.i153 to i32
  call void @__asan_load4_noabort(i32 %516)
  %.pn12.i = load ptr, ptr %sc_dirty_files.i153, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %sc_dirty_files.i153
  br i1 %cmp.not13.i, label %if.then51.if.end52_crit_edge, label %if.then51.for.body.i213_crit_edge

if.then51.for.body.i213_crit_edge:                ; preds = %if.then51
  br label %for.body.i213

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

for.body.i213:                                    ; preds = %nilfs_fill_in_file_bmap.exit.i.for.body.i213_crit_edge, %if.then51.for.body.i213_crit_edge
  %.pn14.i = phi ptr [ %.pn.i219, %nilfs_fill_in_file_bmap.exit.i.for.body.i213_crit_edge ], [ %.pn12.i, %if.then51.for.body.i213_crit_edge ]
  %517 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %sc_root.i, align 4
  %ifile.i = getelementptr inbounds %struct.nilfs_root, ptr %518, i32 0, i32 4
  %519 = ptrtoint ptr %ifile.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %ifile.i, align 4
  %i_state.i.i211 = getelementptr i8, ptr %.pn14.i, i32 -568
  %521 = ptrtoint ptr %i_state.i.i211 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load volatile i32, ptr %i_state.i.i211, align 4
  %523 = and i32 %522, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %523)
  %tobool.not.i.i212 = icmp eq i32 %523, 0
  br i1 %tobool.not.i.i212, label %for.body.i213.nilfs_fill_in_file_bmap.exit.i_crit_edge, label %if.then.i.i214

for.body.i213.nilfs_fill_in_file_bmap.exit.i_crit_edge: ; preds = %for.body.i213
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_fill_in_file_bmap.exit.i

if.then.i.i214:                                   ; preds = %for.body.i213
  %i_bh.i.i = getelementptr i8, ptr %.pn14.i, i32 8
  %524 = ptrtoint ptr %i_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %i_bh.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %525, null
  br i1 %tobool1.not.i.i, label %do.body6.i.i, label %do.end11.i.i, !prof !222

do.body6.i.i:                                     ; preds = %if.then.i.i214
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 928, 0\0A.popsection", ""() #9, !srcloc !251
  unreachable

do.end11.i.i:                                     ; preds = %if.then.i.i214
  %i_ino.i.i = getelementptr i8, ptr %.pn14.i, i32 60
  %526 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %i_ino.i.i, align 8
  %b_page.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %525, i32 0, i32 2
  %528 = ptrtoint ptr %b_page.i.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %b_page.i.i.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 44) #9
  %530 = ptrtoint ptr %529 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %529, align 4
  %shr.i.i.i.i.i = lshr i32 %531, 30
  %532 = zext i32 %shr.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %532, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %shr.i.i.i.i.i, label %do.end11.i.i.if.then.i.i.i.i215_crit_edge [
    i32 2, label %do.end11.i.i.if.else.i.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i.i
  ]

do.end11.i.i.if.else.i.i.i.i_crit_edge:           ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i.i.i

do.end11.i.i.if.then.i.i.i.i215_crit_edge:        ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i215

is_highmem_idx.exit.i.i.i.i:                      ; preds = %do.end11.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %533 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %533)
  %cmp2.i.not.i.i.i.i = icmp eq i32 %533, 2
  br i1 %cmp2.i.not.i.i.i.i, label %is_highmem_idx.exit.i.i.i.i.if.else.i.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.i.if.then.i.i.i.i215_crit_edge

is_highmem_idx.exit.i.i.i.i.if.then.i.i.i.i215_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i215

is_highmem_idx.exit.i.i.i.i.if.else.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i.i.i

if.then.i.i.i.i215:                               ; preds = %is_highmem_idx.exit.i.i.i.i.if.then.i.i.i.i215_crit_edge, %do.end11.i.i.if.then.i.i.i.i215_crit_edge
  %call5.i.i.i.i = call ptr @page_address(ptr noundef %529) #9
  br label %nilfs_ifile_map_inode.exit.i.i

if.else.i.i.i.i:                                  ; preds = %is_highmem_idx.exit.i.i.i.i.if.else.i.i.i.i_crit_edge, %do.end11.i.i.if.else.i.i.i.i_crit_edge
  %call6.i.i.i.i = call ptr @kmap_high(ptr noundef %529) #9
  br label %nilfs_ifile_map_inode.exit.i.i

nilfs_ifile_map_inode.exit.i.i:                   ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i215
  %addr.0.i.i.i.i = phi ptr [ %call6.i.i.i.i, %if.else.i.i.i.i ], [ %call5.i.i.i.i, %if.then.i.i.i.i215 ]
  %conv.i.i.i = zext i32 %527 to i64
  %call1.i.i.i216 = call ptr @nilfs_palloc_block_get_entry(ptr noundef %520, i64 noundef %conv.i.i.i, ptr noundef nonnull %525, ptr noundef %addr.0.i.i.i.i) #9
  %i_bmap.i.i217 = getelementptr i8, ptr %.pn14.i, i32 -564
  %534 = ptrtoint ptr %i_bmap.i.i217 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %i_bmap.i.i217, align 8
  call void @nilfs_bmap_write(ptr noundef %535, ptr noundef %call1.i.i.i216) #9
  %536 = ptrtoint ptr %b_page.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %b_page.i.i.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 55) #9
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %537, align 4
  %shr.i.i.i24.i.i = lshr i32 %539, 30
  %540 = zext i32 %shr.i.i.i24.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %540, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %shr.i.i.i24.i.i, label %nilfs_ifile_map_inode.exit.i.i.nilfs_fill_in_file_bmap.exit.i_crit_edge [
    i32 2, label %nilfs_ifile_map_inode.exit.i.i.if.end.i.i.i.i218_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i26.i.i
  ]

nilfs_ifile_map_inode.exit.i.i.if.end.i.i.i.i218_crit_edge: ; preds = %nilfs_ifile_map_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i218

nilfs_ifile_map_inode.exit.i.i.nilfs_fill_in_file_bmap.exit.i_crit_edge: ; preds = %nilfs_ifile_map_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_fill_in_file_bmap.exit.i

is_highmem_idx.exit.i.i26.i.i:                    ; preds = %nilfs_ifile_map_inode.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %541 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %541)
  %cmp2.i.not.i.i25.i.i = icmp eq i32 %541, 2
  br i1 %cmp2.i.not.i.i25.i.i, label %is_highmem_idx.exit.i.i26.i.i.if.end.i.i.i.i218_crit_edge, label %is_highmem_idx.exit.i.i26.i.i.nilfs_fill_in_file_bmap.exit.i_crit_edge

is_highmem_idx.exit.i.i26.i.i.nilfs_fill_in_file_bmap.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_fill_in_file_bmap.exit.i

is_highmem_idx.exit.i.i26.i.i.if.end.i.i.i.i218_crit_edge: ; preds = %is_highmem_idx.exit.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i218

if.end.i.i.i.i218:                                ; preds = %is_highmem_idx.exit.i.i26.i.i.if.end.i.i.i.i218_crit_edge, %nilfs_ifile_map_inode.exit.i.i.if.end.i.i.i.i218_crit_edge
  call void @kunmap_high(ptr noundef %537) #9
  br label %nilfs_fill_in_file_bmap.exit.i

nilfs_fill_in_file_bmap.exit.i:                   ; preds = %if.end.i.i.i.i218, %is_highmem_idx.exit.i.i26.i.i.nilfs_fill_in_file_bmap.exit.i_crit_edge, %nilfs_ifile_map_inode.exit.i.i.nilfs_fill_in_file_bmap.exit.i_crit_edge, %for.body.i213.nilfs_fill_in_file_bmap.exit.i_crit_edge
  call void @_set_bit(i32 noundef 4, ptr noundef %i_state.i.i211) #9
  %542 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %.pn.i219 = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i220 = icmp eq ptr %.pn.i219, %sc_dirty_files.i153
  br i1 %cmp.not.i220, label %nilfs_fill_in_file_bmap.exit.i.if.end52_crit_edge, label %nilfs_fill_in_file_bmap.exit.i.for.body.i213_crit_edge

nilfs_fill_in_file_bmap.exit.i.for.body.i213_crit_edge: ; preds = %nilfs_fill_in_file_bmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i213

nilfs_fill_in_file_bmap.exit.i.if.end52_crit_edge: ; preds = %nilfs_fill_in_file_bmap.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52:                                         ; preds = %nilfs_fill_in_file_bmap.exit.i.if.end52_crit_edge, %if.then51.if.end52_crit_edge, %if.end46.if.end52_crit_edge
  br i1 %cmp173.i.i, label %land.lhs.true54, label %if.end52.if.end68_crit_edge

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true54:                                  ; preds = %if.end52
  %543 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %sc_stage.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %544)
  %cmp56 = icmp sgt i32 %544, 3
  br i1 %cmp56, label %if.then57, label %land.lhs.true54.if.end68_crit_edge

land.lhs.true54.if.end68_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then57:                                        ; preds = %land.lhs.true54
  %545 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %sci, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %546, i32 0, i32 33
  %547 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_cp.i) #9
  %549 = ptrtoint ptr %bh_cp.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh_cp.i, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cp.i) #9
  %550 = ptrtoint ptr %raw_cp.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr inttoptr (i32 -1 to ptr), ptr %raw_cp.i, align 4, !annotation !223
  %ns_cpfile.i = getelementptr inbounds %struct.the_nilfs, ptr %548, i32 0, i32 30
  %551 = ptrtoint ptr %ns_cpfile.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ns_cpfile.i, align 8
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %548, i32 0, i32 17
  %553 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %553)
  %554 = load i64, ptr %ns_cno.i, align 8
  %call.i223 = call i32 @nilfs_cpfile_get_checkpoint(ptr noundef %552, i64 noundef %554, i32 noundef 0, ptr noundef nonnull %raw_cp.i, ptr noundef nonnull %bh_cp.i) #9
  %555 = zext i32 %call.i223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %555, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call.i223, label %nilfs_segctor_fill_in_checkpoint.exit [
    i32 0, label %nilfs_segctor_fill_in_checkpoint.exit.thread
    i32 -22, label %if.then57.nilfs_segctor_fill_in_checkpoint.exit.thread402_crit_edge
    i32 -2, label %if.then57.nilfs_segctor_fill_in_checkpoint.exit.thread402_crit_edge778
  ], !prof !244

if.then57.nilfs_segctor_fill_in_checkpoint.exit.thread402_crit_edge778: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_fill_in_checkpoint.exit.thread402

if.then57.nilfs_segctor_fill_in_checkpoint.exit.thread402_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_fill_in_checkpoint.exit.thread402

nilfs_segctor_fill_in_checkpoint.exit.thread402:  ; preds = %if.then57.nilfs_segctor_fill_in_checkpoint.exit.thread402_crit_edge, %if.then57.nilfs_segctor_fill_in_checkpoint.exit.thread402_crit_edge778
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 891, i32 noundef 9, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp.i) #9
  br label %failed_to_write

nilfs_segctor_fill_in_checkpoint.exit.thread:     ; preds = %if.then57
  %556 = ptrtoint ptr %raw_cp.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %raw_cp.i, align 4
  %cp_snapshot_list.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %557, i32 0, i32 2
  %558 = call ptr @memset(ptr %cp_snapshot_list.i, i32 0, i32 16)
  %559 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %sc_root.i, align 4
  %inodes_count.i = getelementptr inbounds %struct.nilfs_root, ptr %560, i32 0, i32 5
  %call.i.i.i226 = call zeroext i1 @__kasan_check_read(ptr noundef %inodes_count.i, i32 noundef 8) #9
  %call.i.i227 = call i64 @generic_atomic64_read(ptr noundef %inodes_count.i) #9
  %561 = call i64 @llvm.bswap.i64(i64 %call.i.i227) #9
  %562 = ptrtoint ptr %raw_cp.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %raw_cp.i, align 4
  %cp_inodes_count.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %563, i32 0, i32 6
  %564 = ptrtoint ptr %cp_inodes_count.i to i32
  call void @__asan_store8_noabort(i32 %564)
  store i64 %561, ptr %cp_inodes_count.i, align 8
  %565 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %sc_root.i, align 4
  %blocks_count.i = getelementptr inbounds %struct.nilfs_root, ptr %566, i32 0, i32 6
  %call.i.i59.i = call zeroext i1 @__kasan_check_read(ptr noundef %blocks_count.i, i32 noundef 8) #9
  %call.i60.i = call i64 @generic_atomic64_read(ptr noundef %blocks_count.i) #9
  %567 = call i64 @llvm.bswap.i64(i64 %call.i60.i) #9
  %568 = ptrtoint ptr %raw_cp.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %raw_cp.i, align 4
  %cp_blocks_count.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %569, i32 0, i32 7
  %570 = ptrtoint ptr %cp_blocks_count.i to i32
  call void @__asan_store8_noabort(i32 %570)
  store i64 %567, ptr %cp_blocks_count.i, align 8
  %571 = ptrtoint ptr %sc_nblk_inc.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %sc_nblk_inc.i.i, align 8
  %573 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %add.i229 = add i32 %574, %572
  %conv.i230 = zext i32 %add.i229 to i64
  %575 = call i64 @llvm.bswap.i64(i64 %conv.i230) #9
  %cp_nblk_inc.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %569, i32 0, i32 5
  %576 = ptrtoint ptr %cp_nblk_inc.i to i32
  call void @__asan_store8_noabort(i32 %576)
  store i64 %575, ptr %cp_nblk_inc.i, align 8
  %577 = ptrtoint ptr %sc_seg_ctime to i32
  call void @__asan_load8_noabort(i32 %577)
  %578 = load i64, ptr %sc_seg_ctime, align 8
  %579 = call i64 @llvm.bswap.i64(i64 %578) #9
  %cp_create.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %569, i32 0, i32 4
  %580 = ptrtoint ptr %cp_create.i to i32
  call void @__asan_store8_noabort(i32 %580)
  store i64 %579, ptr %cp_create.i, align 8
  %581 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %581)
  %582 = load i64, ptr %ns_cno.i, align 8
  %583 = call i64 @llvm.bswap.i64(i64 %582) #9
  %cp_cno.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %569, i32 0, i32 3
  %584 = ptrtoint ptr %cp_cno.i to i32
  call void @__asan_store8_noabort(i32 %584)
  store i64 %583, ptr %cp_cno.i, align 8
  %585 = ptrtoint ptr %sc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load volatile i32, ptr %sc_flags.i.i, align 4
  %587 = ptrtoint ptr %569 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %569, align 8
  %589 = and i32 %588, -134217729
  %590 = shl i32 %586, 23
  %591 = and i32 %590, 134217728
  %592 = or i32 %591, %589
  %storemerge.i = xor i32 %592, 134217728
  store i32 %storemerge.i, ptr %569, align 8
  %593 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %sc_root.i, align 4
  %ifile.i232 = getelementptr inbounds %struct.nilfs_root, ptr %594, i32 0, i32 4
  %595 = ptrtoint ptr %ifile.i232 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %ifile.i232, align 4
  %597 = ptrtoint ptr %raw_cp.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %raw_cp.i, align 4
  %cp_ifile_inode.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %598, i32 0, i32 8
  call void @nilfs_write_inode_common(ptr noundef %596, ptr noundef %cp_ifile_inode.i, i32 noundef 1) #9
  %599 = ptrtoint ptr %ns_cpfile.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %ns_cpfile.i, align 8
  %601 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %601)
  %602 = load i64, ptr %ns_cno.i, align 8
  %603 = ptrtoint ptr %bh_cp.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %bh_cp.i, align 4
  call void @nilfs_cpfile_put_checkpoint(ptr noundef %600, i64 noundef %602, ptr noundef %604) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp.i) #9
  %605 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %prev.i.i, align 4
  %sb_super_root.i = getelementptr i8, ptr %606, i32 128
  %607 = ptrtoint ptr %sb_super_root.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %sb_super_root.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %608, i32 0, i32 5
  %609 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %b_data.i, align 4
  %611 = ptrtoint ptr %ns_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %ns_inode_size.i, align 4
  %mul.i = mul i32 %612, 3
  %add.i234 = add i32 %mul.i, 16
  %conv.i235 = trunc i32 %add.i234 to i16
  %613 = call i16 @llvm.bswap.i16(i16 %conv.i235) #9
  %sr_bytes.i = getelementptr inbounds %struct.nilfs_super_root, ptr %610, i32 0, i32 1
  %614 = ptrtoint ptr %sr_bytes.i to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 %613, ptr %sr_bytes.i, align 4
  %615 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i236 = and i32 %615, -16384
  %616 = inttoptr i32 %and.i.i.i.i236 to ptr
  %task.i.i.i237 = getelementptr inbounds %struct.thread_info, ptr %616, i32 0, i32 2
  %617 = ptrtoint ptr %task.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %task.i.i.i237, align 8
  %journal_info.i.i.i238 = getelementptr inbounds %struct.task_struct, ptr %618, i32 0, i32 146
  %619 = ptrtoint ptr %journal_info.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %journal_info.i.i.i238, align 4
  %cmp.i.i.i239 = icmp eq ptr %620, null
  br i1 %cmp.i.i.i239, label %nilfs_segctor_fill_in_checkpoint.exit.thread.nilfs_doing_gc.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i241

nilfs_segctor_fill_in_checkpoint.exit.thread.nilfs_doing_gc.exit.thread.i_crit_edge: ; preds = %nilfs_segctor_fill_in_checkpoint.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i

nilfs_segctor_fill_in_checkpoint.exit:            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_cp.i) #9
  br label %failed_to_write

lor.lhs.false.i.i.i241:                           ; preds = %nilfs_segctor_fill_in_checkpoint.exit.thread
  %621 = ptrtoint ptr %620 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %620, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %622)
  %cmp1.not.i.i.i240 = icmp eq i32 %622, -639397125
  br i1 %cmp1.not.i.i.i240, label %nilfs_doing_gc.exit.i244, label %lor.lhs.false.i.i.i241.nilfs_doing_gc.exit.thread.i_crit_edge

lor.lhs.false.i.i.i241.nilfs_doing_gc.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i

nilfs_doing_gc.exit.i244:                         ; preds = %lor.lhs.false.i.i.i241
  %ti_flags.i.i.i242 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %620, i32 0, i32 2
  %623 = ptrtoint ptr %ti_flags.i.i.i242 to i32
  call void @__asan_load2_noabort(i32 %623)
  %624 = load i16, ptr %ti_flags.i.i.i242, align 4
  %625 = and i16 %624, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %625)
  %tobool.not.i243 = icmp eq i16 %625, 0
  br i1 %tobool.not.i243, label %nilfs_doing_gc.exit.i244.nilfs_doing_gc.exit.thread.i_crit_edge, label %nilfs_doing_gc.exit.i244.nilfs_segctor_fill_in_super_root.exit_crit_edge

nilfs_doing_gc.exit.i244.nilfs_segctor_fill_in_super_root.exit_crit_edge: ; preds = %nilfs_doing_gc.exit.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_fill_in_super_root.exit

nilfs_doing_gc.exit.i244.nilfs_doing_gc.exit.thread.i_crit_edge: ; preds = %nilfs_doing_gc.exit.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i

nilfs_doing_gc.exit.thread.i:                     ; preds = %nilfs_doing_gc.exit.i244.nilfs_doing_gc.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i241.nilfs_doing_gc.exit.thread.i_crit_edge, %nilfs_segctor_fill_in_checkpoint.exit.thread.nilfs_doing_gc.exit.thread.i_crit_edge
  br label %nilfs_segctor_fill_in_super_root.exit

nilfs_segctor_fill_in_super_root.exit:            ; preds = %nilfs_doing_gc.exit.thread.i, %nilfs_doing_gc.exit.i244.nilfs_segctor_fill_in_super_root.exit_crit_edge
  %626 = phi ptr [ %sc_seg_ctime, %nilfs_doing_gc.exit.thread.i ], [ %ns_nongc_ctime.i, %nilfs_doing_gc.exit.i244.nilfs_segctor_fill_in_super_root.exit_crit_edge ]
  %627 = ptrtoint ptr %626 to i32
  call void @__asan_load8_noabort(i32 %627)
  %cond.i = load i64, ptr %626, align 8
  %628 = call i64 @llvm.bswap.i64(i64 %cond.i) #9
  %sr_nongc_ctime.i = getelementptr inbounds %struct.nilfs_super_root, ptr %610, i32 0, i32 3
  %629 = ptrtoint ptr %sr_nongc_ctime.i to i32
  call void @__asan_store8_noabort(i32 %629)
  store i64 %628, ptr %sr_nongc_ctime.i, align 8
  %sr_flags.i = getelementptr inbounds %struct.nilfs_super_root, ptr %610, i32 0, i32 2
  %630 = ptrtoint ptr %sr_flags.i to i32
  call void @__asan_store2_noabort(i32 %630)
  store i16 0, ptr %sr_flags.i, align 2
  %631 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %ns_dat.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %610, i32 16
  call void @nilfs_write_inode_common(ptr noundef %632, ptr noundef %add.ptr3.i, i32 noundef 1) #9
  %633 = ptrtoint ptr %ns_cpfile.i245 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %ns_cpfile.i245, align 8
  %add5.i = add i32 %612, 16
  %add.ptr6.i = getelementptr i8, ptr %610, i32 %add5.i
  call void @nilfs_write_inode_common(ptr noundef %634, ptr noundef %add.ptr6.i, i32 noundef 1) #9
  %635 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %ns_sufile.i, align 4
  %mul7.i = shl i32 %612, 1
  %add8.i = add i32 %mul7.i, 16
  %add.ptr9.i = getelementptr i8, ptr %610, i32 %add8.i
  call void @nilfs_write_inode_common(ptr noundef %636, ptr noundef %add.ptr9.i, i32 noundef 1) #9
  %add.ptr10.i = getelementptr i8, ptr %610, i32 %add.i234
  %637 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %ns_blocksize.i, align 4
  %sub.i = sub i32 %638, %add.i234
  %639 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 %sub.i)
  br label %if.end68

if.end68:                                         ; preds = %nilfs_segctor_fill_in_super_root.exit, %land.lhs.true54.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %640 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %ns_sufile.i, align 4
  %642 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %.pn37.i = load ptr, ptr %sc_segbufs.i, align 4
  %cmp.not38.i = icmp eq ptr %.pn37.i, %sc_segbufs.i
  br i1 %cmp.not38.i, label %if.end68.nilfs_segctor_update_segusage.exit_crit_edge, label %if.end68.for.body.i255_crit_edge

if.end68.for.body.i255_crit_edge:                 ; preds = %if.end68
  br label %for.body.i255

if.end68.nilfs_segctor_update_segusage.exit_crit_edge: ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_update_segusage.exit

for.body.i255:                                    ; preds = %if.end.i259.for.body.i255_crit_edge, %if.end68.for.body.i255_crit_edge
  %.pn39.i = phi ptr [ %.pn.i257, %if.end.i259.for.body.i255_crit_edge ], [ %.pn37.i, %if.end68.for.body.i255_crit_edge ]
  %nblocks.i250 = getelementptr i8, ptr %.pn39.i, i32 20
  %643 = ptrtoint ptr %nblocks.i250 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %nblocks.i250, align 8
  %sb_pseg_start.i = getelementptr i8, ptr %.pn39.i, i32 100
  %645 = ptrtoint ptr %sb_pseg_start.i to i32
  call void @__asan_load8_noabort(i32 %645)
  %646 = load i64, ptr %sb_pseg_start.i, align 8
  %sb_fseg_start.i = getelementptr i8, ptr %.pn39.i, i32 84
  %647 = ptrtoint ptr %sb_fseg_start.i to i32
  call void @__asan_load8_noabort(i32 %647)
  %648 = load i64, ptr %sb_fseg_start.i, align 8
  %sub.i251 = sub i64 %646, %648
  %649 = trunc i64 %sub.i251 to i32
  %conv2.i = add i32 %644, %649
  %sb_segnum.i252 = getelementptr i8, ptr %.pn39.i, i32 68
  %650 = ptrtoint ptr %sb_segnum.i252 to i32
  call void @__asan_load8_noabort(i32 %650)
  %651 = load i64, ptr %sb_segnum.i252, align 8
  %652 = ptrtoint ptr %sc_seg_ctime to i32
  call void @__asan_load8_noabort(i32 %652)
  %653 = load i64, ptr %sc_seg_ctime, align 8
  %call.i253 = call i32 @nilfs_sufile_set_segment_usage(ptr noundef %641, i64 noundef %651, i32 noundef %conv2.i, i64 noundef %653) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i254, label %for.body.i255.if.end.i259_crit_edge, label %do.end.i256, !prof !221

for.body.i255.if.end.i259_crit_edge:              ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i259

do.end.i256:                                      ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1441, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i259

if.end.i259:                                      ; preds = %do.end.i256, %for.body.i255.if.end.i259_crit_edge
  %654 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %.pn.i257 = load ptr, ptr %.pn39.i, align 4
  %cmp.not.i258 = icmp eq ptr %.pn.i257, %sc_segbufs.i
  br i1 %cmp.not.i258, label %if.end.i259.nilfs_segctor_update_segusage.exit_crit_edge, label %if.end.i259.for.body.i255_crit_edge

if.end.i259.for.body.i255_crit_edge:              ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i255

if.end.i259.nilfs_segctor_update_segusage.exit_crit_edge: ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_update_segusage.exit

nilfs_segctor_update_segusage.exit:               ; preds = %if.end.i259.nilfs_segctor_update_segusage.exit_crit_edge, %if.end68.nilfs_segctor_update_segusage.exit_crit_edge
  %655 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %.pn164.i = load ptr, ptr %sc_segbufs.i, align 4
  %cmp.not165.i = icmp eq ptr %.pn164.i, %sc_segbufs.i
  br i1 %cmp.not165.i, label %nilfs_segctor_update_segusage.exit.nilfs_segctor_prepare_write.exit_crit_edge, label %nilfs_segctor_update_segusage.exit.for.body.i262_crit_edge

nilfs_segctor_update_segusage.exit.for.body.i262_crit_edge: ; preds = %nilfs_segctor_update_segusage.exit
  br label %for.body.i262

nilfs_segctor_update_segusage.exit.nilfs_segctor_prepare_write.exit_crit_edge: ; preds = %nilfs_segctor_update_segusage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_prepare_write.exit

for.body.i262:                                    ; preds = %for.end52.i.for.body.i262_crit_edge, %nilfs_segctor_update_segusage.exit.for.body.i262_crit_edge
  %.pn168.i = phi ptr [ %.pn.i279, %for.end52.i.for.body.i262_crit_edge ], [ %.pn164.i, %nilfs_segctor_update_segusage.exit.for.body.i262_crit_edge ]
  %bd_page.0167.i = phi ptr [ %bd_page.3.i, %for.end52.i.for.body.i262_crit_edge ], [ null, %nilfs_segctor_update_segusage.exit.for.body.i262_crit_edge ]
  %fs_page.0166.i = phi ptr [ %fs_page.1147.i, %for.end52.i.for.body.i262_crit_edge ], [ null, %nilfs_segctor_update_segusage.exit.for.body.i262_crit_edge ]
  %sb_segsum_buffers.i = getelementptr i8, ptr %.pn168.i, i32 112
  %656 = ptrtoint ptr %sb_segsum_buffers.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %.pn100154.i = load ptr, ptr %sb_segsum_buffers.i, align 4
  %cmp8.not155.i = icmp eq ptr %.pn100154.i, %sb_segsum_buffers.i
  br i1 %cmp8.not155.i, label %for.body.i262.for.end.i275_crit_edge, label %for.body.i262.for.body10.i_crit_edge

for.body.i262.for.body10.i_crit_edge:             ; preds = %for.body.i262
  br label %for.body10.i

for.body.i262.for.end.i275_crit_edge:             ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i275

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.body.i262.for.body10.i_crit_edge
  %.pn100158.i = phi ptr [ %.pn100.i, %for.inc.i.for.body10.i_crit_edge ], [ %.pn100154.i, %for.body.i262.for.body10.i_crit_edge ]
  %bd_page.1156.i = phi ptr [ %bd_page.2.i, %for.inc.i.for.body10.i_crit_edge ], [ %bd_page.0167.i, %for.body.i262.for.body10.i_crit_edge ]
  %b_page.i = getelementptr i8, ptr %.pn100158.i, i32 -36
  %657 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %b_page.i, align 8
  %cmp11.not.i = icmp eq ptr %658, %bd_page.1156.i
  br i1 %cmp11.not.i, label %for.body10.i.for.inc.i_crit_edge, label %if.then.i264

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i264:                                     ; preds = %for.body10.i
  %tobool.not.i263 = icmp eq ptr %bd_page.1156.i, null
  br i1 %tobool.not.i263, label %if.then.i264.if.end.i274_crit_edge, label %if.then12.i

if.then.i264.if.end.i274_crit_edge:               ; preds = %if.then.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i274

if.then12.i:                                      ; preds = %if.then.i264
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 788) #9
  %659 = getelementptr inbounds %struct.page, ptr %bd_page.1156.i, i32 0, i32 1
  %660 = ptrtoint ptr %659 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load volatile i32, ptr %659, align 4
  %and.i.i.i = and i32 %661, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i265 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i265, label %if.end.i.i.i267, label %if.then.i.i.i266, !prof !221

if.then.i.i.i266:                                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %661, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i267:                                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %662 = ptrtoint ptr %bd_page.1156.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i267, %if.then.i.i.i266
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i266 ], [ %662, %if.end.i.i.i267 ]
  %663 = inttoptr i32 %retval.0.i.i.i to ptr
  %664 = getelementptr inbounds %struct.page, ptr %663, i32 0, i32 1
  %665 = ptrtoint ptr %664 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load volatile i32, ptr %664, align 4
  %and.i.i.i.i.i268 = and i32 %666, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i268)
  %tobool.not.i.i.i.i269 = icmp eq i32 %and.i.i.i.i.i268, 0
  br i1 %tobool.not.i.i.i.i269, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i270, !prof !221

if.then.i.i.i.i270:                               ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %667 = inttoptr i32 %retval.0.i.i.i to ptr
  call void @dump_page(ptr noundef %667, ptr noundef nonnull @.str.56) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !252
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i.i271 = call zeroext i1 @__kasan_check_write(ptr noundef %663, i32 noundef 4) #9
  %668 = ptrtoint ptr %663 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load volatile i32, ptr %663, align 4
  %and.i.i4.i.i.i = and i32 %669, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i272 = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i272, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i102.i_crit_edge

folio_flags.exit.i.i.i.if.then.i102.i_crit_edge:  ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i102.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  call void @llvm.prefetch.p0(ptr %663, i32 1, i32 3, i32 1) #9
  %670 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %663, ptr %663, i32 1, ptr elementtype(i32) %663) #9, !srcloc !253
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %670, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !254
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i102.i_crit_edge

folio_trylock.exit.i.i.if.then.i102.i_crit_edge:  ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i102.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit.i

if.then.i102.i:                                   ; preds = %folio_trylock.exit.i.i.if.then.i102.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i102.i_crit_edge
  call void @__folio_lock(ptr noundef %663) #9
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i102.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  %call.i273 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %bd_page.1156.i) #9
  %call13.i = call zeroext i1 @set_page_writeback(ptr noundef nonnull %bd_page.1156.i) #9
  call void @unlock_page(ptr noundef nonnull %bd_page.1156.i) #9
  br label %if.end.i274

if.end.i274:                                      ; preds = %lock_page.exit.i, %if.then.i264.if.end.i274_crit_edge
  %671 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %b_page.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i274, %for.body10.i.for.inc.i_crit_edge
  %bd_page.2.i = phi ptr [ %672, %if.end.i274 ], [ %bd_page.1156.i, %for.body10.i.for.inc.i_crit_edge ]
  %673 = ptrtoint ptr %.pn100158.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %.pn100.i = load ptr, ptr %.pn100158.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn100.i, %sb_segsum_buffers.i
  br i1 %cmp8.not.i, label %for.inc.i.for.end.i275_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

for.inc.i.for.end.i275_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i275

for.end.i275:                                     ; preds = %for.inc.i.for.end.i275_crit_edge, %for.body.i262.for.end.i275_crit_edge
  %bd_page.1.lcssa.i = phi ptr [ %bd_page.0167.i, %for.body.i262.for.end.i275_crit_edge ], [ %bd_page.2.i, %for.inc.i.for.end.i275_crit_edge ]
  %sb_payload_buffers.i = getelementptr i8, ptr %.pn168.i, i32 120
  %674 = ptrtoint ptr %sb_payload_buffers.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %.pn101159.i = load ptr, ptr %sb_payload_buffers.i, align 4
  %cmp28.not160.i = icmp eq ptr %.pn101159.i, %sb_payload_buffers.i
  br i1 %cmp28.not160.i, label %for.end.i275.for.end52.i_crit_edge, label %for.body30.lr.ph.i

for.end.i275.for.end52.i_crit_edge:               ; preds = %for.end.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.body30.lr.ph.i:                               ; preds = %for.end.i275
  %sb_super_root.i276 = getelementptr i8, ptr %.pn168.i, i32 128
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.inc46.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %.pn101162.i = phi ptr [ %.pn101159.i, %for.body30.lr.ph.i ], [ %.pn101.i, %for.inc46.i.for.body30.i_crit_edge ]
  %fs_page.1161.i = phi ptr [ %fs_page.0166.i, %for.body30.lr.ph.i ], [ %fs_page.2.i, %for.inc46.i.for.body30.i_crit_edge ]
  %bh.1.i = getelementptr i8, ptr %.pn101162.i, i32 -44
  %675 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load volatile i32, ptr %bh.1.i, align 4
  %677 = and i32 %676, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %677)
  %tobool.not.i.i277 = icmp eq i32 %677, 0
  br i1 %tobool.not.i.i277, label %if.then.i.i278, label %for.body30.i.set_buffer_async_write.exit.i_crit_edge

for.body30.i.set_buffer_async_write.exit.i_crit_edge: ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_async_write.exit.i

if.then.i.i278:                                   ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 7, ptr noundef %bh.1.i) #9
  br label %set_buffer_async_write.exit.i

set_buffer_async_write.exit.i:                    ; preds = %if.then.i.i278, %for.body30.i.set_buffer_async_write.exit.i_crit_edge
  %678 = ptrtoint ptr %sb_super_root.i276 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %sb_super_root.i276, align 4
  %cmp31.i = icmp eq ptr %bh.1.i, %679
  %b_page33.i = getelementptr i8, ptr %.pn101162.i, i32 -36
  %680 = ptrtoint ptr %b_page33.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %b_page33.i, align 8
  br i1 %cmp31.i, label %if.then32.i, label %if.end40.i

if.then32.i:                                      ; preds = %set_buffer_async_write.exit.i
  %cmp34.not.i = icmp eq ptr %681, %bd_page.1.lcssa.i
  br i1 %cmp34.not.i, label %if.then32.i.for.end52.i_crit_edge, label %if.then35.i

if.then32.i.for.end52.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

if.then35.i:                                      ; preds = %if.then32.i
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 788) #9
  %682 = getelementptr inbounds %struct.page, ptr %bd_page.1.lcssa.i, i32 0, i32 1
  %683 = ptrtoint ptr %682 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load volatile i32, ptr %682, align 4
  %and.i.i103.i = and i32 %684, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103.i)
  %tobool.not.i.i104.i = icmp eq i32 %and.i.i103.i, 0
  br i1 %tobool.not.i.i104.i, label %if.end.i.i107.i, label %if.then.i.i106.i, !prof !221

if.then.i.i106.i:                                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i105.i = add i32 %684, -1
  br label %_compound_head.exit.i111.i

if.end.i.i107.i:                                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  %685 = ptrtoint ptr %bd_page.1.lcssa.i to i32
  br label %_compound_head.exit.i111.i

_compound_head.exit.i111.i:                       ; preds = %if.end.i.i107.i, %if.then.i.i106.i
  %retval.0.i.i108.i = phi i32 [ %sub.i.i105.i, %if.then.i.i106.i ], [ %685, %if.end.i.i107.i ]
  %686 = inttoptr i32 %retval.0.i.i108.i to ptr
  %687 = getelementptr inbounds %struct.page, ptr %686, i32 0, i32 1
  %688 = ptrtoint ptr %687 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load volatile i32, ptr %687, align 4
  %and.i.i.i.i109.i = and i32 %689, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i109.i)
  %tobool.not.i.i.i110.i = icmp eq i32 %and.i.i.i.i109.i, 0
  br i1 %tobool.not.i.i.i110.i, label %folio_flags.exit.i.i116.i, label %if.then.i.i.i112.i, !prof !221

if.then.i.i.i112.i:                               ; preds = %_compound_head.exit.i111.i
  call void @__sanitizer_cov_trace_pc() #11
  %690 = inttoptr i32 %retval.0.i.i108.i to ptr
  call void @dump_page(ptr noundef %690, ptr noundef nonnull @.str.56) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !252
  unreachable

folio_flags.exit.i.i116.i:                        ; preds = %_compound_head.exit.i111.i
  %call.i.i.i.i113.i = call zeroext i1 @__kasan_check_write(ptr noundef %686, i32 noundef 4) #9
  %691 = ptrtoint ptr %686 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load volatile i32, ptr %686, align 4
  %and.i.i4.i.i114.i = and i32 %692, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i114.i)
  %tobool.not.i.i.i.i115.i = icmp eq i32 %and.i.i4.i.i114.i, 0
  br i1 %tobool.not.i.i.i.i115.i, label %folio_trylock.exit.i120.i, label %folio_flags.exit.i.i116.i.if.then.i121.i_crit_edge

folio_flags.exit.i.i116.i.if.then.i121.i_crit_edge: ; preds = %folio_flags.exit.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i121.i

folio_trylock.exit.i120.i:                        ; preds = %folio_flags.exit.i.i116.i
  call void @llvm.prefetch.p0(ptr %686, i32 1, i32 3, i32 1) #9
  %693 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %686, ptr %686, i32 1, ptr elementtype(i32) %686) #9, !srcloc !253
  %asmresult.i.i.i.i.i.i.i117.i = extractvalue { i32, i32, i32 } %693, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !254
  %and1.i.i.i.i118.i = and i32 %asmresult.i.i.i.i.i.i.i117.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i118.i)
  %phi.cmp.i.i.i119.i = icmp eq i32 %and1.i.i.i.i118.i, 0
  br i1 %phi.cmp.i.i.i119.i, label %folio_trylock.exit.i120.i.lock_page.exit122.i_crit_edge, label %folio_trylock.exit.i120.i.if.then.i121.i_crit_edge

folio_trylock.exit.i120.i.if.then.i121.i_crit_edge: ; preds = %folio_trylock.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i121.i

folio_trylock.exit.i120.i.lock_page.exit122.i_crit_edge: ; preds = %folio_trylock.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit122.i

if.then.i121.i:                                   ; preds = %folio_trylock.exit.i120.i.if.then.i121.i_crit_edge, %folio_flags.exit.i.i116.i.if.then.i121.i_crit_edge
  call void @__folio_lock(ptr noundef %686) #9
  br label %lock_page.exit122.i

lock_page.exit122.i:                              ; preds = %if.then.i121.i, %folio_trylock.exit.i120.i.lock_page.exit122.i_crit_edge
  %call36.i = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %bd_page.1.lcssa.i) #9
  %call37.i = call zeroext i1 @set_page_writeback(ptr noundef %bd_page.1.lcssa.i) #9
  call void @unlock_page(ptr noundef %bd_page.1.lcssa.i) #9
  %694 = ptrtoint ptr %b_page33.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %b_page33.i, align 8
  br label %for.end52.i

if.end40.i:                                       ; preds = %set_buffer_async_write.exit.i
  %cmp42.not.i = icmp eq ptr %681, %fs_page.1161.i
  br i1 %cmp42.not.i, label %if.end40.i.for.inc46.i_crit_edge, label %if.then43.i

if.end40.i.for.inc46.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nilfs_begin_page_io(ptr noundef %fs_page.1161.i) #9
  %696 = ptrtoint ptr %b_page33.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %b_page33.i, align 8
  br label %for.inc46.i

for.inc46.i:                                      ; preds = %if.then43.i, %if.end40.i.for.inc46.i_crit_edge
  %fs_page.2.i = phi ptr [ %697, %if.then43.i ], [ %fs_page.1161.i, %if.end40.i.for.inc46.i_crit_edge ]
  %698 = ptrtoint ptr %.pn101162.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %.pn101.i = load ptr, ptr %.pn101162.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn101.i, %sb_payload_buffers.i
  br i1 %cmp28.not.i, label %for.inc46.i.for.end52.i_crit_edge, label %for.inc46.i.for.body30.i_crit_edge

for.inc46.i.for.body30.i_crit_edge:               ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i

for.inc46.i.for.end52.i_crit_edge:                ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.end52.i:                                      ; preds = %for.inc46.i.for.end52.i_crit_edge, %lock_page.exit122.i, %if.then32.i.for.end52.i_crit_edge, %for.end.i275.for.end52.i_crit_edge
  %fs_page.1147.i = phi ptr [ %fs_page.1161.i, %lock_page.exit122.i ], [ %fs_page.1161.i, %if.then32.i.for.end52.i_crit_edge ], [ %fs_page.0166.i, %for.end.i275.for.end52.i_crit_edge ], [ %fs_page.2.i, %for.inc46.i.for.end52.i_crit_edge ]
  %bd_page.3.i = phi ptr [ %695, %lock_page.exit122.i ], [ %bd_page.1.lcssa.i, %if.then32.i.for.end52.i_crit_edge ], [ %bd_page.1.lcssa.i, %for.end.i275.for.end52.i_crit_edge ], [ %bd_page.1.lcssa.i, %for.inc46.i.for.end52.i_crit_edge ]
  %699 = ptrtoint ptr %.pn168.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %.pn.i279 = load ptr, ptr %.pn168.i, align 4
  %cmp.not.i280 = icmp eq ptr %.pn.i279, %sc_segbufs.i
  br i1 %cmp.not.i280, label %for.end59.i, label %for.end52.i.for.body.i262_crit_edge

for.end52.i.for.body.i262_crit_edge:              ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i262

for.end59.i:                                      ; preds = %for.end52.i
  %tobool60.not.i = icmp eq ptr %bd_page.3.i, null
  br i1 %tobool60.not.i, label %for.end59.i.nilfs_segctor_prepare_write.exit_crit_edge, label %if.then61.i

for.end59.i.nilfs_segctor_prepare_write.exit_crit_edge: ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_prepare_write.exit

if.then61.i:                                      ; preds = %for.end59.i
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 788) #9
  %700 = getelementptr inbounds %struct.page, ptr %bd_page.3.i, i32 0, i32 1
  %701 = ptrtoint ptr %700 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load volatile i32, ptr %700, align 4
  %and.i.i123.i = and i32 %702, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i)
  %tobool.not.i.i124.i = icmp eq i32 %and.i.i123.i, 0
  br i1 %tobool.not.i.i124.i, label %if.end.i.i127.i, label %if.then.i.i126.i281, !prof !221

if.then.i.i126.i281:                              ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i125.i = add i32 %702, -1
  br label %_compound_head.exit.i131.i

if.end.i.i127.i:                                  ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  %703 = ptrtoint ptr %bd_page.3.i to i32
  br label %_compound_head.exit.i131.i

_compound_head.exit.i131.i:                       ; preds = %if.end.i.i127.i, %if.then.i.i126.i281
  %retval.0.i.i128.i = phi i32 [ %sub.i.i125.i, %if.then.i.i126.i281 ], [ %703, %if.end.i.i127.i ]
  %704 = inttoptr i32 %retval.0.i.i128.i to ptr
  %705 = getelementptr inbounds %struct.page, ptr %704, i32 0, i32 1
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load volatile i32, ptr %705, align 4
  %and.i.i.i.i129.i = and i32 %707, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i129.i)
  %tobool.not.i.i.i130.i = icmp eq i32 %and.i.i.i.i129.i, 0
  br i1 %tobool.not.i.i.i130.i, label %folio_flags.exit.i.i136.i, label %if.then.i.i.i132.i, !prof !221

if.then.i.i.i132.i:                               ; preds = %_compound_head.exit.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  %708 = inttoptr i32 %retval.0.i.i128.i to ptr
  call void @dump_page(ptr noundef %708, ptr noundef nonnull @.str.56) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !252
  unreachable

folio_flags.exit.i.i136.i:                        ; preds = %_compound_head.exit.i131.i
  %call.i.i.i.i133.i = call zeroext i1 @__kasan_check_write(ptr noundef %704, i32 noundef 4) #9
  %709 = ptrtoint ptr %704 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load volatile i32, ptr %704, align 4
  %and.i.i4.i.i134.i = and i32 %710, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i134.i)
  %tobool.not.i.i.i.i135.i = icmp eq i32 %and.i.i4.i.i134.i, 0
  br i1 %tobool.not.i.i.i.i135.i, label %folio_trylock.exit.i140.i, label %folio_flags.exit.i.i136.i.if.then.i141.i_crit_edge

folio_flags.exit.i.i136.i.if.then.i141.i_crit_edge: ; preds = %folio_flags.exit.i.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i141.i

folio_trylock.exit.i140.i:                        ; preds = %folio_flags.exit.i.i136.i
  call void @llvm.prefetch.p0(ptr %704, i32 1, i32 3, i32 1) #9
  %711 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %704, ptr %704, i32 1, ptr elementtype(i32) %704) #9, !srcloc !253
  %asmresult.i.i.i.i.i.i.i137.i = extractvalue { i32, i32, i32 } %711, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !254
  %and1.i.i.i.i138.i = and i32 %asmresult.i.i.i.i.i.i.i137.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i138.i)
  %phi.cmp.i.i.i139.i = icmp eq i32 %and1.i.i.i.i138.i, 0
  br i1 %phi.cmp.i.i.i139.i, label %folio_trylock.exit.i140.i.lock_page.exit142.i_crit_edge, label %folio_trylock.exit.i140.i.if.then.i141.i_crit_edge

folio_trylock.exit.i140.i.if.then.i141.i_crit_edge: ; preds = %folio_trylock.exit.i140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i141.i

folio_trylock.exit.i140.i.lock_page.exit142.i_crit_edge: ; preds = %folio_trylock.exit.i140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit142.i

if.then.i141.i:                                   ; preds = %folio_trylock.exit.i140.i.if.then.i141.i_crit_edge, %folio_flags.exit.i.i136.i.if.then.i141.i_crit_edge
  call void @__folio_lock(ptr noundef %704) #9
  br label %lock_page.exit142.i

lock_page.exit142.i:                              ; preds = %if.then.i141.i, %folio_trylock.exit.i140.i.lock_page.exit142.i_crit_edge
  %call62.i = call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %bd_page.3.i) #9
  %call63.i = call zeroext i1 @set_page_writeback(ptr noundef nonnull %bd_page.3.i) #9
  call void @unlock_page(ptr noundef nonnull %bd_page.3.i) #9
  br label %nilfs_segctor_prepare_write.exit

nilfs_segctor_prepare_write.exit:                 ; preds = %lock_page.exit142.i, %for.end59.i.nilfs_segctor_prepare_write.exit_crit_edge, %nilfs_segctor_update_segusage.exit.nilfs_segctor_prepare_write.exit_crit_edge
  %fs_page.0.lcssa176.i = phi ptr [ %fs_page.1147.i, %lock_page.exit142.i ], [ %fs_page.1147.i, %for.end59.i.nilfs_segctor_prepare_write.exit_crit_edge ], [ null, %nilfs_segctor_update_segusage.exit.nilfs_segctor_prepare_write.exit_crit_edge ]
  call fastcc void @nilfs_begin_page_io(ptr noundef %fs_page.0.lcssa176.i) #9
  %712 = ptrtoint ptr %ns_crc_seed to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %ns_crc_seed, align 4
  call void @nilfs_add_checksums_on_logs(ptr noundef %sc_segbufs.i, i32 noundef %713) #9
  %call.i283 = call i32 @nilfs_write_logs(ptr noundef %sc_segbufs.i, ptr noundef %3) #9
  %714 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load volatile ptr, ptr %sc_segbufs.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %715, %sc_segbufs.i
  br i1 %cmp.i.not.i.i, label %nilfs_segctor_prepare_write.exit.nilfs_segctor_write.exit_crit_edge, label %if.then.i.i287

nilfs_segctor_prepare_write.exit.nilfs_segctor_write.exit_crit_edge: ; preds = %nilfs_segctor_prepare_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_write.exit

if.then.i.i287:                                   ; preds = %nilfs_segctor_prepare_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %716 = ptrtoint ptr %prev16.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %prev16.i, align 4
  %718 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %prev.i.i, align 4
  %prev3.i.i.i286 = getelementptr inbounds %struct.list_head, ptr %715, i32 0, i32 1
  %720 = ptrtoint ptr %prev3.i.i.i286 to i32
  call void @__asan_store4_noabort(i32 %720)
  store ptr %717, ptr %prev3.i.i.i286, align 4
  %721 = ptrtoint ptr %717 to i32
  call void @__asan_store4_noabort(i32 %721)
  store ptr %715, ptr %717, align 4
  %722 = ptrtoint ptr %719 to i32
  call void @__asan_store4_noabort(i32 %722)
  store ptr %sc_write_logs.i, ptr %719, align 4
  store ptr %719, ptr %prev16.i, align 4
  %723 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_store4_noabort(i32 %723)
  store volatile ptr %sc_segbufs.i, ptr %sc_segbufs.i, align 4
  store ptr %sc_segbufs.i, ptr %prev.i.i, align 4
  br label %nilfs_segctor_write.exit

nilfs_segctor_write.exit:                         ; preds = %if.then.i.i287, %nilfs_segctor_prepare_write.exit.nilfs_segctor_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %tobool70.not = icmp eq i32 %call.i283, 0
  br i1 %tobool70.not, label %if.end78, label %nilfs_segctor_write.exit.failed_to_write_crit_edge, !prof !221

nilfs_segctor_write.exit.failed_to_write_crit_edge: ; preds = %nilfs_segctor_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_to_write

if.end78:                                         ; preds = %nilfs_segctor_write.exit
  %724 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %sc_stage.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %725)
  %cmp80 = icmp eq i32 %725, 9
  br i1 %cmp80, label %if.end78.if.then82_crit_edge, label %lor.lhs.false

if.end78.if.then82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

lor.lhs.false:                                    ; preds = %if.end78
  %726 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %ns_blocksize_bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %727)
  %cmp81.not = icmp eq i32 %727, 12
  br i1 %cmp81.not, label %lor.lhs.false.do.cond_crit_edge, label %lor.lhs.false.if.then82_crit_edge

lor.lhs.false.if.then82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then82:                                        ; preds = %lor.lhs.false.if.then82_crit_edge, %if.end78.if.then82_crit_edge
  %call.i290 = call i32 @nilfs_wait_on_logs(ptr noundef %sc_write_logs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool.not.i291 = icmp eq i32 %call.i290, 0
  br i1 %tobool.not.i291, label %if.then.i293, label %if.then82.failed_to_write_crit_edge

if.then82.failed_to_write_crit_edge:              ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_to_write

if.then.i293:                                     ; preds = %if.then82
  %728 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %sci, align 8
  %s_fs_info.i.i292 = getelementptr inbounds %struct.super_block, ptr %729, i32 0, i32 33
  %730 = ptrtoint ptr %s_fs_info.i.i292 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %s_fs_info.i.i292, align 16
  %732 = ptrtoint ptr %sc_write_logs.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %.pn214.i.i = load ptr, ptr %sc_write_logs.i, align 4
  %cmp.not215.i.i = icmp eq ptr %.pn214.i.i, %sc_write_logs.i
  br i1 %cmp.not215.i.i, label %if.then.i293.if.end100.i.i_crit_edge, label %if.then.i293.for.body.i.i297_crit_edge

if.then.i293.for.body.i.i297_crit_edge:           ; preds = %if.then.i293
  br label %for.body.i.i297

if.then.i293.if.end100.i.i_crit_edge:             ; preds = %if.then.i293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i.i

for.body.i.i297:                                  ; preds = %if.end90.i.i.for.body.i.i297_crit_edge, %if.then.i293.for.body.i.i297_crit_edge
  %.pn219.i.i = phi ptr [ %.pn.i.i313, %if.end90.i.i.for.body.i.i297_crit_edge ], [ %.pn214.i.i, %if.then.i293.for.body.i.i297_crit_edge ]
  %bd_page.0218.i.i = phi ptr [ %bd_page.6.i.i, %if.end90.i.i.for.body.i.i297_crit_edge ], [ null, %if.then.i293.for.body.i.i297_crit_edge ]
  %fs_page.0217.i.i = phi ptr [ %fs_page.1202.i.i, %if.end90.i.i.for.body.i.i297_crit_edge ], [ null, %if.then.i293.for.body.i.i297_crit_edge ]
  %update_sr.0216.i.i = phi i32 [ %update_sr.3.i.i, %if.end90.i.i.for.body.i.i297_crit_edge ], [ 0, %if.then.i293.for.body.i.i297_crit_edge ]
  %sb_segsum_buffers.i.i296 = getelementptr i8, ptr %.pn219.i.i, i32 112
  %733 = ptrtoint ptr %sb_segsum_buffers.i.i296 to i32
  call void @__asan_load4_noabort(i32 %733)
  %.pn176203.i.i = load ptr, ptr %sb_segsum_buffers.i.i296, align 4
  %cmp8.not204.i.i = icmp eq ptr %.pn176203.i.i, %sb_segsum_buffers.i.i296
  br i1 %cmp8.not204.i.i, label %for.body.i.i297.for.end.i.i306_crit_edge, label %for.body.i.i297.for.body10.i.i_crit_edge

for.body.i.i297.for.body10.i.i_crit_edge:         ; preds = %for.body.i.i297
  br label %for.body10.i.i

for.body.i.i297.for.end.i.i306_crit_edge:         ; preds = %for.body.i.i297
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i306

for.body10.i.i:                                   ; preds = %for.inc.i.i304.for.body10.i.i_crit_edge, %for.body.i.i297.for.body10.i.i_crit_edge
  %.pn176206.i.i = phi ptr [ %.pn176.i.i, %for.inc.i.i304.for.body10.i.i_crit_edge ], [ %.pn176203.i.i, %for.body.i.i297.for.body10.i.i_crit_edge ]
  %bd_page.1205.i.i = phi ptr [ %bd_page.2.i.i, %for.inc.i.i304.for.body10.i.i_crit_edge ], [ %bd_page.0218.i.i, %for.body.i.i297.for.body10.i.i_crit_edge ]
  %bh.0.i.i = getelementptr i8, ptr %.pn176206.i.i, i32 -44
  %734 = ptrtoint ptr %bh.0.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load volatile i32, ptr %bh.0.i.i, align 4
  %and1.i.i.i.i = and i32 %735, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i298 = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i298, label %if.then.i.i.i299, label %for.body10.i.i.set_buffer_uptodate.exit.i.i_crit_edge

for.body10.i.i.set_buffer_uptodate.exit.i.i_crit_edge: ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit.i.i

if.then.i.i.i299:                                 ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i.i) #9
  br label %set_buffer_uptodate.exit.i.i

set_buffer_uptodate.exit.i.i:                     ; preds = %if.then.i.i.i299, %for.body10.i.i.set_buffer_uptodate.exit.i.i_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0.i.i) #9
  %b_page.i.i300 = getelementptr i8, ptr %.pn176206.i.i, i32 -36
  %736 = ptrtoint ptr %b_page.i.i300 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %b_page.i.i300, align 8
  %cmp11.not.i.i = icmp eq ptr %737, %bd_page.1205.i.i
  br i1 %cmp11.not.i.i, label %set_buffer_uptodate.exit.i.i.for.inc.i.i304_crit_edge, label %if.then.i.i302

set_buffer_uptodate.exit.i.i.for.inc.i.i304_crit_edge: ; preds = %set_buffer_uptodate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i304

if.then.i.i302:                                   ; preds = %set_buffer_uptodate.exit.i.i
  %tobool.not.i.i301 = icmp eq ptr %bd_page.1205.i.i, null
  br i1 %tobool.not.i.i301, label %if.then.i.i302.if.end.i.i303_crit_edge, label %if.then12.i.i

if.then.i.i302.if.end.i.i303_crit_edge:           ; preds = %if.then.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i303

if.then12.i.i:                                    ; preds = %if.then.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  call void @end_page_writeback(ptr noundef nonnull %bd_page.1205.i.i) #9
  br label %if.end.i.i303

if.end.i.i303:                                    ; preds = %if.then12.i.i, %if.then.i.i302.if.end.i.i303_crit_edge
  %738 = ptrtoint ptr %b_page.i.i300 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %b_page.i.i300, align 8
  br label %for.inc.i.i304

for.inc.i.i304:                                   ; preds = %if.end.i.i303, %set_buffer_uptodate.exit.i.i.for.inc.i.i304_crit_edge
  %bd_page.2.i.i = phi ptr [ %739, %if.end.i.i303 ], [ %bd_page.1205.i.i, %set_buffer_uptodate.exit.i.i.for.inc.i.i304_crit_edge ]
  %740 = ptrtoint ptr %.pn176206.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %.pn176.i.i = load ptr, ptr %.pn176206.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %.pn176.i.i, %sb_segsum_buffers.i.i296
  br i1 %cmp8.not.i.i, label %for.inc.i.i304.for.end.i.i306_crit_edge, label %for.inc.i.i304.for.body10.i.i_crit_edge

for.inc.i.i304.for.body10.i.i_crit_edge:          ; preds = %for.inc.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i.i

for.inc.i.i304.for.end.i.i306_crit_edge:          ; preds = %for.inc.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i306

for.end.i.i306:                                   ; preds = %for.inc.i.i304.for.end.i.i306_crit_edge, %for.body.i.i297.for.end.i.i306_crit_edge
  %bd_page.1.lcssa.i.i = phi ptr [ %bd_page.0218.i.i, %for.body.i.i297.for.end.i.i306_crit_edge ], [ %bd_page.2.i.i, %for.inc.i.i304.for.end.i.i306_crit_edge ]
  %sb_payload_buffers.i.i305 = getelementptr i8, ptr %.pn219.i.i, i32 120
  %741 = ptrtoint ptr %sb_payload_buffers.i.i305 to i32
  call void @__asan_load4_noabort(i32 %741)
  %.pn177207.i.i = load ptr, ptr %sb_payload_buffers.i.i305, align 4
  %cmp27.not209.i.i = icmp eq ptr %.pn177207.i.i, %sb_payload_buffers.i.i305
  br i1 %cmp27.not209.i.i, label %for.end.i.i306.for.end75.i.i_crit_edge, label %do.body.preheader.lr.ph.i.i

for.end.i.i306.for.end75.i.i_crit_edge:           ; preds = %for.end.i.i306
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75.i.i

do.body.preheader.lr.ph.i.i:                      ; preds = %for.end.i.i306
  %sb_super_root.i.i307 = getelementptr i8, ptr %.pn219.i.i, i32 128
  br label %do.body.preheader.i.i

do.body.preheader.i.i:                            ; preds = %cleanup.i.i.do.body.preheader.i.i_crit_edge, %do.body.preheader.lr.ph.i.i
  %.pn177211.i.i = phi ptr [ %.pn177207.i.i, %do.body.preheader.lr.ph.i.i ], [ %.pn177.i.i, %cleanup.i.i.do.body.preheader.i.i_crit_edge ]
  %fs_page.1210.i.i = phi ptr [ %fs_page.0217.i.i, %do.body.preheader.lr.ph.i.i ], [ %fs_page.3.i.i, %cleanup.i.i.do.body.preheader.i.i_crit_edge ]
  %bh.1212.i.i = getelementptr i8, ptr %.pn177211.i.i, i32 -44
  br label %do.body.i.i310

do.body.i.i310:                                   ; preds = %__cmpxchg.exit.i.i.do.body.i.i310_crit_edge, %do.body.preheader.i.i
  %742 = ptrtoint ptr %bh.1212.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load volatile i32, ptr %bh.1212.i.i, align 8
  %and.i.i = and i32 %743, -1311108
  %or.i.i308 = or i32 %and.i.i, 1
  %call.i.i.i309 = call zeroext i1 @__kasan_check_write(ptr noundef %bh.1212.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !255
  call void @llvm.prefetch.p0(ptr %bh.1212.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i310
  %744 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %bh.1212.i.i, i32 %743, i32 %or.i.i308) #9, !srcloc !256
  %asmresult.i.i.i = extractvalue { i32, i32 } %744, 0
  %tobool.not.i178.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i178.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %744, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !257
  %cmp52.not.i.i = icmp eq i32 %asmresult1.i.i.i, %743
  br i1 %cmp52.not.i.i, label %do.end53.i.i, label %__cmpxchg.exit.i.i.do.body.i.i310_crit_edge

__cmpxchg.exit.i.i.do.body.i.i310_crit_edge:      ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i310

do.end53.i.i:                                     ; preds = %__cmpxchg.exit.i.i
  %745 = ptrtoint ptr %sb_super_root.i.i307 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %sb_super_root.i.i307, align 4
  %cmp55.i.i = icmp eq ptr %bh.1212.i.i, %746
  %b_page57.i.i = getelementptr i8, ptr %.pn177211.i.i, i32 -36
  %747 = ptrtoint ptr %b_page57.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %b_page57.i.i, align 8
  br i1 %cmp55.i.i, label %if.then56.i.i, label %if.end62.i.i

if.then56.i.i:                                    ; preds = %do.end53.i.i
  %cmp58.not.i.i = icmp eq ptr %748, %bd_page.1.lcssa.i.i
  br i1 %cmp58.not.i.i, label %if.then56.i.i.for.end75.i.i_crit_edge, label %if.then59.i.i

if.then56.i.i.for.end75.i.i_crit_edge:            ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75.i.i

if.then59.i.i:                                    ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @end_page_writeback(ptr noundef %bd_page.1.lcssa.i.i) #9
  %749 = ptrtoint ptr %b_page57.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %b_page57.i.i, align 8
  br label %for.end75.i.i

if.end62.i.i:                                     ; preds = %do.end53.i.i
  %cmp64.not.i.i = icmp eq ptr %748, %fs_page.1210.i.i
  br i1 %cmp64.not.i.i, label %if.end62.i.i.cleanup.i.i_crit_edge, label %if.then65.i.i

if.end62.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then65.i.i:                                    ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nilfs_end_page_io(ptr noundef %fs_page.1210.i.i, i32 noundef 0) #9
  %751 = ptrtoint ptr %b_page57.i.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %b_page57.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then65.i.i, %if.end62.i.i.cleanup.i.i_crit_edge
  %fs_page.3.i.i = phi ptr [ %752, %if.then65.i.i ], [ %fs_page.1210.i.i, %if.end62.i.i.cleanup.i.i_crit_edge ]
  %753 = ptrtoint ptr %.pn177211.i.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %.pn177.i.i = load ptr, ptr %.pn177211.i.i, align 4
  %cmp27.not.i.i = icmp eq ptr %.pn177.i.i, %sb_payload_buffers.i.i305
  br i1 %cmp27.not.i.i, label %cleanup.i.i.for.end75.i.i_crit_edge, label %cleanup.i.i.do.body.preheader.i.i_crit_edge

cleanup.i.i.do.body.preheader.i.i_crit_edge:      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader.i.i

cleanup.i.i.for.end75.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75.i.i

for.end75.i.i:                                    ; preds = %cleanup.i.i.for.end75.i.i_crit_edge, %if.then59.i.i, %if.then56.i.i.for.end75.i.i_crit_edge, %for.end.i.i306.for.end75.i.i_crit_edge
  %fs_page.1202.i.i = phi ptr [ %fs_page.1210.i.i, %if.then59.i.i ], [ %fs_page.1210.i.i, %if.then56.i.i.for.end75.i.i_crit_edge ], [ %fs_page.0217.i.i, %for.end.i.i306.for.end75.i.i_crit_edge ], [ %fs_page.3.i.i, %cleanup.i.i.for.end75.i.i_crit_edge ]
  %update_sr.3.i.i = phi i32 [ 1, %if.then59.i.i ], [ 1, %if.then56.i.i.for.end75.i.i_crit_edge ], [ %update_sr.0216.i.i, %for.end.i.i306.for.end75.i.i_crit_edge ], [ %update_sr.0216.i.i, %cleanup.i.i.for.end75.i.i_crit_edge ]
  %bd_page.6.i.i = phi ptr [ %750, %if.then59.i.i ], [ %bd_page.1.lcssa.i.i, %if.then56.i.i.for.end75.i.i_crit_edge ], [ %bd_page.1.lcssa.i.i, %for.end.i.i306.for.end75.i.i_crit_edge ], [ %bd_page.1.lcssa.i.i, %cleanup.i.i.for.end75.i.i_crit_edge ]
  %sb_sum.i.i.i = getelementptr i8, ptr %.pn219.i.i, i32 12
  %754 = ptrtoint ptr %sb_sum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %sb_sum.i.i.i, align 8
  %and.i.i.i311 = and i32 %755, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i311)
  %cmp.i.not.i.i312 = icmp eq i32 %and.i.i.i311, 3
  br i1 %cmp.i.not.i.i312, label %for.end75.i.i.if.end90.i.i_crit_edge, label %if.then78.i.i

for.end75.i.i.if.end90.i.i_crit_edge:             ; preds = %for.end75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i.i

if.then78.i.i:                                    ; preds = %for.end75.i.i
  %and79.i.i = and i32 %755, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.then78.i.i.if.end82.i.i_crit_edge, label %if.then81.i.i

if.then78.i.i.if.end82.i.i_crit_edge:             ; preds = %if.then78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i.i

if.then81.i.i:                                    ; preds = %if.then78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %sc_flags.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %756 = load volatile i32, ptr @jiffies, align 128
  %757 = ptrtoint ptr %sc_lseg_stime.i.i to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 %756, ptr %sc_lseg_stime.i.i, align 4
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then81.i.i, %if.then78.i.i.if.end82.i.i_crit_edge
  %758 = ptrtoint ptr %sb_sum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %sb_sum.i.i.i, align 8
  %and85.i.i = and i32 %759, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  br i1 %tobool86.not.i.i, label %if.end82.i.i.if.end90.i.i_crit_edge, label %if.then87.i.i

if.end82.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i.i

if.then87.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %sc_flags.i.i) #9
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %if.then87.i.i, %if.end82.i.i.if.end90.i.i_crit_edge, %for.end75.i.i.if.end90.i.i_crit_edge
  %760 = ptrtoint ptr %.pn219.i.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %.pn.i.i313 = load ptr, ptr %.pn219.i.i, align 4
  %cmp.not.i.i314 = icmp eq ptr %.pn.i.i313, %sc_write_logs.i
  br i1 %cmp.not.i.i314, label %for.end97.i.i, label %if.end90.i.i.for.body.i.i297_crit_edge

if.end90.i.i.for.body.i.i297_crit_edge:           ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i297

for.end97.i.i:                                    ; preds = %if.end90.i.i
  %tobool98.not.i.i = icmp eq ptr %bd_page.6.i.i, null
  br i1 %tobool98.not.i.i, label %for.end97.i.i.if.end100.i.i_crit_edge, label %if.then99.i.i

for.end97.i.i.if.end100.i.i_crit_edge:            ; preds = %for.end97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i.i

if.then99.i.i:                                    ; preds = %for.end97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @end_page_writeback(ptr noundef nonnull %bd_page.6.i.i) #9
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.then99.i.i, %for.end97.i.i.if.end100.i.i_crit_edge, %if.then.i293.if.end100.i.i_crit_edge
  %fs_page.0.lcssa230.i.i = phi ptr [ %fs_page.1202.i.i, %if.then99.i.i ], [ %fs_page.1202.i.i, %for.end97.i.i.if.end100.i.i_crit_edge ], [ null, %if.then.i293.if.end100.i.i_crit_edge ]
  %update_sr.0.lcssa229.i.i = phi i32 [ %update_sr.3.i.i, %if.then99.i.i ], [ %update_sr.3.i.i, %for.end97.i.i.if.end100.i.i_crit_edge ], [ 0, %if.then.i293.if.end100.i.i_crit_edge ]
  call fastcc void @nilfs_end_page_io(ptr noundef %fs_page.0.lcssa230.i.i, i32 noundef 0) #9
  %761 = ptrtoint ptr %sc_dirty_files.i153 to i32
  call void @__asan_load4_noabort(i32 %761)
  %.pn13.i.i.i = load ptr, ptr %sc_dirty_files.i153, align 4
  %cmp.not14.i.i.i = icmp eq ptr %.pn13.i.i.i, %sc_dirty_files.i153
  br i1 %cmp.not14.i.i.i, label %if.end100.i.i.nilfs_drop_collected_inodes.exit.i.i_crit_edge, label %if.end100.i.i.for.body.i.i.i_crit_edge

if.end100.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end100.i.i
  br label %for.body.i.i.i

if.end100.i.i.nilfs_drop_collected_inodes.exit.i.i_crit_edge: ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_drop_collected_inodes.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end100.i.i.for.body.i.i.i_crit_edge
  %.pn15.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn13.i.i.i, %if.end100.i.i.for.body.i.i.i_crit_edge ]
  %i_state.i.i.i = getelementptr i8, ptr %.pn15.i.i.i, i32 -568
  %call.i179.i.i = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %i_state.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179.i.i)
  %tobool.not.i180.i.i = icmp eq i32 %call.i179.i.i, 0
  br i1 %tobool.not.i180.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i316

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end.i.i.i316:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 6, ptr noundef %i_state.i.i.i) #9
  call void @_set_bit(i32 noundef 5, ptr noundef %i_state.i.i.i) #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i316, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %762 = ptrtoint ptr %.pn15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %.pn.i.i.i = load ptr, ptr %.pn15.i.i.i, align 4
  %cmp.not.i.i.i317 = icmp eq ptr %.pn.i.i.i, %sc_dirty_files.i153
  br i1 %cmp.not.i.i.i317, label %for.inc.i.i.i.nilfs_drop_collected_inodes.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.nilfs_drop_collected_inodes.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_drop_collected_inodes.exit.i.i

nilfs_drop_collected_inodes.exit.i.i:             ; preds = %for.inc.i.i.i.nilfs_drop_collected_inodes.exit.i.i_crit_edge, %if.end100.i.i.nilfs_drop_collected_inodes.exit.i.i_crit_edge
  %763 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i318 = and i32 %763, -16384
  %764 = inttoptr i32 %and.i.i.i.i.i318 to ptr
  %task.i.i.i.i319 = getelementptr inbounds %struct.thread_info, ptr %764, i32 0, i32 2
  %765 = ptrtoint ptr %task.i.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %task.i.i.i.i319, align 8
  %journal_info.i.i.i.i320 = getelementptr inbounds %struct.task_struct, ptr %766, i32 0, i32 146
  %767 = ptrtoint ptr %journal_info.i.i.i.i320 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %journal_info.i.i.i.i320, align 4
  %cmp.i.i.i.i321 = icmp eq ptr %768, null
  br i1 %cmp.i.i.i.i321, label %nilfs_drop_collected_inodes.exit.i.i.if.else.i.i328_crit_edge, label %lor.lhs.false.i.i.i.i323

nilfs_drop_collected_inodes.exit.i.i.if.else.i.i328_crit_edge: ; preds = %nilfs_drop_collected_inodes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i328

lor.lhs.false.i.i.i.i323:                         ; preds = %nilfs_drop_collected_inodes.exit.i.i
  %769 = ptrtoint ptr %768 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %768, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %770)
  %cmp1.not.i.i.i.i322 = icmp eq i32 %770, -639397125
  br i1 %cmp1.not.i.i.i.i322, label %nilfs_doing_gc.exit.i.i325, label %lor.lhs.false.i.i.i.i323.if.else.i.i328_crit_edge

lor.lhs.false.i.i.i.i323.if.else.i.i328_crit_edge: ; preds = %lor.lhs.false.i.i.i.i323
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i328

nilfs_doing_gc.exit.i.i325:                       ; preds = %lor.lhs.false.i.i.i.i323
  %ti_flags.i.i.i.i324 = getelementptr inbounds %struct.nilfs_transaction_info, ptr %768, i32 0, i32 2
  %771 = ptrtoint ptr %ti_flags.i.i.i.i324 to i32
  call void @__asan_load2_noabort(i32 %771)
  %772 = load i16, ptr %ti_flags.i.i.i.i324, align 4
  %773 = and i16 %772, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %773)
  %tobool102.not.i.i = icmp eq i16 %773, 0
  br i1 %tobool102.not.i.i, label %nilfs_doing_gc.exit.i.i325.if.else.i.i328_crit_edge, label %if.then103.i.i

nilfs_doing_gc.exit.i.i325.if.else.i.i328_crit_edge: ; preds = %nilfs_doing_gc.exit.i.i325
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i328

if.then103.i.i:                                   ; preds = %nilfs_doing_gc.exit.i.i325
  %774 = ptrtoint ptr %sc_gc_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %.pn13.i181.i.i = load ptr, ptr %sc_gc_inodes.i.i, align 4
  %cmp.not14.i182.i.i = icmp eq ptr %.pn13.i181.i.i, %sc_gc_inodes.i.i
  br i1 %cmp.not14.i182.i.i, label %if.then103.i.i.if.end104.i.i_crit_edge, label %if.then103.i.i.for.body.i187.i.i_crit_edge

if.then103.i.i.for.body.i187.i.i_crit_edge:       ; preds = %if.then103.i.i
  br label %for.body.i187.i.i

if.then103.i.i.if.end104.i.i_crit_edge:           ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i.i

for.body.i187.i.i:                                ; preds = %for.inc.i191.i.i.for.body.i187.i.i_crit_edge, %if.then103.i.i.for.body.i187.i.i_crit_edge
  %.pn15.i183.i.i = phi ptr [ %.pn.i189.i.i, %for.inc.i191.i.i.for.body.i187.i.i_crit_edge ], [ %.pn13.i181.i.i, %if.then103.i.i.for.body.i187.i.i_crit_edge ]
  %i_state.i184.i.i = getelementptr i8, ptr %.pn15.i183.i.i, i32 -568
  %call.i185.i.i = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %i_state.i184.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.i.i)
  %tobool.not.i186.i.i = icmp eq i32 %call.i185.i.i, 0
  br i1 %tobool.not.i186.i.i, label %for.body.i187.i.i.for.inc.i191.i.i_crit_edge, label %if.end.i188.i.i

for.body.i187.i.i.for.inc.i191.i.i_crit_edge:     ; preds = %for.body.i187.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i191.i.i

if.end.i188.i.i:                                  ; preds = %for.body.i187.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 6, ptr noundef %i_state.i184.i.i) #9
  call void @_set_bit(i32 noundef 5, ptr noundef %i_state.i184.i.i) #9
  br label %for.inc.i191.i.i

for.inc.i191.i.i:                                 ; preds = %if.end.i188.i.i, %for.body.i187.i.i.for.inc.i191.i.i_crit_edge
  %775 = ptrtoint ptr %.pn15.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %.pn.i189.i.i = load ptr, ptr %.pn15.i183.i.i, align 4
  %cmp.not.i190.i.i = icmp eq ptr %.pn.i189.i.i, %sc_gc_inodes.i.i
  br i1 %cmp.not.i190.i.i, label %for.inc.i191.i.i.if.end104.i.i_crit_edge, label %for.inc.i191.i.i.for.body.i187.i.i_crit_edge

for.inc.i191.i.i.for.body.i187.i.i_crit_edge:     ; preds = %for.inc.i191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i187.i.i

for.inc.i191.i.i.if.end104.i.i_crit_edge:         ; preds = %for.inc.i191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i.i

if.else.i.i328:                                   ; preds = %nilfs_doing_gc.exit.i.i325.if.else.i.i328_crit_edge, %lor.lhs.false.i.i.i.i323.if.else.i.i328_crit_edge, %nilfs_drop_collected_inodes.exit.i.i.if.else.i.i328_crit_edge
  %776 = ptrtoint ptr %sc_seg_ctime to i32
  call void @__asan_load8_noabort(i32 %776)
  %777 = load i64, ptr %sc_seg_ctime, align 8
  %ns_nongc_ctime.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 19
  %778 = ptrtoint ptr %ns_nongc_ctime.i.i to i32
  call void @__asan_store8_noabort(i32 %778)
  store i64 %777, ptr %ns_nongc_ctime.i.i, align 8
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.else.i.i328, %for.inc.i191.i.i.if.end104.i.i_crit_edge, %if.then103.i.i.if.end104.i.i_crit_edge
  %779 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %781 = ptrtoint ptr %sc_nblk_inc.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %sc_nblk_inc.i.i, align 8
  %add.i.i330 = add i32 %782, %780
  store i32 %add.i.i330, ptr %sc_nblk_inc.i.i, align 8
  %783 = ptrtoint ptr %prev16.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %prev16.i, align 4
  %sb_segnum.i.i.i = getelementptr i8, ptr %784, i32 68
  %785 = ptrtoint ptr %sb_segnum.i.i.i to i32
  call void @__asan_load8_noabort(i32 %785)
  %786 = load i64, ptr %sb_segnum.i.i.i, align 8
  %ns_segnum.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 14
  %787 = ptrtoint ptr %ns_segnum.i.i.i to i32
  call void @__asan_store8_noabort(i32 %787)
  store i64 %786, ptr %ns_segnum.i.i.i, align 8
  %sb_nextnum.i.i.i = getelementptr i8, ptr %784, i32 76
  %788 = ptrtoint ptr %sb_nextnum.i.i.i to i32
  call void @__asan_load8_noabort(i32 %788)
  %789 = load i64, ptr %sb_nextnum.i.i.i, align 8
  %ns_nextnum.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 15
  %790 = ptrtoint ptr %ns_nextnum.i.i.i to i32
  call void @__asan_store8_noabort(i32 %790)
  store i64 %789, ptr %ns_nextnum.i.i.i, align 8
  %sb_pseg_start.i.i.i = getelementptr i8, ptr %784, i32 100
  %791 = ptrtoint ptr %sb_pseg_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %791)
  %792 = load i64, ptr %sb_pseg_start.i.i.i, align 8
  %sb_fseg_start.i.i.i = getelementptr i8, ptr %784, i32 84
  %793 = ptrtoint ptr %sb_fseg_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %793)
  %794 = load i64, ptr %sb_fseg_start.i.i.i, align 8
  %sub.i.i.i332 = sub i64 %792, %794
  %nblocks.i.i.i333 = getelementptr i8, ptr %784, i32 20
  %795 = ptrtoint ptr %nblocks.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %nblocks.i.i.i333, align 8
  %797 = trunc i64 %sub.i.i.i332 to i32
  %conv1.i.i.i = add i32 %796, %797
  %ns_pseg_offset.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 16
  %798 = ptrtoint ptr %ns_pseg_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 %conv1.i.i.i, ptr %ns_pseg_offset.i.i.i, align 8
  %seg_seq.i.i.i = getelementptr i8, ptr %784, i32 36
  %799 = ptrtoint ptr %seg_seq.i.i.i to i32
  call void @__asan_load8_noabort(i32 %799)
  %800 = load i64, ptr %seg_seq.i.i.i, align 8
  %ns_seg_seq.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 13
  %801 = ptrtoint ptr %ns_seg_seq.i.i.i to i32
  call void @__asan_store8_noabort(i32 %801)
  store i64 %800, ptr %ns_seg_seq.i.i.i, align 8
  %ctime.i.i.i = getelementptr i8, ptr %784, i32 52
  %802 = ptrtoint ptr %ctime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %802)
  %803 = load i64, ptr %ctime.i.i.i, align 8
  %ns_ctime.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 18
  %804 = ptrtoint ptr %ns_ctime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %804)
  store i64 %803, ptr %ns_ctime.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_sr.0.lcssa229.i.i)
  %tobool109.not.i.i = icmp eq i32 %update_sr.0.lcssa229.i.i, 0
  br i1 %tobool109.not.i.i, label %if.else115.i.i, label %if.then110.i.i

if.then110.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ns_flushed_device.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 1
  %805 = ptrtoint ptr %ns_flushed_device.i.i to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 0, ptr %ns_flushed_device.i.i, align 4
  %806 = ptrtoint ptr %sb_pseg_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %806)
  %807 = load i64, ptr %sb_pseg_start.i.i.i, align 8
  %808 = ptrtoint ptr %seg_seq.i.i.i to i32
  call void @__asan_load8_noabort(i32 %808)
  %809 = load i64, ptr %seg_seq.i.i.i, align 8
  %ns_cno.i.i = getelementptr inbounds %struct.the_nilfs, ptr %731, i32 0, i32 17
  %810 = ptrtoint ptr %ns_cno.i.i to i32
  call void @__asan_load8_noabort(i32 %810)
  %811 = load i64, ptr %ns_cno.i.i, align 8
  %inc.i.i334 = add i64 %811, 1
  store i64 %inc.i.i334, ptr %ns_cno.i.i, align 8
  call void @nilfs_set_last_segment(ptr noundef %731, i64 noundef %807, i64 noundef %809, i64 noundef %811) #9
  call void @_clear_bit(i32 noundef 4, ptr noundef %sc_flags.i.i) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %sc_flags.i.i) #9
  call void @_set_bit(i32 noundef 2, ptr noundef %sc_flags.i.i) #9
  %812 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %sci, align 8
  %s_fs_info.i.i.i335 = getelementptr inbounds %struct.super_block, ptr %813, i32 0, i32 33
  %814 = ptrtoint ptr %s_fs_info.i.i.i335 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %s_fs_info.i.i.i335, align 16
  %816 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %sc_root.i, align 4
  %ifile.i.i.i = getelementptr inbounds %struct.nilfs_root, ptr %817, i32 0, i32 4
  %818 = ptrtoint ptr %ifile.i.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %ifile.i.i.i, align 4
  %i_state.i.i.i.i336 = getelementptr i8, ptr %819, i32 -588
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_state.i.i.i.i336) #9
  %ns_cpfile.i.i.i337 = getelementptr inbounds %struct.the_nilfs, ptr %815, i32 0, i32 30
  %820 = ptrtoint ptr %ns_cpfile.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %ns_cpfile.i.i.i337, align 8
  %i_state.i4.i.i.i = getelementptr i8, ptr %821, i32 -588
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_state.i4.i.i.i) #9
  %ns_sufile.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %815, i32 0, i32 31
  %822 = ptrtoint ptr %ns_sufile.i.i.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %ns_sufile.i.i.i, align 4
  %i_state.i5.i.i.i = getelementptr i8, ptr %823, i32 -588
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_state.i5.i.i.i) #9
  %ns_dat.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %815, i32 0, i32 29
  %824 = ptrtoint ptr %ns_dat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %ns_dat.i.i.i, align 4
  %i_state.i6.i.i.i = getelementptr i8, ptr %825, i32 -588
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_state.i6.i.i.i) #9
  br label %nilfs_segctor_wait.exit

if.else115.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 2, ptr noundef %sc_flags.i.i) #9
  br label %nilfs_segctor_wait.exit

nilfs_segctor_wait.exit:                          ; preds = %if.else115.i.i, %if.then110.i.i
  call void @nilfs_truncate_logs(ptr noundef %sc_write_logs.i, ptr noundef null) #9
  %826 = ptrtoint ptr %sc_stage.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %.pr = load i32, ptr %sc_stage.i, align 8
  br label %do.cond

do.cond:                                          ; preds = %nilfs_segctor_wait.exit, %lor.lhs.false.do.cond_crit_edge
  %827 = phi i32 [ %.pr, %nilfs_segctor_wait.exit ], [ %725, %lor.lhs.false.do.cond_crit_edge ]
  %cmp89.not = icmp eq i32 %827, 9
  br i1 %cmp89.not, label %do.cond.out_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.out_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %if.end99, %do.cond.out_crit_edge, %if.then35, %nilfs_segctor_begin_construction.exit.thread, %nilfs_segctor_clean.exit.out_crit_edge, %nilfs_doing_gc.exit.i.out_crit_edge, %lor.lhs.false.i.i.i.out_crit_edge, %land.rhs.i.out_crit_edge, %nilfs_segctor_collect_dirty_files.exit
  %err.1 = phi i32 [ %call.i, %nilfs_segctor_collect_dirty_files.exit ], [ 0, %nilfs_segctor_clean.exit.out_crit_edge ], [ %err.3, %if.end99 ], [ 0, %if.then35 ], [ %retval.0.i.ph, %nilfs_segctor_begin_construction.exit.thread ], [ 0, %nilfs_doing_gc.exit.i.out_crit_edge ], [ 0, %lor.lhs.false.i.i.i.out_crit_edge ], [ 0, %land.rhs.i.out_crit_edge ], [ 0, %do.cond.out_crit_edge ]
  %828 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %sci, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %829, i32 0, i32 10
  %830 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %s_flags.i, align 4
  %and.i340 = and i32 %831, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i340)
  %tobool.not.i341 = icmp eq i32 %and.i340, 0
  call void @_raw_spin_lock(ptr noundef %ns_inode_lock.i) #9
  %sc_dirty_files.i343 = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 3
  %832 = ptrtoint ptr %sc_dirty_files.i343 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %sc_dirty_files.i343, align 4
  %cmp.not58.i = icmp eq ptr %833, %sc_dirty_files.i343
  br i1 %cmp.not58.i, label %for.end.thread.i, label %for.body.lr.ph.i345

for.end.thread.i:                                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock.i) #9
  br label %nilfs_segctor_drop_written_files.exit

for.body.lr.ph.i345:                              ; preds = %out
  %sc_iput_queue.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 5
  %prev.i.i344 = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 5, i32 1
  br label %for.body.i349

for.body.i349:                                    ; preds = %for.inc.i361.for.body.i349_crit_edge, %for.body.lr.ph.i345
  %.pn.in60.i = phi ptr [ %833, %for.body.lr.ph.i345 ], [ %.pn61.i, %for.inc.i361.for.body.i349_crit_edge ]
  %defer_iput.059.i = phi i32 [ 0, %for.body.lr.ph.i345 ], [ %defer_iput.1.i, %for.inc.i361.for.body.i349_crit_edge ]
  %834 = ptrtoint ptr %.pn.in60.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %.pn61.i = load ptr, ptr %.pn.in60.i, align 4
  %i_state.i346 = getelementptr i8, ptr %.pn.in60.i, i32 -568
  %call.i347 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %i_state.i346) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool9.not.i348 = icmp eq i32 %call.i347, 0
  br i1 %tobool9.not.i348, label %for.body.i349.for.inc.i361_crit_edge, label %lor.lhs.false.i350

for.body.i349.for.inc.i361_crit_edge:             ; preds = %for.body.i349
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i361

lor.lhs.false.i350:                               ; preds = %for.body.i349
  %835 = ptrtoint ptr %i_state.i346 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load volatile i32, ptr %i_state.i346, align 4
  %837 = and i32 %836, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %837)
  %tobool12.not.i = icmp eq i32 %837, 0
  br i1 %tobool12.not.i, label %if.end.i353, label %lor.lhs.false.i350.for.inc.i361_crit_edge

lor.lhs.false.i350.for.inc.i361_crit_edge:        ; preds = %lor.lhs.false.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i361

if.end.i353:                                      ; preds = %lor.lhs.false.i350
  call void @_clear_bit(i32 noundef 3, ptr noundef %i_state.i346) #9
  %i_bh.i351 = getelementptr i8, ptr %.pn.in60.i, i32 8
  %838 = ptrtoint ptr %i_bh.i351 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %i_bh.i351, align 4
  %tobool.not.i.i352 = icmp eq ptr %839, null
  br i1 %tobool.not.i.i352, label %if.end.i353.brelse.exit.i_crit_edge, label %if.then.i.i354

if.end.i353.brelse.exit.i_crit_edge:              ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i354:                                   ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %839) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i354, %if.end.i353.brelse.exit.i_crit_edge
  %840 = ptrtoint ptr %i_bh.i351 to i32
  call void @__asan_store4_noabort(i32 %840)
  store ptr null, ptr %i_bh.i351, align 4
  %call.i.i.i355 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60.i) #9
  br i1 %call.i.i.i355, label %if.end.i.i.i358, label %brelse.exit.i.list_del_init.exit.i_crit_edge

brelse.exit.i.list_del_init.exit.i_crit_edge:     ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i358:                                  ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i356 = getelementptr inbounds %struct.list_head, ptr %.pn.in60.i, i32 0, i32 1
  %841 = ptrtoint ptr %prev.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %prev.i.i.i356, align 4
  %843 = ptrtoint ptr %.pn.in60.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %.pn.in60.i, align 4
  %prev1.i.i.i.i357 = getelementptr inbounds %struct.list_head, ptr %844, i32 0, i32 1
  %845 = ptrtoint ptr %prev1.i.i.i.i357 to i32
  call void @__asan_store4_noabort(i32 %845)
  store ptr %842, ptr %prev1.i.i.i.i357, align 4
  %846 = ptrtoint ptr %842 to i32
  call void @__asan_store4_noabort(i32 %846)
  store volatile ptr %844, ptr %842, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i358, %brelse.exit.i.list_del_init.exit.i_crit_edge
  %847 = ptrtoint ptr %.pn.in60.i to i32
  call void @__asan_store4_noabort(i32 %847)
  store volatile ptr %.pn.in60.i, ptr %.pn.in60.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60.i, i32 0, i32 1
  %848 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %848)
  store ptr %.pn.in60.i, ptr %prev.i3.i.i, align 4
  %849 = getelementptr i8, ptr %.pn.in60.i, i32 64
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %849, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %851)
  %tobool16.not.i = icmp eq i32 %851, 0
  %brmerge.i = select i1 %tobool16.not.i, i1 true, i1 %tobool.not.i341
  br i1 %brmerge.i, label %if.then19.i, label %if.else.i359

if.then19.i:                                      ; preds = %list_del_init.exit.i
  %852 = ptrtoint ptr %prev.i.i344 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %prev.i.i344, align 4
  %call.i.i54.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in60.i, ptr noundef %853, ptr noundef %sc_iput_queue.i) #9
  br i1 %call.i.i54.i, label %if.end.i.i55.i, label %if.then19.i.for.inc.i361_crit_edge

if.then19.i.for.inc.i361_crit_edge:               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i361

if.end.i.i55.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %854 = ptrtoint ptr %prev.i.i344 to i32
  call void @__asan_store4_noabort(i32 %854)
  store ptr %.pn.in60.i, ptr %prev.i.i344, align 4
  %855 = ptrtoint ptr %.pn.in60.i to i32
  call void @__asan_store4_noabort(i32 %855)
  store ptr %sc_iput_queue.i, ptr %.pn.in60.i, align 4
  %856 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store ptr %853, ptr %prev.i3.i.i, align 4
  %857 = ptrtoint ptr %853 to i32
  call void @__asan_store4_noabort(i32 %857)
  store volatile ptr %.pn.in60.i, ptr %853, align 4
  br label %for.inc.i361

if.else.i359:                                     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %vfs_inode.i = getelementptr i8, ptr %.pn.in60.i, i32 20
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock.i) #9
  call void @iput(ptr noundef %vfs_inode.i) #9
  call void @_raw_spin_lock(ptr noundef %ns_inode_lock.i) #9
  br label %for.inc.i361

for.inc.i361:                                     ; preds = %if.else.i359, %if.end.i.i55.i, %if.then19.i.for.inc.i361_crit_edge, %lor.lhs.false.i350.for.inc.i361_crit_edge, %for.body.i349.for.inc.i361_crit_edge
  %defer_iput.1.i = phi i32 [ %defer_iput.059.i, %lor.lhs.false.i350.for.inc.i361_crit_edge ], [ %defer_iput.059.i, %if.else.i359 ], [ %defer_iput.059.i, %for.body.i349.for.inc.i361_crit_edge ], [ 1, %if.then19.i.for.inc.i361_crit_edge ], [ 1, %if.end.i.i55.i ]
  %cmp.not.i360 = icmp eq ptr %.pn61.i, %sc_dirty_files.i343
  br i1 %cmp.not.i360, label %for.end.i362, label %for.inc.i361.for.body.i349_crit_edge

for.inc.i361.for.body.i349_crit_edge:             ; preds = %for.inc.i361
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i349

for.end.i362:                                     ; preds = %for.inc.i361
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %defer_iput.1.i)
  %tobool31.not.i = icmp eq i32 %defer_iput.1.i, 0
  br i1 %tobool31.not.i, label %for.end.i362.nilfs_segctor_drop_written_files.exit_crit_edge, label %if.then32.i363

for.end.i362.nilfs_segctor_drop_written_files.exit_crit_edge: ; preds = %for.end.i362
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_drop_written_files.exit

if.then32.i363:                                   ; preds = %for.end.i362
  call void @__sanitizer_cov_trace_pc() #11
  %sc_iput_work.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %858 = load ptr, ptr @system_wq, align 4
  %call.i.i56.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %858, ptr noundef %sc_iput_work.i) #9
  br label %nilfs_segctor_drop_written_files.exit

nilfs_segctor_drop_written_files.exit:            ; preds = %if.then32.i363, %for.end.i362.nilfs_segctor_drop_written_files.exit_crit_edge, %for.end.thread.i
  ret i32 %err.1

failed_to_write:                                  ; preds = %if.then82.failed_to_write_crit_edge, %nilfs_segctor_write.exit.failed_to_write_crit_edge, %nilfs_segctor_fill_in_checkpoint.exit, %nilfs_segctor_fill_in_checkpoint.exit.thread402
  %err.2 = phi i32 [ %call.i223, %nilfs_segctor_fill_in_checkpoint.exit ], [ %call.i223, %nilfs_segctor_fill_in_checkpoint.exit.thread402 ], [ %call.i283, %nilfs_segctor_write.exit.failed_to_write_crit_edge ], [ %call.i290, %if.then82.failed_to_write_crit_edge ]
  %859 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %flags, align 4
  %and92 = and i32 %860, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %failed_to_write.failed_crit_edge, label %if.then94

failed_to_write.failed_crit_edge:                 ; preds = %failed_to_write
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.then94:                                        ; preds = %failed_to_write
  %861 = ptrtoint ptr %sc_dirty_files.i153 to i32
  call void @__asan_load4_noabort(i32 %861)
  %.pn11.i = load ptr, ptr %sc_dirty_files.i153, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %sc_dirty_files.i153
  br i1 %cmp.not12.i, label %if.then94.failed_crit_edge, label %if.then94.for.body.i367_crit_edge

if.then94.for.body.i367_crit_edge:                ; preds = %if.then94
  br label %for.body.i367

if.then94.failed_crit_edge:                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

for.body.i367:                                    ; preds = %for.inc.i371.for.body.i367_crit_edge, %if.then94.for.body.i367_crit_edge
  %.pn13.i = phi ptr [ %.pn.i369, %for.inc.i371.for.body.i367_crit_edge ], [ %.pn11.i, %if.then94.for.body.i367_crit_edge ]
  %i_state.i365 = getelementptr i8, ptr %.pn13.i, i32 -568
  %862 = ptrtoint ptr %i_state.i365 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load volatile i32, ptr %i_state.i365, align 4
  %864 = and i32 %863, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %864)
  %tobool.not.i366 = icmp eq i32 %864, 0
  br i1 %tobool.not.i366, label %for.body.i367.for.inc.i371_crit_edge, label %if.then.i368

for.body.i367.for.inc.i371_crit_edge:             ; preds = %for.body.i367
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i371

if.then.i368:                                     ; preds = %for.body.i367
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 4, ptr noundef %i_state.i365) #9
  br label %for.inc.i371

for.inc.i371:                                     ; preds = %if.then.i368, %for.body.i367.for.inc.i371_crit_edge
  %865 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %.pn.i369 = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i370 = icmp eq ptr %.pn.i369, %sc_dirty_files.i153
  br i1 %cmp.not.i370, label %for.inc.i371.failed_crit_edge, label %for.inc.i371.for.body.i367_crit_edge

for.inc.i371.for.body.i367_crit_edge:             ; preds = %for.inc.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i367

for.inc.i371.failed_crit_edge:                    ; preds = %for.inc.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

failed:                                           ; preds = %for.inc.i371.failed_crit_edge, %if.then94.failed_crit_edge, %failed_to_write.failed_crit_edge, %nilfs_segctor_assign.exit, %nilfs_segctor_collect.exit.failed_crit_edge, %nilfs_segctor_extend_segments.exit.thread156.i, %nilfs_segctor_extend_segments.exit.thread153.i, %.failed_crit_edge
  %err.3 = phi i32 [ %call29.i.i, %nilfs_segctor_assign.exit ], [ %err.2, %failed_to_write.failed_crit_edge ], [ %err.2, %if.then94.failed_crit_edge ], [ %err.0.i.i, %nilfs_segctor_extend_segments.exit.thread156.i ], [ %call.i121.i, %nilfs_segctor_extend_segments.exit.thread153.i ], [ %err.2, %for.inc.i371.failed_crit_edge ], [ %call1.i.i, %.failed_crit_edge ], [ %retval.0.i180, %nilfs_segctor_collect.exit.failed_crit_edge ]
  %866 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i373 = and i32 %866, -16384
  %867 = inttoptr i32 %and.i.i.i373 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %867, i32 0, i32 2
  %868 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %869, i32 0, i32 146
  %870 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %journal_info.i.i, align 4
  %cmp.i.i374 = icmp eq ptr %871, null
  br i1 %cmp.i.i374, label %failed.if.end99_crit_edge, label %lor.lhs.false.i.i

failed.if.end99_crit_edge:                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

lor.lhs.false.i.i:                                ; preds = %failed
  %872 = ptrtoint ptr %871 to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %873)
  %cmp1.not.i.i = icmp eq i32 %873, -639397125
  br i1 %cmp1.not.i.i, label %nilfs_doing_gc.exit, label %lor.lhs.false.i.i.if.end99_crit_edge

lor.lhs.false.i.i.if.end99_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

nilfs_doing_gc.exit:                              ; preds = %lor.lhs.false.i.i
  %ti_flags.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %871, i32 0, i32 2
  %874 = ptrtoint ptr %ti_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %874)
  %875 = load i16, ptr %ti_flags.i.i, align 4
  %876 = and i16 %875, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %876)
  %tobool97.not = icmp eq i16 %876, 0
  br i1 %tobool97.not, label %nilfs_doing_gc.exit.if.end99_crit_edge, label %if.then98

nilfs_doing_gc.exit.if.end99_crit_edge:           ; preds = %nilfs_doing_gc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then98:                                        ; preds = %nilfs_doing_gc.exit
  %877 = ptrtoint ptr %sc_gc_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %.pn11.i377 = load ptr, ptr %sc_gc_inodes.i.i, align 4
  %cmp.not12.i378 = icmp eq ptr %.pn11.i377, %sc_gc_inodes.i.i
  br i1 %cmp.not12.i378, label %if.then98.if.end99_crit_edge, label %if.then98.for.body.i382_crit_edge

if.then98.for.body.i382_crit_edge:                ; preds = %if.then98
  br label %for.body.i382

if.then98.if.end99_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

for.body.i382:                                    ; preds = %for.inc.i386.for.body.i382_crit_edge, %if.then98.for.body.i382_crit_edge
  %.pn13.i379 = phi ptr [ %.pn.i384, %for.inc.i386.for.body.i382_crit_edge ], [ %.pn11.i377, %if.then98.for.body.i382_crit_edge ]
  %i_state.i380 = getelementptr i8, ptr %.pn13.i379, i32 -568
  %878 = ptrtoint ptr %i_state.i380 to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load volatile i32, ptr %i_state.i380, align 4
  %880 = and i32 %879, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %880)
  %tobool.not.i381 = icmp eq i32 %880, 0
  br i1 %tobool.not.i381, label %for.body.i382.for.inc.i386_crit_edge, label %if.then.i383

for.body.i382.for.inc.i386_crit_edge:             ; preds = %for.body.i382
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i386

if.then.i383:                                     ; preds = %for.body.i382
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 4, ptr noundef %i_state.i380) #9
  br label %for.inc.i386

for.inc.i386:                                     ; preds = %if.then.i383, %for.body.i382.for.inc.i386_crit_edge
  %881 = ptrtoint ptr %.pn13.i379 to i32
  call void @__asan_load4_noabort(i32 %881)
  %.pn.i384 = load ptr, ptr %.pn13.i379, align 4
  %cmp.not.i385 = icmp eq ptr %.pn.i384, %sc_gc_inodes.i.i
  br i1 %cmp.not.i385, label %for.inc.i386.if.end99_crit_edge, label %for.inc.i386.for.body.i382_crit_edge

for.inc.i386.for.body.i382_crit_edge:             ; preds = %for.inc.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i382

for.inc.i386.if.end99_crit_edge:                  ; preds = %for.inc.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.end99:                                         ; preds = %for.inc.i386.if.end99_crit_edge, %if.then98.if.end99_crit_edge, %nilfs_doing_gc.exit.if.end99_crit_edge, %lor.lhs.false.i.i.if.end99_crit_edge, %failed.if.end99_crit_edge
  call fastcc void @nilfs_segctor_abort_construction(ptr noundef %sci, ptr noundef %3, i32 noundef %err.3)
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_clean_segments(ptr noundef %sb, ptr noundef %argv, ptr noundef %kbufs) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_writer, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #9
  %tobool.not = icmp eq ptr %3, null
  %4 = call ptr @memset(ptr %ti, i32 255, i32 12)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !222

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @nilfs_transaction_lock(ptr noundef %sb, ptr noundef nonnull %ti, i32 noundef 1)
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns_dat, align 4
  %call = call i32 @nilfs_mdt_save_to_shadow_map(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end12, label %if.end.out_unlock_crit_edge, !prof !221

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @nilfs_ioctl_prepare_clean_segments(ptr noundef %1, ptr noundef %argv, ptr noundef %kbufs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end23, label %if.then21, !prof !221

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns_dat, align 4
  call void @nilfs_mdt_restore_from_shadow_map(ptr noundef %8) #9
  br label %out_unlock

if.end23:                                         ; preds = %if.end12
  %arrayidx = getelementptr ptr, ptr %kbufs, i32 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %sc_freesegs = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %sc_freesegs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %sc_freesegs, align 8
  %v_nmembs = getelementptr %struct.nilfs_argv, ptr %argv, i32 4, i32 1
  %12 = ptrtoint ptr %v_nmembs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_nmembs, align 8
  %sc_nfreesegs = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %sc_nfreesegs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sc_nfreesegs, align 4
  %ns_gc_inodes = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 36
  %sc_gc_inodes = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ns_gc_inodes, align 4
  %cmp.i.not.i = icmp eq ptr %16, %ns_gc_inodes
  br i1 %cmp.i.not.i, label %if.end23.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end23.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sc_gc_inodes, ptr %20, align 4
  store ptr %20, ptr %prev.i, align 4
  %24 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %ns_gc_inodes, ptr %ns_gc_inodes, align 4
  store ptr %ns_gc_inodes, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end23.list_splice_tail_init.exit_crit_edge
  %sc_interval = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 35
  br label %for.cond

for.cond:                                         ; preds = %__here, %list_splice_tail_init.exit
  %call25 = call fastcc i32 @nilfs_segctor_construct(ptr noundef nonnull %3, i32 noundef 1)
  %25 = ptrtoint ptr %sc_gc_inodes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc_gc_inodes, align 4
  %cmp.not3.i = icmp eq ptr %26, %sc_gc_inodes
  br i1 %cmp.not3.i, label %for.cond.nilfs_remove_written_gcinodes.exit_crit_edge, label %for.cond.for.body.i_crit_edge

for.cond.for.body.i_crit_edge:                    ; preds = %for.cond
  br label %for.body.i

for.cond.nilfs_remove_written_gcinodes.exit_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_remove_written_gcinodes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.for.body.i_crit_edge
  %.pn.in4.i = phi ptr [ %.pn6.i, %for.inc.i.for.body.i_crit_edge ], [ %26, %for.cond.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %.pn.in4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn6.i = load ptr, ptr %.pn.in4.i, align 4
  %i_state.i = getelementptr i8, ptr %.pn.in4.i, i32 -568
  %28 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %i_state.i, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in4.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in4.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %.pn.in4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in4.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %37 = ptrtoint ptr %.pn.in4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in4.i, ptr %.pn.in4.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in4.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in4.i, ptr %prev.i3.i.i, align 4
  %vfs_inode.i = getelementptr i8, ptr %.pn.in4.i, i32 20
  %i_data.i = getelementptr i8, ptr %.pn.in4.i, i32 428
  call void @truncate_inode_pages(ptr noundef %i_data.i, i64 noundef 0) #9
  %i_btnode_cache.i = getelementptr i8, ptr %.pn.in4.i, i32 -340
  call void @nilfs_btnode_cache_clear(ptr noundef %i_btnode_cache.i) #9
  call void @iput(ptr noundef %vfs_inode.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_init.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn6.i, %sc_gc_inodes
  br i1 %cmp.not.i, label %for.inc.i.nilfs_remove_written_gcinodes.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.nilfs_remove_written_gcinodes.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_remove_written_gcinodes.exit

nilfs_remove_written_gcinodes.exit:               ; preds = %for.inc.i.nilfs_remove_written_gcinodes.exit_crit_edge, %for.cond.nilfs_remove_written_gcinodes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %for.end, label %if.end37, !prof !221

if.end37:                                         ; preds = %nilfs_remove_written_gcinodes.exit
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str, i32 noundef %call25) #9
  br label %__here

__here:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %39 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@nilfs_clean_segments, %__here) to i32), ptr %task_state_change, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 1, ptr %44, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !258
  %46 = ptrtoint ptr %sc_interval to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sc_interval, align 4
  %call106 = call i32 @schedule_timeout(i32 noundef %47) #9
  br label %for.cond

for.end:                                          ; preds = %nilfs_remove_written_gcinodes.exit
  %ns_mount_opt = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 39
  %48 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ns_mount_opt, align 4
  %and = and i32 %49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool107.not = icmp eq i32 %and, 0
  br i1 %tobool107.not, label %for.end.out_unlock_crit_edge, label %if.then108

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then108:                                       ; preds = %for.end
  %50 = ptrtoint ptr %sc_freesegs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sc_freesegs, align 8
  %52 = ptrtoint ptr %sc_nfreesegs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_nfreesegs, align 4
  %call111 = call i32 @nilfs_discard_segments(ptr noundef %1, ptr noundef %51, i32 noundef %53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then108.out_unlock_crit_edge, label %if.then113

if.then108.out_unlock_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then113:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef %call111) #9
  %54 = ptrtoint ptr %ns_mount_opt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ns_mount_opt, align 4
  %and115 = and i32 %55, -32769
  store i32 %and115, ptr %ns_mount_opt, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then113, %if.then108.out_unlock_crit_edge, %for.end.out_unlock_crit_edge, %if.then21, %if.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call, %if.end.out_unlock_crit_edge ], [ %call13, %if.then21 ], [ 0, %for.end.out_unlock_crit_edge ], [ 0, %if.then113 ], [ 0, %if.then108.out_unlock_crit_edge ]
  %sc_freesegs118 = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 7
  %56 = ptrtoint ptr %sc_freesegs118 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sc_freesegs118, align 8
  %sc_nfreesegs119 = getelementptr inbounds %struct.nilfs_sc_info, ptr %3, i32 0, i32 8
  %57 = ptrtoint ptr %sc_nfreesegs119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %sc_nfreesegs119, align 4
  %58 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ns_dat, align 4
  call void @nilfs_mdt_clear_shadow_map(ptr noundef %59) #9
  %60 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 146
  %64 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %journal_info.i, align 4
  %66 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info, align 16
  %cmp.i = icmp eq ptr %65, null
  br i1 %cmp.i, label %out_unlock.do.body3.i_crit_edge, label %lor.rhs.i, !prof !222

out_unlock.do.body3.i_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %out_unlock
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %69)
  %cmp1.not.i = icmp eq i32 %69, -639397125
  br i1 %cmp1.not.i, label %do.body9.i, label %lor.rhs.i.do.body3.i_crit_edge, !prof !221

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %out_unlock.do.body3.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.body9.i:                                       ; preds = %lor.rhs.i
  %ti_count.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %65, i32 0, i32 3
  %70 = ptrtoint ptr %ti_count.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ti_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp10.not.i = icmp eq i16 %71, 0
  br i1 %cmp10.not.i, label %nilfs_transaction_unlock.exit, label %do.body19.i, !prof !221

do.body19.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

nilfs_transaction_unlock.exit:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  %ns_segctor_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %67, i32 0, i32 28
  call void @up_write(ptr noundef %ns_segctor_sem.i) #9
  %ti_save.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %65, i32 0, i32 1
  %72 = ptrtoint ptr %ti_save.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ti_save.i, align 4
  %74 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i, align 8
  %journal_info30.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 146
  %76 = ptrtoint ptr %journal_info30.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %journal_info30.i, align 4
  %77 = ptrtoint ptr %ti_count.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ti_count.i, align 2
  %conv32.i = zext i16 %78 to i32
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %65, i32 0, i32 2
  %79 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ti_flags.i, align 4
  %conv33.i = zext i16 %80 to i32
  call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %sb, ptr noundef nonnull %65, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %nilfs_transaction_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %nilfs_transaction_unlock.exit ], [ -30, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_save_to_shadow_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ioctl_prepare_clean_segments(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_restore_from_shadow_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_construct(ptr noundef %sci, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %sc_seq_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 31
  %4 = ptrtoint ptr %sc_seq_request.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sc_seq_request.i, align 4
  %sc_seq_accepted.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 32
  %6 = ptrtoint ptr %sc_seq_accepted.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sc_seq_accepted.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  %sc_timer.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 39
  %call.i = tail call i32 @del_timer_sync(ptr noundef %sc_timer.i) #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not, i32 %mode, i32 1
  %call1 = tail call fastcc i32 @nilfs_segctor_confirm(ptr noundef %sci)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %entry.if.then10_crit_edge

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.end5:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @nilfs_segctor_do_construct(ptr noundef %sci, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end5.if.then10_crit_edge, label %if.end5.if.end34_crit_edge, !prof !221

if.end5.if.end34_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %if.end5.if.then10_crit_edge, %entry.if.then10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp.not = icmp eq i32 %spec.select, 4
  br i1 %cmp.not, label %if.then10.if.end12_crit_edge, label %if.then11

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %ns_ndirtyblks = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ns_ndirtyblks, i32 noundef 4) #9
  %10 = ptrtoint ptr %ns_ndirtyblks to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %ns_ndirtyblks, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10.if.end12_crit_edge
  %sc_flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  %11 = ptrtoint ptr %sc_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sc_flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.end12.if.end34_crit_edge, label %land.lhs.true

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end12
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %3, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end34_crit_edge, label %if.then17

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then17:                                        ; preds = %land.lhs.true
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #9
  %17 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sci, align 8
  %ns_sbwcount.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %ns_sbwcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ns_sbwcount.i, align 8
  %and.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp.not.i = icmp ne i32 %and.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp1.i = icmp ne i32 %and.i, 15
  %narrow.i = and i1 %cmp.not.i, %cmp1.i
  %21 = zext i1 %narrow.i to i32
  %call20 = tail call ptr @nilfs_prepare_super(ptr noundef %18, i32 noundef %21) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then17.if.end31_crit_edge, label %if.then28, !prof !222

if.then17.if.end31_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call20, align 4
  tail call void @nilfs_set_log_cursor(ptr noundef %23, ptr noundef %3) #9
  %24 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sci, align 8
  %call30 = tail call i32 @nilfs_commit_super(ptr noundef %25, i32 noundef 0) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then17.if.end31_crit_edge
  %err.1 = phi i32 [ %call30, %if.then28 ], [ -5, %if.then17.if.end31_crit_edge ]
  tail call void @up_write(ptr noundef %ns_sem) #9
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %land.lhs.true.if.end34_crit_edge, %if.end12.if.end34_crit_edge, %if.end5.if.end34_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end31 ], [ 0, %land.lhs.true.if.end34_crit_edge ], [ 0, %if.end12.if.end34_crit_edge ], [ %call4, %if.end5.if.end34_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %26 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %spec.select, label %if.end34.if.end10.i_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.end34.if.end10.sink.split.i_crit_edge
    i32 4, label %if.then7.i
  ]

if.end34.if.end10.sink.split.i_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split.i

if.end34.if.end10.i_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end34
  %sc_state.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 26
  %27 = ptrtoint ptr %sc_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sc_state.i, align 8
  %and.i56 = and i32 %28, -5
  store i32 %and.i56, ptr %sc_state.i, align 8
  %29 = ptrtoint ptr %sc_seq_accepted.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sc_seq_accepted.i, align 8
  %sc_seq_done.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 33
  %31 = ptrtoint ptr %sc_seq_done.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sc_seq_done.i, align 4
  %sc_wait_request.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 28
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_wait_request.i.i) #9
  %head.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 28, i32 1
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 4
  %cmp16.not57.i.i = icmp eq ptr %33, %head.i.i
  br i1 %cmp16.not57.i.i, label %if.then.i.nilfs_segctor_wakeup.exit.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.nilfs_segctor_wakeup.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_wakeup.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %.pn.in58.i.i = phi ptr [ %.pn61.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %33, %if.then.i.for.body.i.i_crit_edge ]
  %wrq.060.i.i = getelementptr i8, ptr %.pn.in58.i.i, i32 -12
  %34 = ptrtoint ptr %.pn.in58.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn61.i.i = load ptr, ptr %.pn.in58.i.i, align 4
  %done.i.i = getelementptr i8, ptr %.pn.in58.i.i, i32 16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %done.i.i, i32 noundef 4) #9
  %35 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %37 = ptrtoint ptr %sc_seq_done.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sc_seq_done.i, align 4
  %seq.i.i = getelementptr i8, ptr %.pn.in58.i.i, i32 8
  %39 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seq.i.i, align 4
  %sub.i.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp19.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp19.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %err21.i.i = getelementptr i8, ptr %.pn.in58.i.i, i32 12
  %41 = ptrtoint ptr %err21.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %err.2, ptr %err21.i.i, align 4
  %call.i.i53.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %done.i.i, i32 noundef 4) #9
  %42 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %done.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %call.i.i54.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %done.i.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool25.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool25.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then26.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then26.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %func.i.i = getelementptr i8, ptr %.pn.in58.i.i, i32 -4
  %45 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %func.i.i, align 4
  %call29.i.i = tail call i32 %46(ptr noundef %wrq.060.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then26.i.i, %if.end.i.i.for.inc.i.i_crit_edge
  %cmp16.not.i.i = icmp eq ptr %.pn61.i.i, %head.i.i
  br i1 %cmp16.not.i.i, label %for.inc.i.i.nilfs_segctor_wakeup.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.nilfs_segctor_wakeup.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_wakeup.exit.i

nilfs_segctor_wakeup.exit.i:                      ; preds = %for.inc.i.i.nilfs_segctor_wakeup.exit.i_crit_edge, %if.then.i.nilfs_segctor_wakeup.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_wait_request.i.i, i32 noundef %call2.i.i) #9
  %sc_flush_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 27
  %47 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sc_flush_request.i, align 4
  br label %nilfs_segctor_notify.exit

if.then7.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.then7.i, %if.end34.if.end10.sink.split.i_crit_edge
  %.sink32.i = phi i32 [ -9, %if.then7.i ], [ -2, %if.end34.if.end10.sink.split.i_crit_edge ]
  %sc_flush_request3.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 27
  %48 = ptrtoint ptr %sc_flush_request3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sc_flush_request3.i, align 4
  %and9.i = and i32 %49, %.sink32.i
  store i32 %and9.i, ptr %sc_flush_request3.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %if.end34.if.end10.i_crit_edge
  %sc_state11.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 26
  %50 = ptrtoint ptr %sc_state11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sc_state11.i, align 8
  %and12.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %if.end10.i.nilfs_segctor_notify.exit_crit_edge, label %land.lhs.true.i

if.end10.i.nilfs_segctor_notify.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_notify.exit

land.lhs.true.i:                                  ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %expires.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 39, i32 1
  %53 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %expires.i, align 4
  %sub.i = sub i32 %52, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp13.i = icmp slt i32 %sub.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %land.lhs.true.i.nilfs_segctor_notify.exit_crit_edge

land.lhs.true.i.nilfs_segctor_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_notify.exit

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @add_timer(ptr noundef %sc_timer.i) #9
  br label %nilfs_segctor_notify.exit

nilfs_segctor_notify.exit:                        ; preds = %if.then14.i, %land.lhs.true.i.nilfs_segctor_notify.exit_crit_edge, %if.end10.i.nilfs_segctor_notify.exit_crit_edge, %nilfs_segctor_wakeup.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_discard_segments(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_clear_shadow_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_attach_log_writer(ptr noundef %sb, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_writer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nilfs_detach_log_writer(ptr noundef %sb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 504) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %nilfs_segctor_new.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sb, ptr %call7.i.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !259
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !222

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.nilfs_get_root.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !221

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.nilfs_get_root.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_get_root.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %nilfs_get_root.exit.i

nilfs_get_root.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.nilfs_get_root.exit.i_crit_edge
  %sc_root.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %root, ptr %sc_root.i, align 4
  %sc_wait_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 28
  tail call void @__init_waitqueue_head(ptr noundef %sc_wait_request.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @nilfs_segctor_new.__key) #9
  %sc_wait_daemon.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %sc_wait_daemon.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @nilfs_segctor_new.__key.63) #9
  %sc_wait_task.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 30
  tail call void @__init_waitqueue_head(ptr noundef %sc_wait_task.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @nilfs_segctor_new.__key.65) #9
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %sc_state_lock.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @nilfs_segctor_new.__key.67, i16 noundef signext 3) #9
  %sc_dirty_files.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %sc_dirty_files.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sc_dirty_files.i, ptr %sc_dirty_files.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sc_dirty_files.i, ptr %prev.i.i, align 8
  %sc_segbufs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sc_segbufs.i, ptr %sc_segbufs.i, align 8
  %prev.i62.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %prev.i62.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sc_segbufs.i, ptr %prev.i62.i, align 4
  %sc_write_logs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 13
  %15 = ptrtoint ptr %sc_write_logs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %sc_write_logs.i, ptr %sc_write_logs.i, align 8
  %prev.i63.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %prev.i63.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sc_write_logs.i, ptr %prev.i63.i, align 4
  %sc_gc_inodes.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %sc_gc_inodes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %sc_gc_inodes.i, ptr %sc_gc_inodes.i, align 4
  %prev.i64.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i64.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sc_gc_inodes.i, ptr %prev.i64.i, align 8
  %sc_iput_queue.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %sc_iput_queue.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %sc_iput_queue.i, ptr %sc_iput_queue.i, align 4
  %prev.i65.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i65.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sc_iput_queue.i, ptr %prev.i65.i, align 8
  %sc_iput_work.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %sc_iput_work.i, i32 noundef 0) #9
  %21 = ptrtoint ptr %sc_iput_work.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %sc_iput_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @nilfs_segctor_new.__key.69, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry15.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %entry15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry15.i, ptr %entry15.i, align 8
  %prev.i66.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i66.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry15.i, ptr %prev.i66.i, align 4
  %func.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nilfs_iput_work_func, ptr %func.i, align 8
  %sc_timer.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 39
  tail call void @init_timer_key(ptr noundef %sc_timer.i, ptr noundef nonnull @nilfs_construction_timeout, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef nonnull @nilfs_segctor_new.__key.71) #9
  %sc_interval.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 35
  %25 = ptrtoint ptr %sc_interval.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 500, ptr %sc_interval.i, align 4
  %sc_mjcp_freq.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 36
  %26 = ptrtoint ptr %sc_mjcp_freq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3000, ptr %sc_mjcp_freq.i, align 8
  %sc_watermark.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %call7.i.i.i, i32 0, i32 38
  %27 = ptrtoint ptr %sc_watermark.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3600, ptr %sc_watermark.i, align 8
  %ns_interval.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 42
  %28 = ptrtoint ptr %ns_interval.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ns_interval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not.i = icmp eq i32 %29, 0
  br i1 %tobool22.not.i, label %nilfs_get_root.exit.i.if.end26.i_crit_edge, label %if.then23.i

nilfs_get_root.exit.i.if.end26.i_crit_edge:       ; preds = %nilfs_get_root.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then23.i:                                      ; preds = %nilfs_get_root.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %29, 100
  %30 = ptrtoint ptr %sc_interval.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i, ptr %sc_interval.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %nilfs_get_root.exit.i.if.end26.i_crit_edge
  %ns_watermark.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 43
  %31 = ptrtoint ptr %ns_watermark.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ns_watermark.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool27.not.i = icmp eq i32 %32, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end5_crit_edge, label %if.then28.i

if.end26.i.if.end5_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %sc_watermark.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sc_watermark.i, align 8
  br label %if.end5

nilfs_segctor_new.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ns_writer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ns_writer, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.then28.i, %if.end26.i.if.end5_crit_edge
  %35 = ptrtoint ptr %ns_writer to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %ns_writer, align 8
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns_bdev, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bd_inode, align 4
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 30
  %40 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_wb.i, align 4
  %tobool.not.i23 = icmp eq ptr %41, null
  br i1 %tobool.not.i23, label %if.then.i, label %if.end5.inode_attach_wb.exit_crit_edge

if.end5.inode_attach_wb.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_attach_wb.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__inode_attach_wb(ptr noundef %39, ptr noundef null) #9
  br label %inode_attach_wb.exit

inode_attach_wb.exit:                             ; preds = %if.then.i, %if.end5.inode_attach_wb.exit_crit_edge
  %42 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ns_writer, align 8
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @nilfs_segctor_thread, ptr noundef %43, i32 noundef -1, ptr noundef nonnull @.str.73) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nilfs_segctor_start_thread.exit, label %do.body7.i

do.body7.i:                                       ; preds = %inode_attach_wb.exit
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 2623) #9
  %sc_task.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %43, i32 0, i32 41
  %44 = ptrtoint ptr %sc_task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc_task.i, align 8
  %cmp.not.i = icmp eq ptr %45, null
  br i1 %cmp.not.i, label %if.end12.i, label %do.body7.i.cleanup_crit_edge

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %do.body7.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %46 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %sc_wait_task.i25 = getelementptr inbounds %struct.nilfs_sc_info, ptr %43, i32 0, i32 30
  %call1335.i = call i32 @prepare_to_wait_event(ptr noundef %sc_wait_task.i25, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %47 = ptrtoint ptr %sc_task.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sc_task.i, align 8
  %cmp15.not36.i = icmp eq ptr %48, null
  br i1 %cmp15.not36.i, label %if.end12.i.cleanup.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end12.i.cleanup.i_crit_edge:                   ; preds = %if.end12.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end12.i.cleanup.i_crit_edge
  call void @schedule() #9
  %call13.i = call i32 @prepare_to_wait_event(ptr noundef %sc_wait_task.i25, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %49 = ptrtoint ptr %sc_task.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sc_task.i, align 8
  %cmp15.not.i = icmp eq ptr %50, null
  br i1 %cmp15.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %sc_wait_task.i25, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %cleanup

nilfs_segctor_start_thread.exit:                  ; preds = %inode_attach_wb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %call.i to i32
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %53, ptr noundef nonnull @.str.74, i32 noundef %51) #9
  %54 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ns_writer, align 8
  tail call void @kfree(ptr noundef %55) #9
  %56 = ptrtoint ptr %ns_writer to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %ns_writer, align 8
  br label %cleanup

cleanup:                                          ; preds = %nilfs_segctor_start_thread.exit, %for.end.i, %do.body7.i.cleanup_crit_edge, %nilfs_segctor_new.exit
  %retval.0 = phi i32 [ -12, %nilfs_segctor_new.exit ], [ %51, %nilfs_segctor_start_thread.exit ], [ 0, %do.body7.i.cleanup_crit_edge ], [ 0, %for.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_detach_log_writer(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %ti.i.i = alloca %struct.nilfs_transaction_info, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %garbage_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %garbage_list) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %garbage_list, i32 0, i32 1
  %3 = ptrtoint ptr %garbage_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %garbage_list, ptr %garbage_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %garbage_list, ptr %2, align 4
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 28
  call void @down_write(ptr noundef %ns_segctor_sem) #9
  %ns_writer = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %ns_writer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns_writer, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %ns_segctor_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %10, i32 0, i32 28
  call void @up_write(ptr noundef %ns_segctor_sem.i) #9
  %sc_state_lock.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 25
  call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %sc_state.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 26
  %11 = ptrtoint ptr %sc_state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sc_state.i.i, align 8
  %or.i.i = or i32 %12, 1
  store i32 %or.i.i, ptr %sc_state.i.i, align 8
  %sc_task.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 41
  %13 = ptrtoint ptr %sc_task.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_task.i.i, align 8
  %tobool.not24.i.i = icmp eq ptr %14, null
  br i1 %tobool.not24.i.i, label %if.then.nilfs_segctor_kill_thread.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then.nilfs_segctor_kill_thread.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_kill_thread.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then
  %sc_wait_daemon.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 29
  %sc_wait_task.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 30
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end10.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  call void @__wake_up(ptr noundef %sc_wait_daemon.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 2636) #9
  %15 = ptrtoint ptr %sc_task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc_task.i.i, align 8
  %cmp.i.i = icmp eq ptr %16, null
  br i1 %cmp.i.i, label %while.body.i.i.do.end10.i.i_crit_edge, label %if.end.i.i

while.body.i.i.do.end10.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #9
  %17 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #9
  %call22.i.i = call i32 @prepare_to_wait_event(ptr noundef %sc_wait_task.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #9
  %18 = ptrtoint ptr %sc_task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_task.i.i, align 8
  %cmp623.i.i = icmp eq ptr %19, null
  br i1 %cmp623.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.cleanup.i.i_crit_edge

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  br label %cleanup.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end.i.i.cleanup.i.i_crit_edge
  call void @schedule() #9
  %call.i.i = call i32 @prepare_to_wait_event(ptr noundef %sc_wait_task.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #9
  %20 = ptrtoint ptr %sc_task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_task.i.i, align 8
  %cmp6.i.i = icmp eq ptr %21, null
  br i1 %cmp6.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %sc_wait_task.i.i, ptr noundef nonnull %__wq_entry.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #9
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %for.end.i.i, %while.body.i.i.do.end10.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %sc_state_lock.i) #9
  %22 = ptrtoint ptr %sc_task.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_task.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %do.end10.i.i.nilfs_segctor_kill_thread.exit.i_crit_edge, label %do.end10.i.i.while.body.i.i_crit_edge

do.end10.i.i.while.body.i.i_crit_edge:            ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

do.end10.i.i.nilfs_segctor_kill_thread.exit.i_crit_edge: ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_kill_thread.exit.i

nilfs_segctor_kill_thread.exit.i:                 ; preds = %do.end10.i.i.nilfs_segctor_kill_thread.exit.i_crit_edge, %if.then.nilfs_segctor_kill_thread.exit.i_crit_edge
  %24 = ptrtoint ptr %sc_state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sc_state.i.i, align 8
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %nilfs_segctor_kill_thread.exit.i.lor.end.i_crit_edge

nilfs_segctor_kill_thread.exit.i.lor.end.i_crit_edge: ; preds = %nilfs_segctor_kill_thread.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %nilfs_segctor_kill_thread.exit.i
  %sc_flush_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 27
  %26 = ptrtoint ptr %sc_flush_request.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sc_flush_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %lor.rhs.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %sc_seq_request.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 31
  %28 = ptrtoint ptr %sc_seq_request.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sc_seq_request.i, align 4
  %sc_seq_done.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 33
  %30 = ptrtoint ptr %sc_seq_done.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sc_seq_done.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i = icmp eq i32 %29, %31
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false.i.lor.end.i_crit_edge, %nilfs_segctor_kill_thread.exit.i.lor.end.i_crit_edge
  %32 = phi i1 [ false, %lor.lhs.false.i.lor.end.i_crit_edge ], [ false, %nilfs_segctor_kill_thread.exit.i.lor.end.i_crit_edge ], [ %cmp.i, %lor.rhs.i ]
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock.i) #9
  %sc_iput_work.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 6
  %call.i = call zeroext i1 @flush_work(ptr noundef %sc_iput_work.i) #9
  %not.call.i = xor i1 %call.i, true
  %tobool3.not.i = select i1 %not.call.i, i1 %32, i1 false
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.end.i.do.body.i.i.preheader_crit_edge

lor.end.i.do.body.i.i.preheader_crit_edge:        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.preheader

lor.lhs.false4.i:                                 ; preds = %lor.end.i
  %call5.i = call fastcc i32 @nilfs_segctor_confirm(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.do.body.i.i.preheader_crit_edge, label %lor.lhs.false4.i.if.end8.i_crit_edge

lor.lhs.false4.i.if.end8.i_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

lor.lhs.false4.i.do.body.i.i.preheader_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %lor.lhs.false4.i.do.body.i.i.preheader_crit_edge, %lor.end.i.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %nilfs_transaction_unlock.exit.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %retrycount.0.i.i = phi i32 [ %dec.i.i, %nilfs_transaction_unlock.exit.i.i.do.body.i.i_crit_edge ], [ 3, %do.body.i.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti.i.i) #9
  %33 = call ptr @memset(ptr %ti.i.i, i32 255, i32 12)
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %6, align 8
  call fastcc void @nilfs_transaction_lock(ptr noundef %35, ptr noundef nonnull %ti.i.i, i32 noundef 0) #9
  %call.i107.i = call fastcc i32 @nilfs_segctor_construct(ptr noundef %6, i32 noundef 1) #9
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %6, align 8
  %38 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %journal_info.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 146
  %42 = ptrtoint ptr %journal_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %journal_info.i.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %cmp.i.i.i = icmp eq ptr %43, null
  br i1 %cmp.i.i.i, label %do.body.i.i.do.body3.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !222

do.body.i.i.do.body3.i.i.i_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i.i.i

lor.rhs.i.i.i:                                    ; preds = %do.body.i.i
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %47)
  %cmp1.not.i.i.i = icmp eq i32 %47, -639397125
  br i1 %cmp1.not.i.i.i, label %do.body9.i.i.i, label %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, !prof !221

lor.rhs.i.i.i.do.body3.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, %do.body.i.i.do.body3.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.body9.i.i.i:                                   ; preds = %lor.rhs.i.i.i
  %ti_count.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %43, i32 0, i32 3
  %48 = ptrtoint ptr %ti_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ti_count.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp10.not.i.i.i = icmp eq i16 %49, 0
  br i1 %cmp10.not.i.i.i, label %nilfs_transaction_unlock.exit.i.i, label %do.body19.i.i.i, !prof !221

do.body19.i.i.i:                                  ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

nilfs_transaction_unlock.exit.i.i:                ; preds = %do.body9.i.i.i
  %ns_segctor_sem.i.i.i = getelementptr inbounds %struct.the_nilfs, ptr %45, i32 0, i32 28
  call void @up_write(ptr noundef %ns_segctor_sem.i.i.i) #9
  %ti_save.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %43, i32 0, i32 1
  %50 = ptrtoint ptr %ti_save.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ti_save.i.i.i, align 4
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %journal_info30.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 146
  %54 = ptrtoint ptr %journal_info30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %journal_info30.i.i.i, align 4
  %55 = ptrtoint ptr %ti_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ti_count.i.i.i, align 2
  %conv32.i.i.i = zext i16 %56 to i32
  %ti_flags.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %43, i32 0, i32 2
  %57 = ptrtoint ptr %ti_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ti_flags.i.i.i, align 4
  %conv33.i.i.i = zext i16 %58 to i32
  call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %37, ptr noundef nonnull %43, i32 noundef %conv32.i.i.i, i32 noundef %conv33.i.i.i, i32 noundef 5) #9
  %call2.i.i = call zeroext i1 @flush_work(ptr noundef %sc_iput_work.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool.not.i108.i = icmp ne i32 %call.i107.i, 0
  %dec.i.i = add nsw i32 %retrycount.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retrycount.0.i.i)
  %cmp.i109.i = icmp ne i32 %retrycount.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i108.i, i1 %cmp.i109.i, i1 false
  br i1 %or.cond.i.i, label %nilfs_transaction_unlock.exit.i.i.do.body.i.i_crit_edge, label %nilfs_transaction_unlock.exit.i.i.if.end8.i_crit_edge

nilfs_transaction_unlock.exit.i.i.if.end8.i_crit_edge: ; preds = %nilfs_transaction_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

nilfs_transaction_unlock.exit.i.i.do.body.i.i_crit_edge: ; preds = %nilfs_transaction_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.end8.i:                                        ; preds = %nilfs_transaction_unlock.exit.i.i.if.end8.i_crit_edge, %lor.lhs.false4.i.if.end8.i_crit_edge
  %sc_dirty_files.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 3
  %59 = ptrtoint ptr %sc_dirty_files.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %sc_dirty_files.i, align 4
  %cmp.i110.not.i = icmp eq ptr %60, %sc_dirty_files.i
  br i1 %cmp.i110.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then11.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %62, ptr noundef nonnull @.str.77) #9
  call fastcc void @nilfs_dispose_list(ptr noundef %10, ptr noundef %sc_dirty_files.i, i32 noundef 1) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end14.i_crit_edge
  %sc_iput_queue.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 5
  %63 = ptrtoint ptr %sc_iput_queue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %sc_iput_queue.i, align 4
  %cmp.i111.not.i = icmp eq ptr %64, %sc_iput_queue.i
  br i1 %cmp.i111.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then17.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %66, ptr noundef nonnull @.str.78) #9
  call fastcc void @nilfs_dispose_list(ptr noundef %10, ptr noundef %sc_iput_queue.i, i32 noundef 1) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %sc_segbufs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 12
  %67 = ptrtoint ptr %sc_segbufs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %sc_segbufs.i, align 4
  %cmp.i113.not.i = icmp eq ptr %68, %sc_segbufs.i
  br i1 %cmp.i113.not.i, label %if.end20.i.if.end38.i_crit_edge, label %do.end.i, !prof !221

if.end20.i.if.end38.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2741, i32 noundef 9, ptr noundef null) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end.i, %if.end20.i.if.end38.i_crit_edge
  %sc_write_logs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 13
  %69 = ptrtoint ptr %sc_write_logs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %sc_write_logs.i, align 4
  %cmp.i115.not.i = icmp eq ptr %70, %sc_write_logs.i
  br i1 %cmp.i115.not.i, label %if.end38.i.nilfs_segctor_destroy.exit_crit_edge, label %do.end65.i, !prof !221

if.end38.i.nilfs_segctor_destroy.exit_crit_edge:  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_destroy.exit

do.end65.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2742, i32 noundef 9, ptr noundef null) #9
  br label %nilfs_segctor_destroy.exit

nilfs_segctor_destroy.exit:                       ; preds = %do.end65.i, %if.end38.i.nilfs_segctor_destroy.exit_crit_edge
  %sc_root.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 1
  %71 = ptrtoint ptr %sc_root.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sc_root.i, align 4
  call void @nilfs_put_root(ptr noundef %72) #9
  call void @down_write(ptr noundef %ns_segctor_sem.i) #9
  %sc_timer.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %6, i32 0, i32 39
  %call80.i = call i32 @del_timer_sync(ptr noundef %sc_timer.i) #9
  call void @kfree(ptr noundef %6) #9
  %73 = ptrtoint ptr %ns_writer to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %ns_writer, align 8
  br label %if.end

if.end:                                           ; preds = %nilfs_segctor_destroy.exit, %entry.if.end_crit_edge
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 35
  call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #9
  %ns_dirty_files = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 34
  %74 = ptrtoint ptr %ns_dirty_files to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %ns_dirty_files, align 4
  %cmp.i19.not = icmp eq ptr %75, %ns_dirty_files
  br i1 %cmp.i19.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %76 = ptrtoint ptr %ns_dirty_files to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %ns_dirty_files, align 4
  %cmp.i.not.i = icmp eq ptr %77, %ns_dirty_files
  br i1 %cmp.i.not.i, label %if.then4.list_splice_init.exit_crit_edge, label %if.then.i

if.then4.list_splice_init.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %garbage_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %garbage_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 34, i32 1
  %80 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %garbage_list, ptr %prev3.i.i, align 4
  store ptr %77, ptr %garbage_list, align 4
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %79, ptr %81, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev6.i.i, align 4
  %85 = ptrtoint ptr %ns_dirty_files to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %ns_dirty_files, ptr %ns_dirty_files, align 4
  store ptr %ns_dirty_files, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.then4.list_splice_init.exit_crit_edge
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.3) #9
  br label %if.end6

if.end6:                                          ; preds = %list_splice_init.exit, %if.end.if.end6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  call void @up_write(ptr noundef %ns_segctor_sem) #9
  call fastcc void @nilfs_dispose_list(ptr noundef %1, ptr noundef nonnull %garbage_list, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %garbage_list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_dispose_list(ptr noundef %nilfs, ptr noundef %head, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  %ivec = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ivec) #9
  %0 = call ptr @memset(ptr %ivec, i32 255, i32 64)
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head, align 4
  %cmp.i.not70 = icmp eq ptr %2, %head
  br i1 %cmp.i.not70, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool8.not = icmp eq i32 %force, 0
  %ns_dirty_files = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 34
  %prev.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 34, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body34.while.cond.loopexit_crit_edge, %for.end.while.cond.loopexit_crit_edge, %for.end.thread
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %4, %head
  br i1 %cmp.i.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #9
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head, align 4
  %cmp.not60 = icmp eq ptr %6, %head
  br i1 %cmp.not60, label %for.end.thread, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.end.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  br label %while.cond.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %.pn.in63 = phi ptr [ %.pn65, %for.inc.for.body_crit_edge ], [ %6, %while.body.for.body_crit_edge ]
  %nv.161 = phi i32 [ %nv.2, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %ii.064 = getelementptr i8, ptr %.pn.in63, i32 -572
  %7 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn65 = load ptr, ptr %.pn.in63, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in63) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %.pn.in63, ptr %.pn.in63, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in63, ptr %prev.i3.i, align 4
  br i1 %tobool8.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del_init.exit
  %i_bh = getelementptr i8, ptr %.pn.in63, i32 8
  %16 = ptrtoint ptr %i_bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_bh, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.then.if.end22_crit_edge, label %brelse.exit, !prof !221

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

brelse.exit:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %17) #9
  %18 = ptrtoint ptr %i_bh to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i_bh, align 4
  br label %if.end22

if.else:                                          ; preds = %list_del_init.exit
  %i_state = getelementptr i8, ptr %.pn.in63, i32 -568
  %19 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_state, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.else.if.end22_crit_edge, label %if.then18

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %if.else
  tail call void @_set_bit(i32 noundef 2, ptr noundef %i_state) #9
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in63, ptr noundef %23, ptr noundef %ns_dirty_files) #9
  br i1 %call.i.i56, label %if.end.i.i57, label %if.then18.for.inc_crit_edge

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i57:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn.in63, ptr %prev.i, align 4
  %25 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ns_dirty_files, ptr %.pn.in63, align 4
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in63, ptr %23, align 4
  br label %for.inc

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %brelse.exit, %if.then.if.end22_crit_edge
  %inc = add i32 %nv.161, 1
  %arrayidx = getelementptr [16 x ptr], ptr %ivec, i32 0, i32 %nv.161
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ii.064, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp23 = icmp eq i32 %inc, 16
  br i1 %cmp23, label %for.end.thread73, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.end.thread73:                                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  br label %for.body34.preheader

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %if.end.i.i57, %if.then18.for.inc_crit_edge
  %nv.2 = phi i32 [ %inc, %if.end22.for.inc_crit_edge ], [ %nv.161, %if.then18.for.inc_crit_edge ], [ %nv.161, %if.end.i.i57 ]
  %cmp.not = icmp eq ptr %.pn65, %head
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nv.2)
  %cmp33.not67 = icmp eq i32 %nv.2, 0
  br i1 %cmp33.not67, label %for.end.while.cond.loopexit_crit_edge, label %for.end.for.body34.preheader_crit_edge

for.end.for.body34.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

for.end.while.cond.loopexit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

for.body34.preheader:                             ; preds = %for.end.for.body34.preheader_crit_edge, %for.end.thread73
  %nv.468.ph = phi i32 [ %nv.2, %for.end.for.body34.preheader_crit_edge ], [ 16, %for.end.thread73 ]
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.preheader
  %pii.069 = phi ptr [ %incdec.ptr, %for.body34.for.body34_crit_edge ], [ %ivec, %for.body34.preheader ]
  %nv.468 = phi i32 [ %dec, %for.body34.for.body34_crit_edge ], [ %nv.468.ph, %for.body34.preheader ]
  %29 = ptrtoint ptr %pii.069 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pii.069, align 4
  %vfs_inode = getelementptr inbounds %struct.nilfs_inode_info, ptr %30, i32 0, i32 11
  tail call void @iput(ptr noundef %vfs_inode) #9
  %incdec.ptr = getelementptr ptr, ptr %pii.069, i32 1
  %dec = add i32 %nv.468, -1
  %cmp33.not = icmp eq i32 %dec, 0
  br i1 %cmp33.not, label %for.body34.while.cond.loopexit_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.body34.while.cond.loopexit_crit_edge:         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ivec) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_collection_stage_transition(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sci = getelementptr inbounds %struct.trace_event_raw_nilfs2_collection_stage_transition, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sci, align 4
  %stage = getelementptr inbounds %struct.trace_event_raw_nilfs2_collection_stage_transition, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stage, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_nilfs2_collection_stage_transition.symbols) #9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, ptr noundef %3, ptr noundef %call1) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_transaction_transition(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sb = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb, align 4
  %ti = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ti, align 4
  %count = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_nilfs2_transaction_transition, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %11, ptr noundef nonnull @trace_raw_output_nilfs2_transaction_transition.symbols) #9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %call2) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_segment_usage_check(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sufile = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sufile, align 8
  %segnum = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %segnum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %segnum, align 8
  %cnt = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_check, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %3, i64 noundef %5, i32 noundef %7) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_segment_usage_allocated(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sufile = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_allocated, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sufile, align 8
  %segnum = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_allocated, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %segnum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %segnum, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, ptr noundef %3, i64 noundef %5) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_segment_usage_freed(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sufile = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_freed, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sufile, align 8
  %segnum = getelementptr inbounds %struct.trace_event_raw_nilfs2_segment_usage_freed, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %segnum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %segnum, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, ptr noundef %3, i64 noundef %5) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_mdt_insert_new_block(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %inode = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %ino = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %block = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_insert_new_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, ptr noundef %3, i32 noundef %5, i32 noundef %7) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nilfs2_mdt_submit_block(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %inode = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %ino = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %blkoff = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %blkoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blkoff, align 4
  %mode = getelementptr inbounds %struct.trace_event_raw_nilfs2_mdt_submit_block, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.46, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_test_metadata_dirty(ptr nocapture noundef readonly %nilfs, ptr nocapture noundef readonly %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 4
  %0 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifile, align 4
  %call = tail call i32 @nilfs_mdt_fetch_dirty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %2 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_cpfile, align 8
  %call1 = tail call i32 @nilfs_mdt_fetch_dirty(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %inc4 = select i1 %tobool.not, i32 2, i32 1
  %ret.1 = select i1 %tobool2.not, i32 %spec.select, i32 %inc4
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %4 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_sufile, align 4
  %call6 = tail call i32 @nilfs_mdt_fetch_dirty(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp ne i32 %call6, 0
  %inc9 = zext i1 %tobool7.not to i32
  %ret.2 = add nuw nsw i32 %ret.1, %inc9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool11.not = icmp eq i32 %ret.2, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 146
  %10 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %journal_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %11, null
  br i1 %cmp.i.i, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.i.i

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %13)
  %cmp1.not.i.i = icmp eq i32 %13, -639397125
  br i1 %cmp1.not.i.i, label %nilfs_doing_gc.exit, label %lor.lhs.false.i.i.if.end18_crit_edge

lor.lhs.false.i.i.if.end18_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

nilfs_doing_gc.exit:                              ; preds = %lor.lhs.false.i.i
  %ti_flags.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %ti_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ti_flags.i.i, align 4
  %16 = and i16 %15, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not = icmp eq i16 %16, 0
  br i1 %tobool13.not, label %nilfs_doing_gc.exit.if.end18_crit_edge, label %nilfs_doing_gc.exit.land.lhs.true_crit_edge

nilfs_doing_gc.exit.land.lhs.true_crit_edge:      ; preds = %nilfs_doing_gc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

nilfs_doing_gc.exit.if.end18_crit_edge:           ; preds = %nilfs_doing_gc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %nilfs_doing_gc.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %17 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns_dat, align 4
  %call14 = tail call i32 @nilfs_mdt_fetch_dirty(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp ne i32 %call14, 0
  %inc17 = zext i1 %tobool15.not to i32
  %spec.select26 = add nuw nsw i32 %ret.2, %inc17
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %nilfs_doing_gc.exit.if.end18_crit_edge, %lor.lhs.false.i.i.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %ret.3 = phi i32 [ 0, %nilfs_doing_gc.exit.if.end18_crit_edge ], [ %spec.select26, %land.lhs.true ], [ 0, %lor.lhs.false.i.i.if.end18_crit_edge ], [ 0, %lor.lhs.false.if.end18_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_segctor_abort_construction(ptr noundef %sci, ptr noundef %nilfs, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %logs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %logs) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %logs, i32 0, i32 1
  %1 = ptrtoint ptr %logs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %logs, ptr %logs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %logs, ptr %0, align 4
  %sc_write_logs = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 13
  %3 = ptrtoint ptr %sc_write_logs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sc_write_logs, align 4
  %cmp.i.not.i = icmp eq ptr %4, %sc_write_logs
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev2.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %logs, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %logs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %logs, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %logs, ptr %6, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %0, align 4
  %11 = ptrtoint ptr %sc_write_logs to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sc_write_logs, ptr %sc_write_logs, align 4
  store ptr %sc_write_logs, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %call = call i32 @nilfs_wait_on_logs(ptr noundef nonnull %logs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %err, i32 %call
  %12 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %logs, align 4
  %cmp.i.not.i34 = icmp eq ptr %13, %logs
  br i1 %cmp.i.not.i34, label %list_splice_tail_init.exit.nilfs_abort_logs.exit_crit_edge, label %list_splice_tail_init.exit.for.body.i_crit_edge

list_splice_tail_init.exit.for.body.i_crit_edge:  ; preds = %list_splice_tail_init.exit
  br label %for.body.i

list_splice_tail_init.exit.nilfs_abort_logs.exit_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_abort_logs.exit

for.body.i:                                       ; preds = %for.inc52.i.for.body.i_crit_edge, %list_splice_tail_init.exit.for.body.i_crit_edge
  %.pn111.i = phi ptr [ %.pn.i, %for.inc52.i.for.body.i_crit_edge ], [ %13, %list_splice_tail_init.exit.for.body.i_crit_edge ]
  %bd_page.0110.i = phi ptr [ %bd_page.3.i, %for.inc52.i.for.body.i_crit_edge ], [ null, %list_splice_tail_init.exit.for.body.i_crit_edge ]
  %fs_page.0109.i = phi ptr [ %fs_page.197.i, %for.inc52.i.for.body.i_crit_edge ], [ null, %list_splice_tail_init.exit.for.body.i_crit_edge ]
  %sb_segsum_buffers.i = getelementptr i8, ptr %.pn111.i, i32 112
  %14 = ptrtoint ptr %sb_segsum_buffers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn9398.i = load ptr, ptr %sb_segsum_buffers.i, align 4
  %cmp7.not99.i = icmp eq ptr %.pn9398.i, %sb_segsum_buffers.i
  br i1 %cmp7.not99.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body9.i_crit_edge

for.body.i.for.body9.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body9.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %for.body.i.for.body9.i_crit_edge
  %.pn93101.i = phi ptr [ %.pn93.i, %for.inc.i.for.body9.i_crit_edge ], [ %.pn9398.i, %for.body.i.for.body9.i_crit_edge ]
  %bd_page.1100.i = phi ptr [ %bd_page.2.i, %for.inc.i.for.body9.i_crit_edge ], [ %bd_page.0110.i, %for.body.i.for.body9.i_crit_edge ]
  %b_page.i = getelementptr i8, ptr %.pn93101.i, i32 -36
  %15 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_page.i, align 8
  %cmp10.not.i = icmp eq ptr %16, %bd_page.1100.i
  br i1 %cmp10.not.i, label %for.body9.i.for.inc.i_crit_edge, label %if.then11.i

for.body9.i.for.inc.i_crit_edge:                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body9.i
  %tobool12.not.i = icmp eq ptr %bd_page.1100.i, null
  br i1 %tobool12.not.i, label %if.then11.i.if.end14.i_crit_edge, label %if.then13.i

if.then11.i.if.end14.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @end_page_writeback(ptr noundef nonnull %bd_page.1100.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.then11.i.if.end14.i_crit_edge
  %17 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_page.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %for.body9.i.for.inc.i_crit_edge
  %bd_page.2.i = phi ptr [ %18, %if.end14.i ], [ %bd_page.1100.i, %for.body9.i.for.inc.i_crit_edge ]
  %19 = ptrtoint ptr %.pn93101.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn93.i = load ptr, ptr %.pn93101.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn93.i, %sb_segsum_buffers.i
  br i1 %cmp7.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %bd_page.1.lcssa.i = phi ptr [ %bd_page.0110.i, %for.body.i.for.end.i_crit_edge ], [ %bd_page.2.i, %for.inc.i.for.end.i_crit_edge ]
  %sb_payload_buffers.i = getelementptr i8, ptr %.pn111.i, i32 120
  %20 = ptrtoint ptr %sb_payload_buffers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn94102.i = load ptr, ptr %sb_payload_buffers.i, align 4
  %cmp29.not103.i = icmp eq ptr %.pn94102.i, %sb_payload_buffers.i
  br i1 %cmp29.not103.i, label %for.end.i.for.inc52.i_crit_edge, label %for.body31.lr.ph.i

for.end.i.for.inc52.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

for.body31.lr.ph.i:                               ; preds = %for.end.i
  %sb_super_root.i = getelementptr i8, ptr %.pn111.i, i32 128
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc45.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %.pn94105.i = phi ptr [ %.pn94102.i, %for.body31.lr.ph.i ], [ %.pn94.i, %for.inc45.i.for.body31.i_crit_edge ]
  %fs_page.1104.i = phi ptr [ %fs_page.0109.i, %for.body31.lr.ph.i ], [ %fs_page.2.i, %for.inc45.i.for.body31.i_crit_edge ]
  %bh.1.i = getelementptr i8, ptr %.pn94105.i, i32 -44
  call void @_clear_bit(i32 noundef 7, ptr noundef %bh.1.i) #9
  %21 = ptrtoint ptr %sb_super_root.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sb_super_root.i, align 4
  %cmp32.i = icmp eq ptr %bh.1.i, %22
  %b_page34.i = getelementptr i8, ptr %.pn94105.i, i32 -36
  %23 = ptrtoint ptr %b_page34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_page34.i, align 8
  br i1 %cmp32.i, label %if.then33.i, label %if.end39.i

if.then33.i:                                      ; preds = %for.body31.i
  %cmp35.not.i = icmp eq ptr %24, %bd_page.1.lcssa.i
  br i1 %cmp35.not.i, label %if.then33.i.for.inc52.i_crit_edge, label %if.then36.i

if.then33.i.for.inc52.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

if.then36.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @end_page_writeback(ptr noundef %bd_page.1.lcssa.i) #9
  %25 = ptrtoint ptr %b_page34.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_page34.i, align 8
  br label %for.inc52.i

if.end39.i:                                       ; preds = %for.body31.i
  %cmp41.not.i = icmp eq ptr %24, %fs_page.1104.i
  br i1 %cmp41.not.i, label %if.end39.i.for.inc45.i_crit_edge, label %if.then42.i

if.end39.i.for.inc45.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nilfs_end_page_io(ptr noundef %fs_page.1104.i, i32 noundef %spec.select) #9
  %27 = ptrtoint ptr %b_page34.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_page34.i, align 8
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %if.then42.i, %if.end39.i.for.inc45.i_crit_edge
  %fs_page.2.i = phi ptr [ %28, %if.then42.i ], [ %fs_page.1104.i, %if.end39.i.for.inc45.i_crit_edge ]
  %29 = ptrtoint ptr %.pn94105.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn94.i = load ptr, ptr %.pn94105.i, align 4
  %cmp29.not.i = icmp eq ptr %.pn94.i, %sb_payload_buffers.i
  br i1 %cmp29.not.i, label %for.inc45.i.for.inc52.i_crit_edge, label %for.inc45.i.for.body31.i_crit_edge

for.inc45.i.for.body31.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

for.inc45.i.for.inc52.i_crit_edge:                ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %for.inc45.i.for.inc52.i_crit_edge, %if.then36.i, %if.then33.i.for.inc52.i_crit_edge, %for.end.i.for.inc52.i_crit_edge
  %fs_page.197.i = phi ptr [ %fs_page.1104.i, %if.then36.i ], [ %fs_page.1104.i, %if.then33.i.for.inc52.i_crit_edge ], [ %fs_page.0109.i, %for.end.i.for.inc52.i_crit_edge ], [ %fs_page.2.i, %for.inc45.i.for.inc52.i_crit_edge ]
  %bd_page.3.i = phi ptr [ %26, %if.then36.i ], [ %bd_page.1.lcssa.i, %if.then33.i.for.inc52.i_crit_edge ], [ %bd_page.1.lcssa.i, %for.end.i.for.inc52.i_crit_edge ], [ %bd_page.1.lcssa.i, %for.inc45.i.for.inc52.i_crit_edge ]
  %30 = ptrtoint ptr %.pn111.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn111.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %logs
  br i1 %cmp.not.i, label %for.end58.i, label %for.inc52.i.for.body.i_crit_edge

for.inc52.i.for.body.i_crit_edge:                 ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end58.i:                                      ; preds = %for.inc52.i
  %tobool59.not.i = icmp eq ptr %bd_page.3.i, null
  br i1 %tobool59.not.i, label %for.end58.i.if.end61.i_crit_edge, label %if.then60.i

for.end58.i.if.end61.i_crit_edge:                 ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then60.i:                                      ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @end_page_writeback(ptr noundef nonnull %bd_page.3.i) #9
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then60.i, %for.end58.i.if.end61.i_crit_edge
  call fastcc void @nilfs_end_page_io(ptr noundef %fs_page.197.i, i32 noundef %spec.select) #9
  br label %nilfs_abort_logs.exit

nilfs_abort_logs.exit:                            ; preds = %if.end61.i, %list_splice_tail_init.exit.nilfs_abort_logs.exit_crit_edge
  %sc_segbufs = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 12
  %31 = ptrtoint ptr %sc_segbufs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %sc_segbufs, align 4
  %cmp.i.not.i35 = icmp eq ptr %32, %sc_segbufs
  br i1 %cmp.i.not.i35, label %nilfs_abort_logs.exit.list_splice_tail_init.exit40_crit_edge, label %if.then.i39

nilfs_abort_logs.exit.list_splice_tail_init.exit40_crit_edge: ; preds = %nilfs_abort_logs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit40

if.then.i39:                                      ; preds = %nilfs_abort_logs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %prev2.i.i37 = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 12, i32 1
  %35 = ptrtoint ptr %prev2.i.i37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i37, align 4
  %prev3.i.i38 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i38, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %logs, ptr %36, align 4
  store ptr %36, ptr %0, align 4
  %40 = ptrtoint ptr %sc_segbufs to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %sc_segbufs, ptr %sc_segbufs, align 4
  store ptr %sc_segbufs, ptr %prev2.i.i37, align 4
  br label %list_splice_tail_init.exit40

list_splice_tail_init.exit40:                     ; preds = %if.then.i39, %nilfs_abort_logs.exit.list_splice_tail_init.exit40_crit_edge
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %41 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ns_sufile, align 4
  %43 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %logs, align 4
  %sb_segnum.i = getelementptr i8, ptr %44, i32 68
  %45 = ptrtoint ptr %sb_segnum.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %sb_segnum.i, align 8
  %sb_pseg_start.i = getelementptr i8, ptr %44, i32 100
  %47 = ptrtoint ptr %sb_pseg_start.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sb_pseg_start.i, align 8
  %sb_fseg_start.i = getelementptr i8, ptr %44, i32 84
  %49 = ptrtoint ptr %sb_fseg_start.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sb_fseg_start.i, align 8
  %sub.i = sub i64 %48, %50
  %conv.i = trunc i64 %sub.i to i32
  %call.i = call i32 @nilfs_sufile_set_segment_usage(ptr noundef %42, i64 noundef %46, i32 noundef %conv.i, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %list_splice_tail_init.exit40.if.end.i_crit_edge, label %do.end.i, !prof !221

list_splice_tail_init.exit40.if.end.i_crit_edge:  ; preds = %list_splice_tail_init.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %list_splice_tail_init.exit40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1454, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_splice_tail_init.exit40.if.end.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn78.i = load ptr, ptr %44, align 4
  %cmp.not79.i = icmp eq ptr %.pn78.i, %logs
  br i1 %cmp.not79.i, label %if.end.i.nilfs_cancel_segusage.exit_crit_edge, label %if.end.i.for.body.i41_crit_edge

if.end.i.for.body.i41_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i41

if.end.i.nilfs_cancel_segusage.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cancel_segusage.exit

for.body.i41:                                     ; preds = %if.end54.i.for.body.i41_crit_edge, %if.end.i.for.body.i41_crit_edge
  %.pn80.i = phi ptr [ %.pn.i42, %if.end54.i.for.body.i41_crit_edge ], [ %.pn78.i, %if.end.i.for.body.i41_crit_edge ]
  %sb_segnum29.i = getelementptr i8, ptr %.pn80.i, i32 68
  %52 = ptrtoint ptr %sb_segnum29.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %sb_segnum29.i, align 8
  %call30.i = call i32 @nilfs_sufile_set_segment_usage(ptr noundef %42, i64 noundef %53, i32 noundef 0, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool32.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool32.not.i, label %for.body.i41.if.end54.i_crit_edge, label %do.end48.i, !prof !221

for.body.i41.if.end54.i_crit_edge:                ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

do.end48.i:                                       ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef null) #9
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end48.i, %for.body.i41.if.end54.i_crit_edge
  %54 = ptrtoint ptr %.pn80.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i42 = load ptr, ptr %.pn80.i, align 4
  %cmp.not.i43 = icmp eq ptr %.pn.i42, %logs
  br i1 %cmp.not.i43, label %if.end54.i.nilfs_cancel_segusage.exit_crit_edge, label %if.end54.i.for.body.i41_crit_edge

if.end54.i.for.body.i41_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i41

if.end54.i.nilfs_cancel_segusage.exit_crit_edge:  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cancel_segusage.exit

nilfs_cancel_segusage.exit:                       ; preds = %if.end54.i.nilfs_cancel_segusage.exit_crit_edge, %if.end.i.nilfs_cancel_segusage.exit_crit_edge
  %55 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ns_sufile, align 4
  %57 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %logs, align 4
  %ns_nextnum.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 15
  %59 = ptrtoint ptr %ns_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ns_nextnum.i, align 8
  %sb_nextnum.i = getelementptr i8, ptr %58, i32 76
  %61 = ptrtoint ptr %sb_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sb_nextnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp.not.i45 = icmp eq i64 %60, %62
  br i1 %cmp.not.i45, label %nilfs_cancel_segusage.exit.if.end23.i_crit_edge, label %if.then.i47

nilfs_cancel_segusage.exit.if.end23.i_crit_edge:  ; preds = %nilfs_cancel_segusage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then.i47:                                      ; preds = %nilfs_cancel_segusage.exit
  %call.i.i = call i32 @nilfs_sufile_update(ptr noundef %56, i64 noundef %62, i32 noundef 0, ptr noundef nonnull @nilfs_sufile_do_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i46 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i46, label %if.then.i47.if.end23.i_crit_edge, label %do.end.i48, !prof !221

if.then.i47.if.end23.i_crit_edge:                 ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.end.i48:                                       ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1399, i32 noundef 9, ptr noundef null) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i48, %if.then.i47.if.end23.i_crit_edge, %nilfs_cancel_segusage.exit.if.end23.i_crit_edge
  %sb_err.i = getelementptr i8, ptr %58, i32 136
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sb_err.i, i32 noundef 4) #9
  %63 = ptrtoint ptr %sb_err.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %sb_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool25.not.i = icmp eq i32 %64, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end31.i_crit_edge, label %if.then26.i

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end23.i
  %sb_pseg_start.i49 = getelementptr i8, ptr %58, i32 100
  %65 = ptrtoint ptr %sb_pseg_start.i49 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %sb_pseg_start.i49, align 8
  %sb_fseg_start.i50 = getelementptr i8, ptr %58, i32 84
  %67 = ptrtoint ptr %sb_fseg_start.i50 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sb_fseg_start.i50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %68)
  %cmp27.not.i = icmp eq i64 %66, %68
  br i1 %cmp27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %sb_fseg_end.i = getelementptr i8, ptr %58, i32 92
  %69 = ptrtoint ptr %sb_fseg_end.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sb_fseg_end.i, align 8
  %sub.i.i = sub i64 %70, %68
  %71 = trunc i64 %sub.i.i to i32
  %conv.i.i = add i32 %71, 1
  %ns_pseg_offset.i.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 16
  %72 = ptrtoint ptr %ns_pseg_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i.i, ptr %ns_pseg_offset.i.i, align 8
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %nilfs) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then28.i, %if.end23.i.if.end31.i_crit_edge
  %73 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn124.i = load ptr, ptr %58, align 4
  %cmp37.not125.i = icmp eq ptr %.pn124.i, %logs
  br i1 %cmp37.not125.i, label %if.end31.i.nilfs_free_incomplete_logs.exit_crit_edge, label %if.end31.i.for.body.i51_crit_edge

if.end31.i.for.body.i51_crit_edge:                ; preds = %if.end31.i
  br label %for.body.i51

if.end31.i.nilfs_free_incomplete_logs.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_free_incomplete_logs.exit

for.body.i51:                                     ; preds = %if.end86.i.for.body.i51_crit_edge, %if.end31.i.for.body.i51_crit_edge
  %.pn127.i = phi ptr [ %.pn.i53, %if.end86.i.for.body.i51_crit_edge ], [ %.pn124.i, %if.end31.i.for.body.i51_crit_edge ]
  %.pn.in126.i = phi ptr [ %.pn127.i, %if.end86.i.for.body.i51_crit_edge ], [ %58, %if.end31.i.for.body.i51_crit_edge ]
  %sb_nextnum40.i = getelementptr i8, ptr %.pn.in126.i, i32 76
  %74 = ptrtoint ptr %sb_nextnum40.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sb_nextnum40.i, align 8
  %sb_nextnum41.i = getelementptr i8, ptr %.pn127.i, i32 76
  %76 = ptrtoint ptr %sb_nextnum41.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %sb_nextnum41.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %77)
  %cmp42.not.i = icmp eq i64 %75, %77
  br i1 %cmp42.not.i, label %for.body.i51.if.end77.i_crit_edge, label %if.then43.i

for.body.i51.if.end77.i_crit_edge:                ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then43.i:                                      ; preds = %for.body.i51
  %call.i122.i = call i32 @nilfs_sufile_update(ptr noundef %56, i64 noundef %77, i32 noundef 0, ptr noundef nonnull @nilfs_sufile_do_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool47.not.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool47.not.i, label %if.then43.i.if.end77.i_crit_edge, label %do.end63.i, !prof !221

if.then43.i.if.end77.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

do.end63.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1418, i32 noundef 9, ptr noundef null) #9
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end63.i, %if.then43.i.if.end77.i_crit_edge, %for.body.i51.if.end77.i_crit_edge
  %sb_err78.i = getelementptr i8, ptr %.pn127.i, i32 136
  %call.i.i121.i = call zeroext i1 @__kasan_check_read(ptr noundef %sb_err78.i, i32 noundef 4) #9
  %78 = ptrtoint ptr %sb_err78.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %sb_err78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool80.not.i = icmp eq i32 %79, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end86.i_crit_edge, label %land.lhs.true.i

if.end77.i.if.end86.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

land.lhs.true.i:                                  ; preds = %if.end77.i
  %sb_segnum.i52 = getelementptr i8, ptr %.pn127.i, i32 68
  %80 = ptrtoint ptr %sb_segnum.i52 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %sb_segnum.i52, align 8
  %82 = ptrtoint ptr %ns_nextnum.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ns_nextnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %83)
  %cmp82.not.i = icmp eq i64 %81, %83
  br i1 %cmp82.not.i, label %land.lhs.true.i.if.end86.i_crit_edge, label %if.then83.i

land.lhs.true.i.if.end86.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.then83.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i123.i = call i32 @nilfs_sufile_update(ptr noundef %56, i64 noundef %81, i32 noundef 0, ptr noundef nonnull @nilfs_sufile_do_set_error) #9
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %land.lhs.true.i.if.end86.i_crit_edge, %if.end77.i.if.end86.i_crit_edge
  %84 = ptrtoint ptr %.pn127.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn.i53 = load ptr, ptr %.pn127.i, align 4
  %cmp37.not.i = icmp eq ptr %.pn.i53, %logs
  br i1 %cmp37.not.i, label %if.end86.i.nilfs_free_incomplete_logs.exit_crit_edge, label %if.end86.i.for.body.i51_crit_edge

if.end86.i.for.body.i51_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i51

if.end86.i.nilfs_free_incomplete_logs.exit_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_free_incomplete_logs.exit

nilfs_free_incomplete_logs.exit:                  ; preds = %if.end86.i.nilfs_free_incomplete_logs.exit_crit_edge, %if.end31.i.nilfs_free_incomplete_logs.exit_crit_edge
  %flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16, i32 1
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %and = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %nilfs_free_incomplete_logs.exit.if.end25_crit_edge, label %if.then

nilfs_free_incomplete_logs.exit.if.end25_crit_edge: ; preds = %nilfs_free_incomplete_logs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %nilfs_free_incomplete_logs.exit
  %87 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ns_sufile, align 4
  %sc_freesegs = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 7
  %89 = ptrtoint ptr %sc_freesegs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sc_freesegs, align 8
  %sc_nfreesegs = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 8
  %91 = ptrtoint ptr %sc_nfreesegs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sc_nfreesegs, align 4
  %call.i55 = call i32 @nilfs_sufile_updatev(ptr noundef %88, ptr noundef %90, i32 noundef %92, i32 noundef 0, ptr noundef null, ptr noundef nonnull @nilfs_sufile_do_cancel_free) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool4.not = icmp eq i32 %call.i55, 0
  br i1 %tobool4.not, label %if.then.if.end25_crit_edge, label %do.end, !prof !221

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1800, i32 noundef 9, ptr noundef null) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then.if.end25_crit_edge, %nilfs_free_incomplete_logs.exit.if.end25_crit_edge
  call void @nilfs_truncate_logs(ptr noundef nonnull %logs, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %logs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_add_checksums_on_logs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_collection_stage_transition(ptr noundef %sci) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_collection_stage_transition, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nilfs2_collection_stage_transition, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !229

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !221

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !260
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_collection_stage_transition, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %sci) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !261
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !261
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !221

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nilfs2_collection_stage_transition, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nilfs2_collection_stage_transition.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nilfs2_collection_stage_transition.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 44, ptr noundef nonnull @.str.49) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !233
  %38 = tail call i32 @llvm.read_register.i32(metadata !211) #9
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
declare dso_local i32 @nilfs_ifile_get_inode_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_fetch_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_segbuf_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_segbuf_map(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_segbuf_map_cont(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_mark_dirty(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_segbuf_set_next_segnum(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_segbuf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_clear_logs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_segbuf_reset(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_scan_file(ptr noundef %sci, ptr noundef %inode, ptr nocapture noundef readonly %sc_ops) unnamed_addr #0 align 64 {
entry:
  %pvec.i = alloca %struct.pagevec, align 4
  %index.i = alloca i32, align 4
  %data_buffers = alloca %struct.list_head, align 4
  %node_buffers = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_buffers) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %data_buffers, i32 0, i32 1
  %1 = ptrtoint ptr %data_buffers to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data_buffers, ptr %data_buffers, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data_buffers, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %node_buffers) #9
  %3 = getelementptr inbounds %struct.list_head, ptr %node_buffers, i32 0, i32 1
  %4 = ptrtoint ptr %node_buffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node_buffers, ptr %node_buffers, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node_buffers, ptr %3, align 4
  %flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %entry
  %sc_segbuf_nblocks.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 14
  %8 = ptrtoint ptr %sc_segbuf_nblocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_segbuf_nblocks.i, align 8
  %sc_nblk_this_inc.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 21
  %10 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %12 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_curseg.i, align 4
  %nblocks.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %nblocks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nblocks.i, align 8
  %16 = add i32 %11, %15
  %sub.i = sub i32 %9, %16
  %add = add i32 %sub.i, 1
  %call3 = call fastcc i32 @nilfs_lookup_dirty_data_buffers(ptr noundef %inode, ptr noundef nonnull %data_buffers, i32 noundef %add, i64 noundef 0, i64 noundef 9223372036854775807)
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %sub.i)
  %cmp = icmp ugt i32 %call3, %sub.i
  br i1 %cmp, label %if.then4, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then4:                                         ; preds = %if.then
  %17 = ptrtoint ptr %sc_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_ops, align 4
  %call5 = call fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %inode, ptr noundef nonnull %data_buffers, ptr noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body11, label %if.then4.cleanup64_crit_edge, !prof !222

if.then4.cleanup64_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup64

do.body11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1051, 0\0A.popsection", ""() #9, !srcloc !262
  unreachable

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %i_btnode_cache.i = getelementptr i8, ptr %inode, i32 -360
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec.i) #9
  %19 = call ptr @memset(ptr %pvec.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #9
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %index.i, align 4
  %21 = ptrtoint ptr %pvec.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pvec.i, align 4
  %percpu_pvec_drained.i.i = getelementptr inbounds %struct.pagevec, ptr %pvec.i, i32 0, i32 1
  %22 = ptrtoint ptr %percpu_pvec_drained.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %percpu_pvec_drained.i.i, align 1
  %call.i49.i = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec.i, ptr noundef %i_btnode_cache.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not50.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not50.i, label %if.end19.nilfs_lookup_dirty_node_buffers.exit_crit_edge, label %if.end19.for.cond.preheader.i_crit_edge

if.end19.for.cond.preheader.i_crit_edge:          ; preds = %if.end19
  br label %for.cond.preheader.i

if.end19.nilfs_lookup_dirty_node_buffers.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_lookup_dirty_node_buffers.exit

for.cond.preheader.i:                             ; preds = %pagevec_release.exit.i.for.cond.preheader.i_crit_edge, %if.end19.for.cond.preheader.i_crit_edge
  %23 = ptrtoint ptr %pvec.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pvec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp47.not.i = icmp eq i8 %24, 0
  br i1 %cmp47.not.i, label %for.cond.preheader.i.pagevec_release.exit.i_crit_edge, label %for.cond.preheader.i.do.body.i_crit_edge

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  br label %do.body.i

for.cond.preheader.i.pagevec_release.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pagevec_release.exit.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.do.body.i_crit_edge ], [ 0, %for.cond.preheader.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pagevec, ptr %pvec.i, i32 0, i32 2, i32 %i.048.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i.i = icmp eq i32 %28, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !222

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.58) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !263
  unreachable

PagePrivate.exit.i:                               ; preds = %do.body.i
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %26, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i, label %do.body8.i, label %do.end13.i, !prof !222

do.body8.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 747, 0\0A.popsection", ""() #9, !srcloc !264
  unreachable

do.end13.i:                                       ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %private.i, align 4
  %34 = inttoptr i32 %33 to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.end22.i.do.body16.i_crit_edge, %do.end13.i
  %bh.0.i = phi ptr [ %34, %do.end13.i ], [ %49, %if.end22.i.do.body16.i_crit_edge ]
  %35 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %bh.0.i, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not.i = icmp eq i32 %37, 0
  br i1 %tobool18.not.i, label %do.body16.i.if.end22.i_crit_edge, label %land.lhs.true.i

do.body16.i.if.end22.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %do.body16.i
  %38 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %bh.0.i, align 4
  %40 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool20.not.i = icmp eq i32 %40, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #9
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #9, !srcloc !249
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 9
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i, ptr noundef %43, ptr noundef nonnull %node_buffers) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then21.i.if.end22.i_crit_edge

if.then21.i.if.end22.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end.i.i.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b_assoc_buffers.i, ptr %3, align 4
  %45 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %node_buffers, ptr %b_assoc_buffers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %b_assoc_buffers.i, ptr %43, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i.i.i, %if.then21.i.if.end22.i_crit_edge, %land.lhs.true.i.if.end22.i_crit_edge, %do.body16.i.if.end22.i_crit_edge
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_this_page.i, align 4
  %cmp24.not.i = icmp eq ptr %49, %34
  br i1 %cmp24.not.i, label %for.inc.i, label %if.end22.i.do.body16.i_crit_edge

if.end22.i.do.body16.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.i

for.inc.i:                                        ; preds = %if.end22.i
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %50 = ptrtoint ptr %pvec.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pvec.i, align 4
  %conv.i.i = zext i8 %51 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i.i
  br i1 %cmp.i, label %for.inc.i.do.body.i_crit_edge, label %for.end.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i, label %for.end.i.pagevec_release.exit.i_crit_edge, label %if.then.i40.i

for.end.i.pagevec_release.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pagevec_release.exit.i

if.then.i40.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pagevec_release(ptr noundef nonnull %pvec.i) #9
  br label %pagevec_release.exit.i

pagevec_release.exit.i:                           ; preds = %if.then.i40.i, %for.end.i.pagevec_release.exit.i_crit_edge, %for.cond.preheader.i.pagevec_release.exit.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 759, i32 noundef 0) #9
  %call.i41.i = call i32 @__cond_resched() #9
  %call.i.i = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec.i, ptr noundef %i_btnode_cache.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 0) #9
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %pagevec_release.exit.i.nilfs_lookup_dirty_node_buffers.exit_crit_edge, label %pagevec_release.exit.i.for.cond.preheader.i_crit_edge

pagevec_release.exit.i.for.cond.preheader.i_crit_edge: ; preds = %pagevec_release.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

pagevec_release.exit.i.nilfs_lookup_dirty_node_buffers.exit_crit_edge: ; preds = %pagevec_release.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_lookup_dirty_node_buffers.exit

nilfs_lookup_dirty_node_buffers.exit:             ; preds = %pagevec_release.exit.i.nilfs_lookup_dirty_node_buffers.exit_crit_edge, %if.end19.nilfs_lookup_dirty_node_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec.i) #9
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and22 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %nilfs_lookup_dirty_node_buffers.exit.if.end39_crit_edge

nilfs_lookup_dirty_node_buffers.exit.if.end39_crit_edge: ; preds = %nilfs_lookup_dirty_node_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then24:                                        ; preds = %nilfs_lookup_dirty_node_buffers.exit
  %54 = ptrtoint ptr %sc_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sc_ops, align 4
  %call26 = call fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %inode, ptr noundef nonnull %data_buffers, ptr noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end36, label %if.then34, !prof !221

if.then34:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %inode, ptr noundef nonnull %node_buffers, ptr noundef null)
  br label %cleanup64

if.end36:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %or = or i32 %57, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %nilfs_lookup_dirty_node_buffers.exit.if.end39_crit_edge
  %collect_node = getelementptr inbounds %struct.nilfs_sc_operations, ptr %sc_ops, i32 0, i32 1
  %58 = ptrtoint ptr %collect_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %collect_node, align 4
  %call40 = call fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %inode, ptr noundef nonnull %node_buffers, ptr noundef %59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end49, label %if.end39.cleanup64_crit_edge, !prof !221

if.end39.cleanup64_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup64

if.end49:                                         ; preds = %if.end39
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %60 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_bmap, align 8
  call void @nilfs_bmap_lookup_dirty_buffers(ptr noundef %61, ptr noundef nonnull %node_buffers) #9
  %collect_bmap = getelementptr inbounds %struct.nilfs_sc_operations, ptr %sc_ops, i32 0, i32 2
  %62 = ptrtoint ptr %collect_bmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %collect_bmap, align 4
  %call51 = call fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %inode, ptr noundef nonnull %node_buffers, ptr noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end60, label %if.end49.cleanup64_crit_edge, !prof !221

if.end49.cleanup64_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup64

if.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nilfs_segctor_end_finfo(ptr noundef %sci, ptr noundef %inode)
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and63 = and i32 %65, -2
  store i32 %and63, ptr %flags, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %if.end60, %if.end49.cleanup64_crit_edge, %if.end39.cleanup64_crit_edge, %if.then34, %if.then4.cleanup64_crit_edge
  %err.1 = phi i32 [ %call40, %if.end39.cleanup64_crit_edge ], [ %call51, %if.end49.cleanup64_crit_edge ], [ 0, %if.end60 ], [ %call26, %if.then34 ], [ %call5, %if.then4.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %node_buffers) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_buffers) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_lookup_dirty_data_buffers(ptr nocapture noundef readonly %inode, ptr noundef %listp, i32 noundef %nlimit, i64 noundef %start, i64 noundef %end) unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #9
  %2 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start)
  %cmp.not = icmp ne i64 %start, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %end)
  %cmp1 = icmp ne i64 %end, 9223372036854775807
  %spec.select = or i1 %cmp.not, %cmp1
  br i1 %spec.select, label %if.end, label %if.end.thread, !prof !222

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i165 = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %5 = ptrtoint ptr %percpu_pvec_drained.i165 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %percpu_pvec_drained.i165, align 1
  br label %lor.lhs.false.lr.ph

if.end:                                           ; preds = %entry
  %6 = lshr i64 %start, 12
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %index, align 4
  %8 = lshr i64 %end, 12
  %conv4 = trunc i64 %8 to i32
  %9 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %10 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv4)
  %cmp5148 = icmp ugt i32 %conv, %conv4
  br i1 %cmp5148, label %if.end.cleanup71_crit_edge, label %if.end.lor.lhs.false.lr.ph_crit_edge, !prof !222

if.end.lor.lhs.false.lr.ph_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.lr.ph

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

lor.lhs.false.lr.ph:                              ; preds = %if.end.lor.lhs.false.lr.ph_crit_edge, %if.end.thread
  %last.0167 = phi i32 [ -1, %if.end.thread ], [ %conv4, %if.end.lor.lhs.false.lr.ph_crit_edge ]
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.list_head, ptr %listp, i32 0, i32 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %pagevec_release.exit111.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %ndirties.0149 = phi i32 [ 0, %lor.lhs.false.lr.ph ], [ %ndirties.1.lcssa171, %pagevec_release.exit111.lor.lhs.false_crit_edge ]
  %call = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %1, ptr noundef nonnull %index, i32 noundef %last.0167, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup71_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

for.cond.preheader:                               ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp17144.not = icmp eq i8 %12, 0
  br i1 %cmp17144.not, label %for.cond.preheader.pagevec_release.exit111_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.pagevec_release.exit111_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %pagevec_release.exit111

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0146 = phi i32 [ %inc68, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ndirties.1145 = phi i32 [ %ndirties.3, %for.inc.for.body_crit_edge ], [ %ndirties.0149, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0146
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 788) #9
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !221

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %14 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !221

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.56) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !252
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %19, align 4
  %and.i.i4.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i105_crit_edge

folio_flags.exit.i.i.if.then.i105_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i105

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #9, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !254
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i105_crit_edge

folio_trylock.exit.i.if.then.i105_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i105

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i105:                                     ; preds = %folio_trylock.exit.i.if.then.i105_crit_edge, %folio_flags.exit.i.i.if.then.i105_crit_edge
  call void @__folio_lock(ptr noundef %19) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i105, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !222

if.then.i:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.58) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !263
  unreachable

PagePrivate.exit:                                 ; preds = %lock_page.exit
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %14, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not = icmp eq i32 %31, 0
  br i1 %tobool20.not, label %if.then21, label %PagePrivate.exit.if.end23_crit_edge

PagePrivate.exit.if.end23_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_blkbits.i, align 2
  %conv.i106 = zext i8 %33 to i32
  %shl.i = shl nuw i32 1, %conv.i106
  call void @create_empty_buffers(ptr noundef %14, i32 noundef %shl.i, i32 noundef 0) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %PagePrivate.exit.if.end23_crit_edge
  call void @unlock_page(ptr noundef %14) #9
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i96 = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i96, label %if.then.i97, label %PagePrivate.exit100, !prof !222

if.then.i97:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.58) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !263
  unreachable

PagePrivate.exit100:                              ; preds = %if.end23
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %14, align 4
  %38 = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool25.not = icmp eq i32 %38, 0
  br i1 %tobool25.not, label %do.body35, label %do.end41, !prof !222

do.body35:                                        ; preds = %PagePrivate.exit100
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 713, 0\0A.popsection", ""() #9, !srcloc !265
  unreachable

do.end41:                                         ; preds = %PagePrivate.exit100
  %private = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %private, align 4
  %41 = inttoptr i32 %40 to ptr
  br label %do.body42

do.body42:                                        ; preds = %do.cond62.do.body42_crit_edge, %do.end41
  %ndirties.2 = phi i32 [ %ndirties.1145, %do.end41 ], [ %ndirties.3, %do.cond62.do.body42_crit_edge ]
  %bh.0 = phi ptr [ %41, %do.end41 ], [ %58, %do.cond62.do.body42_crit_edge ]
  %42 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %bh.0, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool44.not = icmp eq i32 %44, 0
  br i1 %tobool44.not, label %do.body42.do.cond62_crit_edge, label %lor.lhs.false45

do.body42.do.cond62_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond62

lor.lhs.false45:                                  ; preds = %do.body42
  %45 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bh.0, align 4
  %47 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool47.not = icmp eq i32 %47, 0
  br i1 %tobool47.not, label %if.end49, label %lor.lhs.false45.do.cond62_crit_edge

lor.lhs.false45.do.cond62_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond62

if.end49:                                         ; preds = %lor.lhs.false45
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !249
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 9
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers, ptr noundef %50, ptr noundef %listp) #9
  br i1 %call.i.i, label %if.end.i.i107, label %if.end49.list_add_tail.exit_crit_edge

if.end49.list_add_tail.exit_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i107:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b_assoc_buffers, ptr %prev.i, align 4
  %52 = ptrtoint ptr %b_assoc_buffers to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %listp, ptr %b_assoc_buffers, align 4
  %prev3.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %b_assoc_buffers, ptr %50, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i107, %if.end49.list_add_tail.exit_crit_edge
  %inc = add i32 %ndirties.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nlimit)
  %cmp50.not = icmp ult i32 %inc, %nlimit
  br i1 %cmp50.not, label %list_add_tail.exit.do.cond62_crit_edge, label %if.then58, !prof !221

list_add_tail.exit.do.cond62_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond62

if.then58:                                        ; preds = %list_add_tail.exit
  %55 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.then58.cleanup_crit_edge, label %if.then.i108

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i108:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pagevec_release(ptr noundef nonnull %pvec) #9
  br label %cleanup

do.cond62:                                        ; preds = %list_add_tail.exit.do.cond62_crit_edge, %lor.lhs.false45.do.cond62_crit_edge, %do.body42.do.cond62_crit_edge
  %ndirties.3 = phi i32 [ %ndirties.2, %lor.lhs.false45.do.cond62_crit_edge ], [ %inc, %list_add_tail.exit.do.cond62_crit_edge ], [ %ndirties.2, %do.body42.do.cond62_crit_edge ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %57 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_this_page, align 4
  %cmp63.not = icmp eq ptr %58, %41
  br i1 %cmp63.not, label %for.inc, label %do.cond62.do.body42_crit_edge

do.cond62.do.body42_crit_edge:                    ; preds = %do.cond62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

cleanup:                                          ; preds = %if.then.i108, %if.then58.cleanup_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 722, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  br label %cleanup71

for.inc:                                          ; preds = %do.cond62
  %inc68 = add nuw nsw i32 %i.0146, 1
  %59 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %60 to i32
  %cmp17 = icmp ult i32 %inc68, %conv.i
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i109 = icmp eq i8 %60, 0
  br i1 %tobool.not.i109, label %for.end.pagevec_release.exit111_crit_edge, label %if.then.i110

for.end.pagevec_release.exit111_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pagevec_release.exit111

if.then.i110:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pagevec_release(ptr noundef nonnull %pvec) #9
  br label %pagevec_release.exit111

pagevec_release.exit111:                          ; preds = %if.then.i110, %for.end.pagevec_release.exit111_crit_edge, %for.cond.preheader.pagevec_release.exit111_crit_edge
  %ndirties.1.lcssa171 = phi i32 [ %ndirties.3, %for.end.pagevec_release.exit111_crit_edge ], [ %ndirties.3, %if.then.i110 ], [ %ndirties.0149, %for.cond.preheader.pagevec_release.exit111_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 728, i32 noundef 0) #9
  %call.i112 = call i32 @__cond_resched() #9
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index, align 4
  %cmp5 = icmp ugt i32 %62, %last.0167
  br i1 %cmp5, label %pagevec_release.exit111.cleanup71_crit_edge, label %pagevec_release.exit111.lor.lhs.false_crit_edge, !prof !222

pagevec_release.exit111.lor.lhs.false_crit_edge:  ; preds = %pagevec_release.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

pagevec_release.exit111.cleanup71_crit_edge:      ; preds = %pagevec_release.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup71

cleanup71:                                        ; preds = %pagevec_release.exit111.cleanup71_crit_edge, %cleanup, %lor.lhs.false.cleanup71_crit_edge, %if.end.cleanup71_crit_edge
  %retval.3 = phi i32 [ %inc, %cleanup ], [ 0, %if.end.cleanup71_crit_edge ], [ %ndirties.0149, %lor.lhs.false.cleanup71_crit_edge ], [ %ndirties.1.lcssa171, %pagevec_release.exit111.cleanup71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #9
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_apply_buffers(ptr noundef %sci, ptr noundef %inode, ptr noundef %listp, ptr noundef readonly %collect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %collect, null
  br i1 %tobool.not, label %entry.dispose_buffers_crit_edge, label %if.then

entry.dispose_buffers_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dispose_buffers

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %listp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listp, align 4
  br label %for.cond

for.cond:                                         ; preds = %brelse.exit.for.cond_crit_edge, %if.then
  %.pn.in = phi ptr [ %1, %if.then ], [ %.pn, %brelse.exit.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %listp
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %bh.0 = getelementptr i8, ptr %.pn.in, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  %call = tail call i32 %collect(ptr noundef %sci, ptr noundef %bh.0, ptr noundef %inode) #9
  %tobool.not.i = icmp eq ptr %bh.0, null
  br i1 %tobool.not.i, label %list_del_init.exit.brelse.exit_crit_edge, label %if.then.i

list_del_init.exit.brelse.exit_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh.0) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %list_del_init.exit.brelse.exit_crit_edge
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %brelse.exit.for.cond_crit_edge, label %brelse.exit.dispose_buffers_crit_edge, !prof !221

brelse.exit.dispose_buffers_crit_edge:            ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dispose_buffers

brelse.exit.for.cond_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

dispose_buffers:                                  ; preds = %brelse.exit.dispose_buffers_crit_edge, %entry.dispose_buffers_crit_edge
  %err.0 = phi i32 [ 0, %entry.dispose_buffers_crit_edge ], [ %call, %brelse.exit.dispose_buffers_crit_edge ]
  %11 = ptrtoint ptr %listp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %listp, align 4
  %cmp.i.not52 = icmp eq ptr %12, %listp
  br i1 %cmp.i.not52, label %dispose_buffers.cleanup_crit_edge, label %dispose_buffers.while.body_crit_edge

dispose_buffers.while.body_crit_edge:             ; preds = %dispose_buffers
  br label %while.body

dispose_buffers.cleanup_crit_edge:                ; preds = %dispose_buffers
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %brelse.exit50.while.body_crit_edge, %dispose_buffers.while.body_crit_edge
  %13 = phi ptr [ %23, %brelse.exit50.while.body_crit_edge ], [ %12, %dispose_buffers.while.body_crit_edge ]
  %add.ptr25 = getelementptr i8, ptr %13, i32 -44
  %call.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #9
  br i1 %call.i.i42, label %if.end.i.i45, label %while.body.list_del_init.exit47_crit_edge

while.body.list_del_init.exit47_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit47

if.end.i.i45:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i43 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i43, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i44, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit47

list_del_init.exit47:                             ; preds = %if.end.i.i45, %while.body.list_del_init.exit47_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %13, ptr %13, align 4
  %prev.i3.i46 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %13, ptr %prev.i3.i46, align 4
  %tobool.not.i48 = icmp eq ptr %add.ptr25, null
  br i1 %tobool.not.i48, label %list_del_init.exit47.brelse.exit50_crit_edge, label %if.then.i49

list_del_init.exit47.brelse.exit50_crit_edge:     ; preds = %list_del_init.exit47
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit50

if.then.i49:                                      ; preds = %list_del_init.exit47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %add.ptr25) #9
  br label %brelse.exit50

brelse.exit50:                                    ; preds = %if.then.i49, %list_del_init.exit47.brelse.exit50_crit_edge
  %22 = ptrtoint ptr %listp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %listp, align 4
  %cmp.i.not = icmp eq ptr %23, %listp
  br i1 %cmp.i.not, label %brelse.exit50.cleanup_crit_edge, label %brelse.exit50.while.body_crit_edge

brelse.exit50.while.body_crit_edge:               ; preds = %brelse.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

brelse.exit50.cleanup_crit_edge:                  ; preds = %brelse.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit50.cleanup_crit_edge, %dispose_buffers.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %dispose_buffers.cleanup_crit_edge ], [ %err.0, %brelse.exit50.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_lookup_dirty_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_segctor_end_finfo(ptr nocapture noundef %sci, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_blk_cnt = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 19
  %0 = ptrtoint ptr %sc_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc_blk_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_state, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_cno = getelementptr i8, ptr %inode, i32 -368
  br label %if.end9.sink.split

if.else:                                          ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %7 = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %if.else.if.end9_crit_edge, label %if.else7

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sc_cno = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 23
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else7, %if.then2
  %sc_cno.sink = phi ptr [ %sc_cno, %if.else7 ], [ %i_cno, %if.then2 ]
  %9 = ptrtoint ptr %sc_cno.sink to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sc_cno.sink, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge
  %cno.0 = phi i64 [ 0, %if.else.if.end9_crit_edge ], [ %10, %if.end9.sink.split ]
  %sc_finfo_ptr = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 17
  %11 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sci, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %offset.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %16, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp.i = icmp ugt i32 %add.i, %14
  br i1 %cmp.i, label %if.then.i, label %if.end9.nilfs_segctor_map_segsum_entry.exit_crit_edge, !prof !222

if.end9.nilfs_segctor_map_segsum_entry.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit

if.then.i:                                        ; preds = %if.end9
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %17 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_curseg.i, align 4
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %offset.i, align 4
  %20 = ptrtoint ptr %sc_finfo_ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_finfo_ptr, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_assoc_buffers.i, align 4
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %18, i32 0, i32 9
  %cmp3.i = icmp eq ptr %23, %sb_segsum_buffers.i
  br i1 %cmp3.i, label %do.body11.i, label %do.end16.i, !prof !222

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i41 = getelementptr i8, ptr %23, i32 -44
  %24 = ptrtoint ptr %sc_finfo_ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i41, ptr %sc_finfo_ptr, align 4
  br label %nilfs_segctor_map_segsum_entry.exit

nilfs_segctor_map_segsum_entry.exit:              ; preds = %do.end16.i, %if.end9.nilfs_segctor_map_segsum_entry.exit_crit_edge
  %25 = ptrtoint ptr %sc_finfo_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc_finfo_ptr, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i, align 4
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %28, i32 %30
  %add26.i = add i32 %30, 24
  store i32 %add26.i, ptr %offset.i, align 4
  %i_ino11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino11, align 8
  %conv = zext i32 %32 to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %34 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %add.ptr24.i, align 8
  %35 = ptrtoint ptr %sc_blk_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sc_blk_cnt, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %fi_nblocks = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr24.i, i32 0, i32 2
  %38 = ptrtoint ptr %fi_nblocks to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fi_nblocks, align 8
  %sc_datablk_cnt = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 20
  %39 = ptrtoint ptr %sc_datablk_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sc_datablk_cnt, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %fi_ndatablk = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr24.i, i32 0, i32 3
  %42 = ptrtoint ptr %fi_ndatablk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fi_ndatablk, align 4
  %43 = tail call i64 @llvm.bswap.i64(i64 %cno.0)
  %fi_cno = getelementptr inbounds %struct.nilfs_finfo, ptr %add.ptr24.i, i32 0, i32 1
  %44 = ptrtoint ptr %fi_cno to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %fi_cno, align 8
  %sc_curseg = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %45 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sc_curseg, align 4
  %sc_binfo_ptr = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 18
  %offset = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset, align 4
  %49 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sci, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_blocksize, align 16
  %nsumblk = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %46, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %nsumblk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nsumblk, align 4
  %sub = add i32 %54, -1
  %mul = mul i32 %sub, %52
  %add = add i32 %mul, %48
  %sumbytes = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %46, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %sumbytes to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %sumbytes, align 8
  %56 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sc_binfo_ptr, align 8
  %58 = ptrtoint ptr %sc_finfo_ptr to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %sc_finfo_ptr, align 8
  %59 = ptrtoint ptr %sc_datablk_cnt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %sc_datablk_cnt, align 4
  %60 = ptrtoint ptr %sc_blk_cnt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %sc_blk_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %nilfs_segctor_map_segsum_entry.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_collect_file_data(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %0 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_bmap, align 8
  %call1 = tail call i32 @nilfs_bmap_propagate(ptr noundef %1, ptr noundef %bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @nilfs_segctor_add_file_block(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sc_datablk_cnt = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 20
  %2 = ptrtoint ptr %sc_datablk_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_datablk_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sc_datablk_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_collect_file_node(ptr nocapture noundef readnone %sci, ptr noundef %bh, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %0 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_bmap, align 8
  %call1 = tail call i32 @nilfs_bmap_propagate(ptr noundef %1, ptr noundef %bh) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_collect_file_bmap(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !222

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 590, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call fastcc i32 @nilfs_segctor_add_file_block(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode, i32 noundef 8)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_write_file_data_binfo(ptr nocapture noundef readonly %sci, ptr nocapture noundef %ssp, ptr nocapture noundef readonly %binfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %offset.i = getelementptr inbounds %struct.nilfs_segsum_pointer, ptr %ssp, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %5, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i = icmp ugt i32 %add.i, %3
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge, !prof !222

entry.nilfs_segctor_map_segsum_entry.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit

if.then.i:                                        ; preds = %entry
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %6 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_curseg.i, align 4
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset.i, align 4
  %9 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssp, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_assoc_buffers.i, align 4
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %7, i32 0, i32 9
  %cmp3.i = icmp eq ptr %12, %sb_segsum_buffers.i
  br i1 %cmp3.i, label %do.body11.i, label %do.end16.i, !prof !222

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %12, i32 -44
  %13 = ptrtoint ptr %ssp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ssp, align 4
  br label %nilfs_segctor_map_segsum_entry.exit

nilfs_segctor_map_segsum_entry.exit:              ; preds = %do.end16.i, %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge
  %14 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssp, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %17, i32 %19
  %add26.i = add i32 %19, 16
  store i32 %add26.i, ptr %offset.i, align 4
  %20 = call ptr @memcpy(ptr %add.ptr24.i, ptr %binfo, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_write_file_node_binfo(ptr nocapture noundef readonly %sci, ptr nocapture noundef %ssp, ptr nocapture noundef readonly %binfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %offset.i = getelementptr inbounds %struct.nilfs_segsum_pointer, ptr %ssp, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i = icmp ugt i32 %add.i, %3
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge, !prof !222

entry.nilfs_segctor_map_segsum_entry.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit

if.then.i:                                        ; preds = %entry
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %6 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_curseg.i, align 4
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset.i, align 4
  %9 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssp, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_assoc_buffers.i, align 4
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %7, i32 0, i32 9
  %cmp3.i = icmp eq ptr %12, %sb_segsum_buffers.i
  br i1 %cmp3.i, label %do.body11.i, label %do.end16.i, !prof !222

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %12, i32 -44
  %13 = ptrtoint ptr %ssp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ssp, align 4
  br label %nilfs_segctor_map_segsum_entry.exit

nilfs_segctor_map_segsum_entry.exit:              ; preds = %do.end16.i, %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge
  %14 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssp, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %17, i32 %19
  %add26.i = add i32 %19, 8
  store i32 %add26.i, ptr %offset.i, align 4
  %20 = ptrtoint ptr %binfo to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %binfo, align 8
  %22 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %add.ptr24.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_add_file_block(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode, i32 noundef %binfo_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_curseg = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %sc_binfo_ptr = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 18
  %offset.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 18, i32 1
  %sc_blk_cnt.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 19
  %sc_nblk_this_inc.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 21
  %sc_segbufs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 12
  %sc_seg_ctime.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 22
  %sc_cno.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 23
  %sc_finfo_ptr.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 17
  %offset.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 17, i32 1
  %sc_datablk_cnt.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 20
  br label %retry

retry:                                            ; preds = %nilfs_segctor_feed_segment.exit, %entry
  %0 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_curseg, align 4
  %2 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sci, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize.i, align 16
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %7, %binfo_size
  %8 = ptrtoint ptr %sc_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_blk_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %cond.i = select i1 %tobool.not.i, i32 24, i32 0
  %add1.i = add i32 %add.i, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %5)
  %cmp.i = icmp ugt i32 %add1.i, %5
  %conv.i = zext i1 %cmp.i to i32
  %nblocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nblocks, align 8
  %add = add i32 %11, 1
  %add1 = add i32 %add, %conv.i
  %sb_rest_blocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %sb_rest_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_rest_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %13)
  %cmp = icmp ugt i32 %add1, %13
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %retry
  tail call fastcc void @nilfs_segctor_end_finfo(ptr noundef %sci, ptr noundef %inode)
  %14 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc_curseg, align 4
  %nblocks.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %15, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %nblocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nblocks.i, align 8
  %18 = ptrtoint ptr %sc_nblk_this_inc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sc_nblk_this_inc.i, align 8
  %add.i46 = add i32 %19, %17
  store i32 %add.i46, ptr %sc_nblk_this_inc.i, align 8
  %sb_list.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %sb_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sb_list.i, align 4
  %cmp.i47 = icmp eq ptr %21, %sc_segbufs.i
  br i1 %cmp.i47, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %21, i32 -4
  %22 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %sc_curseg, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i.i, align 8
  %journal_info.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 146
  %27 = ptrtoint ptr %journal_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %journal_info.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %28, null
  br i1 %cmp.i.i.i.i, label %if.end.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.nilfs_doing_gc.exit.thread.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %30)
  %cmp1.not.i.i.i.i = icmp eq i32 %30, -639397125
  br i1 %cmp1.not.i.i.i.i, label %nilfs_doing_gc.exit.i.i, label %lor.lhs.false.i.i.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge

lor.lhs.false.i.i.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i

nilfs_doing_gc.exit.i.i:                          ; preds = %lor.lhs.false.i.i.i.i
  %ti_flags.i.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %ti_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ti_flags.i.i.i.i, align 4
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i.i, label %nilfs_doing_gc.exit.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, label %nilfs_doing_gc.exit.i.i._crit_edge

nilfs_doing_gc.exit.i.i._crit_edge:               ; preds = %nilfs_doing_gc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %34

nilfs_doing_gc.exit.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge: ; preds = %nilfs_doing_gc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_doing_gc.exit.thread.i.i

nilfs_doing_gc.exit.thread.i.i:                   ; preds = %nilfs_doing_gc.exit.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.i.nilfs_doing_gc.exit.thread.i.i_crit_edge, %if.end.i.nilfs_doing_gc.exit.thread.i.i_crit_edge
  br label %34

34:                                               ; preds = %nilfs_doing_gc.exit.thread.i.i, %nilfs_doing_gc.exit.i.i._crit_edge
  %35 = phi i32 [ 0, %nilfs_doing_gc.exit.thread.i.i ], [ 16, %nilfs_doing_gc.exit.i.i._crit_edge ]
  %36 = ptrtoint ptr %sc_seg_ctime.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %sc_seg_ctime.i.i, align 8
  %38 = ptrtoint ptr %sc_cno.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sc_cno.i.i, align 8
  %call1.i.i = tail call i32 @nilfs_segbuf_reset(ptr noundef %add.ptr.i, i32 noundef %35, i64 noundef %37, i64 noundef %39) #9
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %nilfs_segctor_feed_segment.exit, label %.cleanup_crit_edge, !prof !221

.cleanup_crit_edge:                               ; preds = %34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nilfs_segctor_feed_segment.exit:                  ; preds = %34
  call void @__sanitizer_cov_trace_pc() #11
  %sb_segsum_buffers.i.i = getelementptr i8, ptr %21, i32 112
  %40 = ptrtoint ptr %sb_segsum_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sb_segsum_buffers.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 -44
  %sumbytes7.i.i = getelementptr i8, ptr %21, i32 28
  %42 = ptrtoint ptr %sumbytes7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sumbytes7.i.i, align 8
  %44 = ptrtoint ptr %sc_finfo_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i.i, ptr %sc_finfo_ptr.i.i, align 8
  %45 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %offset.i.i, align 4
  %46 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i.i, ptr %sc_binfo_ptr, align 8
  %47 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %offset.i, align 4
  %48 = ptrtoint ptr %sc_datablk_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sc_datablk_cnt.i.i, align 4
  %49 = ptrtoint ptr %sc_blk_cnt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sc_blk_cnt.i, align 8
  br label %retry

if.end4:                                          ; preds = %retry
  %nblocks.le = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 2, i32 2
  br i1 %cmp.i, label %if.then8, label %if.end4.if.end19_crit_edge, !prof !222

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then8:                                         ; preds = %if.end4
  %call9 = tail call i32 @nilfs_segbuf_extend_segsum(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end19_crit_edge, label %if.then8.cleanup_crit_edge, !prof !221

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %if.then8.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %50 = ptrtoint ptr %sc_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sc_blk_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp20 = icmp eq i32 %51, 0
  br i1 %cmp20, label %if.then21, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  %52 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc_curseg, align 4
  %nfinfo.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %53, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %nfinfo.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nfinfo.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %nfinfo.i, align 4
  %56 = ptrtoint ptr %sc_finfo_ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sc_finfo_ptr.i.i, align 8
  %58 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %sc_binfo_ptr, align 8
  %59 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sci, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_blocksize.i.i, align 16
  %63 = trunc i64 %57 to i32
  %add.i.i = add i32 %63, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %62)
  %cmp.i.i = icmp ugt i32 %add.i.i, %62
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then21.nilfs_segctor_map_segsum_entry.exit.i_crit_edge, !prof !222

if.then21.nilfs_segctor_map_segsum_entry.exit.i_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit.i

if.then.i.i:                                      ; preds = %if.then21
  %64 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc_curseg, align 4
  %66 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %offset.i, align 4
  %67 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sc_binfo_ptr, align 4
  %b_assoc_buffers.i.i = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %b_assoc_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_assoc_buffers.i.i, align 4
  %sb_segsum_buffers.i.i50 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %65, i32 0, i32 9
  %cmp3.i.i = icmp eq ptr %70, %sb_segsum_buffers.i.i50
  br i1 %cmp3.i.i, label %do.body11.i.i, label %do.end16.i.i, !prof !222

do.body11.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i51 = getelementptr i8, ptr %70, i32 -44
  %71 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i.i51, ptr %sc_binfo_ptr, align 4
  br label %nilfs_segctor_map_segsum_entry.exit.i

nilfs_segctor_map_segsum_entry.exit.i:            ; preds = %do.end16.i.i, %if.then21.nilfs_segctor_map_segsum_entry.exit.i_crit_edge
  %72 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i, align 4
  %add26.i.i = add i32 %73, 24
  store i32 %add26.i.i, ptr %offset.i, align 4
  %i_root.i = getelementptr i8, ptr %inode, i32 -8
  %74 = ptrtoint ptr %i_root.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_root.i, align 8
  %tobool.not.i52 = icmp eq ptr %75, null
  br i1 %tobool.not.i52, label %nilfs_segctor_map_segsum_entry.exit.i.if.end22_crit_edge, label %land.lhs.true.i

nilfs_segctor_map_segsum_entry.exit.i.if.end22_crit_edge: ; preds = %nilfs_segctor_map_segsum_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true.i:                                  ; preds = %nilfs_segctor_map_segsum_entry.exit.i
  %sc_flags.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  %76 = ptrtoint ptr %sc_flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %sc_flags.i, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool4.not.i = icmp eq i32 %78, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.end22_crit_edge

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %sc_flags.i) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end22_crit_edge, %nilfs_segctor_map_segsum_entry.exit.i.if.end22_crit_edge, %if.end19.if.end22_crit_edge
  %79 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sci, align 8
  %s_blocksize.i54 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %s_blocksize.i54 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_blocksize.i54, align 16
  %83 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset.i, align 4
  %add.i56 = add i32 %84, %binfo_size
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i56, i32 %82)
  %cmp.i57 = icmp ugt i32 %add.i56, %82
  br i1 %cmp.i57, label %if.then.i59, label %if.end22.nilfs_segctor_map_segsum_entry.exit_crit_edge, !prof !222

if.end22.nilfs_segctor_map_segsum_entry.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit

if.then.i59:                                      ; preds = %if.end22
  %85 = ptrtoint ptr %sc_curseg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sc_curseg, align 4
  %87 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %offset.i, align 4
  %88 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sc_binfo_ptr, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 9
  %90 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_assoc_buffers.i, align 4
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %86, i32 0, i32 9
  %cmp3.i = icmp eq ptr %91, %sb_segsum_buffers.i
  br i1 %cmp3.i, label %do.body11.i, label %do.end16.i, !prof !222

do.body11.i:                                      ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i:                                       ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i60 = getelementptr i8, ptr %91, i32 -44
  %92 = ptrtoint ptr %sc_binfo_ptr to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr.i60, ptr %sc_binfo_ptr, align 4
  br label %nilfs_segctor_map_segsum_entry.exit

nilfs_segctor_map_segsum_entry.exit:              ; preds = %do.end16.i, %if.end22.nilfs_segctor_map_segsum_entry.exit_crit_edge
  %93 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset.i, align 4
  %add26.i = add i32 %94, %binfo_size
  store i32 %add26.i, ptr %offset.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #9
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #9, !srcloc !249
  %b_assoc_buffers.i.i61 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 9
  %sb_payload_buffers.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 10
  %prev.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 10, i32 1
  %96 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i3.i = tail call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i.i61, ptr noundef %97, ptr noundef %sb_payload_buffers.i.i) #9
  br i1 %call.i.i.i3.i, label %if.end.i.i.i.i, label %nilfs_segctor_map_segsum_entry.exit.nilfs_segbuf_add_file_buffer.exit_crit_edge

nilfs_segctor_map_segsum_entry.exit.nilfs_segbuf_add_file_buffer.exit_crit_edge: ; preds = %nilfs_segctor_map_segsum_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_add_file_buffer.exit

if.end.i.i.i.i:                                   ; preds = %nilfs_segctor_map_segsum_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %b_assoc_buffers.i.i61, ptr %prev.i.i.i, align 4
  %99 = ptrtoint ptr %b_assoc_buffers.i.i61 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %sb_payload_buffers.i.i, ptr %b_assoc_buffers.i.i61, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 9, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev3.i.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %b_assoc_buffers.i.i61, ptr %97, align 4
  br label %nilfs_segbuf_add_file_buffer.exit

nilfs_segbuf_add_file_buffer.exit:                ; preds = %if.end.i.i.i.i, %nilfs_segctor_map_segsum_entry.exit.nilfs_segbuf_add_file_buffer.exit_crit_edge
  %102 = ptrtoint ptr %nblocks.le to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nblocks.le, align 8
  %inc.i.i = add i32 %103, 1
  store i32 %inc.i.i, ptr %nblocks.le, align 8
  %nfileblk.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 2, i32 5
  %104 = ptrtoint ptr %nfileblk.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nfileblk.i, align 4
  %inc.i62 = add i32 %105, 1
  store i32 %inc.i62, ptr %nfileblk.i, align 4
  %106 = ptrtoint ptr %sc_blk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sc_blk_cnt.i, align 8
  %inc = add i32 %107, 1
  store i32 %inc, ptr %sc_blk_cnt.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %nilfs_segbuf_add_file_buffer.exit, %if.then8.cleanup_crit_edge, %.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8.cleanup_crit_edge ], [ 0, %nilfs_segbuf_add_file_buffer.exit ], [ -7, %if.then.cleanup_crit_edge ], [ %call1.i.i, %.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_segbuf_extend_segsum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_get_checkpoint(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_cpfile_put_checkpoint(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_updatev(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sufile_do_free(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_collect_dat_data(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %0 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_bmap, align 8
  %call1 = tail call i32 @nilfs_bmap_propagate(ptr noundef %1, ptr noundef %bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @nilfs_segctor_add_file_block(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sc_datablk_cnt = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 20
  %2 = ptrtoint ptr %sc_datablk_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sc_datablk_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sc_datablk_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_collect_dat_bmap(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !222

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 638, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call fastcc i32 @nilfs_segctor_add_file_block(ptr noundef %sci, ptr noundef %bh, ptr noundef %inode, i32 noundef 16)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_write_dat_data_binfo(ptr nocapture noundef readonly %sci, ptr nocapture noundef %ssp, ptr nocapture noundef readonly %binfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %offset.i = getelementptr inbounds %struct.nilfs_segsum_pointer, ptr %ssp, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i = icmp ugt i32 %add.i, %3
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge, !prof !222

entry.nilfs_segctor_map_segsum_entry.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit

if.then.i:                                        ; preds = %entry
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %6 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_curseg.i, align 4
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset.i, align 4
  %9 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssp, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_assoc_buffers.i, align 4
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %7, i32 0, i32 9
  %cmp3.i = icmp eq ptr %12, %sb_segsum_buffers.i
  br i1 %cmp3.i, label %do.body11.i, label %do.end16.i, !prof !222

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %12, i32 -44
  %13 = ptrtoint ptr %ssp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ssp, align 4
  br label %nilfs_segctor_map_segsum_entry.exit

nilfs_segctor_map_segsum_entry.exit:              ; preds = %do.end16.i, %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge
  %14 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssp, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %17, i32 %19
  %add26.i = add i32 %19, 8
  store i32 %add26.i, ptr %offset.i, align 4
  %20 = ptrtoint ptr %binfo to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %binfo, align 8
  %22 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %add.ptr24.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_write_dat_node_binfo(ptr nocapture noundef readonly %sci, ptr nocapture noundef %ssp, ptr nocapture noundef readonly %binfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %offset.i = getelementptr inbounds %struct.nilfs_segsum_pointer, ptr %ssp, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %5, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i = icmp ugt i32 %add.i, %3
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge, !prof !222

entry.nilfs_segctor_map_segsum_entry.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_map_segsum_entry.exit

if.then.i:                                        ; preds = %entry
  %sc_curseg.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 15
  %6 = ptrtoint ptr %sc_curseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_curseg.i, align 4
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset.i, align 4
  %9 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssp, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_assoc_buffers.i, align 4
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %7, i32 0, i32 9
  %cmp3.i = icmp eq ptr %12, %sb_segsum_buffers.i
  br i1 %cmp3.i, label %do.body11.i, label %do.end16.i, !prof !222

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !248
  unreachable

do.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %12, i32 -44
  %13 = ptrtoint ptr %ssp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ssp, align 4
  br label %nilfs_segctor_map_segsum_entry.exit

nilfs_segctor_map_segsum_entry.exit:              ; preds = %do.end16.i, %entry.nilfs_segctor_map_segsum_entry.exit_crit_edge
  %14 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssp, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %17, i32 %19
  %add26.i = add i32 %19, 16
  store i32 %add26.i, ptr %offset.i, align 4
  %20 = call ptr @memcpy(ptr %add.ptr24.i, ptr %binfo, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_segbuf_extend_payload(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sufile_do_cancel_free(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_update(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_truncate_logs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_wait_on_logs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_end_page_io(ptr noundef %page, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !222

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.58) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !263
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %do.body6, label %do.end10, !prof !222

do.body6:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1707, 0\0A.popsection", ""() #9, !srcloc !266
  unreachable

do.end10:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %do.end10.if.end25_crit_edge, label %land.lhs.true

do.end10.if.end25_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %do.end10
  %11 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !221

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i51 = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  %and.i16.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i51, label %if.then.i52, label %do.end10.i, !prof !222

if.then.i52:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !221

if.then.i19.i:                                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %19, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %20, %if.end.i20.i ]
  %21 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.59) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #9, !srcloc !267
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !221

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %19, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %22, %if.end.i27.i ]
  %23 = inttoptr i32 %retval.0.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool14.not = icmp eq i32 %26, 0
  br i1 %tobool14.not, label %if.then15, label %PageWriteback.exit.if.end25_crit_edge

PageWriteback.exit.if.end25_crit_edge:            ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then15:                                        ; preds = %PageWriteback.exit
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %11, align 4
  %and.i.i55 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i59, label %if.then.i.i58, !prof !221

if.then.i.i58:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i57 = add i32 %28, -1
  br label %_compound_head.exit.i62

if.end.i.i59:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i62

_compound_head.exit.i62:                          ; preds = %if.end.i.i59, %if.then.i.i58
  %retval.0.i.i60 = phi i32 [ %sub.i.i57, %if.then.i.i58 ], [ %29, %if.end.i.i59 ]
  %30 = inttoptr i32 %retval.0.i.i60 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i61 = icmp eq i32 %32, -1
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %11, align 4
  %and.i13.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i61, label %if.then.i63, label %do.end8.i, !prof !222

if.then.i63:                                      ; preds = %_compound_head.exit.i62
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !221

if.then.i16.i:                                    ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i = add i32 %34, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %35, %if.end.i17.i ]
  %36 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.59) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !268
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i62
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !221

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i = add i32 %34, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %37, %if.end.i24.i ]
  %38 = inttoptr i32 %retval.0.i25.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool17.not = icmp eq i32 %41, 0
  br i1 %tobool17.not, label %PageDirty.exit.return_crit_edge, label %if.then18

PageDirty.exit.return_crit_edge:                  ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then18:                                        ; preds = %PageDirty.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 788) #9
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %11, align 4
  %and.i.i100 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i.i101, label %if.end.i.i104, label %if.then.i.i103, !prof !221

if.then.i.i103:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i102 = add i32 %43, -1
  br label %_compound_head.exit.i106

if.end.i.i104:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i106

_compound_head.exit.i106:                         ; preds = %if.end.i.i104, %if.then.i.i103
  %retval.0.i.i105 = phi i32 [ %sub.i.i102, %if.then.i.i103 ], [ %44, %if.end.i.i104 ]
  %45 = inttoptr i32 %retval.0.i.i105 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !221

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.56) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !252
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i106
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #9
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and.i.i4.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i107_crit_edge

folio_flags.exit.i.i.if.then.i107_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i107

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #9, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !254
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i107_crit_edge

folio_trylock.exit.i.if.then.i107_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i107

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i107:                                     ; preds = %folio_trylock.exit.i.if.then.i107_crit_edge, %folio_flags.exit.i.i.if.then.i107_crit_edge
  tail call void @__folio_lock(ptr noundef %45) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i107, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call19 = tail call i32 @nilfs_page_buffers_clean(ptr noundef nonnull %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lock_page.exit.if.end23_crit_edge, label %if.then21

lock_page.exit.if.end23_crit_edge:                ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @__nilfs_clear_page_dirty(ptr noundef nonnull %page) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lock_page.exit.if.end23_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %page) #9
  br label %return

if.end25:                                         ; preds = %PageWriteback.exit.if.end25_crit_edge, %do.end10.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool26.not = icmp eq i32 %err, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  %call28 = tail call i32 @nilfs_page_buffers_clean(ptr noundef nonnull %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %page) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27.if.end32_crit_edge
  %52 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i66 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool.not.i = icmp eq i32 %and.i.i66, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i67, !prof !221

if.then.i67:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !269
  unreachable

do.body7.i:                                       ; preds = %if.end32
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %52, align 4
  %and.i31.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i68 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i68, label %if.end.i.i71, label %if.then.i.i70, !prof !221

if.then.i.i70:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i69 = add i32 %56, -1
  br label %_compound_head.exit.i74

if.end.i.i71:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i74

_compound_head.exit.i74:                          ; preds = %if.end.i.i71, %if.then.i.i70
  %retval.0.i.i72 = phi i32 [ %sub.i.i69, %if.then.i.i70 ], [ %57, %if.end.i.i71 ]
  %58 = inttoptr i32 %retval.0.i.i72 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp.i.not.i73 = icmp eq i32 %60, -1
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %52, align 4
  %and.i32.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i73, label %if.then17.i, label %do.end24.i, !prof !222

if.then17.i:                                      ; preds = %_compound_head.exit.i74
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !221

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %62, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %63, %if.end.i36.i ]
  %64 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %64, ptr noundef nonnull @.str.59) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i74
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !221

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %62, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %65, %if.end.i43.i ]
  %66 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %66) #9
  br label %if.end34

if.else:                                          ; preds = %if.end25
  %call33 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %page) #9
  %67 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i75 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75)
  %tobool.not.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.not.i76, label %do.body7.i80, label %if.then.i77, !prof !221

if.then.i77:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.60) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !271
  unreachable

do.body7.i80:                                     ; preds = %if.else
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %67, align 4
  %and.i31.i78 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i78)
  %tobool.not.i.i79 = icmp eq i32 %and.i31.i78, 0
  br i1 %tobool.not.i.i79, label %if.end.i.i83, label %if.then.i.i82, !prof !221

if.then.i.i82:                                    ; preds = %do.body7.i80
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i81 = add i32 %71, -1
  br label %_compound_head.exit.i88

if.end.i.i83:                                     ; preds = %do.body7.i80
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i88

_compound_head.exit.i88:                          ; preds = %if.end.i.i83, %if.then.i.i82
  %retval.0.i.i84 = phi i32 [ %sub.i.i81, %if.then.i.i82 ], [ %72, %if.end.i.i83 ]
  %73 = inttoptr i32 %retval.0.i.i84 to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.i.not.i85 = icmp eq i32 %75, -1
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %67, align 4
  %and.i32.i86 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i86)
  %tobool.not.i33.i87 = icmp eq i32 %and.i32.i86, 0
  br i1 %cmp.i.not.i85, label %if.then17.i89, label %do.end24.i95, !prof !222

if.then17.i89:                                    ; preds = %_compound_head.exit.i88
  br i1 %tobool.not.i33.i87, label %if.end.i36.i92, label %if.then.i35.i91, !prof !221

if.then.i35.i91:                                  ; preds = %if.then17.i89
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i90 = add i32 %77, -1
  br label %_compound_head.exit38.i94

if.end.i36.i92:                                   ; preds = %if.then17.i89
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i94

_compound_head.exit38.i94:                        ; preds = %if.end.i36.i92, %if.then.i35.i91
  %retval.0.i37.i93 = phi i32 [ %sub.i34.i90, %if.then.i35.i91 ], [ %78, %if.end.i36.i92 ]
  %79 = inttoptr i32 %retval.0.i37.i93 to ptr
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.59) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !272
  unreachable

do.end24.i95:                                     ; preds = %_compound_head.exit.i88
  br i1 %tobool.not.i33.i87, label %if.end.i43.i98, label %if.then.i42.i97, !prof !221

if.then.i42.i97:                                  ; preds = %do.end24.i95
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i96 = add i32 %77, -1
  br label %SetPageError.exit

if.end.i43.i98:                                   ; preds = %do.end24.i95
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i98, %if.then.i42.i97
  %retval.0.i44.i99 = phi i32 [ %sub.i41.i96, %if.then.i42.i97 ], [ %80, %if.end.i43.i98 ]
  %81 = inttoptr i32 %retval.0.i44.i99 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %81) #9
  br label %if.end34

if.end34:                                         ; preds = %SetPageError.exit, %ClearPageError.exit
  tail call void @end_page_writeback(ptr noundef nonnull %page) #9
  br label %return

return:                                           ; preds = %if.end34, %if.end23, %PageDirty.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_page_buffers_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nilfs_clear_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_set_segment_usage(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sufile_do_set_error(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_segbuf_fill_in_segsum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_assign(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_palloc_block_get_entry(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_write_inode_common(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_begin_page_io(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !221

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !222

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !221

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.59) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #9, !srcloc !267
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !221

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %if.end, label %PageWriteback.exit.return_crit_edge

PageWriteback.exit.return_crit_edge:              ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %PageWriteback.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 788) #9
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i9 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i13, label %if.then.i.i12, !prof !221

if.then.i.i12:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i11 = add i32 %17, -1
  br label %_compound_head.exit.i15

if.end.i.i13:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i15

_compound_head.exit.i15:                          ; preds = %if.end.i.i13, %if.then.i.i12
  %retval.0.i.i14 = phi i32 [ %sub.i.i11, %if.then.i.i12 ], [ %18, %if.end.i.i13 ]
  %19 = inttoptr i32 %retval.0.i.i14 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !221

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.56) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !252
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #9
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and.i.i4.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i16_crit_edge

folio_flags.exit.i.i.if.then.i16_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i16

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #9, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !254
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i16_crit_edge

folio_trylock.exit.i.if.then.i16_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i16

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i16:                                      ; preds = %folio_trylock.exit.i.if.then.i16_crit_edge, %folio_flags.exit.i.i.if.then.i16_crit_edge
  tail call void @__folio_lock(ptr noundef %19) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i16, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call2 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %page) #9
  %call3 = tail call zeroext i1 @set_page_writeback(ptr noundef nonnull %page) #9
  tail call void @unlock_page(ptr noundef nonnull %page) #9
  br label %return

return:                                           ; preds = %lock_page.exit, %PageWriteback.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_write_logs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_set_last_segment(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segctor_confirm(ptr noundef %sci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %sc_root = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 1
  %4 = ptrtoint ptr %sc_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_root, align 4
  %call = tail call fastcc i32 @nilfs_test_metadata_dirty(ptr noundef %3, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sc_flags = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sc_flags) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #9
  %ns_dirty_files = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 34
  %6 = ptrtoint ptr %ns_dirty_files to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ns_dirty_files, align 4
  %cmp.i.not = icmp eq ptr %7, %ns_dirty_files
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %sc_dirty_files.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 3
  %8 = ptrtoint ptr %sc_dirty_files.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sc_dirty_files.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %sc_dirty_files.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %land.lhs.true.nilfs_segctor_clean.exit.thread_crit_edge

land.lhs.true.nilfs_segctor_clean.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_clean.exit.thread

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %sc_flags.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 24
  %10 = ptrtoint ptr %sc_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sc_flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.nilfs_segctor_clean.exit.thread_crit_edge

land.lhs.true.i.nilfs_segctor_clean.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_clean.exit.thread

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sc_nfreesegs.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 8
  %12 = ptrtoint ptr %sc_nfreesegs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_nfreesegs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i15 = icmp eq i32 %13, 0
  br i1 %cmp.i15, label %land.rhs.i, label %land.lhs.true3.i.nilfs_segctor_clean.exit.thread_crit_edge

land.lhs.true3.i.nilfs_segctor_clean.exit.thread_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_clean.exit.thread

land.rhs.i:                                       ; preds = %land.lhs.true3.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i, align 8
  %journal_info.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 146
  %18 = ptrtoint ptr %journal_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %journal_info.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %19, null
  br i1 %cmp.i.i.i, label %land.rhs.i.if.end6_crit_edge, label %lor.lhs.false.i.i.i

land.rhs.i.if.end6_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

lor.lhs.false.i.i.i:                              ; preds = %land.rhs.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %21)
  %cmp1.not.i.i.i = icmp eq i32 %21, -639397125
  br i1 %cmp1.not.i.i.i, label %nilfs_doing_gc.exit.i, label %lor.lhs.false.i.i.i.if.end6_crit_edge

lor.lhs.false.i.i.i.if.end6_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

nilfs_doing_gc.exit.i:                            ; preds = %lor.lhs.false.i.i.i
  %ti_flags.i.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %ti_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ti_flags.i.i.i, align 4
  %24 = and i16 %23, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool5.not.i = icmp eq i16 %24, 0
  br i1 %tobool5.not.i, label %nilfs_doing_gc.exit.i.if.end6_crit_edge, label %nilfs_segctor_clean.exit

nilfs_doing_gc.exit.i.if.end6_crit_edge:          ; preds = %nilfs_doing_gc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

nilfs_segctor_clean.exit:                         ; preds = %nilfs_doing_gc.exit.i
  %sc_gc_inodes.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %sci, i32 0, i32 4
  %25 = ptrtoint ptr %sc_gc_inodes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sc_gc_inodes.i, align 4
  %cmp.i11.i.not = icmp eq ptr %26, %sc_gc_inodes.i
  br i1 %cmp.i11.i.not, label %nilfs_segctor_clean.exit.if.end6_crit_edge, label %nilfs_segctor_clean.exit.nilfs_segctor_clean.exit.thread_crit_edge

nilfs_segctor_clean.exit.nilfs_segctor_clean.exit.thread_crit_edge: ; preds = %nilfs_segctor_clean.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_clean.exit.thread

nilfs_segctor_clean.exit.if.end6_crit_edge:       ; preds = %nilfs_segctor_clean.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

nilfs_segctor_clean.exit.thread:                  ; preds = %nilfs_segctor_clean.exit.nilfs_segctor_clean.exit.thread_crit_edge, %land.lhs.true3.i.nilfs_segctor_clean.exit.thread_crit_edge, %land.lhs.true.i.nilfs_segctor_clean.exit.thread_crit_edge, %land.lhs.true.nilfs_segctor_clean.exit.thread_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %nilfs_segctor_clean.exit.thread, %nilfs_segctor_clean.exit.if.end6_crit_edge, %nilfs_doing_gc.exit.i.if.end6_crit_edge, %lor.lhs.false.i.i.i.if.end6_crit_edge, %land.rhs.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ 0, %nilfs_segctor_clean.exit.thread ], [ 1, %nilfs_segctor_clean.exit.if.end6_crit_edge ], [ 1, %nilfs_doing_gc.exit.i.if.end6_crit_edge ], [ 1, %lor.lhs.false.i.i.i.if.end6_crit_edge ], [ 1, %land.rhs.i.if.end6_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_prepare_super(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_set_log_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_commit_super(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btnode_cache_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_iput_work_func(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %sc_iput_queue = getelementptr i8, ptr %work, i32 -8
  tail call fastcc void @nilfs_dispose_list(ptr noundef %3, ptr noundef %sc_iput_queue, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_construction_timeout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_timer_task = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sc_timer_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_timer_task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inode_attach_wb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_segctor_thread(ptr noundef %arg) #0 align 64 {
entry:
  %ti.i = alloca %struct.nilfs_transaction_info, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %sc_timer_task = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 40
  %8 = ptrtoint ptr %sc_timer_task to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %sc_timer_task, align 4
  %9 = load ptr, ptr %task, align 8
  %sc_task = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 41
  %10 = ptrtoint ptr %sc_task to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sc_task, align 8
  %sc_wait_task = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 30
  tail call void @__wake_up(ptr noundef %sc_wait_task, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 8
  %sc_interval = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 35
  %13 = ptrtoint ptr %sc_interval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sc_interval, align 4
  %div = udiv i32 %14, 100
  %sc_mjcp_freq = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 36
  %15 = ptrtoint ptr %sc_mjcp_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_mjcp_freq, align 8
  %div4 = udiv i32 %16, 100
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %12, ptr noundef nonnull @.str.75, i32 noundef %div, i32 noundef %div4) #9
  %sc_state_lock = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_state_lock) #9
  %sc_state = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 26
  %17 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sc_state, align 8
  %and140143 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140143)
  %tobool.not141144 = icmp eq i32 %and140143, 0
  br i1 %tobool.not141144, label %if.end.lr.ph.lr.ph, label %entry.cleanup70_crit_edge

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end.lr.ph.lr.ph:                               ; preds = %entry
  %sc_seq_request = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 31
  %sc_seq_done = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 33
  %sc_flush_request = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 27
  %sc_flags.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 24
  %sc_lseg_stime.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 37
  %sc_timer.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 39
  %expires.i.i = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 39, i32 1
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %sc_wait_daemon = getelementptr inbounds %struct.nilfs_sc_info, ptr %arg, i32 0, i32 29
  %ns_sbwtime.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 8
  %ns_sb_update_freq.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 12
  br label %if.end

if.end:                                           ; preds = %if.end.backedge, %if.end.lr.ph.lr.ph
  %timeout.1142 = phi i32 [ 0, %if.end.lr.ph.lr.ph ], [ %timeout.1142.be, %if.end.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1142)
  %tobool5.not = icmp eq i32 %timeout.1142, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

lor.lhs.false:                                    ; preds = %if.end
  %23 = ptrtoint ptr %sc_seq_request to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sc_seq_request, align 4
  %25 = ptrtoint ptr %sc_seq_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sc_seq_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not = icmp eq i32 %24, %26
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %sc_flush_request to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sc_flush_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not = icmp eq i32 %28, 0
  br i1 %tobool7.not, label %for.end, label %if.then8

if.then8:                                         ; preds = %if.else
  %29 = ptrtoint ptr %sc_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sc_flags.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then8.if.then.i_crit_edge, label %lor.lhs.false.i

if.then8.if.then.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %sc_lseg_stime.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sc_lseg_stime.i, align 4
  %35 = ptrtoint ptr %sc_mjcp_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sc_mjcp_freq, align 8
  %37 = add i32 %34, %36
  %sub.i = sub i32 %32, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end8.i_crit_edge

lor.lhs.false.i.if.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then8.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %tobool1.not.i = icmp ult i32 %28, 2
  br i1 %tobool1.not.i, label %if.then.i.if.end12_crit_edge, label %if.else.i

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else.i:                                        ; preds = %if.then.i
  %and4.i = and i32 %28, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end12_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %lor.lhs.false.i.if.end8.i_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.end8.i, %if.else.i.if.end12_crit_edge, %if.then.i.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %mode.0 = phi i32 [ 1, %lor.lhs.false.if.end12_crit_edge ], [ 1, %if.end.if.end12_crit_edge ], [ 1, %if.end8.i ], [ 3, %if.then.i.if.end12_crit_edge ], [ 4, %if.else.i.if.end12_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti.i) #9
  %38 = call ptr @memset(ptr %ti.i, i32 255, i32 12)
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arg, align 8
  call fastcc void @nilfs_transaction_lock(ptr noundef %40, ptr noundef nonnull %ti.i, i32 noundef 0) #9
  %call.i = call fastcc i32 @nilfs_segctor_construct(ptr noundef %arg, i32 noundef %mode.0) #9
  %41 = ptrtoint ptr %sc_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %sc_flags.i, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i107 = icmp eq i32 %43, 0
  br i1 %tobool.not.i107, label %if.end12.if.end.i_crit_edge, label %if.then.i108

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i108:                                     ; preds = %if.end12
  call void @_raw_spin_lock(ptr noundef %sc_state_lock) #9
  %44 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sc_state, align 8
  %and.i.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i108.nilfs_segctor_start_timer.exit.i_crit_edge

if.then.i108.nilfs_segctor_start_timer.exit.i_crit_edge: ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segctor_start_timer.exit.i

if.then.i.i:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %47 = ptrtoint ptr %sc_interval to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sc_interval, align 4
  %add.i.i = add i32 %48, %46
  %49 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %expires.i.i, align 4
  call void @add_timer(ptr noundef %sc_timer.i.i) #9
  %50 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sc_state, align 8
  %or.i.i = or i32 %51, 4
  store i32 %or.i.i, ptr %sc_state, align 8
  br label %nilfs_segctor_start_timer.exit.i

nilfs_segctor_start_timer.exit.i:                 ; preds = %if.then.i.i, %if.then.i108.nilfs_segctor_start_timer.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock) #9
  br label %if.end.i

if.end.i:                                         ; preds = %nilfs_segctor_start_timer.exit.i, %if.end12.if.end.i_crit_edge
  %52 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arg, align 8
  %54 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 146
  %58 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %journal_info.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %60 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i, align 16
  %cmp.i.i = icmp eq ptr %59, null
  br i1 %cmp.i.i, label %if.end.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !222

if.end.i.do.body3.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.end.i
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %63)
  %cmp1.not.i.i = icmp eq i32 %63, -639397125
  br i1 %cmp1.not.i.i, label %do.body9.i.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !221

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.end.i.do.body3.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.body9.i.i:                                     ; preds = %lor.rhs.i.i
  %ti_count.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %ti_count.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ti_count.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp10.not.i.i = icmp eq i16 %65, 0
  br i1 %cmp10.not.i.i, label %cleanup, label %do.body19.i.i, !prof !221

do.body19.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segment.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

cleanup:                                          ; preds = %do.body9.i.i
  %ns_segctor_sem.i.i = getelementptr inbounds %struct.the_nilfs, ptr %61, i32 0, i32 28
  call void @up_write(ptr noundef %ns_segctor_sem.i.i) #9
  %ti_save.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %59, i32 0, i32 1
  %66 = ptrtoint ptr %ti_save.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ti_save.i.i, align 4
  %68 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i.i, align 8
  %journal_info30.i.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 146
  %70 = ptrtoint ptr %journal_info30.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %journal_info30.i.i, align 4
  %71 = ptrtoint ptr %ti_count.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ti_count.i.i, align 2
  %conv32.i.i = zext i16 %72 to i32
  %ti_flags.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %59, i32 0, i32 2
  %73 = ptrtoint ptr %ti_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ti_flags.i.i, align 4
  %conv33.i.i = zext i16 %74 to i32
  call fastcc void @trace_nilfs2_transaction_transition(ptr noundef %53, ptr noundef nonnull %59, i32 noundef %conv32.i.i, i32 noundef %conv33.i.i, i32 noundef 5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti.i) #9
  call void @_raw_spin_lock(ptr noundef %sc_state_lock) #9
  %75 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sc_state, align 8
  %and = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.if.end.backedge_crit_edge, label %cleanup.cleanup70_crit_edge

cleanup.cleanup70_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

cleanup.if.end.backedge_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.backedge

if.end.backedge:                                  ; preds = %if.end66.if.end.backedge_crit_edge, %cleanup.if.end.backedge_crit_edge
  %timeout.1142.be = phi i32 [ 0, %cleanup.if.end.backedge_crit_edge ], [ %timeout.3, %if.end66.if.end.backedge_crit_edge ]
  br label %if.end

for.end:                                          ; preds = %if.else
  %77 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %79 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i109 = icmp eq i32 %79, 0
  br i1 %tobool.not.i109, label %for.end.if.else22_crit_edge, label %freezing.exit, !prof !221

for.end.if.else22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else22

freezing.exit:                                    ; preds = %for.end
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %78) #9
  br i1 %call4.i, label %if.then18, label %freezing.exit.if.else22_crit_edge

freezing.exit.if.else22_crit_edge:                ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else22

if.then18:                                        ; preds = %freezing.exit
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock) #9
  %80 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i112 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i112 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 4
  %and.i113 = and i32 %85, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  br i1 %tobool.not.i114, label %if.then.i115, label %if.then18.if.end.i118_crit_edge

if.then18.if.end.i118_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i118

if.then.i115:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i118

if.end.i118:                                      ; preds = %if.then.i115, %if.then18.if.end.i118_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.76, i32 noundef 57) #9
  %86 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i116 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i116 to ptr
  %task.i.i117 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task.i.i117 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i.i117, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %90 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i.i, label %if.end.i118.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !221

if.end.i118.try_to_freeze.exit_crit_edge:         ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i118
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %89) #9
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !222

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i118.try_to_freeze.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef %sc_state_lock) #9
  br label %if.end66

if.else22:                                        ; preds = %freezing.exit.if.else22_crit_edge, %for.end.if.else22_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %91 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %wait, align 4
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 8
  %94 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %19, align 4
  %95 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @autoremove_wake_function, ptr %20, align 4
  %96 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %21, ptr %21, align 4
  %97 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %21, ptr %22, align 4
  call void @prepare_to_wait(ptr noundef %sc_wait_daemon, ptr noundef nonnull %wait, i32 noundef 1) #9
  %98 = ptrtoint ptr %sc_seq_request to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sc_seq_request, align 4
  %100 = ptrtoint ptr %sc_seq_done to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sc_seq_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp30.not = icmp eq i32 %99, %101
  br i1 %cmp30.not, label %if.else32, label %if.else22.if.end49_crit_edge

if.else22.if.end49_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else32:                                        ; preds = %if.else22
  %102 = ptrtoint ptr %sc_flush_request to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sc_flush_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool34.not = icmp eq i32 %103, 0
  br i1 %tobool34.not, label %if.else36, label %if.else32.if.end49_crit_edge

if.else32.if.end49_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else36:                                        ; preds = %if.else32
  %104 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sc_state, align 8
  %and38 = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else36.if.then46_crit_edge, label %if.end44

if.else36.if.then46_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end44:                                         ; preds = %if.else36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %107 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %expires.i.i, align 4
  %sub = sub i32 %106, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %tobool45.not = icmp sgt i32 %sub, -1
  br i1 %tobool45.not, label %if.end44.if.end49_crit_edge, label %if.end44.if.then46_crit_edge

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.else36.if.then46_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock) #9
  call void @schedule() #9
  call void @_raw_spin_lock(ptr noundef %sc_state_lock) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end44.if.end49_crit_edge, %if.else32.if.end49_crit_edge, %if.else22.if.end49_crit_edge
  call void @finish_wait(ptr noundef %sc_wait_daemon, ptr noundef nonnull %wait) #9
  %109 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sc_state, align 8
  %and52 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.land.end_crit_edge, label %land.rhs

if.end49.land.end_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %112 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %expires.i.i, align 4
  %sub56 = sub i32 %111, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub56)
  %cmp57 = icmp sgt i32 %sub56, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end49.land.end_crit_edge
  %114 = phi i1 [ false, %if.end49.land.end_crit_edge ], [ %cmp57, %land.rhs ]
  %land.ext59 = zext i1 %114 to i32
  %115 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %3, align 4
  %117 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool61.not = icmp eq i32 %117, 0
  br i1 %tobool61.not, label %land.end.if.end65_crit_edge, label %land.lhs.true

land.end.if.end65_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true:                                    ; preds = %land.end
  %call.i119 = call i64 @ktime_get_real_seconds() #9
  %118 = ptrtoint ptr %ns_sbwtime.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ns_sbwtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i119, i64 %119)
  %cmp.i120 = icmp ult i64 %call.i119, %119
  br i1 %cmp.i120, label %land.lhs.true.if.then64_crit_edge, label %nilfs_sb_need_update.exit

land.lhs.true.if.then64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

nilfs_sb_need_update.exit:                        ; preds = %land.lhs.true
  %120 = ptrtoint ptr %ns_sb_update_freq.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ns_sb_update_freq.i, align 4
  %conv.i = zext i32 %121 to i64
  %add.i = add i64 %119, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i119, i64 %add.i)
  %cmp2.i.not = icmp ugt i64 %call.i119, %add.i
  br i1 %cmp2.i.not, label %nilfs_sb_need_update.exit.if.then64_crit_edge, label %nilfs_sb_need_update.exit.if.end65_crit_edge

nilfs_sb_need_update.exit.if.end65_crit_edge:     ; preds = %nilfs_sb_need_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

nilfs_sb_need_update.exit.if.then64_crit_edge:    ; preds = %nilfs_sb_need_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

if.then64:                                        ; preds = %nilfs_sb_need_update.exit.if.then64_crit_edge, %land.lhs.true.if.then64_crit_edge
  call void @_set_bit(i32 noundef 1, ptr noundef %3) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %nilfs_sb_need_update.exit.if.end65_crit_edge, %land.end.if.end65_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %try_to_freeze.exit
  %timeout.3 = phi i32 [ 0, %try_to_freeze.exit ], [ %land.ext59, %if.end65 ]
  %122 = ptrtoint ptr %sc_state to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sc_state, align 8
  %and140 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool.not141 = icmp eq i32 %and140, 0
  br i1 %tobool.not141, label %if.end66.if.end.backedge_crit_edge, label %if.end66.cleanup70_crit_edge

if.end66.cleanup70_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end66.if.end.backedge_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.backedge

cleanup70:                                        ; preds = %if.end66.cleanup70_crit_edge, %cleanup.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sc_state_lock) #9
  %124 = ptrtoint ptr %sc_task to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %sc_task, align 8
  call void @__wake_up(ptr noundef %sc_wait_task, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !58, !60, !61, !63, !65, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !148, !149, !151, !153, !154, !155, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !203, !205, !207, !209}
!llvm.named.register.sp = !{!211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__tracepoint_nilfs2_collection_stage_transition, !1, !"__tracepoint_nilfs2_collection_stage_transition", i1 false, i1 false}
!1 = !{!"../include/trace/events/nilfs2.h", i32 25, i32 1}
!2 = !{ptr @__tracepoint_ptr_nilfs2_collection_stage_transition, !1, !"__tracepoint_ptr_nilfs2_collection_stage_transition", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_nilfs2_collection_stage_transition, !1, !"__SCK__tp_func_nilfs2_collection_stage_transition", i1 false, i1 false}
!4 = !{ptr @__tracepoint_nilfs2_transaction_transition, !5, !"__tracepoint_nilfs2_transaction_transition", i1 false, i1 false}
!5 = !{!"../include/trace/events/nilfs2.h", i32 66, i32 1}
!6 = !{ptr @__tracepoint_ptr_nilfs2_transaction_transition, !5, !"__tracepoint_ptr_nilfs2_transaction_transition", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_nilfs2_transaction_transition, !5, !"__SCK__tp_func_nilfs2_transaction_transition", i1 false, i1 false}
!8 = !{ptr @__tracepoint_nilfs2_segment_usage_check, !9, !"__tracepoint_nilfs2_segment_usage_check", i1 false, i1 false}
!9 = !{!"../include/trace/events/nilfs2.h", i32 99, i32 1}
!10 = !{ptr @__tracepoint_ptr_nilfs2_segment_usage_check, !9, !"__tracepoint_ptr_nilfs2_segment_usage_check", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_nilfs2_segment_usage_check, !9, !"__SCK__tp_func_nilfs2_segment_usage_check", i1 false, i1 false}
!12 = !{ptr @__tracepoint_nilfs2_segment_usage_allocated, !13, !"__tracepoint_nilfs2_segment_usage_allocated", i1 false, i1 false}
!13 = !{!"../include/trace/events/nilfs2.h", i32 124, i32 1}
!14 = !{ptr @__tracepoint_ptr_nilfs2_segment_usage_allocated, !13, !"__tracepoint_ptr_nilfs2_segment_usage_allocated", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_nilfs2_segment_usage_allocated, !13, !"__SCK__tp_func_nilfs2_segment_usage_allocated", i1 false, i1 false}
!16 = !{ptr @__tracepoint_nilfs2_segment_usage_freed, !17, !"__tracepoint_nilfs2_segment_usage_freed", i1 false, i1 false}
!17 = !{!"../include/trace/events/nilfs2.h", i32 145, i32 1}
!18 = !{ptr @__tracepoint_ptr_nilfs2_segment_usage_freed, !17, !"__tracepoint_ptr_nilfs2_segment_usage_freed", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_nilfs2_segment_usage_freed, !17, !"__SCK__tp_func_nilfs2_segment_usage_freed", i1 false, i1 false}
!20 = !{ptr @__tracepoint_nilfs2_mdt_insert_new_block, !21, !"__tracepoint_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!21 = !{!"../include/trace/events/nilfs2.h", i32 166, i32 1}
!22 = !{ptr @__tracepoint_ptr_nilfs2_mdt_insert_new_block, !21, !"__tracepoint_ptr_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_nilfs2_mdt_insert_new_block, !21, !"__SCK__tp_func_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!24 = !{ptr @__tracepoint_nilfs2_mdt_submit_block, !25, !"__tracepoint_nilfs2_mdt_submit_block", i1 false, i1 false}
!25 = !{!"../include/trace/events/nilfs2.h", i32 191, i32 1}
!26 = !{ptr @__tracepoint_ptr_nilfs2_mdt_submit_block, !25, !"__tracepoint_ptr_nilfs2_mdt_submit_block", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_nilfs2_mdt_submit_block, !25, !"__SCK__tp_func_nilfs2_mdt_submit_block", i1 false, i1 false}
!28 = !{ptr @event_class_nilfs2_collection_stage_transition, !1, !"event_class_nilfs2_collection_stage_transition", i1 false, i1 false}
!29 = !{ptr @event_nilfs2_collection_stage_transition, !1, !"event_nilfs2_collection_stage_transition", i1 false, i1 false}
!30 = !{ptr @__event_nilfs2_collection_stage_transition, !1, !"__event_nilfs2_collection_stage_transition", i1 false, i1 false}
!31 = !{ptr @event_class_nilfs2_transaction_transition, !5, !"event_class_nilfs2_transaction_transition", i1 false, i1 false}
!32 = !{ptr @event_nilfs2_transaction_transition, !5, !"event_nilfs2_transaction_transition", i1 false, i1 false}
!33 = !{ptr @__event_nilfs2_transaction_transition, !5, !"__event_nilfs2_transaction_transition", i1 false, i1 false}
!34 = !{ptr @event_class_nilfs2_segment_usage_check, !9, !"event_class_nilfs2_segment_usage_check", i1 false, i1 false}
!35 = !{ptr @event_nilfs2_segment_usage_check, !9, !"event_nilfs2_segment_usage_check", i1 false, i1 false}
!36 = !{ptr @__event_nilfs2_segment_usage_check, !9, !"__event_nilfs2_segment_usage_check", i1 false, i1 false}
!37 = !{ptr @event_class_nilfs2_segment_usage_allocated, !13, !"event_class_nilfs2_segment_usage_allocated", i1 false, i1 false}
!38 = !{ptr @event_nilfs2_segment_usage_allocated, !13, !"event_nilfs2_segment_usage_allocated", i1 false, i1 false}
!39 = !{ptr @__event_nilfs2_segment_usage_allocated, !13, !"__event_nilfs2_segment_usage_allocated", i1 false, i1 false}
!40 = !{ptr @event_class_nilfs2_segment_usage_freed, !17, !"event_class_nilfs2_segment_usage_freed", i1 false, i1 false}
!41 = !{ptr @event_nilfs2_segment_usage_freed, !17, !"event_nilfs2_segment_usage_freed", i1 false, i1 false}
!42 = !{ptr @__event_nilfs2_segment_usage_freed, !17, !"__event_nilfs2_segment_usage_freed", i1 false, i1 false}
!43 = !{ptr @event_class_nilfs2_mdt_insert_new_block, !21, !"event_class_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!44 = !{ptr @event_nilfs2_mdt_insert_new_block, !21, !"event_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!45 = !{ptr @__event_nilfs2_mdt_insert_new_block, !21, !"__event_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!46 = !{ptr @event_class_nilfs2_mdt_submit_block, !25, !"event_class_nilfs2_mdt_submit_block", i1 false, i1 false}
!47 = !{ptr @event_nilfs2_mdt_submit_block, !25, !"event_nilfs2_mdt_submit_block", i1 false, i1 false}
!48 = !{ptr @__event_nilfs2_mdt_submit_block, !25, !"__event_nilfs2_mdt_submit_block", i1 false, i1 false}
!49 = !{ptr @__bpf_trace_tp_map_nilfs2_collection_stage_transition, !1, !"__bpf_trace_tp_map_nilfs2_collection_stage_transition", i1 false, i1 false}
!50 = !{ptr @__bpf_trace_tp_map_nilfs2_transaction_transition, !5, !"__bpf_trace_tp_map_nilfs2_transaction_transition", i1 false, i1 false}
!51 = !{ptr @__bpf_trace_tp_map_nilfs2_segment_usage_check, !9, !"__bpf_trace_tp_map_nilfs2_segment_usage_check", i1 false, i1 false}
!52 = !{ptr @__bpf_trace_tp_map_nilfs2_segment_usage_allocated, !13, !"__bpf_trace_tp_map_nilfs2_segment_usage_allocated", i1 false, i1 false}
!53 = !{ptr @__bpf_trace_tp_map_nilfs2_segment_usage_freed, !17, !"__bpf_trace_tp_map_nilfs2_segment_usage_freed", i1 false, i1 false}
!54 = !{ptr @__bpf_trace_tp_map_nilfs2_mdt_insert_new_block, !21, !"__bpf_trace_tp_map_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!55 = !{ptr @__bpf_trace_tp_map_nilfs2_mdt_submit_block, !25, !"__bpf_trace_tp_map_nilfs2_mdt_submit_block", i1 false, i1 false}
!56 = !{ptr @.str, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nilfs2/segment.c", i32 2452, i32 3}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../fs/nilfs2/segment.c", i32 2453, i32 3}
!60 = !{ptr @.str.1, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.2, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nilfs2/segment.c", i32 2460, i32 4}
!63 = !{ptr @.str.3, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nilfs2/segment.c", i32 2815, i32 3}
!65 = !{ptr @__tpstrtab_nilfs2_collection_stage_transition, !1, !"__tpstrtab_nilfs2_collection_stage_transition", i1 false, i1 false}
!66 = !{ptr @__tpstrtab_nilfs2_transaction_transition, !5, !"__tpstrtab_nilfs2_transaction_transition", i1 false, i1 false}
!67 = !{ptr @__tpstrtab_nilfs2_segment_usage_check, !9, !"__tpstrtab_nilfs2_segment_usage_check", i1 false, i1 false}
!68 = !{ptr @__tpstrtab_nilfs2_segment_usage_allocated, !13, !"__tpstrtab_nilfs2_segment_usage_allocated", i1 false, i1 false}
!69 = !{ptr @__tpstrtab_nilfs2_segment_usage_freed, !17, !"__tpstrtab_nilfs2_segment_usage_freed", i1 false, i1 false}
!70 = !{ptr @__tpstrtab_nilfs2_mdt_insert_new_block, !21, !"__tpstrtab_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!71 = !{ptr @__tpstrtab_nilfs2_mdt_submit_block, !25, !"__tpstrtab_nilfs2_mdt_submit_block", i1 false, i1 false}
!72 = !{ptr @str__nilfs2__trace_system_name, !73, !"str__nilfs2__trace_system_name", i1 false, i1 false}
!73 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!74 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @trace_event_fields_nilfs2_collection_stage_transition, !1, !"trace_event_fields_nilfs2_collection_stage_transition", i1 false, i1 false}
!79 = !{ptr @trace_event_type_funcs_nilfs2_collection_stage_transition, !1, !"trace_event_type_funcs_nilfs2_collection_stage_transition", i1 false, i1 false}
!80 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @trace_raw_output_nilfs2_collection_stage_transition.symbols, !1, !"symbols", i1 false, i1 false}
!92 = !{ptr @print_fmt_nilfs2_collection_stage_transition, !1, !"print_fmt_nilfs2_collection_stage_transition", i1 false, i1 false}
!93 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.20, !5, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.21, !5, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.22, !5, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.23, !5, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.24, !5, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @trace_event_fields_nilfs2_transaction_transition, !5, !"trace_event_fields_nilfs2_transaction_transition", i1 false, i1 false}
!100 = !{ptr @trace_event_type_funcs_nilfs2_transaction_transition, !5, !"trace_event_type_funcs_nilfs2_transaction_transition", i1 false, i1 false}
!101 = !{ptr @.str.25, !5, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.26, !5, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.27, !5, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.28, !5, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.29, !5, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.30, !5, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.31, !5, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @trace_raw_output_nilfs2_transaction_transition.symbols, !5, !"symbols", i1 false, i1 false}
!109 = !{ptr @print_fmt_nilfs2_transaction_transition, !5, !"print_fmt_nilfs2_transaction_transition", i1 false, i1 false}
!110 = !{ptr @.str.32, !9, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.33, !9, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.34, !9, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.35, !9, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.36, !9, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.37, !9, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @trace_event_fields_nilfs2_segment_usage_check, !9, !"trace_event_fields_nilfs2_segment_usage_check", i1 false, i1 false}
!117 = !{ptr @trace_event_type_funcs_nilfs2_segment_usage_check, !9, !"trace_event_type_funcs_nilfs2_segment_usage_check", i1 false, i1 false}
!118 = !{ptr @.str.38, !9, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @print_fmt_nilfs2_segment_usage_check, !9, !"print_fmt_nilfs2_segment_usage_check", i1 false, i1 false}
!120 = !{ptr @trace_event_fields_nilfs2_segment_usage_allocated, !13, !"trace_event_fields_nilfs2_segment_usage_allocated", i1 false, i1 false}
!121 = !{ptr @trace_event_type_funcs_nilfs2_segment_usage_allocated, !13, !"trace_event_type_funcs_nilfs2_segment_usage_allocated", i1 false, i1 false}
!122 = !{ptr @.str.39, !13, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @print_fmt_nilfs2_segment_usage_allocated, !13, !"print_fmt_nilfs2_segment_usage_allocated", i1 false, i1 false}
!124 = !{ptr @trace_event_fields_nilfs2_segment_usage_freed, !17, !"trace_event_fields_nilfs2_segment_usage_freed", i1 false, i1 false}
!125 = !{ptr @trace_event_type_funcs_nilfs2_segment_usage_freed, !17, !"trace_event_type_funcs_nilfs2_segment_usage_freed", i1 false, i1 false}
!126 = !{ptr @print_fmt_nilfs2_segment_usage_freed, !17, !"print_fmt_nilfs2_segment_usage_freed", i1 false, i1 false}
!127 = !{ptr @.str.40, !21, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.41, !21, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.42, !21, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @trace_event_fields_nilfs2_mdt_insert_new_block, !21, !"trace_event_fields_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!131 = !{ptr @trace_event_type_funcs_nilfs2_mdt_insert_new_block, !21, !"trace_event_type_funcs_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!132 = !{ptr @.str.43, !21, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @print_fmt_nilfs2_mdt_insert_new_block, !21, !"print_fmt_nilfs2_mdt_insert_new_block", i1 false, i1 false}
!134 = !{ptr @.str.44, !25, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.45, !25, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @trace_event_fields_nilfs2_mdt_submit_block, !25, !"trace_event_fields_nilfs2_mdt_submit_block", i1 false, i1 false}
!137 = !{ptr @trace_event_type_funcs_nilfs2_mdt_submit_block, !25, !"trace_event_type_funcs_nilfs2_mdt_submit_block", i1 false, i1 false}
!138 = !{ptr @.str.46, !25, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @print_fmt_nilfs2_mdt_submit_block, !25, !"print_fmt_nilfs2_mdt_submit_block", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/nilfs2/segment.c", i32 156, i32 3}
!142 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!143 = !{ptr @.str.48, !5, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!145 = !{ptr @.str.49, !5, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!148 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!153 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../fs/nilfs2/segment.c", i32 2173, i32 2}
!157 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!158 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!159 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/nilfs2/segment.c", i32 1943, i32 5}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!165 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!169 = !{ptr @nilfs_sc_file_ops, !170, !"nilfs_sc_file_ops", i1 false, i1 false}
!170 = !{!"../fs/nilfs2/segment.c", i32 612, i32 41}
!171 = !{ptr @nilfs_sc_dat_ops, !172, !"nilfs_sc_dat_ops", i1 false, i1 false}
!172 = !{!"../fs/nilfs2/segment.c", i32 661, i32 41}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/page-flags.h", i32 461, i32 1}
!175 = !{ptr @.str.60, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!177 = !{ptr @nilfs_sc_dsync_ops, !178, !"nilfs_sc_dsync_ops", i1 false, i1 false}
!178 = !{!"../fs/nilfs2/segment.c", i32 669, i32 41}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!181 = !{ptr @nilfs_segctor_new.__key, !182, !"__key", i1 false, i1 false}
!182 = !{!"../fs/nilfs2/segment.c", i32 2659, i32 2}
!183 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @nilfs_segctor_new.__key.63, !185, !"__key", i1 false, i1 false}
!185 = !{!"../fs/nilfs2/segment.c", i32 2660, i32 2}
!186 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @nilfs_segctor_new.__key.65, !188, !"__key", i1 false, i1 false}
!188 = !{!"../fs/nilfs2/segment.c", i32 2661, i32 2}
!189 = !{ptr @.str.66, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @nilfs_segctor_new.__key.67, !191, !"__key", i1 false, i1 false}
!191 = !{!"../fs/nilfs2/segment.c", i32 2662, i32 2}
!192 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @nilfs_segctor_new.__key.69, !194, !"__key", i1 false, i1 false}
!194 = !{!"../fs/nilfs2/segment.c", i32 2668, i32 2}
!195 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @nilfs_segctor_new.__key.71, !197, !"__key", i1 false, i1 false}
!197 = !{!"../fs/nilfs2/segment.c", i32 2669, i32 2}
!198 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/nilfs2/segment.c", i32 2615, i32 6}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/nilfs2/segment.c", i32 2619, i32 3}
!203 = !{ptr @.str.75, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/nilfs2/segment.c", i32 2543, i32 2}
!205 = !{ptr @.str.76, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!207 = !{ptr @.str.77, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/nilfs2/segment.c", i32 2730, i32 3}
!209 = !{ptr @.str.78, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/nilfs2/segment.c", i32 2736, i32 3}
!211 = !{!"sp"}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{!"auto-init"}
!224 = !{i64 2153008539}
!225 = !{i64 1182326, i64 1182387}
!226 = !{i64 1185058}
!227 = !{i64 1185343}
!228 = !{i64 2153017389}
!229 = !{i64 2148378323, i64 2148378328, i64 2148378341, i64 2148378385, i64 2148378419, i64 2148378440}
!230 = !{i64 2155146467}
!231 = !{i64 2155146742}
!232 = !{i64 2150121538}
!233 = !{i64 2150122574}
!234 = !{i64 2153027343}
!235 = !{i64 2153036838}
!236 = !{i64 2153046315}
!237 = !{i64 2156400616, i64 2156401100, i64 2156400653, i64 2156400709, i64 2156400743, i64 2156400767, i64 2156400808, i64 2156400829, i64 2156400857, i64 2156400891}
!238 = !{i64 2156597113, i64 2156597598, i64 2156597150, i64 2156597206, i64 2156597240, i64 2156597264, i64 2156597305, i64 2156597326, i64 2156597354, i64 2156597388}
!239 = !{i64 2156406466, i64 2156406950, i64 2156406503, i64 2156406559, i64 2156406593, i64 2156406617, i64 2156406658, i64 2156406679, i64 2156406707, i64 2156406741}
!240 = !{i64 2156590518}
!241 = !{i64 2156409153, i64 2156409637, i64 2156409190, i64 2156409246, i64 2156409280, i64 2156409304, i64 2156409345, i64 2156409366, i64 2156409394, i64 2156409428}
!242 = !{i64 2156410741, i64 2156411225, i64 2156410778, i64 2156410834, i64 2156410868, i64 2156410892, i64 2156410933, i64 2156410954, i64 2156410982, i64 2156411016}
!243 = !{i64 2156479531, i64 2156480016, i64 2156479568, i64 2156479624, i64 2156479658, i64 2156479682, i64 2156479723, i64 2156479744, i64 2156479772, i64 2156479806}
!244 = !{!"branch_weights", i32 1, i32 4000, i32 1, i32 1}
!245 = !{i64 2156461147, i64 2156461632, i64 2156461184, i64 2156461240, i64 2156461274, i64 2156461298, i64 2156461339, i64 2156461360, i64 2156461388, i64 2156461422}
!246 = !{i64 2156476049, i64 2156476534, i64 2156476086, i64 2156476142, i64 2156476176, i64 2156476200, i64 2156476241, i64 2156476262, i64 2156476290, i64 2156476324}
!247 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!248 = !{i64 2156412604, i64 2156413088, i64 2156412641, i64 2156412697, i64 2156412731, i64 2156412755, i64 2156412796, i64 2156412817, i64 2156412845, i64 2156412879}
!249 = !{i64 2148777646, i64 2148777672, i64 2148777701, i64 2148777735, i64 2148777766, i64 2148777789}
!250 = !{i64 2156515011, i64 2156515496, i64 2156515048, i64 2156515104, i64 2156515138, i64 2156515162, i64 2156515203, i64 2156515224, i64 2156515252, i64 2156515286}
!251 = !{i64 2156433765, i64 2156434249, i64 2156433802, i64 2156433858, i64 2156433892, i64 2156433916, i64 2156433957, i64 2156433978, i64 2156434006, i64 2156434040}
!252 = !{i64 2150332644, i64 2150333135, i64 2150332681, i64 2150332737, i64 2150332771, i64 2150332795, i64 2150332836, i64 2150332857, i64 2150332885, i64 2150332919}
!253 = !{i64 2148786504, i64 2148786536, i64 2148786565, i64 2148786599, i64 2148786630, i64 2148786653}
!254 = !{i64 2148875609}
!255 = !{i64 2156566102}
!256 = !{i64 1287138, i64 1287159, i64 1287182, i64 1287201, i64 1287220}
!257 = !{i64 2156566511}
!258 = !{i64 2156610080}
!259 = !{i64 2148779176, i64 2148779208, i64 2148779237, i64 2148779271, i64 2148779302, i64 2148779325}
!260 = !{i64 2155126664}
!261 = !{i64 2155126901}
!262 = !{i64 2156459328, i64 2156459813, i64 2156459365, i64 2156459421, i64 2156459455, i64 2156459479, i64 2156459520, i64 2156459541, i64 2156459569, i64 2156459603}
!263 = !{i64 2150795411, i64 2150795902, i64 2150795448, i64 2150795504, i64 2150795538, i64 2150795562, i64 2150795603, i64 2150795624, i64 2150795652, i64 2150795686}
!264 = !{i64 2156423960, i64 2156424444, i64 2156423997, i64 2156424053, i64 2156424087, i64 2156424111, i64 2156424152, i64 2156424173, i64 2156424201, i64 2156424235}
!265 = !{i64 2156421902, i64 2156422386, i64 2156421939, i64 2156421995, i64 2156422029, i64 2156422053, i64 2156422094, i64 2156422115, i64 2156422143, i64 2156422177}
!266 = !{i64 2156537440, i64 2156537925, i64 2156537477, i64 2156537533, i64 2156537567, i64 2156537591, i64 2156537632, i64 2156537653, i64 2156537681, i64 2156537715}
!267 = !{i64 2150852559, i64 2150853050, i64 2150852596, i64 2150852652, i64 2150852686, i64 2150852710, i64 2150852751, i64 2150852772, i64 2150852800, i64 2150852834}
!268 = !{i64 2150446614, i64 2150447105, i64 2150446651, i64 2150446707, i64 2150446741, i64 2150446765, i64 2150446806, i64 2150446827, i64 2150446855, i64 2150446889}
!269 = !{i64 2150407097, i64 2150407270, i64 2150407285, i64 2150407337, i64 2150407396, i64 2150407420, i64 2150407461, i64 2150407482, i64 2150407510, i64 2150407542}
!270 = !{i64 2150407972, i64 2150408145, i64 2150408160, i64 2150408212, i64 2150408271, i64 2150408295, i64 2150408336, i64 2150408357, i64 2150408385, i64 2150408417}
!271 = !{i64 2150398295, i64 2150398468, i64 2150398483, i64 2150398535, i64 2150398594, i64 2150398618, i64 2150398659, i64 2150398680, i64 2150398708, i64 2150398740}
!272 = !{i64 2150399170, i64 2150399343, i64 2150399358, i64 2150399410, i64 2150399469, i64 2150399493, i64 2150399534, i64 2150399555, i64 2150399583, i64 2150399615}
