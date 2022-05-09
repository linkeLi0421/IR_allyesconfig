; ModuleID = '/llk/IR_all_yes/block/blk-wbt.c_pt.bc'
source_filename = "../block/blk-wbt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wbt_enable_default\22, \22a\22\09"
module asm "\09.weak\09__crc_wbt_enable_default\09\09\09\09"
module asm "\09.long\09__crc_wbt_enable_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wbt_enable_default:\09\09\09\09\09"
module asm "\09.asciz \09\22wbt_enable_default\22\09\09\09\09\09"
module asm "__kstrtabns_wbt_enable_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wbt_disable_default\22, \22a\22\09"
module asm "\09.weak\09__crc_wbt_disable_default\09\09\09\09"
module asm "\09.long\09__crc_wbt_disable_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wbt_disable_default:\09\09\09\09\09"
module asm "\09.asciz \09\22wbt_disable_default\22\09\09\09\09\09"
module asm "__kstrtabns_wbt_disable_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.112 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.114, %struct.trace_event, ptr, ptr, %union.anon.115, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.114 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%union.anon.118 = type { %struct.bpf_raw_event_map }
%union.anon.119 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_wbt_stat = type { %struct.trace_entry, [32 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_wbt_lat = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.trace_event_raw_wbt_step = type { %struct.trace_entry, [32 x i8], ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_wbt_timer = type { %struct.trace_entry, [32 x i8], i32, i32, i32, [0 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.rq_wb = type { i32, i32, i16, i32, i64, i64, ptr, i64, ptr, i32, i32, i32, i32, %struct.rq_qos, [3 x %struct.rq_wait], %struct.rq_depth }
%struct.rq_wait = type { %struct.wait_queue_head, %struct.atomic_t }
%struct.rq_depth = type { i32, i32, i8, i32, i32 }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, ptr, ptr, i32, ptr, ptr, ptr, %struct.callback_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.89 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.89 = type { %struct.work_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.40, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.41, %union.anon.42, %union.anon.43, %union.anon.48, ptr, ptr }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%union.anon.42 = type { %struct.rb_node }
%union.anon.43 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, %struct.list_head, ptr }
%union.anon.48 = type { i64, [8 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.wbt_wait_data = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__tpstrtab_wbt_stat = internal constant [9 x i8] c"wbt_stat\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wbt_stat = dso_local global %struct.static_call_key { ptr @__traceiter_wbt_stat }, align 4
@__tracepoint_wbt_stat = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wbt_stat, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wbt_stat, ptr null, ptr @__traceiter_wbt_stat, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wbt_stat = internal constant ptr @__tracepoint_wbt_stat, section "__tracepoints_ptrs", align 4
@__tpstrtab_wbt_lat = internal constant [8 x i8] c"wbt_lat\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wbt_lat = dso_local global %struct.static_call_key { ptr @__traceiter_wbt_lat }, align 4
@__tracepoint_wbt_lat = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wbt_lat, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wbt_lat, ptr null, ptr @__traceiter_wbt_lat, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wbt_lat = internal constant ptr @__tracepoint_wbt_lat, section "__tracepoints_ptrs", align 4
@__tpstrtab_wbt_step = internal constant [9 x i8] c"wbt_step\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wbt_step = dso_local global %struct.static_call_key { ptr @__traceiter_wbt_step }, align 4
@__tracepoint_wbt_step = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wbt_step, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wbt_step, ptr null, ptr @__traceiter_wbt_step, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wbt_step = internal constant ptr @__tracepoint_wbt_step, section "__tracepoints_ptrs", align 4
@__tpstrtab_wbt_timer = internal constant [10 x i8] c"wbt_timer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wbt_timer = dso_local global %struct.static_call_key { ptr @__traceiter_wbt_timer }, align 4
@__tracepoint_wbt_timer = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wbt_timer, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wbt_timer, ptr null, ptr @__traceiter_wbt_timer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wbt_timer = internal constant ptr @__tracepoint_wbt_timer, section "__tracepoints_ptrs", align 4
@str__wbt__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wbt\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_wbt_stat = internal global { [12 x %struct.trace_event_fields], [64 x i8] } { [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.112 { %struct.anon.113 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.112 { %struct.anon.113 { ptr @.str.3, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.112 { %struct.anon.113 { ptr @.str.5, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.112 { %struct.anon.113 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.112 { %struct.anon.113 { ptr @.str.7, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.112 { %struct.anon.113 { ptr @.str.8, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.112 { %struct.anon.113 { ptr @.str.9, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.112 { %struct.anon.113 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.112 { %struct.anon.113 { ptr @.str.11, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.112 { %struct.anon.113 { ptr @.str.12, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.112 { %struct.anon.113 { ptr @.str.13, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [64 x i8] zeroinitializer }, align 32
@event_class_wbt_stat = internal global %struct.trace_event_class { ptr @str__wbt__trace_system_name, ptr @trace_event_raw_event_wbt_stat, ptr @perf_trace_wbt_stat, ptr @trace_event_reg, ptr @trace_event_fields_wbt_stat, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wbt_stat, i64 24), ptr getelementptr (i8, ptr @event_class_wbt_stat, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wbt_stat = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wbt_stat, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wbt_stat = internal global { [218 x i8], [38 x i8] } { [218 x i8] c"\22%s: rmean=%llu, rmin=%llu, rmax=%llu, rsamples=%llu, wmean=%llu, wmin=%llu, wmax=%llu, wsamples=%llu\22, REC->name, REC->rmean, REC->rmin, REC->rmax, REC->rnr_samples, REC->wmean, REC->wmin, REC->wmax, REC->wnr_samples\00", [38 x i8] zeroinitializer }, align 32
@event_wbt_stat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wbt_stat, %union.anon.114 { ptr @__tracepoint_wbt_stat }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wbt_stat }, ptr @print_fmt_wbt_stat, ptr null, %union.anon.115 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wbt_stat = internal global ptr @event_wbt_stat, section "_ftrace_events", align 4
@trace_event_fields_wbt_lat = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.112 { %struct.anon.113 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.112 { %struct.anon.113 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_wbt_lat = internal global %struct.trace_event_class { ptr @str__wbt__trace_system_name, ptr @trace_event_raw_event_wbt_lat, ptr @perf_trace_wbt_lat, ptr @trace_event_reg, ptr @trace_event_fields_wbt_lat, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wbt_lat, i64 24), ptr getelementptr (i8, ptr @event_class_wbt_lat, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wbt_lat = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wbt_lat, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wbt_lat = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"\22%s: latency %lluus\22, REC->name, (unsigned long long) REC->lat\00", [33 x i8] zeroinitializer }, align 32
@event_wbt_lat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wbt_lat, %union.anon.114 { ptr @__tracepoint_wbt_lat }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wbt_lat }, ptr @print_fmt_wbt_lat, ptr null, %union.anon.115 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wbt_lat = internal global ptr @event_wbt_lat, section "_ftrace_events", align 4
@trace_event_fields_wbt_step = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.112 { %struct.anon.113 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.112 { %struct.anon.113 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.112 { %struct.anon.113 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.112 { %struct.anon.113 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.112 { %struct.anon.113 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.112 { %struct.anon.113 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.112 { %struct.anon.113 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_wbt_step = internal global %struct.trace_event_class { ptr @str__wbt__trace_system_name, ptr @trace_event_raw_event_wbt_step, ptr @perf_trace_wbt_step, ptr @trace_event_reg, ptr @trace_event_fields_wbt_step, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wbt_step, i64 24), ptr getelementptr (i8, ptr @event_class_wbt_step, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wbt_step = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wbt_step, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wbt_step = internal global { [143 x i8], [49 x i8] } { [143 x i8] c"\22%s: %s: step=%d, window=%luus, background=%u, normal=%u, max=%u\22, REC->name, REC->msg, REC->step, REC->window, REC->bg, REC->normal, REC->max\00", [49 x i8] zeroinitializer }, align 32
@event_wbt_step = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wbt_step, %union.anon.114 { ptr @__tracepoint_wbt_step }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wbt_step }, ptr @print_fmt_wbt_step, ptr null, %union.anon.115 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wbt_step = internal global ptr @event_wbt_step, section "_ftrace_events", align 4
@trace_event_fields_wbt_timer = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.112 { %struct.anon.113 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.112 { %struct.anon.113 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.112 { %struct.anon.113 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.112 { %struct.anon.113 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_wbt_timer = internal global %struct.trace_event_class { ptr @str__wbt__trace_system_name, ptr @trace_event_raw_event_wbt_timer, ptr @perf_trace_wbt_timer, ptr @trace_event_reg, ptr @trace_event_fields_wbt_timer, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wbt_timer, i64 24), ptr getelementptr (i8, ptr @event_class_wbt_timer, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wbt_timer = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wbt_timer, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wbt_timer = internal global { [88 x i8], [40 x i8] } { [88 x i8] c"\22%s: status=%u, step=%d, inflight=%u\22, REC->name, REC->status, REC->step, REC->inflight\00", [40 x i8] zeroinitializer }, align 32
@event_wbt_timer = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wbt_timer, %union.anon.114 { ptr @__tracepoint_wbt_timer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wbt_timer }, ptr @print_fmt_wbt_timer, ptr null, %union.anon.115 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wbt_timer = internal global ptr @event_wbt_timer, section "_ftrace_events", align 4
@__bpf_trace_tp_map_wbt_stat = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_wbt_stat, ptr @__bpf_trace_wbt_stat, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wbt_lat = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_wbt_lat, ptr @__bpf_trace_wbt_lat, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wbt_step = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_wbt_step, ptr @__bpf_trace_wbt_step, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wbt_timer = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_wbt_timer, ptr @__bpf_trace_wbt_timer, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab_wbt_enable_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_wbt_enable_default = external dso_local constant [0 x i8], align 1
@__ksymtab_wbt_enable_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wbt_enable_default to i32), ptr @__kstrtab_wbt_enable_default, ptr @__kstrtabns_wbt_enable_default }, section "___ksymtab_gpl+wbt_enable_default", align 4
@__kstrtab_wbt_disable_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_wbt_disable_default = external dso_local constant [0 x i8], align 1
@__ksymtab_wbt_disable_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wbt_disable_default to i32), ptr @__kstrtab_wbt_disable_default, ptr @__kstrtabns_wbt_disable_default }, section "___ksymtab_gpl+wbt_disable_default", align 4
@wbt_rqos_ops = internal global { %struct.rq_qos_ops, [52 x i8] } { %struct.rq_qos_ops { ptr @wbt_wait, ptr @wbt_track, ptr null, ptr @wbt_issue, ptr @wbt_requeue, ptr @wbt_done, ptr null, ptr @wbt_cleanup, ptr @wbt_queue_depth_changed, ptr @wbt_exit, ptr @wbt_debugfs_attrs }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmean\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmin\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmax\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rnr_samples\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtime\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wmean\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wmin\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wmax\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wnr_samples\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wtime\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s: rmean=%llu, rmin=%llu, rmax=%llu, rsamples=%llu, wmean=%llu, wmin=%llu, wmax=%llu, wsamples=%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lat\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: latency %lluus\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"window\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bg\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: %s: step=%d, window=%luus, background=%u, normal=%u, max=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inflight\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: status=%u, step=%d, inflight=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/wbt.h\00", [37 x i8] zeroinitializer }, align 32
@trace_wbt_lat.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_wbt_stat.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_wbt_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scale_down.___tp_str = internal global ptr @.str.34, section "__tracepoint_str", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scale down\00", [21 x i8] zeroinitializer }, align 32
@trace_wbt_step.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scale_up.___tp_str = internal global ptr @.str.35, section "__tracepoint_str", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scale up\00", [23 x i8] zeroinitializer }, align 32
@rq_wait_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rq_wait->wait\00", [17 x i8] zeroinitializer }, align 32
@wbt_debugfs_attrs = internal constant { [9 x %struct.blk_mq_debugfs_attr], [44 x i8] } { [9 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.38, i16 256, ptr @wbt_curr_win_nsec_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.39, i16 256, ptr @wbt_enabled_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.40, i16 256, ptr @wbt_id_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.29, i16 256, ptr @wbt_inflight_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.41, i16 256, ptr @wbt_min_lat_nsec_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.42, i16 256, ptr @wbt_unknown_cnt_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.43, i16 256, ptr @wbt_normal_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.44, i16 256, ptr @wbt_background_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], [44 x i8] zeroinitializer }, align 32
@wbt_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block/blk-wbt.c\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"curr_win_nsec\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_lat_nsec\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unknown_cnt\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wb_normal\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wb_background\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d: inflight %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"str__wbt__trace_system_name\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"trace_event_fields_wbt_stat\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_wbt_stat\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"print_fmt_wbt_stat\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"event_wbt_stat\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"trace_event_fields_wbt_lat\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_wbt_lat\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"print_fmt_wbt_lat\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"event_wbt_lat\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"trace_event_fields_wbt_step\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_wbt_step\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"print_fmt_wbt_step\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"event_wbt_step\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [29 x i8] c"trace_event_fields_wbt_timer\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_wbt_timer\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"print_fmt_wbt_timer\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"event_wbt_timer\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"wbt_rqos_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 805, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 15, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 89, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 129, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"../include/trace/events/wbt.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 59, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 108, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 326, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 317, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [22 x i8] c"../block/blk-rq-qos.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 86, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"wbt_debugfs_attrs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 792, i32 41 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 199, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 793, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 794, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 795, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 797, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 798, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 799, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 800, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 723, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 732, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 740, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 751, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [19 x i8] c"../block/blk-wbt.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 761, i32 16 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__bpf_trace_tp_map_wbt_lat, ptr @__bpf_trace_tp_map_wbt_stat, ptr @__bpf_trace_tp_map_wbt_step, ptr @__bpf_trace_tp_map_wbt_timer, ptr @__event_wbt_lat, ptr @__event_wbt_stat, ptr @__event_wbt_step, ptr @__event_wbt_timer, ptr @__ksymtab_wbt_disable_default, ptr @__ksymtab_wbt_enable_default, ptr @__tracepoint_ptr_wbt_lat, ptr @__tracepoint_ptr_wbt_stat, ptr @__tracepoint_ptr_wbt_step, ptr @__tracepoint_ptr_wbt_timer, ptr @__tracepoint_wbt_lat, ptr @__tracepoint_wbt_stat, ptr @__tracepoint_wbt_step, ptr @__tracepoint_wbt_timer, ptr @event_class_wbt_lat, ptr @event_class_wbt_stat, ptr @event_class_wbt_step, ptr @event_class_wbt_timer, ptr @event_wbt_lat, ptr @event_wbt_stat, ptr @event_wbt_step, ptr @event_wbt_timer, ptr @scale_down.___tp_str, ptr @scale_up.___tp_str, ptr @str__wbt__trace_system_name, ptr @trace_event_fields_wbt_stat, ptr @trace_event_type_funcs_wbt_stat, ptr @print_fmt_wbt_stat, ptr @trace_event_fields_wbt_lat, ptr @trace_event_type_funcs_wbt_lat, ptr @print_fmt_wbt_lat, ptr @trace_event_fields_wbt_step, ptr @trace_event_type_funcs_wbt_step, ptr @print_fmt_wbt_step, ptr @trace_event_fields_wbt_timer, ptr @trace_event_type_funcs_wbt_timer, ptr @print_fmt_wbt_timer, ptr @wbt_rqos_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @rq_wait_init.__key, ptr @.str.36, ptr @wbt_debugfs_attrs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__wbt__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wbt_stat to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wbt_stat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wbt_stat to i32), i32 218, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wbt_stat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wbt_lat to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wbt_lat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wbt_lat to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wbt_lat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wbt_step to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wbt_step to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wbt_step to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wbt_step to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wbt_timer to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wbt_timer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wbt_timer to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wbt_timer to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbt_rqos_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rq_wait_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbt_debugfs_attrs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wbt_stat(ptr nocapture readnone %__data, ptr noundef %bdi, ptr noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_stat, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %bdi, ptr noundef %stat) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wbt_lat(ptr nocapture readnone %__data, ptr noundef %bdi, i32 noundef %lat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_lat, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %bdi, i32 noundef %lat) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wbt_step(ptr nocapture readnone %__data, ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_step, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wbt_timer(ptr nocapture readnone %__data, ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_timer, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wbt_stat(ptr noundef %__data, ptr noundef %bdi, ptr nocapture noundef readonly %stat) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !148

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !149

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 120) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 1
  %call6 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call7 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call6, i32 noundef 32) #15
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %stat, align 8
  %rmean = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %rmean to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rmean, align 8
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 1
  %6 = ptrtoint ptr %min to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %min, align 8
  %rmin = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %rmin to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rmin, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 2
  %9 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %max, align 8
  %rmax = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %rmax to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rmax, align 8
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 3
  %12 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_samples, align 8
  %conv = zext i32 %13 to i64
  %rnr_samples = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %rnr_samples to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %rnr_samples, align 8
  %arrayidx11 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx11, align 8
  %wmean = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 7
  %17 = ptrtoint ptr %wmean to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %wmean, align 8
  %min14 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1, i32 1
  %18 = ptrtoint ptr %min14 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %min14, align 8
  %wmin = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 8
  %20 = ptrtoint ptr %wmin to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %wmin, align 8
  %max16 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1, i32 2
  %21 = ptrtoint ptr %max16 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %max16, align 8
  %wmax = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 9
  %23 = ptrtoint ptr %wmax to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %wmax, align 8
  %nr_samples18 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1, i32 3
  %24 = ptrtoint ptr %nr_samples18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_samples18, align 8
  %conv19 = zext i32 %25 to i64
  %wnr_samples = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call3, i32 0, i32 10
  %26 = ptrtoint ptr %wnr_samples to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv19, ptr %wnr_samples, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wbt_stat(ptr noundef %__data, ptr noundef %bdi, ptr nocapture noundef readonly %stat) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !150
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 124, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !138) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 1
  %call17 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call18 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call17, i32 noundef 32) #15
  %27 = ptrtoint ptr %stat to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %stat, align 8
  %rmean = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %rmean to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %rmean, align 8
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 1
  %30 = ptrtoint ptr %min to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %min, align 8
  %rmin = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %rmin to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %rmin, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 2
  %33 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %max, align 8
  %rmax = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %rmax to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rmax, align 8
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 3
  %36 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_samples, align 8
  %conv = zext i32 %37 to i64
  %rnr_samples = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %rnr_samples to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv, ptr %rnr_samples, align 8
  %arrayidx23 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx23, align 8
  %wmean = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 7
  %41 = ptrtoint ptr %wmean to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %wmean, align 8
  %min26 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1, i32 1
  %42 = ptrtoint ptr %min26 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %min26, align 8
  %wmin = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 8
  %44 = ptrtoint ptr %wmin to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %wmin, align 8
  %max28 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1, i32 2
  %45 = ptrtoint ptr %max28 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %max28, align 8
  %wmax = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 9
  %47 = ptrtoint ptr %wmax to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %wmax, align 8
  %nr_samples30 = getelementptr %struct.blk_rq_stat, ptr %stat, i32 1, i32 3
  %48 = ptrtoint ptr %nr_samples30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_samples30, align 8
  %conv31 = zext i32 %49 to i64
  %wnr_samples = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %call13, i32 0, i32 10
  %50 = ptrtoint ptr %wnr_samples to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv31, ptr %wnr_samples, align 8
  %51 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rctx, align 4
  %53 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 124, i32 noundef %52, ptr noundef %__data, i64 noundef 1, ptr noundef %54, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wbt_lat(ptr noundef %__data, ptr noundef %bdi, i32 noundef %lat) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !148

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !149

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_lat, ptr %call3, i32 0, i32 1
  %call6 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call7 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call6, i32 noundef 32) #15
  %conv = zext i32 %lat to i64
  %3 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #18, !srcloc !151
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !152
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i21 = lshr i64 %asmresult10.i.i.i, 9
  %conv9 = trunc i64 %div158.i.i21 to i32
  %lat10 = getelementptr inbounds %struct.trace_event_raw_wbt_lat, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %lat10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv9, ptr %lat10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wbt_lat(ptr noundef %__data, ptr noundef %bdi, i32 noundef %lat) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !150
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !138) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_lat, ptr %call13, i32 0, i32 1
  %call17 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call18 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call17, i32 noundef 32) #15
  %conv = zext i32 %lat to i64
  %27 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #18, !srcloc !151
  %asmresult.i.i.i = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %27, 1
  %28 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !152
  %asmresult10.i.i.i = extractvalue { i64, i32 } %28, 0
  %div158.i.i43 = lshr i64 %asmresult10.i.i.i, 9
  %conv20 = trunc i64 %div158.i.i43 to i32
  %lat21 = getelementptr inbounds %struct.trace_event_raw_wbt_lat, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %lat21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv20, ptr %lat21, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wbt_step(ptr noundef %__data, ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !148

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !149

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 64) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 1
  %call6 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call7 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call6, i32 noundef 32) #15
  %msg8 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %msg8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %msg, ptr %msg8, align 4
  %step9 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %step9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %step, ptr %step9, align 4
  %conv = zext i32 %window to i64
  %5 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #18, !srcloc !151
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !152
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div158.i.i36 = lshr i64 %asmresult10.i.i.i, 9
  %conv11 = trunc i64 %div158.i.i36 to i32
  %window12 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %window12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv11, ptr %window12, align 4
  %bg13 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 5
  %8 = ptrtoint ptr %bg13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bg, ptr %bg13, align 4
  %normal14 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 6
  %9 = ptrtoint ptr %normal14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %normal, ptr %normal14, align 4
  %max15 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call3, i32 0, i32 7
  %10 = ptrtoint ptr %max15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %max, ptr %max15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wbt_step(ptr noundef %__data, ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !150
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !138) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 1
  %call17 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call18 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call17, i32 noundef 32) #15
  %msg19 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %msg19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg, ptr %msg19, align 4
  %step20 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %step20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %step, ptr %step20, align 4
  %conv = zext i32 %window to i64
  %29 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #18, !srcloc !151
  %asmresult.i.i.i = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %29, 1
  %30 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !152
  %asmresult10.i.i.i = extractvalue { i64, i32 } %30, 0
  %div158.i.i58 = lshr i64 %asmresult10.i.i.i, 9
  %conv22 = trunc i64 %div158.i.i58 to i32
  %window23 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 4
  %31 = ptrtoint ptr %window23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv22, ptr %window23, align 4
  %bg24 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 5
  %32 = ptrtoint ptr %bg24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bg, ptr %bg24, align 4
  %normal25 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 6
  %33 = ptrtoint ptr %normal25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %normal, ptr %normal25, align 4
  %max26 = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %call13, i32 0, i32 7
  %34 = ptrtoint ptr %max26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %max, ptr %max26, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wbt_timer(ptr noundef %__data, ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !148

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !149

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 52) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call3, i32 0, i32 1
  %call6 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call7 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call6, i32 noundef 32) #15
  %status8 = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %status, ptr %status8, align 4
  %step9 = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %step9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %step, ptr %step9, align 4
  %inflight10 = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %inflight10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inflight, ptr %inflight10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wbt_timer(ptr noundef %__data, ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !150
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !138) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call13, i32 0, i32 1
  %call17 = call ptr @bdi_dev_name(ptr noundef %bdi) #15
  %call18 = call i32 @strlcpy(ptr noundef %name, ptr noundef %call17, i32 noundef 32) #15
  %status19 = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %status, ptr %status19, align 4
  %step20 = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %step20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %step, ptr %step20, align 4
  %inflight21 = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %inflight21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inflight, ptr %inflight21, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wbt_stat(ptr noundef %__data, ptr noundef %bdi, ptr noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %bdi to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %stat to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wbt_lat(ptr noundef %__data, ptr noundef %bdi, i32 noundef %lat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %bdi to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %lat to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wbt_step(ptr noundef %__data, ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %bdi to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %msg to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %step to i64
  %conv12 = zext i32 %window to i64
  %conv16 = zext i32 %bg to i64
  %conv20 = zext i32 %normal to i64
  %conv24 = zext i32 %max to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wbt_timer(ptr noundef %__data, ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %bdi to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %status to i64
  %conv8 = zext i32 %step to i64
  %conv12 = zext i32 %inflight to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @wbt_get_min_lat(ptr nocapture noundef readonly %q) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %entry.cleanup_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %entry.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %min_lat_nsec = getelementptr i8, ptr %rqos.03.i.i, i32 -4
  %4 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_lat_nsec, align 8
  %conv = zext i32 %5 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.i.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wbt_set_min_lat(ptr nocapture noundef readonly %q, i64 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %entry.cleanup_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %entry.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i64 %val to i32
  %add.ptr.i = getelementptr i8, ptr %rqos.03.i.i, i32 -68
  %min_lat_nsec = getelementptr i8, ptr %rqos.03.i.i, i32 -4
  %4 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %min_lat_nsec, align 8
  %enable_state = getelementptr i8, ptr %rqos.03.i.i, i32 -60
  %5 = ptrtoint ptr %enable_state to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %enable_state, align 8
  tail call fastcc void @wbt_update_limits(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wbt_update_limits(ptr noundef %rwb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_depth = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15
  %scale_step = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %scale_step to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %scale_step, align 4
  %scaled_max = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15, i32 2
  %1 = ptrtoint ptr %scaled_max to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %scaled_max, align 4
  %call = tail call zeroext i1 @rq_depth_calc_max_depth(ptr noundef %rq_depth) #15
  %min_lat_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 12
  %2 = ptrtoint ptr %min_lat_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_lat_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rwb, align 8
  %wb_normal.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %5 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wb_normal.i, align 4
  br label %calc_wb_limits.exit

if.else.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp1.i = icmp ult i32 %7, 3
  br i1 %cmp1.i, label %if.then2.i, label %if.else7.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %wb_normal5.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %8 = ptrtoint ptr %wb_normal5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %wb_normal5.i, align 4
  %9 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rwb, align 8
  br label %calc_wb_limits.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add i32 %7, 1
  %div27.i = lshr i32 %add.i, 1
  %wb_normal10.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %10 = ptrtoint ptr %wb_normal10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div27.i, ptr %wb_normal10.i, align 4
  %add13.i = add i32 %7, 3
  %div1428.i = lshr i32 %add13.i, 2
  %11 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div1428.i, ptr %rwb, align 8
  br label %calc_wb_limits.exit

calc_wb_limits.exit:                              ; preds = %if.else7.i, %if.then2.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %13, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %calc_wb_limits.exit.if.end.i_crit_edge, label %if.then.i5

calc_wb_limits.exit.if.end.i_crit_edge:           ; preds = %calc_wb_limits.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i5:                                       ; preds = %calc_wb_limits.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 0
  tail call void @__wake_up(ptr noundef %arrayidx.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i5, %calc_wb_limits.exit.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.1.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %head.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %head.i.i.1.i, align 4
  %cmp.i.i.i.not.1.i = icmp eq ptr %15, %head.i.i.1.i
  br i1 %cmp.i.i.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 1
  tail call void @__wake_up(ptr noundef %arrayidx.1.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.2.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %head.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %head.i.i.2.i, align 4
  %cmp.i.i.i.not.2.i = icmp eq ptr %17, %head.i.i.2.i
  br i1 %cmp.i.i.i.not.2.i, label %if.end.1.i.rwb_wake_all.exit_crit_edge, label %if.then.2.i

if.end.1.i.rwb_wake_all.exit_crit_edge:           ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rwb_wake_all.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.2.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 2
  tail call void @__wake_up(ptr noundef %arrayidx.2.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %rwb_wake_all.exit

rwb_wake_all.exit:                                ; preds = %if.then.2.i, %if.end.1.i.rwb_wake_all.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wbt_set_write_cache(ptr nocapture noundef readonly %q, i1 noundef zeroext %write_cache_on) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %entry.if.end_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %entry.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i1 %write_cache_on to i32
  %wc = getelementptr i8, ptr %rqos.03.i.i, i32 -16
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %wc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wbt_enable_default(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %entry.if.end6_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %entry.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.end6_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end6_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %for.body.i.i
  %enable_state = getelementptr i8, ptr %rqos.03.i.i, i32 -60
  %4 = ptrtoint ptr %enable_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp = icmp eq i16 %5, 3
  br i1 %cmp, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %enable_state to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %enable_state, align 8
  br label %cleanup

if.end6:                                          ; preds = %for.inc.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags, align 4
  %9 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %10 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %11, null
  br i1 %tobool.i.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 @wbt_init(ptr noundef %q)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wbt_init(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 280) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @blk_stat_alloc_callback(ptr noundef nonnull @wb_timer_fn, ptr noundef nonnull @wbt_data_dir, i32 noundef 2, ptr noundef nonnull %call7.i.i) #15
  %cb = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %cb, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 14, i32 0
  %inflight.i = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #15
  %2 = ptrtoint ptr %inflight.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %inflight.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx, ptr noundef nonnull @.str.36, ptr noundef nonnull @rq_wait_init.__key) #15
  %arrayidx.1 = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 14, i32 1
  %inflight.i.1 = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i.1, i32 noundef 4) #15
  %3 = ptrtoint ptr %inflight.i.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %inflight.i.1, align 4
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.36, ptr noundef nonnull @rq_wait_init.__key) #15
  %arrayidx.2 = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 14, i32 2
  %inflight.i.2 = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 1
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i.2, i32 noundef 4) #15
  %4 = ptrtoint ptr %inflight.i.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %inflight.i.2, align 4
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.36, ptr noundef nonnull @rq_wait_init.__key) #15
  %rqos = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 13
  %id = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %id, align 4
  %6 = ptrtoint ptr %rqos to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wbt_rqos_ops, ptr %rqos, align 4
  %q8 = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %q8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %q, ptr %q8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_issue = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %last_issue to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_issue, align 8
  %last_comp = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %last_comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %last_comp, align 4
  %win_nsec = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %win_nsec to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 100000000, ptr %win_nsec, align 8
  %enable_state = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %enable_state to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %enable_state, align 8
  %wc = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %wc, align 4
  %default_depth = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 15, i32 4
  %14 = ptrtoint ptr %default_depth to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %default_depth, align 8
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #15
  %queue_lock.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #15
  %rq_qos.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %15 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_qos.i, align 4
  %next.i = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 13, i32 3
  %17 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %next.i, align 8
  store ptr %rqos, ptr %rq_qos.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #15
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #15
  %18 = ptrtoint ptr %rqos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rqos, align 4
  %debugfs_attrs.i = getelementptr inbounds %struct.rq_qos_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_attrs.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.preheader.rq_qos_add.exit_crit_edge, label %if.then.i

for.body.preheader.rq_qos_add.exit_crit_edge:     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %rq_qos_add.exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.then.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blk_mq_debugfs_register_rqos(ptr noundef %rqos) #15
  br label %rq_qos_add.exit

rq_qos_add.exit:                                  ; preds = %if.then.i, %for.body.preheader.rq_qos_add.exit_crit_edge
  %22 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb, align 8
  tail call void @blk_stat_add_callback(ptr noundef %q, ptr noundef %23) #15
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %24 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %queue_flags.i, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i41 = icmp eq i32 %26, 0
  %conv = select i1 %tobool.not.i41, i32 75000000, i32 2000000
  %min_lat_nsec = getelementptr inbounds %struct.rq_wb, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %min_lat_nsec, align 8
  %28 = ptrtoint ptr %q8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q8, align 8
  %queue_depth.i.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %queue_depth.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %rq_qos_add.exit.wbt_queue_depth_changed.exit_crit_edge

rq_qos_add.exit.wbt_queue_depth_changed.exit_crit_edge: ; preds = %rq_qos_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %wbt_queue_depth_changed.exit

if.end.i.i:                                       ; preds = %rq_qos_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %nr_requests.i.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 21
  %32 = ptrtoint ptr %nr_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_requests.i.i, align 8
  br label %wbt_queue_depth_changed.exit

wbt_queue_depth_changed.exit:                     ; preds = %if.end.i.i, %rq_qos_add.exit.wbt_queue_depth_changed.exit_crit_edge
  %retval.0.i.i = phi i32 [ %33, %if.end.i.i ], [ %31, %rq_qos_add.exit.wbt_queue_depth_changed.exit_crit_edge ]
  %queue_depth.i = getelementptr %struct.rq_wb, ptr %call7.i.i, i32 0, i32 15, i32 3
  %34 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i, ptr %queue_depth.i, align 4
  tail call fastcc void @wbt_update_limits(ptr noundef nonnull %call7.i.i) #15
  %35 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %queue_flags.i, align 4
  %37 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %rqos.01.i.i.i = load ptr, ptr %rq_qos.i, align 4
  %tobool.not2.i.i.i = icmp eq ptr %rqos.01.i.i.i, null
  br i1 %tobool.not2.i.i.i, label %wbt_queue_depth_changed.exit.cleanup_crit_edge, label %wbt_queue_depth_changed.exit.for.body.i.i.i_crit_edge

wbt_queue_depth_changed.exit.for.body.i.i.i_crit_edge: ; preds = %wbt_queue_depth_changed.exit
  br label %for.body.i.i.i

wbt_queue_depth_changed.exit.cleanup_crit_edge:   ; preds = %wbt_queue_depth_changed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %wbt_queue_depth_changed.exit.for.body.i.i.i_crit_edge
  %rqos.03.i.i.i = phi ptr [ %rqos.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %rqos.01.i.i.i, %wbt_queue_depth_changed.exit.for.body.i.i.i_crit_edge ]
  %id1.i.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i, label %if.then.i42, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %next.i.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %rqos.0.i.i.i = load ptr, ptr %next.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %rqos.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.cleanup_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup_crit_edge:                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i42:                                      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = lshr i32 %36, 17
  %.lobit = and i32 %41, 1
  %wc.i = getelementptr i8, ptr %rqos.03.i.i.i, i32 -16
  %42 = ptrtoint ptr %wc.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.lobit, ptr %wc.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i42, %for.inc.i.i.i.cleanup_crit_edge, %wbt_queue_depth_changed.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %wbt_queue_depth_changed.exit.cleanup_crit_edge ], [ 0, %if.then.i42 ], [ 0, %for.inc.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @wbt_default_latency_nsec(ptr noundef %q) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i64 75000000, i64 2000000
  ret i64 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wbt_disable_default(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %entry.cleanup_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %entry.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  %enable_state = getelementptr i8, ptr %rqos.03.i.i, i32 -60
  %4 = ptrtoint ptr %enable_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cb = getelementptr i8, ptr %rqos.03.i.i, i32 -36
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 8
  %timer.i = getelementptr inbounds %struct.blk_stat_callback, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #15
  %8 = ptrtoint ptr %enable_state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3, ptr %enable_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_stat_alloc_callback(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wb_timer_fn(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.blk_stat_callback, ptr %cb, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %inflight.i = getelementptr %struct.rq_wb, ptr %1, i32 0, i32 14, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.i, i32 noundef 4) #15
  %2 = ptrtoint ptr %inflight.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %inflight.i, align 4
  %inflight.1.i = getelementptr %struct.rq_wb, ptr %1, i32 0, i32 14, i32 1, i32 1
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.1.i, i32 noundef 4) #15
  %4 = ptrtoint ptr %inflight.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %inflight.1.i, align 4
  %add.1.i = add i32 %5, %3
  %inflight.2.i = getelementptr %struct.rq_wb, ptr %1, i32 0, i32 14, i32 2, i32 1
  %call.i.i.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.2.i, i32 noundef 4) #15
  %6 = ptrtoint ptr %inflight.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %inflight.2.i, align 4
  %add.2.i = add i32 %add.1.i, %7
  %q = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q, align 4
  %disk = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %stat = getelementptr inbounds %struct.blk_stat_callback, ptr %cb, i32 0, i32 5
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stat, align 4
  %bdi1.i = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %bdi1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdi1.i, align 4
  %sync_issue.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %sync_issue.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load volatile i64, ptr %sync_issue.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i.i, label %if.end.lor.lhs.false.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.lor.lhs.false.thread.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %sync_cookie.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %sync_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sync_cookie.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.lor.lhs.false.thread.i_crit_edge, label %rwb_sync_issue_lat.exit.i

lor.lhs.false.i.i.lor.lhs.false.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.thread.i

lor.lhs.false.thread.i:                           ; preds = %lor.lhs.false.i.i.lor.lhs.false.thread.i_crit_edge, %if.end.lor.lhs.false.thread.i_crit_edge
  %min_lat_nsec59.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %min_lat_nsec59.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_lat_nsec59.i, align 8
  %conv60.i = zext i32 %21 to i64
  br label %if.end.i

rwb_sync_issue_lat.exit.i:                        ; preds = %lor.lhs.false.i.i
  %call.i.i = tail call i64 @ktime_get() #15
  %sub.i.i = sub i64 %call.i.i, %17
  %cur_win_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %cur_win_nsec.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cur_win_nsec.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %23)
  %cmp.i = icmp ugt i64 %sub.i.i, %23
  br i1 %cmp.i, label %rwb_sync_issue_lat.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

rwb_sync_issue_lat.exit.i.if.then.i_crit_edge:    ; preds = %rwb_sync_issue_lat.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %rwb_sync_issue_lat.exit.i
  %min_lat_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %min_lat_nsec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_lat_nsec.i, align 8
  %conv.i = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv.i)
  %cmp2.i = icmp ugt i64 %sub.i.i, %conv.i
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %nr_samples.i = getelementptr inbounds %struct.blk_rq_stat, ptr %13, i32 0, i32 3
  %26 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_samples.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %rwb_sync_issue_lat.exit.i.if.then.i_crit_edge
  %conv4.i = trunc i64 %sub.i.i to i32
  tail call fastcc void @trace_wbt_lat(ptr noundef %15, i32 noundef %conv4.i) #15
  br label %sw.bb

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.thread.i
  %conv62.i = phi i64 [ %conv60.i, %lor.lhs.false.thread.i ], [ %conv.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %conv.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %nr_samples.i.i = getelementptr inbounds %struct.blk_rq_stat, ptr %13, i32 0, i32 3
  %28 = ptrtoint ptr %nr_samples.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_samples.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i.i, label %if.end.i.if.then6.i_crit_edge, label %stat_sample_valid.exit.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

stat_sample_valid.exit.i:                         ; preds = %if.end.i
  %nr_samples2.i.i = getelementptr %struct.blk_rq_stat, ptr %13, i32 1, i32 3
  %30 = ptrtoint ptr %nr_samples2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_samples2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp3.i.i = icmp ugt i32 %31, 2
  br i1 %cmp3.i.i, label %if.end18.i, label %stat_sample_valid.exit.i.if.then6.i_crit_edge

stat_sample_valid.exit.i.if.then6.i_crit_edge:    ; preds = %stat_sample_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

if.then6.i:                                       ; preds = %stat_sample_valid.exit.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %nr_samples8.i = getelementptr %struct.blk_rq_stat, ptr %13, i32 1, i32 3
  %32 = ptrtoint ptr %nr_samples8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_samples8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not.i = icmp eq i32 %33, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %if.then6.i.sw.bb6_crit_edge

if.then6.i.sw.bb6_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

lor.lhs.false10.i:                                ; preds = %if.then6.i
  %34 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q, align 4
  %disk.i.i = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disk.i.i, align 8
  %bdi.i.i = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bdi.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %dirty_sleep.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %39, i32 0, i32 11, i32 25
  %41 = ptrtoint ptr %dirty_sleep.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dirty_sleep.i.i, align 4
  %add.neg.i.i = add i32 %40, -100
  %sub.i52.i = sub i32 %add.neg.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i52.i)
  %cmp.i.i = icmp slt i32 %sub.i52.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false10.i.sw.bb6_crit_edge, label %lor.lhs.false13.i

lor.lhs.false10.i.sw.bb6_crit_edge:               ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.i, i32 noundef 4) #15
  %43 = ptrtoint ptr %inflight.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %inflight.i, align 4
  %call.i.i.1.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.1.i, i32 noundef 4) #15
  %45 = ptrtoint ptr %inflight.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %inflight.1.i, align 4
  %add.1.i.i = add i32 %44, %46
  %call.i.i.2.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.2.i, i32 noundef 4) #15
  %47 = ptrtoint ptr %inflight.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %inflight.2.i, align 4
  %add.2.i.i = sub i32 0, %add.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add.2.i.i)
  %tobool15.not.i = icmp eq i32 %48, %add.2.i.i
  br i1 %tobool15.not.i, label %sw.bb7, label %lor.lhs.false13.i.sw.bb6_crit_edge

lor.lhs.false13.i.sw.bb6_crit_edge:               ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

if.end18.i:                                       ; preds = %stat_sample_valid.exit.i
  %min.i = getelementptr inbounds %struct.blk_rq_stat, ptr %13, i32 0, i32 1
  %49 = ptrtoint ptr %min.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv62.i)
  %cmp22.i = icmp ugt i64 %50, %conv62.i
  br i1 %cmp22.i, label %if.then24.i, label %if.end28.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv27.i = trunc i64 %50 to i32
  tail call fastcc void @trace_wbt_lat(ptr noundef %15, i32 noundef %conv27.i) #15
  tail call fastcc void @trace_wbt_stat(ptr noundef %15, ptr noundef %13) #15
  br label %sw.bb

if.end28.i:                                       ; preds = %if.end18.i
  %scale_step.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 15, i32 1
  %51 = ptrtoint ptr %scale_step.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scale_step.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool29.not.i = icmp eq i32 %52, 0
  br i1 %tobool29.not.i, label %if.end28.i.sw.bb5_crit_edge, label %if.then30.i

if.end28.i.sw.bb5_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_wbt_stat(ptr noundef %15, ptr noundef %13) #15
  br label %sw.bb5

sw.bb:                                            ; preds = %if.then24.i, %if.then.i
  %53 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %q, align 4
  %disk462 = getelementptr inbounds %struct.request_queue, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %disk462 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disk462, align 8
  %bdi63 = getelementptr inbounds %struct.gendisk, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %bdi63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bdi63, align 4
  %scale_step64 = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 15, i32 1
  %59 = ptrtoint ptr %scale_step64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %scale_step64, align 4
  tail call fastcc void @trace_wbt_timer(ptr noundef %58, i32 noundef 4, i32 noundef %60, i32 noundef %add.2.i)
  %rq_depth.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 15
  %call.i = tail call zeroext i1 @rq_depth_scale_down(ptr noundef %rq_depth.i, i1 noundef zeroext true) #15
  br i1 %call.i, label %if.end.i44, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i44:                                       ; preds = %sw.bb
  %min_lat_nsec.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %min_lat_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %min_lat_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i43 = icmp eq i32 %62, 0
  br i1 %cmp.i.i43, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %1, align 8
  %wb_normal.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wb_normal.i.i, align 4
  br label %calc_wb_limits.exit.i

if.else.i.i:                                      ; preds = %if.end.i44
  %65 = ptrtoint ptr %rq_depth.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rq_depth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp1.i.i = icmp ult i32 %66, 3
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else7.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %wb_normal5.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %wb_normal5.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %wb_normal5.i.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %1, align 8
  br label %calc_wb_limits.exit.i

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i.i = add i32 %66, 1
  %div27.i.i = lshr i32 %add.i.i, 1
  %wb_normal10.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %wb_normal10.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div27.i.i, ptr %wb_normal10.i.i, align 4
  %add13.i.i = add i32 %66, 3
  %div1428.i.i = lshr i32 %add13.i.i, 2
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div1428.i.i, ptr %1, align 8
  br label %calc_wb_limits.exit.i

calc_wb_limits.exit.i:                            ; preds = %if.else7.i.i, %if.then2.i.i, %if.then.i.i
  %unknown_cnt.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %unknown_cnt.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %unknown_cnt.i, align 4
  %72 = load ptr, ptr @scale_down.___tp_str, align 4
  %73 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %q, align 4
  %disk.i.i45 = getelementptr inbounds %struct.request_queue, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %disk.i.i45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disk.i.i45, align 8
  %bdi1.i.i = getelementptr inbounds %struct.gendisk, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %bdi1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bdi1.i.i, align 4
  %79 = ptrtoint ptr %scale_step64 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %scale_step64, align 4
  %cur_win_nsec.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %cur_win_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %cur_win_nsec.i.i, align 8
  %conv.i.i = trunc i64 %82 to i32
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %1, align 8
  %wb_normal.i5.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %wb_normal.i5.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wb_normal.i5.i, align 4
  %87 = ptrtoint ptr %rq_depth.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rq_depth.i, align 4
  tail call fastcc void @trace_wbt_step(ptr noundef %78, ptr noundef %72, i32 noundef %80, i32 noundef %conv.i.i, i32 noundef %84, i32 noundef %86, i32 noundef %88) #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then30.i, %if.end28.i.sw.bb5_crit_edge
  %89 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %q, align 4
  %disk469 = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %disk469 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %disk469, align 8
  %bdi70 = getelementptr inbounds %struct.gendisk, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %bdi70 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bdi70, align 4
  %95 = ptrtoint ptr %scale_step.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %scale_step.i, align 4
  tail call fastcc void @trace_wbt_timer(ptr noundef %94, i32 noundef 1, i32 noundef %96, i32 noundef %add.2.i)
  tail call fastcc void @scale_up(ptr noundef %1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %lor.lhs.false13.i.sw.bb6_crit_edge, %lor.lhs.false10.i.sw.bb6_crit_edge, %if.then6.i.sw.bb6_crit_edge
  %97 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %q, align 4
  %disk454 = getelementptr inbounds %struct.request_queue, ptr %98, i32 0, i32 15
  %99 = ptrtoint ptr %disk454 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %disk454, align 8
  %bdi55 = getelementptr inbounds %struct.gendisk, ptr %100, i32 0, i32 15
  %101 = ptrtoint ptr %bdi55 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bdi55, align 4
  %scale_step56 = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 15, i32 1
  %103 = ptrtoint ptr %scale_step56 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scale_step56, align 4
  tail call fastcc void @trace_wbt_timer(ptr noundef %102, i32 noundef 3, i32 noundef %104, i32 noundef %add.2.i)
  tail call fastcc void @scale_up(ptr noundef %1)
  br label %sw.epilog

sw.bb7:                                           ; preds = %lor.lhs.false13.i
  %105 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %q, align 4
  %disk4 = getelementptr inbounds %struct.request_queue, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %disk4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %disk4, align 8
  %bdi = getelementptr inbounds %struct.gendisk, ptr %108, i32 0, i32 15
  %109 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bdi, align 4
  %scale_step = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 15, i32 1
  %111 = ptrtoint ptr %scale_step to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %scale_step, align 4
  tail call fastcc void @trace_wbt_timer(ptr noundef %110, i32 noundef 2, i32 noundef %112, i32 noundef %add.2.i)
  %unknown_cnt = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %unknown_cnt to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %unknown_cnt, align 4
  %inc = add i32 %114, 1
  store i32 %inc, ptr %unknown_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp = icmp ult i32 %inc, 5
  br i1 %cmp, label %sw.bb7.sw.epilog_crit_edge, label %if.end9

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end9:                                          ; preds = %sw.bb7
  %115 = ptrtoint ptr %scale_step to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %scale_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp11 = icmp sgt i32 %116, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @scale_up(ptr noundef %1)
  br label %sw.epilog

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp14 = icmp slt i32 %116, 0
  br i1 %cmp14, label %if.then15, label %sw.epilog.thread

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @scale_down(ptr noundef %1, i1 noundef zeroext false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %if.then12, %sw.bb7.sw.epilog_crit_edge, %sw.bb6, %sw.bb5, %calc_wb_limits.exit.i, %sw.bb.sw.epilog_crit_edge
  %scale_step58.ph = phi ptr [ %scale_step64, %calc_wb_limits.exit.i ], [ %scale_step64, %sw.bb.sw.epilog_crit_edge ], [ %scale_step.i, %sw.bb5 ], [ %scale_step56, %sw.bb6 ], [ %scale_step, %sw.bb7.sw.epilog_crit_edge ], [ %scale_step, %if.then15 ], [ %scale_step, %if.then12 ]
  %117 = ptrtoint ptr %scale_step58.ph to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr = load i32, ptr %scale_step58.ph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.2.i)
  %tobool20.not = icmp eq i32 %add.2.i, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.then21

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.2.i)
  %tobool20.not74 = icmp eq i32 %add.2.i, 0
  br i1 %tobool20.not74, label %sw.epilog.thread.cleanup_crit_edge, label %if.then21.thread

sw.epilog.thread.cleanup_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then21.thread:                                 ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #17
  %win_nsec.i77 = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 4
  %118 = ptrtoint ptr %win_nsec.i77 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %win_nsec.i77, align 8
  br label %rwb_arm_timer.exit

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i47 = icmp sgt i32 %.pr, 0
  %win_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 4
  %120 = ptrtoint ptr %win_nsec.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %win_nsec.i, align 8
  br i1 %cmp.i47, label %if.then.i49, label %if.then21.rwb_arm_timer.exit_crit_edge

if.then21.rwb_arm_timer.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rwb_arm_timer.exit

if.then.i49:                                      ; preds = %if.then21
  %shl.i = shl i64 %121, 4
  %add.i = shl i32 %.pr, 8
  %shl2.i = add i32 %add.i, 256
  %call.i48 = tail call i32 @int_sqrt(i32 noundef %shl2.i) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !148

if.then168.i.i.i:                                 ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #17
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call.i48
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %rwb_arm_timer.exit

if.else174.i.i.i:                                 ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #17
  %122 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i48, i64 %shl.i) #18, !srcloc !154
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %122, 1
  br label %rwb_arm_timer.exit

rwb_arm_timer.exit:                               ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.then21.rwb_arm_timer.exit_crit_edge, %if.then21.thread
  %.sink.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ], [ %121, %if.then21.rwb_arm_timer.exit_crit_edge ], [ %119, %if.then21.thread ]
  %cur_win_nsec5.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 5
  %123 = ptrtoint ptr %cur_win_nsec5.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %.sink.i, ptr %cur_win_nsec5.i, align 8
  %cb.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 6
  %124 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cb.i, align 8
  %timer.i.i = getelementptr inbounds %struct.blk_stat_callback, ptr %125, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %call.i.i50 = tail call i32 @nsecs_to_jiffies(i64 noundef %.sink.i) #15
  %add.i.i51 = add i32 %call.i.i50, %126
  %call1.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i51) #15
  br label %cleanup

cleanup:                                          ; preds = %rwb_arm_timer.exit, %sw.epilog.thread.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wbt_data_dir(ptr nocapture noundef readonly %rq) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %. = select i1 %tobool.i.not, i32 -1, i32 1
  %retval.0 = select i1 %cmp, i32 0, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_add_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wbt_queue_depth_changed(ptr noundef %rqos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %queue_depth.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_depth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.blk_queue_depth.exit_crit_edge

entry.blk_queue_depth.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %blk_queue_depth.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %nr_requests.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %nr_requests.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_requests.i, align 8
  br label %blk_queue_depth.exit

blk_queue_depth.exit:                             ; preds = %if.end.i, %entry.blk_queue_depth.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ %3, %entry.blk_queue_depth.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %queue_depth = getelementptr i8, ptr %rqos, i32 200
  %6 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %queue_depth, align 4
  tail call fastcc void @wbt_update_limits(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wbt_stat(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 1
  %rmean = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmean to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rmean, align 8
  %rmin = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rmin to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rmin, align 8
  %rmax = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %rmax to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rmax, align 8
  %rnr_samples = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %rnr_samples to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rnr_samples, align 8
  %wmean = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wmean to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wmean, align 8
  %wmin = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %wmin to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wmin, align 8
  %wmax = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %wmax to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wmax, align 8
  %wnr_samples = getelementptr inbounds %struct.trace_event_raw_wbt_stat, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %wnr_samples to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wnr_samples, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %name, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wbt_lat(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_lat, ptr %1, i32 0, i32 1
  %lat = getelementptr inbounds %struct.trace_event_raw_wbt_lat, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lat, align 4
  %conv = zext i32 %3 to i64
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %name, i64 noundef %conv) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wbt_step(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 1
  %msg = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 4
  %step = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %window = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %window, align 4
  %bg = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bg, align 4
  %normal = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %normal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %normal, align 4
  %max = getelementptr inbounds %struct.trace_event_raw_wbt_step, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wbt_timer(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %1, i32 0, i32 1
  %status = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %step = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %inflight = getelementptr inbounds %struct.trace_event_raw_wbt_timer, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inflight, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %3, i32 noundef %5, i32 noundef %7) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rq_depth_calc_max_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rwb_wake_all(ptr noundef %rwb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %1, %head.i.i
  br i1 %cmp.i.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 0
  tail call void @__wake_up(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.1 = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %head.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head.i.i.1, align 4
  %cmp.i.i.i.not.1 = icmp eq ptr %3, %head.i.i.1
  br i1 %cmp.i.i.i.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1 = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 1
  tail call void @__wake_up(ptr noundef %arrayidx.1, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.2 = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %head.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %head.i.i.2, align 4
  %cmp.i.i.i.not.2 = icmp eq ptr %5, %head.i.i.2
  br i1 %cmp.i.i.i.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.2 = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 2
  tail call void @__wake_up(ptr noundef %arrayidx.2, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wbt_timer(ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_timer, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_wbt_timer, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !148

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !156
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_timer, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %bdi, i32 noundef %status, i32 noundef %step, i32 noundef %inflight) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !157
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !157
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !148

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !158
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_timer, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wbt_timer.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wbt_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 153, ptr noundef nonnull @.str.32) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !159
  %38 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
define internal fastcc void @scale_down(ptr noundef %rwb, i1 noundef zeroext %hard_throttle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_depth = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15
  %call = tail call zeroext i1 @rq_depth_scale_down(ptr noundef %rq_depth, i1 noundef zeroext %hard_throttle) #15
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %min_lat_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 12
  %0 = ptrtoint ptr %min_lat_nsec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_lat_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rwb, align 8
  %wb_normal.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %3 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wb_normal.i, align 4
  br label %calc_wb_limits.exit

if.else.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1.i = icmp ult i32 %5, 3
  br i1 %cmp1.i, label %if.then2.i, label %if.else7.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %wb_normal5.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %6 = ptrtoint ptr %wb_normal5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wb_normal5.i, align 4
  %7 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rwb, align 8
  br label %calc_wb_limits.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add i32 %5, 1
  %div27.i = lshr i32 %add.i, 1
  %wb_normal10.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %8 = ptrtoint ptr %wb_normal10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div27.i, ptr %wb_normal10.i, align 4
  %add13.i = add i32 %5, 3
  %div1428.i = lshr i32 %add13.i, 2
  %9 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div1428.i, ptr %rwb, align 8
  br label %calc_wb_limits.exit

calc_wb_limits.exit:                              ; preds = %if.else7.i, %if.then2.i, %if.then.i
  %unknown_cnt = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 3
  %10 = ptrtoint ptr %unknown_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %unknown_cnt, align 4
  %11 = load ptr, ptr @scale_down.___tp_str, align 4
  %q.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q.i, align 4
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk.i, align 8
  %bdi1.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %bdi1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdi1.i, align 4
  %scale_step.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15, i32 1
  %18 = ptrtoint ptr %scale_step.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale_step.i, align 4
  %cur_win_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 5
  %20 = ptrtoint ptr %cur_win_nsec.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cur_win_nsec.i, align 8
  %conv.i = trunc i64 %21 to i32
  %22 = ptrtoint ptr %rwb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rwb, align 8
  %wb_normal.i5 = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %24 = ptrtoint ptr %wb_normal.i5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wb_normal.i5, align 4
  %26 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_depth, align 4
  tail call fastcc void @trace_wbt_step(ptr noundef %17, ptr noundef %11, i32 noundef %19, i32 noundef %conv.i, i32 noundef %23, i32 noundef %25, i32 noundef %27) #15
  br label %return

return:                                           ; preds = %calc_wb_limits.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scale_up(ptr noundef %rwb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_depth = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15
  %call = tail call zeroext i1 @rq_depth_scale_up(ptr noundef %rq_depth) #15
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %min_lat_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 12
  %0 = ptrtoint ptr %min_lat_nsec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_lat_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rwb, align 8
  %wb_normal.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %3 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wb_normal.i, align 4
  br label %calc_wb_limits.exit

if.else.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1.i = icmp ult i32 %5, 3
  br i1 %cmp1.i, label %if.then2.i, label %if.else7.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %wb_normal5.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %6 = ptrtoint ptr %wb_normal5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wb_normal5.i, align 4
  %7 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rwb, align 8
  br label %calc_wb_limits.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add i32 %5, 1
  %div27.i = lshr i32 %add.i, 1
  %wb_normal10.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %8 = ptrtoint ptr %wb_normal10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div27.i, ptr %wb_normal10.i, align 4
  %add13.i = add i32 %5, 3
  %div1428.i = lshr i32 %add13.i, 2
  %9 = ptrtoint ptr %rwb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div1428.i, ptr %rwb, align 8
  br label %calc_wb_limits.exit

calc_wb_limits.exit:                              ; preds = %if.else7.i, %if.then2.i, %if.then.i
  %unknown_cnt = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 3
  %10 = ptrtoint ptr %unknown_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %unknown_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %12, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %calc_wb_limits.exit.if.end.i_crit_edge, label %if.then.i5

calc_wb_limits.exit.if.end.i_crit_edge:           ; preds = %calc_wb_limits.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i5:                                       ; preds = %calc_wb_limits.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 0
  tail call void @__wake_up(ptr noundef %arrayidx.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i5, %calc_wb_limits.exit.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.1.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %head.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head.i.i.1.i, align 4
  %cmp.i.i.i.not.1.i = icmp eq ptr %14, %head.i.i.1.i
  br i1 %cmp.i.i.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 1
  tail call void @__wake_up(ptr noundef %arrayidx.1.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i.2.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %head.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %head.i.i.2.i, align 4
  %cmp.i.i.i.not.2.i = icmp eq ptr %16, %head.i.i.2.i
  br i1 %cmp.i.i.i.not.2.i, label %if.end.1.i.rwb_wake_all.exit_crit_edge, label %if.then.2.i

if.end.1.i.rwb_wake_all.exit_crit_edge:           ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rwb_wake_all.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.2.i = getelementptr %struct.rq_wb, ptr %rwb, i32 0, i32 14, i32 2
  tail call void @__wake_up(ptr noundef %arrayidx.2.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %rwb_wake_all.exit

rwb_wake_all.exit:                                ; preds = %if.then.2.i, %if.end.1.i.rwb_wake_all.exit_crit_edge
  %17 = load ptr, ptr @scale_up.___tp_str, align 4
  %q.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q.i, align 4
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk.i, align 8
  %bdi1.i = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %bdi1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdi1.i, align 4
  %scale_step.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %scale_step.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scale_step.i, align 4
  %cur_win_nsec.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 5
  %26 = ptrtoint ptr %cur_win_nsec.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cur_win_nsec.i, align 8
  %conv.i = trunc i64 %27 to i32
  %28 = ptrtoint ptr %rwb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rwb, align 8
  %wb_normal.i7 = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %30 = ptrtoint ptr %wb_normal.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wb_normal.i7, align 4
  %32 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_depth, align 4
  tail call fastcc void @trace_wbt_step(ptr noundef %23, ptr noundef %17, i32 noundef %25, i32 noundef %conv.i, i32 noundef %29, i32 noundef %31, i32 noundef %33) #15
  br label %return

return:                                           ; preds = %rwb_wake_all.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wbt_lat(ptr noundef %bdi, i32 noundef %lat) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_lat, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_wbt_lat, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !148

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !160
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_lat, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %bdi, i32 noundef %lat) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !161
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !161
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !148

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !158
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_lat, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wbt_lat.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wbt_lat.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 78, ptr noundef nonnull @.str.32) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !159
  %38 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wbt_stat(ptr noundef %bdi, ptr noundef %stat) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_stat, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_wbt_stat, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !148

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !162
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_stat, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %bdi, ptr noundef %stat) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !163
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !163
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !148

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !158
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_stat, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wbt_stat.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wbt_stat.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 53, ptr noundef nonnull @.str.32) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !159
  %38 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rq_depth_scale_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wbt_step(ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_step, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_wbt_step, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !148

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !164
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_step, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %bdi, ptr noundef %msg, i32 noundef %step, i32 noundef %window, i32 noundef %bg, i32 noundef %normal, i32 noundef %max) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !165
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !165
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !148

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !158
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wbt_step, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wbt_step.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_wbt_step.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 121, ptr noundef nonnull @.str.32) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !159
  %38 = tail call i32 @llvm.read_register.i32(metadata !138) #15
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
declare dso_local zeroext i1 @rq_depth_scale_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wbt_wait(ptr noundef %rqos, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  %data.i = alloca %struct.wbt_wait_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %entry
  %enable_state.i.i = getelementptr i8, ptr %rqos, i32 -60
  %0 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not.i.i = icmp eq i16 %1, 3
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %rwb_enabled.exit.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

rwb_enabled.exit.i:                               ; preds = %land.lhs.true.i.i
  %wb_normal.i.i = getelementptr i8, ptr %rqos, i32 -64
  %2 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_normal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp2.i.not.i, label %rwb_enabled.exit.i.cleanup_crit_edge, label %if.end.i

rwb_enabled.exit.i.cleanup_crit_edge:             ; preds = %rwb_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %rwb_enabled.exit.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %land.lhs.true.i.i21, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %trunc.i.i = trunc i32 %5 to i8
  %6 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i, label %if.else.i.cleanup_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 3, label %if.else.i.bio_to_wbt_flags.exit_crit_edge
  ]

if.else.i.bio_to_wbt_flags.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.else.i
  %7 = and i32 %5, 34816
  call void @__sanitizer_cov_trace_const_cmp4(i32 34816, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 34816
  br i1 %cmp.i.i, label %sw.bb.i.i.cleanup_crit_edge, label %sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge

sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge:        ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

bio_to_wbt_flags.exit:                            ; preds = %sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge, %if.else.i.bio_to_wbt_flags.exit_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = lshr i32 %13, 15
  %14 = and i32 %and.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 3
  %or11.i = or i32 %14, 8
  %flags.1.i = select i1 %cmp9.i, i32 %or11.i, i32 %14
  %or13.i = or i32 %flags.1.i, 1
  %15 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_opf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i26 = icmp eq i32 %14, 0
  %and1.i.i = and i32 %flags.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %. = select i1 %tobool2.not.i.i, i32 20, i32 132
  %.sink = select i1 %tobool.not.i.i26, i32 %., i32 76
  %arrayidx.i.i = getelementptr i8, ptr %rqos, i32 %.sink
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #15
  %17 = getelementptr inbounds %struct.wbt_wait_data, ptr %data.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.wbt_wait_data, ptr %data.i, i32 0, i32 2
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or13.i, ptr %17, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %18, align 4
  call void @rq_qos_wait(ptr noundef %arrayidx.i.i, ptr noundef nonnull %data.i, ptr noundef nonnull @wbt_inflight_cb, ptr noundef nonnull @wbt_cleanup_cb) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #15
  %cb = getelementptr i8, ptr %rqos, i32 -36
  %22 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.blk_stat_callback, ptr %23, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i.not, label %if.then7, label %bio_to_wbt_flags.exit.cleanup_crit_edge

bio_to_wbt_flags.exit.cleanup_crit_edge:          ; preds = %bio_to_wbt_flags.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i.i21:                              ; preds = %if.end.i
  %last_issue39 = getelementptr i8, ptr %rqos, i32 -12
  %26 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %enable_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %27)
  %cmp.not.i.i20 = icmp eq i16 %27, 3
  br i1 %cmp.not.i.i20, label %land.lhs.true.i.i21.cleanup_crit_edge, label %rwb_enabled.exit.i24

land.lhs.true.i.i21.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

rwb_enabled.exit.i24:                             ; preds = %land.lhs.true.i.i21
  %28 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wb_normal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i.not.i23 = icmp eq i32 %29, 0
  br i1 %cmp2.i.not.i23, label %rwb_enabled.exit.i24.cleanup_crit_edge, label %if.then.i

rwb_enabled.exit.i24.cleanup_crit_edge:           ; preds = %rwb_enabled.exit.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %rwb_enabled.exit.i24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %last_issue39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_issue39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not.i = icmp eq i32 %30, %32
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %last_issue39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %last_issue39, align 4
  br label %cleanup

if.then7:                                         ; preds = %bio_to_wbt_flags.exit
  %scale_step.i = getelementptr i8, ptr %rqos, i32 192
  %34 = ptrtoint ptr %scale_step.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scale_step.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i27 = icmp sgt i32 %35, 0
  %win_nsec.i = getelementptr i8, ptr %rqos, i32 -52
  %36 = ptrtoint ptr %win_nsec.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %win_nsec.i, align 8
  br i1 %cmp.i27, label %if.then.i28, label %if.then7.rwb_arm_timer.exit_crit_edge

if.then7.rwb_arm_timer.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rwb_arm_timer.exit

if.then.i28:                                      ; preds = %if.then7
  %shl.i = shl i64 %37, 4
  %add.i = shl i32 %35, 8
  %shl2.i = add i32 %add.i, 256
  %call.i = call i32 @int_sqrt(i32 noundef %shl2.i) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !148

if.then168.i.i.i:                                 ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #17
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %rwb_arm_timer.exit

if.else174.i.i.i:                                 ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #17
  %38 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i, i64 %shl.i) #18, !srcloc !154
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %38, 1
  br label %rwb_arm_timer.exit

rwb_arm_timer.exit:                               ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.then7.rwb_arm_timer.exit_crit_edge
  %.sink.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ], [ %37, %if.then7.rwb_arm_timer.exit_crit_edge ]
  %cur_win_nsec5.i = getelementptr i8, ptr %rqos, i32 -44
  %39 = ptrtoint ptr %cur_win_nsec5.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %.sink.i, ptr %cur_win_nsec5.i, align 8
  %40 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cb, align 8
  %timer.i.i = getelementptr inbounds %struct.blk_stat_callback, ptr %41, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = call i32 @nsecs_to_jiffies(i64 noundef %.sink.i) #15
  %add.i.i = add i32 %call.i.i, %42
  %call1.i.i = call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %rwb_arm_timer.exit, %if.then1.i, %if.then.i.cleanup_crit_edge, %rwb_enabled.exit.i24.cleanup_crit_edge, %land.lhs.true.i.i21.cleanup_crit_edge, %bio_to_wbt_flags.exit.cleanup_crit_edge, %sw.bb.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %rwb_enabled.exit.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wbt_track(ptr noundef readonly %rqos, ptr nocapture noundef %rq, ptr nocapture noundef readonly %bio) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %entry.bio_to_wbt_flags.exit_crit_edge, label %land.lhs.true.i.i

entry.bio_to_wbt_flags.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

land.lhs.true.i.i:                                ; preds = %entry
  %enable_state.i.i = getelementptr i8, ptr %rqos, i32 -60
  %0 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not.i.i = icmp eq i16 %1, 3
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.bio_to_wbt_flags.exit_crit_edge, label %rwb_enabled.exit.i

land.lhs.true.i.i.bio_to_wbt_flags.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

rwb_enabled.exit.i:                               ; preds = %land.lhs.true.i.i
  %wb_normal.i.i = getelementptr i8, ptr %rqos, i32 -64
  %2 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_normal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp2.i.not.i, label %rwb_enabled.exit.i.bio_to_wbt_flags.exit_crit_edge, label %if.end.i

rwb_enabled.exit.i.bio_to_wbt_flags.exit_crit_edge: ; preds = %rwb_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

if.end.i:                                         ; preds = %rwb_enabled.exit.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i.bio_to_wbt_flags.exit_crit_edge, label %if.else.i

if.end.i.bio_to_wbt_flags.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

if.else.i:                                        ; preds = %if.end.i
  %trunc.i.i = trunc i32 %5 to i8
  %6 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %trunc.i.i, label %if.else.i.bio_to_wbt_flags.exit_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 3, label %if.else.i.if.then3.i_crit_edge
  ]

if.else.i.if.then3.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3.i

if.else.i.bio_to_wbt_flags.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

sw.bb.i.i:                                        ; preds = %if.else.i
  %7 = and i32 %5, 34816
  call void @__sanitizer_cov_trace_const_cmp4(i32 34816, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 34816
  br i1 %cmp.i.i, label %sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge, label %sw.bb.i.i.if.then3.i_crit_edge

sw.bb.i.i.if.then3.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3.i

sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge:        ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_to_wbt_flags.exit

if.then3.i:                                       ; preds = %sw.bb.i.i.if.then3.i_crit_edge, %if.else.i.if.then3.i_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = lshr i32 %13, 15
  %14 = and i32 %and.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 3
  %or11.i = or i32 %14, 8
  %flags.1.i = select i1 %cmp9.i, i32 %or11.i, i32 %14
  %15 = trunc i32 %flags.1.i to i16
  %phi.cast = or i16 %15, 1
  br label %bio_to_wbt_flags.exit

bio_to_wbt_flags.exit:                            ; preds = %if.then3.i, %sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge, %if.else.i.bio_to_wbt_flags.exit_crit_edge, %if.end.i.bio_to_wbt_flags.exit_crit_edge, %rwb_enabled.exit.i.bio_to_wbt_flags.exit_crit_edge, %land.lhs.true.i.i.bio_to_wbt_flags.exit_crit_edge, %entry.bio_to_wbt_flags.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %rwb_enabled.exit.i.bio_to_wbt_flags.exit_crit_edge ], [ %phi.cast, %if.then3.i ], [ 2, %if.end.i.bio_to_wbt_flags.exit_crit_edge ], [ 0, %land.lhs.true.i.i.bio_to_wbt_flags.exit_crit_edge ], [ 0, %entry.bio_to_wbt_flags.exit_crit_edge ], [ 0, %sw.bb.i.i.bio_to_wbt_flags.exit_crit_edge ], [ 0, %if.else.i.bio_to_wbt_flags.exit_crit_edge ]
  %wbt_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 17
  %16 = ptrtoint ptr %wbt_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wbt_flags, align 8
  %conv2 = or i16 %17, %retval.0.i
  store i16 %conv2, ptr %wbt_flags, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wbt_issue(ptr noundef %rqos, ptr noundef %rq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %enable_state.i = getelementptr i8, ptr %rqos, i32 -60
  %0 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 3
  br i1 %cmp.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %rwb_enabled.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

rwb_enabled.exit:                                 ; preds = %land.lhs.true.i
  %wb_normal.i = getelementptr i8, ptr %rqos, i32 -64
  %2 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_normal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 0
  br i1 %cmp2.i.not, label %rwb_enabled.exit.cleanup_crit_edge, label %if.end

rwb_enabled.exit.cleanup_crit_edge:               ; preds = %rwb_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %rwb_enabled.exit
  %wbt_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 17
  %4 = ptrtoint ptr %wbt_flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wbt_flags.i, align 8
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not = icmp eq i16 %6, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sync_issue = getelementptr i8, ptr %rqos, i32 -28
  %7 = ptrtoint ptr %sync_issue to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sync_issue, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %sync_cookie = getelementptr i8, ptr %rqos, i32 -20
  %9 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rq, ptr %sync_cookie, align 8
  %io_start_time_ns = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 16
  %10 = ptrtoint ptr %io_start_time_ns to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %io_start_time_ns, align 8
  %12 = ptrtoint ptr %sync_issue to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %sync_issue, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rwb_enabled.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wbt_requeue(ptr noundef %rqos, ptr noundef readnone %rq) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %enable_state.i = getelementptr i8, ptr %rqos, i32 -60
  %0 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 3
  br i1 %cmp.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %rwb_enabled.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

rwb_enabled.exit:                                 ; preds = %land.lhs.true.i
  %wb_normal.i = getelementptr i8, ptr %rqos, i32 -64
  %2 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_normal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 0
  br i1 %cmp2.i.not, label %rwb_enabled.exit.cleanup_crit_edge, label %if.end

rwb_enabled.exit.cleanup_crit_edge:               ; preds = %rwb_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %rwb_enabled.exit
  %sync_cookie = getelementptr i8, ptr %rqos, i32 -20
  %4 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_cookie, align 8
  %cmp = icmp eq ptr %5, %rq
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sync_issue = getelementptr i8, ptr %rqos, i32 -28
  %6 = ptrtoint ptr %sync_issue to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %sync_issue, align 8
  %7 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sync_cookie, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %rwb_enabled.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wbt_done(ptr noundef %rqos, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %wbt_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %wbt_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wbt_flags.i, align 8
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  %sync_cookie = getelementptr i8, ptr %rqos, i32 -20
  %3 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_cookie, align 8
  %cmp = icmp eq ptr %4, %rq
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sync_issue = getelementptr i8, ptr %rqos, i32 -28
  %5 = ptrtoint ptr %sync_issue to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %sync_issue, align 8
  %6 = ptrtoint ptr %sync_cookie to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sync_cookie, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %wbt_flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wbt_flags.i, align 8
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i62.not = icmp eq i16 %9, 0
  br i1 %tobool.i62.not, label %if.end.if.end46_crit_edge, label %if.then5

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then5:                                         ; preds = %if.end
  %last_comp = getelementptr i8, ptr %rqos, i32 -8
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %if.then5.if.end46_crit_edge, label %land.lhs.true.i.i

if.then5.if.end46_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

land.lhs.true.i.i:                                ; preds = %if.then5
  %enable_state.i.i = getelementptr i8, ptr %rqos, i32 -60
  %10 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %enable_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp.not.i.i = icmp eq i16 %11, 3
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end46_crit_edge, label %rwb_enabled.exit.i

land.lhs.true.i.i.if.end46_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

rwb_enabled.exit.i:                               ; preds = %land.lhs.true.i.i
  %wb_normal.i.i = getelementptr i8, ptr %rqos, i32 -64
  %12 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wb_normal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i.not.i = icmp eq i32 %13, 0
  br i1 %cmp2.i.not.i, label %rwb_enabled.exit.i.if.end46_crit_edge, label %if.then.i

rwb_enabled.exit.i.if.end46_crit_edge:            ; preds = %rwb_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then.i:                                        ; preds = %rwb_enabled.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %last_comp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_comp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not.i = icmp eq i32 %14, %16
  br i1 %cmp.not.i, label %if.then.i.if.end46_crit_edge, label %if.then1.i

if.then.i.if.end46_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %last_comp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %last_comp, align 4
  br label %if.end46

if.else:                                          ; preds = %entry
  br i1 %cmp, label %land.rhs, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.rhs:                                         ; preds = %if.else
  %.b60 = load i1, ptr @wbt_done.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !148

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @wbt_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 199, i32 noundef 9, ptr noundef null) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs.if.end37_crit_edge, %if.else.if.end37_crit_edge
  %18 = ptrtoint ptr %wbt_flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %wbt_flags.i, align 8
  %conv.i = zext i16 %19 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end37.if.end46_crit_edge, label %if.end.i

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %and.i.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %..i = select i1 %tobool2.not.i.i, i32 20, i32 132
  %.sink.i = select i1 %tobool.not.i.i64, i32 %..i, i32 76
  %arrayidx.i.i = getelementptr i8, ptr %rqos, i32 %.sink.i
  tail call fastcc void @wbt_rqw_done(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i.i, i32 noundef %conv.i) #15
  br label %if.end46

if.end46:                                         ; preds = %if.end.i, %if.end37.if.end46_crit_edge, %if.then1.i, %if.then.i.if.end46_crit_edge, %rwb_enabled.exit.i.if.end46_crit_edge, %land.lhs.true.i.i.if.end46_crit_edge, %if.then5.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %20 = ptrtoint ptr %wbt_flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %wbt_flags.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wbt_cleanup(ptr noundef %rqos, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %entry.__wbt_done.exit_crit_edge, label %land.lhs.true.i.i

entry.__wbt_done.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__wbt_done.exit

land.lhs.true.i.i:                                ; preds = %entry
  %enable_state.i.i = getelementptr i8, ptr %rqos, i32 -60
  %0 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not.i.i = icmp eq i16 %1, 3
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.__wbt_done.exit_crit_edge, label %rwb_enabled.exit.i

land.lhs.true.i.i.__wbt_done.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__wbt_done.exit

rwb_enabled.exit.i:                               ; preds = %land.lhs.true.i.i
  %wb_normal.i.i = getelementptr i8, ptr %rqos, i32 -64
  %2 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_normal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp2.i.not.i, label %rwb_enabled.exit.i.__wbt_done.exit_crit_edge, label %if.end.i

rwb_enabled.exit.i.__wbt_done.exit_crit_edge:     ; preds = %rwb_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__wbt_done.exit

if.end.i:                                         ; preds = %rwb_enabled.exit.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i.__wbt_done.exit_crit_edge, label %if.else.i

if.end.i.__wbt_done.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__wbt_done.exit

if.else.i:                                        ; preds = %if.end.i
  %trunc.i.i = trunc i32 %5 to i8
  %6 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %trunc.i.i, label %if.else.i.__wbt_done.exit_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 3, label %if.else.i.if.end.i6_crit_edge
  ]

if.else.i.if.end.i6_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i6

if.else.i.__wbt_done.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__wbt_done.exit

sw.bb.i.i:                                        ; preds = %if.else.i
  %7 = and i32 %5, 34816
  call void @__sanitizer_cov_trace_const_cmp4(i32 34816, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 34816
  br i1 %cmp.i.i, label %sw.bb.i.i.__wbt_done.exit_crit_edge, label %sw.bb.i.i.if.end.i6_crit_edge

sw.bb.i.i.if.end.i6_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i6

sw.bb.i.i.__wbt_done.exit_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__wbt_done.exit

if.end.i6:                                        ; preds = %sw.bb.i.i.if.end.i6_crit_edge, %if.else.i.if.end.i6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 3
  %8 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = lshr i32 %13, 15
  %14 = and i32 %and.i.i, 4
  %or11.i = or i32 %14, 8
  %flags.1.i = select i1 %cmp9.i, i32 %or11.i, i32 %14
  %or13.i = or i32 %flags.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i5 = icmp eq i32 %14, 0
  %and1.i.i = and i32 %flags.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %..i = select i1 %tobool2.not.i.i, i32 20, i32 132
  %.sink.i = select i1 %tobool.not.i.i5, i32 %..i, i32 76
  %arrayidx.i.i = getelementptr i8, ptr %rqos, i32 %.sink.i
  tail call fastcc void @wbt_rqw_done(ptr noundef nonnull %add.ptr.i, ptr noundef %arrayidx.i.i, i32 noundef %or13.i) #15
  br label %__wbt_done.exit

__wbt_done.exit:                                  ; preds = %if.end.i6, %sw.bb.i.i.__wbt_done.exit_crit_edge, %if.else.i.__wbt_done.exit_crit_edge, %if.end.i.__wbt_done.exit_crit_edge, %rwb_enabled.exit.i.__wbt_done.exit_crit_edge, %land.lhs.true.i.i.__wbt_done.exit_crit_edge, %entry.__wbt_done.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wbt_exit(ptr noundef %rqos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rqos, i32 -68
  %q1 = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %0 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q1, align 4
  %cb = getelementptr i8, ptr %rqos, i32 -36
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 8
  tail call void @blk_stat_remove_callback(ptr noundef %1, ptr noundef %3) #15
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 8
  tail call void @blk_stat_free_callback(ptr noundef %5) #15
  tail call void @kfree(ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rq_qos_wait(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @wbt_inflight_cb(ptr noundef %rqw, ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rw = getelementptr inbounds %struct.wbt_wait_data, ptr %private_data, i32 0, i32 2
  %2 = ptrtoint ptr %rw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.get_limit.exit_crit_edge, label %land.lhs.true.i.i

entry.get_limit.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_limit.exit

land.lhs.true.i.i:                                ; preds = %entry
  %enable_state.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %enable_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.not.i.i = icmp eq i16 %5, 3
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.get_limit.exit_crit_edge, label %rwb_enabled.exit.i

land.lhs.true.i.i.get_limit.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_limit.exit

rwb_enabled.exit.i:                               ; preds = %land.lhs.true.i.i
  %wb_normal.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wb_normal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wb_normal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp2.i.not.i, label %rwb_enabled.exit.i.get_limit.exit_crit_edge, label %if.end.i

rwb_enabled.exit.i.get_limit.exit_crit_edge:      ; preds = %rwb_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_limit.exit

if.end.i:                                         ; preds = %rwb_enabled.exit.i
  %and.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  br label %get_limit.exit

if.end2.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %3 to i64
  %and3.i = and i64 %conv.i, 14336
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end2.i.if.then9.i_crit_edge

if.end2.i.if.then9.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %q.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q.i.i, align 4
  %disk.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk.i.i, align 8
  %bdi.i.i = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdi.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %dirty_sleep.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %15, i32 0, i32 11, i32 25
  %17 = ptrtoint ptr %dirty_sleep.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_sleep.i.i, align 4
  %add.neg.i.i = add i32 %16, -100
  %sub.i.i = sub i32 %add.neg.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !138) #15
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %lor.lhs.false6.i.if.then9.i_crit_edge

lor.lhs.false6.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false6.i.if.then9.i_crit_edge, %lor.lhs.false.i.if.then9.i_crit_edge, %if.end2.i.if.then9.i_crit_edge
  %rq_depth.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 15
  br label %if.end20.i

if.else.i:                                        ; preds = %lor.lhs.false6.i
  %and11.i = and i64 %conv.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.else.i.if.end20.i_crit_edge

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

lor.lhs.false13.i:                                ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last_issue.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %last_issue.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_issue.i.i, align 8
  %add.neg.i29.i = add i32 %25, -10
  %sub.i30.i = sub i32 %add.neg.i29.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i30.i)
  %cmp.i31.i = icmp slt i32 %sub.i30.i, 0
  br i1 %cmp.i31.i, label %lor.lhs.false13.i.close_io.exit.thread.i_crit_edge, label %close_io.exit.i

lor.lhs.false13.i.close_io.exit.thread.i_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %close_io.exit.thread.i

close_io.exit.i:                                  ; preds = %lor.lhs.false13.i
  %last_comp.i.i = getelementptr inbounds %struct.rq_wb, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %last_comp.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_comp.i.i, align 4
  %sub2.i.i = sub i32 %add.neg.i29.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i.i)
  %cmp3.i.i = icmp slt i32 %sub2.i.i, 0
  br i1 %cmp3.i.i, label %close_io.exit.i.close_io.exit.thread.i_crit_edge, label %close_io.exit.i.if.end20.i_crit_edge

close_io.exit.i.if.end20.i_crit_edge:             ; preds = %close_io.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

close_io.exit.i.close_io.exit.thread.i_crit_edge: ; preds = %close_io.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %close_io.exit.thread.i

close_io.exit.thread.i:                           ; preds = %close_io.exit.i.close_io.exit.thread.i_crit_edge, %lor.lhs.false13.i.close_io.exit.thread.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %close_io.exit.thread.i, %close_io.exit.i.if.end20.i_crit_edge, %if.else.i.if.end20.i_crit_edge, %if.then9.i
  %limit.0.in.i = phi ptr [ %rq_depth.i, %if.then9.i ], [ %1, %if.else.i.if.end20.i_crit_edge ], [ %1, %close_io.exit.thread.i ], [ %wb_normal.i.i, %close_io.exit.i.if.end20.i_crit_edge ]
  %30 = ptrtoint ptr %limit.0.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %limit.0.i = load i32, ptr %limit.0.in.i, align 4
  br label %get_limit.exit

get_limit.exit:                                   ; preds = %if.end20.i, %if.then1.i, %rwb_enabled.exit.i.get_limit.exit_crit_edge, %land.lhs.true.i.i.get_limit.exit_crit_edge, %entry.get_limit.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then1.i ], [ %limit.0.i, %if.end20.i ], [ -1, %rwb_enabled.exit.i.get_limit.exit_crit_edge ], [ -1, %land.lhs.true.i.i.get_limit.exit_crit_edge ], [ -1, %entry.get_limit.exit_crit_edge ]
  %call1 = tail call zeroext i1 @rq_wait_inc_below(ptr noundef %rqw, i32 noundef %retval.0.i) #15
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wbt_cleanup_cb(ptr noundef %rqw, ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wb_acct = getelementptr inbounds %struct.wbt_wait_data, ptr %private_data, i32 0, i32 1
  %2 = ptrtoint ptr %wb_acct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wb_acct, align 4
  tail call fastcc void @wbt_rqw_done(ptr noundef %1, ptr noundef %rqw, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rq_wait_inc_below(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wbt_rqw_done(ptr noundef %rwb, ptr noundef %rqw, i32 noundef %wb_acct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight1 = getelementptr inbounds %struct.rq_wait, ptr %rqw, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !166
  tail call void @llvm.prefetch.p0(ptr %inflight1, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight1, ptr %inflight1, i32 1, ptr elementtype(i32) %inflight1) #15, !srcloc !167
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !168
  %tobool.not.i = icmp eq ptr %rwb, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i, !prof !169

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %enable_state.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 2
  %1 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %enable_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp.not.i = icmp eq i16 %2, 3
  br i1 %cmp.not.i, label %land.lhs.true.i.if.then_crit_edge, label %rwb_enabled.exit, !prof !169

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

rwb_enabled.exit:                                 ; preds = %land.lhs.true.i
  %wb_normal.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 1
  %3 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wb_normal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.i.not = icmp eq i32 %4, 0
  br i1 %cmp2.i.not, label %rwb_enabled.exit.if.then_crit_edge, label %if.end, !prof !149

rwb_enabled.exit.if.then_crit_edge:               ; preds = %rwb_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %rwb_enabled.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @rwb_wake_all(ptr noundef %rwb)
  br label %cleanup

if.end:                                           ; preds = %rwb_enabled.exit
  %and = and i32 %wb_acct, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %rwb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rwb, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %wc = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 9
  %7 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.else.if.else10_crit_edge, label %land.lhs.true

if.else.if.else10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %q.i = getelementptr inbounds %struct.rq_wb, ptr %rwb, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q.i, align 4
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disk.i, align 8
  %bdi.i = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %bdi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdi.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %dirty_sleep.i = getelementptr inbounds %struct.backing_dev_info, ptr %14, i32 0, i32 11, i32 25
  %16 = ptrtoint ptr %dirty_sleep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty_sleep.i, align 4
  %add.neg.i = add i32 %15, -100
  %sub.i = sub i32 %add.neg.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.else10_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else10

if.else10:                                        ; preds = %land.lhs.true.if.else10_crit_edge, %if.else.if.else10_crit_edge
  %18 = ptrtoint ptr %wb_normal.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wb_normal.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %land.lhs.true.if.end12_crit_edge, %if.then6
  %limit.0 = phi i32 [ %6, %if.then6 ], [ %19, %if.else10 ], [ 0, %land.lhs.true.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool13.not = icmp eq i32 %asmresult.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.0, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp sgt i32 %limit.0, %asmresult.i.i.i.i
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !153
  %head.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %rqw, i32 0, i32 1
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %21, %head.i.i
  br i1 %cmp.i.i.i.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  br i1 %tobool13.not, label %if.then18.if.then22_crit_edge, label %lor.lhs.false

if.then18.if.then22_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.then18
  %sub = sub i32 %limit.0, %asmresult.i.i.i.i
  %22 = ptrtoint ptr %rwb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rwb, align 8
  %div39 = lshr i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div39)
  %cmp21.not = icmp ult i32 %sub, %div39
  br i1 %cmp21.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.then18.if.then22_crit_edge
  tail call void @__wake_up(ptr noundef %rqw, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_free_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_curr_win_nsec_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_win_nsec = getelementptr i8, ptr %data, i32 -44
  %0 = ptrtoint ptr %cur_win_nsec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cur_win_nsec, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i64 noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_enabled_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_state = getelementptr i8, ptr %data, i32 -60
  %0 = ptrtoint ptr %enable_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable_state, align 8
  %conv = sext i16 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %conv) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_id_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rq_qos, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_inflight_show(ptr noundef %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr i8, ptr %data, i32 72
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #15
  %0 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inflight, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef %1) #15
  %inflight.1 = getelementptr i8, ptr %data, i32 128
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.1, i32 noundef 4) #15
  %2 = ptrtoint ptr %inflight.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %inflight.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef %3) #15
  %inflight.2 = getelementptr i8, ptr %data, i32 184
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight.2, i32 noundef 4) #15
  %4 = ptrtoint ptr %inflight.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %inflight.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef 2, i32 noundef %5) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_min_lat_nsec_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %min_lat_nsec = getelementptr i8, ptr %data, i32 -4
  %0 = ptrtoint ptr %min_lat_nsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_lat_nsec, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_unknown_cnt_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %unknown_cnt = getelementptr i8, ptr %data, i32 -56
  %0 = ptrtoint ptr %unknown_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unknown_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_normal_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wb_normal = getelementptr i8, ptr %data, i32 -64
  %0 = ptrtoint ptr %wb_normal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wb_normal, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbt_background_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 -68
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %1) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_rqos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !107, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__tracepoint_wbt_stat, !1, !"__tracepoint_wbt_stat", i1 false, i1 false}
!1 = !{!"../include/trace/events/wbt.h", i32 15, i32 1}
!2 = !{ptr @__tracepoint_ptr_wbt_stat, !1, !"__tracepoint_ptr_wbt_stat", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_wbt_stat, !1, !"__SCK__tp_func_wbt_stat", i1 false, i1 false}
!4 = !{ptr @__tracepoint_wbt_lat, !5, !"__tracepoint_wbt_lat", i1 false, i1 false}
!5 = !{!"../include/trace/events/wbt.h", i32 59, i32 1}
!6 = !{ptr @__tracepoint_ptr_wbt_lat, !5, !"__tracepoint_ptr_wbt_lat", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_wbt_lat, !5, !"__SCK__tp_func_wbt_lat", i1 false, i1 false}
!8 = !{ptr @__tracepoint_wbt_step, !9, !"__tracepoint_wbt_step", i1 false, i1 false}
!9 = !{!"../include/trace/events/wbt.h", i32 89, i32 1}
!10 = !{ptr @__tracepoint_ptr_wbt_step, !9, !"__tracepoint_ptr_wbt_step", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_wbt_step, !9, !"__SCK__tp_func_wbt_step", i1 false, i1 false}
!12 = !{ptr @__tracepoint_wbt_timer, !13, !"__tracepoint_wbt_timer", i1 false, i1 false}
!13 = !{!"../include/trace/events/wbt.h", i32 129, i32 1}
!14 = !{ptr @__tracepoint_ptr_wbt_timer, !13, !"__tracepoint_ptr_wbt_timer", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_wbt_timer, !13, !"__SCK__tp_func_wbt_timer", i1 false, i1 false}
!16 = !{ptr @event_class_wbt_stat, !1, !"event_class_wbt_stat", i1 false, i1 false}
!17 = !{ptr @event_wbt_stat, !1, !"event_wbt_stat", i1 false, i1 false}
!18 = !{ptr @__event_wbt_stat, !1, !"__event_wbt_stat", i1 false, i1 false}
!19 = !{ptr @event_class_wbt_lat, !5, !"event_class_wbt_lat", i1 false, i1 false}
!20 = !{ptr @event_wbt_lat, !5, !"event_wbt_lat", i1 false, i1 false}
!21 = !{ptr @__event_wbt_lat, !5, !"__event_wbt_lat", i1 false, i1 false}
!22 = !{ptr @event_class_wbt_step, !9, !"event_class_wbt_step", i1 false, i1 false}
!23 = !{ptr @event_wbt_step, !9, !"event_wbt_step", i1 false, i1 false}
!24 = !{ptr @__event_wbt_step, !9, !"__event_wbt_step", i1 false, i1 false}
!25 = !{ptr @event_class_wbt_timer, !13, !"event_class_wbt_timer", i1 false, i1 false}
!26 = !{ptr @event_wbt_timer, !13, !"event_wbt_timer", i1 false, i1 false}
!27 = !{ptr @__event_wbt_timer, !13, !"__event_wbt_timer", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_wbt_stat, !1, !"__bpf_trace_tp_map_wbt_stat", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_wbt_lat, !5, !"__bpf_trace_tp_map_wbt_lat", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_wbt_step, !9, !"__bpf_trace_tp_map_wbt_step", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_wbt_timer, !13, !"__bpf_trace_tp_map_wbt_timer", i1 false, i1 false}
!32 = !{ptr @__ksymtab_wbt_enable_default, !33, !"__ksymtab_wbt_enable_default", i1 false, i1 false}
!33 = !{!"../block/blk-wbt.c", i32 657, i32 1}
!34 = !{ptr @__ksymtab_wbt_disable_default, !35, !"__ksymtab_wbt_disable_default", i1 false, i1 false}
!35 = !{!"../block/blk-wbt.c", i32 715, i32 1}
!36 = !{ptr @__tpstrtab_wbt_stat, !1, !"__tpstrtab_wbt_stat", i1 false, i1 false}
!37 = !{ptr @__tpstrtab_wbt_lat, !5, !"__tpstrtab_wbt_lat", i1 false, i1 false}
!38 = !{ptr @__tpstrtab_wbt_step, !9, !"__tpstrtab_wbt_step", i1 false, i1 false}
!39 = !{ptr @__tpstrtab_wbt_timer, !13, !"__tpstrtab_wbt_timer", i1 false, i1 false}
!40 = !{ptr @str__wbt__trace_system_name, !41, !"str__wbt__trace_system_name", i1 false, i1 false}
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
!51 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @trace_event_fields_wbt_stat, !1, !"trace_event_fields_wbt_stat", i1 false, i1 false}
!57 = !{ptr @trace_event_type_funcs_wbt_stat, !1, !"trace_event_type_funcs_wbt_stat", i1 false, i1 false}
!58 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @print_fmt_wbt_stat, !1, !"print_fmt_wbt_stat", i1 false, i1 false}
!60 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @trace_event_fields_wbt_lat, !5, !"trace_event_fields_wbt_lat", i1 false, i1 false}
!63 = !{ptr @trace_event_type_funcs_wbt_lat, !5, !"trace_event_type_funcs_wbt_lat", i1 false, i1 false}
!64 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @print_fmt_wbt_lat, !5, !"print_fmt_wbt_lat", i1 false, i1 false}
!66 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.19, !9, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.20, !9, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.21, !9, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.22, !9, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.23, !9, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !9, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.25, !9, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.26, !9, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @trace_event_fields_wbt_step, !9, !"trace_event_fields_wbt_step", i1 false, i1 false}
!76 = !{ptr @trace_event_type_funcs_wbt_step, !9, !"trace_event_type_funcs_wbt_step", i1 false, i1 false}
!77 = !{ptr @.str.27, !9, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @print_fmt_wbt_step, !9, !"print_fmt_wbt_step", i1 false, i1 false}
!79 = !{ptr @.str.28, !13, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.29, !13, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @trace_event_fields_wbt_timer, !13, !"trace_event_fields_wbt_timer", i1 false, i1 false}
!82 = !{ptr @trace_event_type_funcs_wbt_timer, !13, !"trace_event_type_funcs_wbt_timer", i1 false, i1 false}
!83 = !{ptr @.str.30, !13, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @print_fmt_wbt_timer, !13, !"print_fmt_wbt_timer", i1 false, i1 false}
!85 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!86 = !{ptr @.str.31, !5, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!88 = !{ptr @.str.32, !5, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!93 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!95 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../block/blk-wbt.c", i32 326, i32 22}
!98 = !{ptr @scale_down.___tp_str, !97, !"___tp_str", i1 false, i1 false}
!99 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!100 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../block/blk-wbt.c", i32 317, i32 22}
!103 = !{ptr @scale_up.___tp_str, !102, !"___tp_str", i1 false, i1 false}
!104 = !{ptr @rq_wait_init.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../block/blk-rq-qos.h", i32 86, i32 2}
!106 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wbt_rqos_ops, !108, !"wbt_rqos_ops", i1 false, i1 false}
!108 = !{!"../block/blk-wbt.c", i32 805, i32 26}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../block/blk-wbt.c", i32 199, i32 3}
!111 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../block/blk-wbt.c", i32 793, i32 3}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../block/blk-wbt.c", i32 794, i32 3}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../block/blk-wbt.c", i32 795, i32 3}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../block/blk-wbt.c", i32 797, i32 3}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../block/blk-wbt.c", i32 798, i32 3}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../block/blk-wbt.c", i32 799, i32 3}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../block/blk-wbt.c", i32 800, i32 3}
!126 = !{ptr @wbt_debugfs_attrs, !127, !"wbt_debugfs_attrs", i1 false, i1 false}
!127 = !{!"../block/blk-wbt.c", i32 792, i32 41}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../block/blk-wbt.c", i32 723, i32 16}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../block/blk-wbt.c", i32 732, i32 16}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../block/blk-wbt.c", i32 740, i32 16}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../block/blk-wbt.c", i32 751, i32 17}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../block/blk-wbt.c", i32 761, i32 16}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{!"auto-init"}
!151 = !{i64 1133139, i64 1133166, i64 1133188, i64 1133216}
!152 = !{i64 1133547, i64 1133574, i64 1133607, i64 1133628, i64 1133655, i64 1133681}
!153 = !{i64 2149418710}
!154 = !{i64 2148618683, i64 2148618963, i64 2148619297, i64 2148619631}
!155 = !{i64 2148709964, i64 2148709969, i64 2148709982, i64 2148710026, i64 2148710060, i64 2148710081}
!156 = !{i64 2155224159}
!157 = !{i64 2155224394}
!158 = !{i64 2149525607}
!159 = !{i64 2149526643}
!160 = !{i64 2155185674}
!161 = !{i64 2155185867}
!162 = !{i64 2155169823}
!163 = !{i64 2155170020}
!164 = !{i64 2155207116}
!165 = !{i64 2155207373}
!166 = !{i64 2148316601}
!167 = !{i64 2148231334, i64 2148231366, i64 2148231395, i64 2148231429, i64 2148231460, i64 2148231483}
!168 = !{i64 2148316830}
!169 = !{!"branch_weights", i32 1073205, i32 2146410443}
