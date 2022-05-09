; ModuleID = '/llk/IR_all_yes/kernel/trace/blktrace.c_pt.bc'
source_filename = "../kernel/trace/blktrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__trace_note_message\22, \22a\22\09"
module asm "\09.weak\09__crc___trace_note_message\09\09\09\09"
module asm "\09.long\09__crc___trace_note_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_note_message:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_note_message\22\09\09\09\09\09"
module asm "__kstrtabns___trace_note_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_trace_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_trace_remove\09\09\09\09"
module asm "\09.long\09__crc_blk_trace_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_trace_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_trace_remove\22\09\09\09\09\09"
module asm "__kstrtabns_blk_trace_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_trace_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_trace_setup\09\09\09\09"
module asm "\09.long\09__crc_blk_trace_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_trace_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_trace_setup\22\09\09\09\09\09"
module asm "__kstrtabns_blk_trace_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_trace_startstop\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_trace_startstop\09\09\09\09"
module asm "\09.long\09__crc_blk_trace_startstop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_trace_startstop:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_trace_startstop\22\09\09\09\09\09"
module asm "__kstrtabns_blk_trace_startstop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_add_driver_data\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_add_driver_data\09\09\09\09"
module asm "\09.long\09__crc_blk_add_driver_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_add_driver_data:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_add_driver_data\22\09\09\09\09\09"
module asm "__kstrtabns_blk_add_driver_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_fill_rwbs\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_fill_rwbs\09\09\09\09"
module asm "\09.long\09__crc_blk_fill_rwbs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_fill_rwbs:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_fill_rwbs\22\09\09\09\09\09"
module asm "__kstrtabns_blk_fill_rwbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tracer_flags = type { i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracer_opt = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.32 }
%union.anon.32 = type { i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rchan_callbacks = type { ptr, ptr, ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.anon.113 = type { [2 x ptr], ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.anon.114 = type { i32, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.__va_list = type { ptr }
%struct.blk_trace = type { i32, ptr, ptr, ptr, i16, i64, i64, i32, i32, ptr, %struct.list_head, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.30, ptr, i64, i16, i16, ptr }
%union.anon.30 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.rchan = type { i32, i32, i32, i32, ptr, %struct.kref, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, [255 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.rchan_buf = type { ptr, ptr, i32, i32, i32, ptr, %struct.wait_queue_head, %struct.irq_work, ptr, %struct.kref, ptr, i32, i32, ptr, i32, i32, i32, i32, [124 x i8] }
%struct.blk_io_trace = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i16, i16 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.blk_user_trace_setup = type { [32 x i8], i16, i32, i32, i64, i64, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.42, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.43, %union.anon.44, %union.anon.45, %union.anon.50, ptr, ptr }
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%union.anon.44 = type { %struct.rb_node }
%union.anon.45 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, %struct.list_head, ptr }
%union.anon.50 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.atomic64_t = type { i64 }
%struct.blk_io_trace_remap = type { i32, i32, i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.trace_entry = type { i16, i8, i8, i32 }

@blk_tracer_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@blk_tracer_flags = internal global { %struct.tracer_flags, [20 x i8] } { %struct.tracer_flags { i32 0, ptr @blk_tracer_opts, ptr null }, [20 x i8] zeroinitializer }, align 32
@__kstrtab___trace_note_message = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_note_message = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_note_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_note_message to i32), ptr @__kstrtab___trace_note_message, ptr @__kstrtabns___trace_note_message }, section "___ksymtab_gpl+__trace_note_message", align 4
@__kstrtab_blk_trace_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_trace_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_trace_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_trace_remove to i32), ptr @__kstrtab_blk_trace_remove, ptr @__kstrtabns_blk_trace_remove }, section "___ksymtab_gpl+blk_trace_remove", align 4
@__kstrtab_blk_trace_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_trace_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_trace_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_trace_setup to i32), ptr @__kstrtab_blk_trace_setup, ptr @__kstrtabns_blk_trace_setup }, section "___ksymtab_gpl+blk_trace_setup", align 4
@__kstrtab_blk_trace_startstop = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_trace_startstop = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_trace_startstop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_trace_startstop to i32), ptr @__kstrtab_blk_trace_startstop, ptr @__kstrtabns_blk_trace_startstop }, section "___ksymtab_gpl+blk_trace_startstop", align 4
@blk_trace_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/trace/blktrace.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@blk_add_driver_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_blk_add_driver_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_add_driver_data = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_add_driver_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_add_driver_data to i32), ptr @__kstrtab_blk_add_driver_data, ptr @__kstrtabns_blk_add_driver_data }, section "___ksymtab_gpl+blk_add_driver_data", align 4
@__initcall__kmod_blktrace__376_1608_init_blk_tracer6 = internal global ptr @init_blk_tracer, section ".initcall6.init", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@blk_trace_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_enable, ptr @dev_attr_act_mask, ptr @dev_attr_pid, ptr @dev_attr_start_lba, ptr @dev_attr_end_lba, ptr null], [40 x i8] zeroinitializer }, align 32
@blk_trace_attr_group = dso_local global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @blk_trace_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_blk_fill_rwbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_fill_rwbs = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_fill_rwbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_fill_rwbs to i32), ptr @__kstrtab_blk_fill_rwbs, ptr @__kstrtabns_blk_fill_rwbs }, section "___ksymtab_gpl+blk_fill_rwbs", align 4
@blk_tracer_opts = internal global { [4 x %struct.tracer_opt], [32 x i8] } { [4 x %struct.tracer_opt] [%struct.tracer_opt { ptr @.str.4, i32 1 }, %struct.tracer_opt { ptr @.str.5, i32 2 }, %struct.tracer_opt { ptr @.str.6, i32 4 }, %struct.tracer_opt zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"blk_classic\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blk_cgroup\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blk_cgname\00", [21 x i8] zeroinitializer }, align 32
@blk_tr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__blk_trace_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dropped\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@blk_probe_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @blk_probe_mutex, i64 52), ptr getelementptr (i8, ptr @blk_probe_mutex, i64 52) }, ptr @blk_probe_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@blk_probes_ref = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"blk_probe_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"blk_probe_mutex\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_block_rq_remap = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_rq_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_bio_remap = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_bio_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_split = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_unplug = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_unplug.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_plug = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_plug.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_getrq = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_bio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_bio_queue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_bio_frontmerge = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_bio_backmerge = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_bio_complete = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_bio_bounce = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_rq_complete = external dso_local global %struct.tracepoint, align 4
@blk_add_trace_rq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_rq_requeue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_rq_merge = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_rq_issue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_rq_insert = external dso_local global %struct.tracepoint, align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@do_blk_trace_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_blk_trace_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014blktrace: Concurrent blktraces are not allowed on %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_blk_trace_setup\00", [45 x i8] zeroinitializer }, align 32
@do_blk_trace_setup._entry_ptr = internal global ptr @do_blk_trace_setup._entry, section ".printk_index", align 4
@blk_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@do_blk_trace_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014blktrace: debugfs_dir not present for %s so skipping\0A\00", [40 x i8] zeroinitializer }, align 32
@do_blk_trace_setup._entry_ptr.18 = internal global ptr @do_blk_trace_setup._entry.16, section ".printk_index", align 4
@blk_dropped_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @blk_dropped_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@blk_msg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @blk_msg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@blk_relay_callbacks = internal constant { %struct.rchan_callbacks, [20 x i8] } { %struct.rchan_callbacks { ptr @blk_subbuf_start_callback, ptr @blk_create_buf_file_callback, ptr @blk_remove_buf_file_callback }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@relay_file_operations = external dso_local constant %struct.file_operations, align 4
@__blk_trace_startstop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@blktrace_seq = internal unnamed_addr global i32 1, section ".data..read_mostly", align 4
@running_trace_lock = internal global %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, section ".data..cacheline_aligned", align 128
@running_trace_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @running_trace_list, ptr @running_trace_list }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"running_trace_lock\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ddir_act = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 65536, i32 131072], [24 x i8] zeroinitializer }, align 32
@trace_blk_event = internal global { %struct.trace_event, [40 x i8] } { %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 13, ptr @trace_blk_event_funcs }, [40 x i8] zeroinitializer }, align 32
@init_blk_tracer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 1595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014blktrace: Warning: could not register block events\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_blk_tracer\00", [16 x i8] zeroinitializer }, align 32
@init_blk_tracer._entry_ptr = internal global ptr @init_blk_tracer._entry, section ".printk_index", align 4
@blk_tracer = internal global %struct.tracer { ptr @.str.81, ptr @blk_tracer_init, ptr @blk_tracer_reset, ptr @blk_tracer_start, ptr @blk_tracer_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blk_tracer_print_header, ptr @blk_tracer_print_line, ptr @blk_tracer_set_flag, ptr null, ptr null, ptr @blk_tracer_flags, i32 0, i8 0, i8 0, i8 0, i8 0 }, section ".data..read_mostly", align 4
@init_blk_tracer._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014blktrace: Warning: could not register the block tracer\0A\00", [38 x i8] zeroinitializer }, align 32
@init_blk_tracer._entry_ptr.29 = internal global ptr @init_blk_tracer._entry.27, section ".printk_index", align 4
@trace_blk_event_funcs = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @blk_trace_event_print, ptr null, ptr null, ptr @blk_trace_event_print_binary }, [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"message\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"m\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown action %x\0A\00", [45 x i8] zeroinitializer }, align 32
@what2act = internal constant { [16 x %struct.anon.113], [32 x i8] } { [16 x %struct.anon.113] [%struct.anon.113 zeroinitializer, %struct.anon.113 { [2 x ptr] [ptr @.str.37, ptr @.str.38], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.39, ptr @.str.40], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.41, ptr @.str.42], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.43, ptr @.str.44], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.45, ptr @.str.46], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.47, ptr @.str.48], ptr @blk_log_with_error }, %struct.anon.113 { [2 x ptr] [ptr @.str.49, ptr @.str.50], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.51, ptr @.str.52], ptr @blk_log_with_error }, %struct.anon.113 { [2 x ptr] [ptr @.str.53, ptr @.str.54], ptr @blk_log_plug }, %struct.anon.113 { [2 x ptr] [ptr @.str.55, ptr @.str.56], ptr @blk_log_unplug }, %struct.anon.113 { [2 x ptr] [ptr @.str.57, ptr @.str.58], ptr @blk_log_unplug }, %struct.anon.113 { [2 x ptr] [ptr @.str.59, ptr @.str.60], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.61, ptr @.str.62], ptr @blk_log_split }, %struct.anon.113 { [2 x ptr] [ptr @.str.63, ptr @.str.64], ptr @blk_log_generic }, %struct.anon.113 { [2 x ptr] [ptr @.str.65, ptr @.str.66], ptr @blk_log_remap }], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%3d,%-3d %2d %5d.%09lu %5u %2s %3s \00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%3d,%-3d %s %2s %3s \00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%3d,%-3d %llx,%-llx %2s %3s \00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%3d,%-3d %2s %3s \00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Q\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backmerge\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"frontmerge\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"getrq\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sleeprq\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"requeue\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"issue\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plug\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unplug_io\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UT\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unplug_timer\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"insert\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"X\00", [30 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"split\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bounce\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"remap\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s]\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llu + %u [%s]\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" ..) \00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c") \00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%d]\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llu + %u [%d]\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llu [%d]\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%s] %llu\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%llu / %llu [%s]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%llu + %u <- (%d,%d) %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"blk\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"# DEV   CPU TIMESTAMP     PID ACT FLG\0A#  |     |     |           |   |   |\0A\00", [52 x i8] zeroinitializer }, align 32
@dev_attr_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_blk_trace_attr_show, ptr @sysfs_blk_trace_attr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_act_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_blk_trace_attr_show, ptr @sysfs_blk_trace_attr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_blk_trace_attr_show, ptr @sysfs_blk_trace_attr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_start_lba = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_blk_trace_attr_show, ptr @sysfs_blk_trace_attr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_end_lba = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sysfs_blk_trace_attr_show, ptr @sysfs_blk_trace_attr_store }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sysfs_blk_trace_attr_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@mask_maps = internal constant { [16 x %struct.anon.114], [32 x i8] } { [16 x %struct.anon.114] [%struct.anon.114 { i32 1, ptr @.str.88 }, %struct.anon.114 { i32 2, ptr @.str.89 }, %struct.anon.114 { i32 4, ptr @.str.90 }, %struct.anon.114 { i32 8, ptr @.str.91 }, %struct.anon.114 { i32 16, ptr @.str.38 }, %struct.anon.114 { i32 32, ptr @.str.48 }, %struct.anon.114 { i32 64, ptr @.str.50 }, %struct.anon.114 { i32 128, ptr @.str.52 }, %struct.anon.114 { i32 256, ptr @.str.92 }, %struct.anon.114 { i32 512, ptr @.str.93 }, %struct.anon.114 { i32 1024, ptr @.str.94 }, %struct.anon.114 { i32 2048, ptr @.str.95 }, %struct.anon.114 { i32 4096, ptr @.str.96 }, %struct.anon.114 { i32 8192, ptr @.str.97 }, %struct.anon.114 { i32 16384, ptr @.str.98 }, %struct.anon.114 { i32 32768, ptr @.str.99 }], [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"notify\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ahead\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"meta\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"drv_data\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fua\00", [28 x i8] zeroinitializer }, align 32
@sysfs_blk_trace_attr_store.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sysfs_blk_trace_attr_store.__warned.100 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@blk_trace_remove_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"act_mask\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_lba\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"end_lba\00", [24 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [19 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.140 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.141 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.142 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.143 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.144 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.145 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.146 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.147 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.148 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.149 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.150 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.151 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.152 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.153 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.154 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.155 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.156 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.157 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.158 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.159 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.160 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.161 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.162 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.163 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.164 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.165 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.166 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.167 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.168 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.169 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.170 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.171 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.172 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.173 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.174 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.175 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.176 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.177 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.178 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.179 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.180 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.181 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.182 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.183 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.184 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.185 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.186 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.187 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.188 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.189 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.190 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.191 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.192 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.193 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.194 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.195 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.196 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.197 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.198 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.199 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.200 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.201 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.202 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.203 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.204 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.205 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.206 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.207 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.208 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.209 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.210 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.211 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.212 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.213 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.214 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.215 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.216 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.217 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.218 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.219 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.220 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.221 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.222 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.223 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.224 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.225 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.226 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.227 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.228 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.229 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.230 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.231 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.232 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.233 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.234 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.235 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.236 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.237 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.238 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.239 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.240 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.241 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.242 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.243 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.244 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.245 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.246 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.247 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.248 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.249 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.250 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.251 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.252 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.253 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.254 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.255 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.256 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.257 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.258 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.259 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.260 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.261 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.262 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.263 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.264 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.265 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.266 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.267 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.268 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.269 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.270 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.271 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.272 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.273 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.274 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.275 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.276 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.277 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.278 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.279 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.280 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.281 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.282 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.283 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.284 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.285 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.286 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.287 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.288 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.289 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.290 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.291 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.292 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.293 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.294 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.295 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.296 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.297 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.298 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.299 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.300 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.301 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.302 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.303 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/blktrace.gcda\00", [36 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [200 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -2053349987, i32 -1834378304 }, %emit_function_args_ty { i32 1, i32 1403380823, i32 -1834378304 }, %emit_function_args_ty { i32 2, i32 81157262, i32 -1834378304 }, %emit_function_args_ty { i32 3, i32 288547376, i32 -1834378304 }, %emit_function_args_ty { i32 4, i32 -522560812, i32 -1834378304 }, %emit_function_args_ty { i32 5, i32 -258508571, i32 -1834378304 }, %emit_function_args_ty { i32 6, i32 -743251458, i32 -1834378304 }, %emit_function_args_ty { i32 7, i32 -1208743970, i32 -1834378304 }, %emit_function_args_ty { i32 8, i32 -1097420066, i32 -1834378304 }, %emit_function_args_ty { i32 9, i32 363956308, i32 -1834378304 }, %emit_function_args_ty { i32 10, i32 -1596913886, i32 -1834378304 }, %emit_function_args_ty { i32 11, i32 -1180611083, i32 -1834378304 }, %emit_function_args_ty { i32 12, i32 -1352975693, i32 -1834378304 }, %emit_function_args_ty { i32 13, i32 -1229561105, i32 -1834378304 }, %emit_function_args_ty { i32 14, i32 58802566, i32 -1834378304 }, %emit_function_args_ty { i32 15, i32 1579752470, i32 -1834378304 }, %emit_function_args_ty { i32 16, i32 -1011774044, i32 -1834378304 }, %emit_function_args_ty { i32 17, i32 -1520414420, i32 -1834378304 }, %emit_function_args_ty { i32 18, i32 -1920297439, i32 -1834378304 }, %emit_function_args_ty { i32 19, i32 -2016210666, i32 -1834378304 }, %emit_function_args_ty { i32 20, i32 1183073139, i32 -1834378304 }, %emit_function_args_ty { i32 21, i32 1523042324, i32 -1834378304 }, %emit_function_args_ty { i32 22, i32 1110852416, i32 -1834378304 }, %emit_function_args_ty { i32 23, i32 1896448635, i32 -1834378304 }, %emit_function_args_ty { i32 24, i32 -1816811694, i32 -1834378304 }, %emit_function_args_ty { i32 25, i32 1278562588, i32 -1834378304 }, %emit_function_args_ty { i32 26, i32 389356222, i32 -1834378304 }, %emit_function_args_ty { i32 27, i32 -2122191467, i32 -1834378304 }, %emit_function_args_ty { i32 28, i32 -374922492, i32 -1834378304 }, %emit_function_args_ty { i32 29, i32 -1846855200, i32 -1834378304 }, %emit_function_args_ty { i32 30, i32 -351549491, i32 -1834378304 }, %emit_function_args_ty { i32 31, i32 1543841107, i32 -1834378304 }, %emit_function_args_ty { i32 32, i32 -2113064956, i32 -1834378304 }, %emit_function_args_ty { i32 33, i32 -1567486560, i32 -1834378304 }, %emit_function_args_ty { i32 34, i32 1333844298, i32 -1834378304 }, %emit_function_args_ty { i32 35, i32 -1111025999, i32 -1834378304 }, %emit_function_args_ty { i32 36, i32 835031753, i32 -1834378304 }, %emit_function_args_ty { i32 37, i32 -902506410, i32 -1834378304 }, %emit_function_args_ty { i32 38, i32 318518296, i32 -1834378304 }, %emit_function_args_ty { i32 39, i32 -1746112183, i32 -1834378304 }, %emit_function_args_ty { i32 40, i32 131249912, i32 -1834378304 }, %emit_function_args_ty { i32 41, i32 -1682322826, i32 -1834378304 }, %emit_function_args_ty { i32 42, i32 1381968521, i32 -1834378304 }, %emit_function_args_ty { i32 43, i32 1646809119, i32 -1834378304 }, %emit_function_args_ty { i32 44, i32 -473020911, i32 -1834378304 }, %emit_function_args_ty { i32 45, i32 -1735571412, i32 -1834378304 }, %emit_function_args_ty { i32 46, i32 -1347559939, i32 -1834378304 }, %emit_function_args_ty { i32 47, i32 -1292368885, i32 -1834378304 }, %emit_function_args_ty { i32 48, i32 -2122181624, i32 -1834378304 }, %emit_function_args_ty { i32 49, i32 -1140929852, i32 -1834378304 }, %emit_function_args_ty { i32 50, i32 -643071649, i32 -1834378304 }, %emit_function_args_ty { i32 51, i32 1524906858, i32 -1834378304 }, %emit_function_args_ty { i32 52, i32 -1463797700, i32 -1834378304 }, %emit_function_args_ty { i32 53, i32 -1645186799, i32 -1834378304 }, %emit_function_args_ty { i32 54, i32 1840813734, i32 -1834378304 }, %emit_function_args_ty { i32 55, i32 169039684, i32 -1834378304 }, %emit_function_args_ty { i32 56, i32 1846865710, i32 -1834378304 }, %emit_function_args_ty { i32 57, i32 -1233775488, i32 -1834378304 }, %emit_function_args_ty { i32 58, i32 88799868, i32 -1834378304 }, %emit_function_args_ty { i32 59, i32 -624447719, i32 -1834378304 }, %emit_function_args_ty { i32 60, i32 1373375957, i32 -1834378304 }, %emit_function_args_ty { i32 61, i32 72879689, i32 -1834378304 }, %emit_function_args_ty { i32 62, i32 1062235669, i32 -1834378304 }, %emit_function_args_ty { i32 63, i32 2109615557, i32 -1834378304 }, %emit_function_args_ty { i32 64, i32 -807579089, i32 -1834378304 }, %emit_function_args_ty { i32 65, i32 2055798548, i32 -1834378304 }, %emit_function_args_ty { i32 66, i32 1760757889, i32 -1834378304 }, %emit_function_args_ty { i32 67, i32 -1718774422, i32 -1834378304 }, %emit_function_args_ty { i32 68, i32 978105861, i32 -1834378304 }, %emit_function_args_ty { i32 69, i32 871047755, i32 -1834378304 }, %emit_function_args_ty { i32 70, i32 1941826860, i32 -1834378304 }, %emit_function_args_ty { i32 71, i32 1786753263, i32 -1834378304 }, %emit_function_args_ty { i32 72, i32 1620695169, i32 -1834378304 }, %emit_function_args_ty { i32 73, i32 1867579396, i32 -1834378304 }, %emit_function_args_ty { i32 74, i32 1954077715, i32 -1834378304 }, %emit_function_args_ty { i32 75, i32 113585180, i32 -1834378304 }, %emit_function_args_ty { i32 76, i32 694182074, i32 -1834378304 }, %emit_function_args_ty { i32 77, i32 -422958277, i32 -1834378304 }, %emit_function_args_ty { i32 78, i32 930575821, i32 -1834378304 }, %emit_function_args_ty { i32 79, i32 -1191140569, i32 -1834378304 }, %emit_function_args_ty { i32 80, i32 317589502, i32 -1834378304 }, %emit_function_args_ty { i32 81, i32 154821392, i32 -1834378304 }, %emit_function_args_ty { i32 82, i32 -1443726384, i32 -1834378304 }, %emit_function_args_ty { i32 83, i32 -1355937422, i32 -1834378304 }, %emit_function_args_ty { i32 84, i32 1298887003, i32 -1834378304 }, %emit_function_args_ty { i32 85, i32 -1926416007, i32 -1834378304 }, %emit_function_args_ty { i32 86, i32 -418186605, i32 -1834378304 }, %emit_function_args_ty { i32 87, i32 476513480, i32 -1834378304 }, %emit_function_args_ty { i32 88, i32 -1160787396, i32 -1834378304 }, %emit_function_args_ty { i32 89, i32 -409929734, i32 -1834378304 }, %emit_function_args_ty { i32 90, i32 -938559488, i32 -1834378304 }, %emit_function_args_ty { i32 91, i32 982398123, i32 -1834378304 }, %emit_function_args_ty { i32 92, i32 -1672745738, i32 -1834378304 }, %emit_function_args_ty { i32 93, i32 261569290, i32 -1834378304 }, %emit_function_args_ty { i32 94, i32 -754772124, i32 -1834378304 }, %emit_function_args_ty { i32 95, i32 -964008156, i32 -1834378304 }, %emit_function_args_ty { i32 96, i32 -81206156, i32 -1834378304 }, %emit_function_args_ty { i32 97, i32 436087400, i32 -1834378304 }, %emit_function_args_ty { i32 98, i32 293859546, i32 -1834378304 }, %emit_function_args_ty { i32 99, i32 1035880550, i32 -1834378304 }, %emit_function_args_ty { i32 100, i32 2137933198, i32 -1834378304 }, %emit_function_args_ty { i32 101, i32 -20435385, i32 -1834378304 }, %emit_function_args_ty { i32 102, i32 -602922639, i32 -1834378304 }, %emit_function_args_ty { i32 103, i32 964765900, i32 -1834378304 }, %emit_function_args_ty { i32 104, i32 -400554785, i32 -1834378304 }, %emit_function_args_ty { i32 105, i32 -1782918348, i32 -1834378304 }, %emit_function_args_ty { i32 106, i32 795548855, i32 -1834378304 }, %emit_function_args_ty { i32 107, i32 727036892, i32 -1834378304 }, %emit_function_args_ty { i32 108, i32 1841983822, i32 -1834378304 }, %emit_function_args_ty { i32 109, i32 1624494247, i32 -1834378304 }, %emit_function_args_ty { i32 110, i32 -963894156, i32 -1834378304 }, %emit_function_args_ty { i32 111, i32 -986397664, i32 -1834378304 }, %emit_function_args_ty { i32 112, i32 -2066439865, i32 -1834378304 }, %emit_function_args_ty { i32 113, i32 -464218692, i32 -1834378304 }, %emit_function_args_ty { i32 114, i32 1663674071, i32 -1834378304 }, %emit_function_args_ty { i32 115, i32 -19244488, i32 -1834378304 }, %emit_function_args_ty { i32 116, i32 -10115036, i32 -1834378304 }, %emit_function_args_ty { i32 117, i32 1781672997, i32 -1834378304 }, %emit_function_args_ty { i32 118, i32 -1553616806, i32 -1834378304 }, %emit_function_args_ty { i32 119, i32 -1470647293, i32 -1834378304 }, %emit_function_args_ty { i32 120, i32 1352378391, i32 -1834378304 }, %emit_function_args_ty { i32 121, i32 -1584402539, i32 -1834378304 }, %emit_function_args_ty { i32 122, i32 47165945, i32 -1834378304 }, %emit_function_args_ty { i32 123, i32 1193399290, i32 -1834378304 }, %emit_function_args_ty { i32 124, i32 1836136019, i32 -1834378304 }, %emit_function_args_ty { i32 125, i32 2103758662, i32 -1834378304 }, %emit_function_args_ty { i32 126, i32 -1420592344, i32 -1834378304 }, %emit_function_args_ty { i32 127, i32 -90056313, i32 -1834378304 }, %emit_function_args_ty { i32 128, i32 2119779811, i32 -1834378304 }, %emit_function_args_ty { i32 129, i32 1386334036, i32 -1834378304 }, %emit_function_args_ty { i32 130, i32 161813371, i32 -1834378304 }, %emit_function_args_ty { i32 131, i32 591812723, i32 -1834378304 }, %emit_function_args_ty { i32 132, i32 1742648618, i32 -1834378304 }, %emit_function_args_ty { i32 133, i32 -399937058, i32 -1834378304 }, %emit_function_args_ty { i32 134, i32 -381259165, i32 -1834378304 }, %emit_function_args_ty { i32 135, i32 1445525274, i32 -1834378304 }, %emit_function_args_ty { i32 136, i32 213087416, i32 -1834378304 }, %emit_function_args_ty { i32 137, i32 -1682732688, i32 -1834378304 }, %emit_function_args_ty { i32 138, i32 24854891, i32 -1834378304 }, %emit_function_args_ty { i32 139, i32 -764017258, i32 -1834378304 }, %emit_function_args_ty { i32 140, i32 28819284, i32 -1834378304 }, %emit_function_args_ty { i32 141, i32 -1735539276, i32 -1834378304 }, %emit_function_args_ty { i32 142, i32 -827560602, i32 -1834378304 }, %emit_function_args_ty { i32 143, i32 1581157533, i32 -1834378304 }, %emit_function_args_ty { i32 144, i32 -1814116398, i32 -1834378304 }, %emit_function_args_ty { i32 145, i32 -1635945486, i32 -1834378304 }, %emit_function_args_ty { i32 146, i32 577304209, i32 -1834378304 }, %emit_function_args_ty { i32 147, i32 -1061373677, i32 -1834378304 }, %emit_function_args_ty { i32 148, i32 -1708490279, i32 -1834378304 }, %emit_function_args_ty { i32 149, i32 1112388048, i32 -1834378304 }, %emit_function_args_ty { i32 150, i32 -1342645549, i32 -1834378304 }, %emit_function_args_ty { i32 151, i32 -1696498604, i32 -1834378304 }, %emit_function_args_ty { i32 152, i32 407044135, i32 -1834378304 }, %emit_function_args_ty { i32 153, i32 -1554398684, i32 -1834378304 }, %emit_function_args_ty { i32 154, i32 -897520410, i32 -1834378304 }, %emit_function_args_ty { i32 155, i32 -1111330171, i32 -1834378304 }, %emit_function_args_ty { i32 156, i32 1520703164, i32 -1834378304 }, %emit_function_args_ty { i32 157, i32 810898280, i32 -1834378304 }, %emit_function_args_ty { i32 158, i32 1242681965, i32 -1834378304 }, %emit_function_args_ty { i32 159, i32 -102673338, i32 -1834378304 }, %emit_function_args_ty { i32 160, i32 1895427447, i32 -1834378304 }, %emit_function_args_ty { i32 161, i32 1911348029, i32 -1834378304 }, %emit_function_args_ty { i32 162, i32 -13428701, i32 -1834378304 }, %emit_function_args_ty { i32 163, i32 -277000795, i32 -1834378304 }, %emit_function_args_ty { i32 164, i32 -1616935325, i32 -1834378304 }, %emit_function_args_ty { i32 165, i32 -1016141526, i32 -1834378304 }, %emit_function_args_ty { i32 166, i32 -1639498784, i32 -1834378304 }, %emit_function_args_ty { i32 167, i32 746673099, i32 -1834378304 }, %emit_function_args_ty { i32 168, i32 1575373065, i32 -1834378304 }, %emit_function_args_ty { i32 169, i32 -1715125377, i32 -1834378304 }, %emit_function_args_ty { i32 170, i32 -2046534121, i32 -1834378304 }, %emit_function_args_ty { i32 171, i32 286929510, i32 -1834378304 }, %emit_function_args_ty { i32 172, i32 -304032866, i32 -1834378304 }, %emit_function_args_ty { i32 173, i32 1126207848, i32 -1834378304 }, %emit_function_args_ty { i32 174, i32 755076747, i32 -1834378304 }, %emit_function_args_ty { i32 175, i32 525460670, i32 -1834378304 }, %emit_function_args_ty { i32 176, i32 1971635008, i32 -1834378304 }, %emit_function_args_ty { i32 177, i32 1391846720, i32 -1834378304 }, %emit_function_args_ty { i32 178, i32 2090080135, i32 -1834378304 }, %emit_function_args_ty { i32 179, i32 1871690878, i32 -1834378304 }, %emit_function_args_ty { i32 180, i32 -560169359, i32 -1834378304 }, %emit_function_args_ty { i32 181, i32 1527345373, i32 -1834378304 }, %emit_function_args_ty { i32 182, i32 -1633062448, i32 -1834378304 }, %emit_function_args_ty { i32 183, i32 -2144846981, i32 -1834378304 }, %emit_function_args_ty { i32 184, i32 86890085, i32 -1834378304 }, %emit_function_args_ty { i32 185, i32 -464759521, i32 -1834378304 }, %emit_function_args_ty { i32 186, i32 167447645, i32 -1834378304 }, %emit_function_args_ty { i32 187, i32 2133875072, i32 -1834378304 }, %emit_function_args_ty { i32 188, i32 -2002708552, i32 -1834378304 }, %emit_function_args_ty { i32 189, i32 650677247, i32 -1834378304 }, %emit_function_args_ty { i32 190, i32 -513125801, i32 -1834378304 }, %emit_function_args_ty { i32 191, i32 315532185, i32 -1834378304 }, %emit_function_args_ty { i32 192, i32 728876276, i32 -1834378304 }, %emit_function_args_ty { i32 193, i32 978253961, i32 -1834378304 }, %emit_function_args_ty { i32 194, i32 -460606195, i32 -1834378304 }, %emit_function_args_ty { i32 195, i32 -1127409411, i32 -1834378304 }, %emit_function_args_ty { i32 196, i32 -457909843, i32 -1834378304 }, %emit_function_args_ty { i32 197, i32 -12360871, i32 -1834378304 }, %emit_function_args_ty { i32 198, i32 -986972138, i32 -1834378304 }, %emit_function_args_ty { i32 199, i32 -336318023, i32 -1834378304 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [200 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.105 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.106 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.107 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.108 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.109 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.110 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.111 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.112 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.113 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.114 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.115 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.116 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.117 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.118 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.119 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.120 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.121 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.122 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.123 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.124 }, %emit_arcs_args_ty { i32 19, ptr @__llvm_gcov_ctr.125 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.126 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.127 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.128 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.129 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.130 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.131 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.132 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.133 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.134 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.135 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.136 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.137 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.138 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.139 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.140 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.141 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.142 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.143 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.144 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.145 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.146 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.147 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.148 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.149 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.150 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.151 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.152 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.153 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.154 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.155 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.156 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.157 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.158 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.159 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.160 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.161 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.162 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.163 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.164 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.165 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.166 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.167 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.168 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.169 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.170 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.171 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.172 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.173 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.174 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.175 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.176 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.177 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.178 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.179 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.180 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.181 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.182 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.183 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.184 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.185 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.186 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.187 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.188 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.189 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.190 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.191 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.192 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.193 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.194 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.195 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.196 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.197 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.198 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.199 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.200 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.201 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.202 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.203 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.204 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.205 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.206 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.207 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.208 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.209 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.210 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.211 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.212 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.213 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.214 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.215 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.216 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.217 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.218 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.219 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.220 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.221 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.222 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.223 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.224 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.225 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.226 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.227 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.228 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.229 }, %emit_arcs_args_ty { i32 17, ptr @__llvm_gcov_ctr.230 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.231 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.232 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.233 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.234 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.235 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.236 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.237 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.238 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.239 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.240 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.241 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.242 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.243 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.244 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.245 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.246 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.247 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.248 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.249 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.250 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.251 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.252 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.253 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.254 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.255 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.256 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.257 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.258 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.259 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.260 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.261 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.262 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.263 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.264 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.265 }, %emit_arcs_args_ty { i32 17, ptr @__llvm_gcov_ctr.266 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.267 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.268 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.269 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.270 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.271 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.272 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.273 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.274 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.275 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.276 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.277 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.278 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.279 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.280 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.281 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.282 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.283 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.284 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.285 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.286 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.287 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.288 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.289 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.290 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.291 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.292 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.293 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.294 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.295 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.296 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.297 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.298 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.299 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.300 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.301 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.302 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.303 }]
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4724, i64 4725, i64 4726, i64 3225948787]
@__sancov_gen_cov_switch_values.304 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.305 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7]
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"blk_tracer_flags\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 54, i32 28 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 774, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1082, i32 7 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1695, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant [16 x i8] c"blk_trace_attrs\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1685, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant [21 x i8] c"blk_trace_attr_group\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1694, i32 24 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"blk_tracer_opts\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 44, i32 26 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 46, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 48, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 49, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant [7 x i8] c"blk_tr\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 33, i32 28 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 322, i32 33 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 323, i32 33 }
@___asan_gen_.348 = private unnamed_addr constant [16 x i8] c"blk_probe_mutex\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [15 x i8] c"blk_probes_ref\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 61, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 60, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 156, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 510, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 545, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"blk_dropped_fops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 393, i32 37 }
@___asan_gen_.381 = private unnamed_addr constant [13 x i8] c"blk_msg_fops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 420, i32 37 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c"blk_relay_callbacks\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 461, i32 37 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 388, i32 29 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 414, i32 33 }
@___asan_gen_.393 = private unnamed_addr constant [19 x i8] c"running_trace_list\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 36, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 37, i32 35 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 695, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 723, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [9 x i8] c"ddir_act\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 201, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant [16 x i8] c"trace_blk_event\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1587, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1595, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1600, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [22 x i8] c"trace_blk_event_funcs\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1582, i32 37 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1504, i32 31 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1504, i32 43 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1510, i32 23 }
@___asan_gen_.441 = private unnamed_addr constant [9 x i8] c"what2act\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1468, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1260, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1280, i32 33 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1298, i32 6 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1303, i32 32 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1469, i32 25 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1469, i32 30 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1470, i32 29 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1470, i32 34 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1471, i32 30 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1471, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1472, i32 25 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1472, i32 30 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1473, i32 27 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1473, i32 32 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1474, i32 27 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1474, i32 32 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1475, i32 25 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1475, i32 30 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1476, i32 28 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1476, i32 33 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1477, i32 25 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1477, i32 30 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1478, i32 29 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1478, i32 34 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1479, i32 31 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1479, i32 37 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1480, i32 26 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1480, i32 31 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1481, i32 25 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1481, i32 30 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1482, i32 26 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1482, i32 31 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1483, i32 25 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1483, i32 30 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1353, i32 23 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1355, i32 23 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1358, i32 24 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1330, i32 23 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1331, i32 15 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1331, i32 20 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1338, i32 22 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1343, i32 20 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1370, i32 23 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1373, i32 24 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1377, i32 24 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1408, i32 22 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1417, i32 22 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1386, i32 22 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1571, i32 11 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1438, i32 14 }
@___asan_gen_.594 = private unnamed_addr constant [16 x i8] c"dev_attr_enable\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [18 x i8] c"dev_attr_act_mask\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [13 x i8] c"dev_attr_pid\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [19 x i8] c"dev_attr_start_lba\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [17 x i8] c"dev_attr_end_lba\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1679, i32 8 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1791, i32 22 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1797, i32 22 }
@___asan_gen_.618 = private unnamed_addr constant [10 x i8] c"mask_maps\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1702, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1763, i32 20 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1764, i32 27 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1703, i32 18 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1704, i32 19 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1705, i32 19 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1706, i32 18 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1711, i32 16 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1712, i32 16 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1713, i32 19 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1714, i32 19 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1715, i32 18 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1716, i32 20 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1717, i32 21 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1718, i32 17 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1680, i32 8 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1681, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1682, i32 8 }
@___asan_gen_.672 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.673 = private constant [27 x i8] c"../kernel/trace/blktrace.c\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1683, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [134 x ptr] [ptr @__initcall__kmod_blktrace__376_1608_init_blk_tracer6, ptr @__ksymtab___trace_note_message, ptr @__ksymtab_blk_add_driver_data, ptr @__ksymtab_blk_fill_rwbs, ptr @__ksymtab_blk_trace_remove, ptr @__ksymtab_blk_trace_setup, ptr @__ksymtab_blk_trace_startstop, ptr @do_blk_trace_setup._entry, ptr @do_blk_trace_setup._entry.16, ptr @do_blk_trace_setup._entry_ptr, ptr @do_blk_trace_setup._entry_ptr.18, ptr @init_blk_tracer._entry, ptr @init_blk_tracer._entry.27, ptr @init_blk_tracer._entry_ptr, ptr @init_blk_tracer._entry_ptr.29, ptr @blk_tracer_flags, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @blk_trace_attrs, ptr @blk_trace_attr_group, ptr @blk_tracer_opts, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @blk_tr, ptr @.str.7, ptr @.str.8, ptr @blk_probe_mutex, ptr @blk_probes_ref, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @blk_dropped_fops, ptr @blk_msg_fops, ptr @blk_relay_callbacks, ptr @.str.19, ptr @.str.20, ptr @running_trace_list, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ddir_act, ptr @trace_blk_event, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @trace_blk_event_funcs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @what2act, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @dev_attr_enable, ptr @dev_attr_act_mask, ptr @dev_attr_pid, ptr @dev_attr_start_lba, ptr @dev_attr_end_lba, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @mask_maps, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@1 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_tracer_flags to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_trace_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_trace_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_tracer_opts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_tr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_probe_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_probes_ref to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_blk_trace_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_blk_trace_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_dropped_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_msg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_relay_callbacks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @running_trace_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddir_act to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_blk_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_blk_tracer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_blk_tracer._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_blk_event_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @what2act to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_act_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_start_lba to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_end_lba to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_maps to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__trace_note_message(ptr nocapture noundef readonly %bt, ptr noundef readonly %blkcg, ptr noundef %fmt, ...) #0 align 64 !dbg !308 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #22, !dbg !312
  %0 = ptrtoint ptr %args to i32, !dbg !313
  call void @__asan_store4_noabort(i32 %0), !dbg !313
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !dbg !313, !annotation !314
  %1 = ptrtoint ptr %bt to i32, !dbg !315
  call void @__asan_load4_noabort(i32 %1), !dbg !315
  %2 = load i32, ptr %bt, align 8, !dbg !315
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2), !dbg !315
  %cmp.not = icmp eq i32 %2, 2, !dbg !315
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !315
  br label %if.end, !dbg !315

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !315
  %3 = add i64 %gcov_ctr, 1, !dbg !315
  store i64 %3, ptr @__llvm_gcov_ctr, align 16, !dbg !315
  %.b91 = load i1, ptr @blk_tracer_enabled, align 1, !dbg !315
  br i1 %.b91, label %land.rhs.if.end_crit_edge, label %if.then, !dbg !315, !prof !316

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21, !dbg !315
  br label %if.end, !dbg !315

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21, !dbg !317
  %gcov_ctr75 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8
  %4 = add i64 %gcov_ctr75, 1
  store i64 %4, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8
  br label %cleanup, !dbg !318

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %act_mask = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 4, !dbg !319
  %5 = ptrtoint ptr %act_mask to i32, !dbg !319
  call void @__asan_load2_noabort(i32 %5), !dbg !319
  %6 = load i16, ptr %act_mask, align 8, !dbg !319
  %7 = and i16 %6, 1024, !dbg !320
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7), !dbg !320
  %tobool4.not = icmp eq i16 %7, 0, !dbg !320
  br i1 %tobool4.not, label %if.then5, label %do.body7, !dbg !321

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !317
  %gcov_ctr76 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16
  %8 = add i64 %gcov_ctr76, 1
  store i64 %8, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16
  br label %cleanup, !dbg !322

do.body7:                                         ; preds = %if.end
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.105, align 8
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !dbg !323, !srcloc !327
  %gcov_ctr.i92 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %11 = add i64 %gcov_ctr.i92, 1
  store i64 %11, ptr @__llvm_gcov_ctr.106, align 8
  %and.i = and i32 %10, 128, !dbg !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !331
  %tobool17.not = icmp eq i32 %and.i, 0, !dbg !331
  br i1 %tobool17.not, label %if.then18, label %do.body7.do.body22_crit_edge, !dbg !331

do.body7.do.body22_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !331
  br label %do.body22, !dbg !331

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !331
  %gcov_ctr77 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !331
  %12 = add i64 %gcov_ctr77, 1, !dbg !331
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !331
  tail call void @trace_hardirqs_off() #22, !dbg !331
  br label %do.body22, !dbg !331

do.body22:                                        ; preds = %if.then18, %do.body7.do.body22_crit_edge
  %msg_data = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 3, !dbg !332
  %13 = ptrtoint ptr %msg_data to i32, !dbg !332
  call void @__asan_load4_noabort(i32 %13), !dbg !332
  %14 = load ptr, ptr %msg_data, align 4, !dbg !332
  %15 = ptrtoint ptr %14 to i32, !dbg !332
  %gcov_ctr.i93 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !333
  %16 = add i64 %gcov_ctr.i93, 1, !dbg !333
  store i64 %16, ptr @__llvm_gcov_ctr.107, align 8, !dbg !333
  %17 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !333
  %and.i94 = and i32 %17, -16384, !dbg !337
  %18 = inttoptr i32 %and.i94 to ptr, !dbg !338
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3, !dbg !332
  %19 = ptrtoint ptr %cpu to i32, !dbg !332
  call void @__asan_load4_noabort(i32 %19), !dbg !332
  %20 = load i32, ptr %cpu, align 4, !dbg !332
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20, !dbg !332
  %21 = ptrtoint ptr %arrayidx to i32, !dbg !332
  call void @__asan_load4_noabort(i32 %21), !dbg !332
  %22 = load i32, ptr %arrayidx, align 4, !dbg !332
  %add = add i32 %22, %15, !dbg !332
  %23 = inttoptr i32 %add to ptr, !dbg !332
  call void @llvm.va_start(ptr nonnull %args), !dbg !339
  %24 = ptrtoint ptr %args to i32, !dbg !340
  call void @__asan_load4_noabort(i32 %24), !dbg !340
  %.fca.0.load = load i32, ptr %args, align 4, !dbg !340
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0, !dbg !340
  %call28 = call i32 @vscnprintf(ptr noundef %23, i32 noundef 128, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #22, !dbg !340
  call void @llvm.va_end(ptr nonnull %args), !dbg !341
  %25 = load i32, ptr @blk_tracer_flags, align 4, !dbg !342
  %and29 = and i32 %25, 2, !dbg !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29), !dbg !343
  %tobool30.not = icmp eq i32 %and29, 0, !dbg !343
  br i1 %tobool30.not, label %if.end32.thread, label %if.end32, !dbg !344

if.end32.thread:                                  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #21, !dbg !345
  %gcov_ctr78 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !345
  %26 = add i64 %gcov_ctr78, 1, !dbg !345
  store i64 %26, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !345
  %task101 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2, !dbg !346
  %27 = ptrtoint ptr %task101 to i32, !dbg !346
  call void @__asan_load4_noabort(i32 %27), !dbg !346
  %28 = load ptr, ptr %task101, align 8, !dbg !346
  %pid102 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68, !dbg !347
  %29 = ptrtoint ptr %pid102 to i32, !dbg !347
  call void @__asan_load4_noabort(i32 %29), !dbg !347
  %30 = load i32, ptr %pid102, align 8, !dbg !347
  br label %cond.false, !dbg !348

if.end32:                                         ; preds = %do.body22
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2, !dbg !346
  %31 = ptrtoint ptr %task to i32, !dbg !346
  call void @__asan_load4_noabort(i32 %31), !dbg !346
  %32 = load ptr, ptr %task, align 8, !dbg !346
  %pid = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68, !dbg !347
  %33 = ptrtoint ptr %pid to i32, !dbg !347
  call void @__asan_load4_noabort(i32 %33), !dbg !347
  %34 = load i32, ptr %pid, align 8, !dbg !347
  %tobool34.not = icmp eq ptr %blkcg, null, !dbg !348
  br i1 %tobool34.not, label %if.end32.cond.false_crit_edge, label %cond.true, !dbg !348

if.end32.cond.false_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21, !dbg !348
  br label %cond.false, !dbg !348

cond.true:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21, !dbg !349
  %gcov_ctr79 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !349
  %35 = add i64 %gcov_ctr79, 1, !dbg !349
  store i64 %35, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !349
  %36 = ptrtoint ptr %blkcg to i32, !dbg !350
  call void @__asan_load4_noabort(i32 %36), !dbg !350
  %37 = load ptr, ptr %blkcg, align 8, !dbg !350
  %gcov_ctr.i95 = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %38 = add i64 %gcov_ctr.i95, 1
  store i64 %38, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %37, i32 0, i32 11, !dbg !351
  %39 = ptrtoint ptr %kn.i to i32, !dbg !351
  call void @__asan_load4_noabort(i32 %39), !dbg !351
  %40 = load ptr, ptr %kn.i, align 8, !dbg !351
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %40, i32 0, i32 10, !dbg !355
  %41 = ptrtoint ptr %id.i to i32, !dbg !355
  call void @__asan_load8_noabort(i32 %41), !dbg !355
  %42 = load i64, ptr %id.i, align 8, !dbg !355
  br label %cond.end, !dbg !348

cond.false:                                       ; preds = %if.end32.cond.false_crit_edge, %if.end32.thread
  %43 = phi i32 [ %30, %if.end32.thread ], [ %34, %if.end32.cond.false_crit_edge ]
  %gcov_ctr80 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !348
  %44 = add i64 %gcov_ctr80, 1, !dbg !348
  store i64 %44, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !348
  br label %cond.end, !dbg !348

cond.end:                                         ; preds = %cond.false, %cond.true
  %45 = phi i32 [ %34, %cond.true ], [ %43, %cond.false ]
  %cond = phi i64 [ %42, %cond.true ], [ 1, %cond.false ], !dbg !348
  call fastcc void @trace_note(ptr noundef %bt, i32 noundef %45, i32 noundef 67108866, ptr noundef %23, i32 noundef %call28, i64 noundef %cond), !dbg !356
  %gcov_ctr.i96 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %46 = add i64 %gcov_ctr.i96, 1
  store i64 %46, ptr @__llvm_gcov_ctr.106, align 8
  br i1 %tobool17.not, label %if.then45, label %cond.end.do.body47_crit_edge, !dbg !357

cond.end.do.body47_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !357
  br label %do.body47, !dbg !357

if.then45:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !357
  %gcov_ctr81 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8, !dbg !357
  %47 = add i64 %gcov_ctr81, 1, !dbg !357
  store i64 %47, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8, !dbg !357
  call void @trace_hardirqs_on() #22, !dbg !357
  br label %do.body47, !dbg !357

do.body47:                                        ; preds = %if.then45, %cond.end.do.body47_crit_edge
  %gcov_ctr.i98 = load i64, ptr @__llvm_gcov_ctr.110, align 8, !dbg !358
  %48 = add i64 %gcov_ctr.i98, 1, !dbg !358
  store i64 %48, ptr @__llvm_gcov_ctr.110, align 8, !dbg !358
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.140, align 8
  %49 = add i64 %gcov_ctr.i.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.140, align 8
  %50 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !dbg !362, !srcloc !365
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %51 = add i64 %gcov_ctr.i2.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.106, align 8
  %and.i.i = and i32 %50, 128, !dbg !366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !357
  %tobool55.not = icmp eq i32 %and.i.i, 0, !dbg !357
  br i1 %tobool55.not, label %if.then64, label %do.body47.do.end67_crit_edge, !dbg !357, !prof !368

do.body47.do.end67_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #21, !dbg !357
  br label %do.end67, !dbg !357

if.then64:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #21, !dbg !357
  %gcov_ctr82 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !357
  %52 = add i64 %gcov_ctr82, 1, !dbg !357
  store i64 %52, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !357
  call void @warn_bogus_irq_restore() #22, !dbg !357
  br label %do.end67, !dbg !357

do.end67:                                         ; preds = %if.then64, %do.body47.do.end67_crit_edge
  %gcov_ctr.i99 = load i64, ptr @__llvm_gcov_ctr.111, align 8
  %53 = add i64 %gcov_ctr.i99, 1
  store i64 %53, ptr @__llvm_gcov_ctr.111, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #22, !dbg !369, !srcloc !372
  br label %cleanup, !dbg !373

cleanup:                                          ; preds = %do.end67, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #22, !dbg !373
  ret void, !dbg !373
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_note(ptr nocapture noundef readonly %bt, i32 noundef %pid, i32 noundef %action, ptr nocapture noundef readonly %data, i32 noundef %len, i64 noundef %cgid) unnamed_addr #0 align 64 !dbg !374 {
entry:
  %cgid.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !375
  %0 = ptrtoint ptr %cgid.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %cgid, ptr %cgid.addr, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !376
  %1 = add i64 %gcov_ctr.i, 1, !dbg !376
  store i64 %1, ptr @__llvm_gcov_ctr.107, align 8, !dbg !376
  %2 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !376
  %and.i = and i32 %2, -16384, !dbg !378
  %3 = inttoptr i32 %and.i to ptr, !dbg !379
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3, !dbg !380
  %4 = ptrtoint ptr %cpu1 to i32, !dbg !380
  call void @__asan_load4_noabort(i32 %4), !dbg !380
  %5 = load i32, ptr %cpu1, align 4, !dbg !380
  %.b76 = load i1, ptr @blk_tracer_enabled, align 1, !dbg !381
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cgid), !dbg !382
  %tobool2.not = icmp eq i64 %cgid, 0, !dbg !382
  %cond = select i1 %tobool2.not, i32 0, i32 8, !dbg !382
  br i1 %.b76, label %if.then, label %if.end11, !dbg !383

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @blk_tr, align 4, !dbg !384
  %buffer4 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 2, i32 1, !dbg !385
  %7 = ptrtoint ptr %buffer4 to i32, !dbg !385
  call void @__asan_load4_noabort(i32 %7), !dbg !385
  %8 = load ptr, ptr %buffer4, align 4, !dbg !385
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %9 = add i64 %gcov_ctr.i77, 1
  store i64 %9, ptr @__llvm_gcov_ctr.133, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.106, align 8
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef 0) #22, !dbg !386
  %add = add i32 %cond, %len, !dbg !390
  %add6 = add i32 %add, 48, !dbg !391
  %call7 = tail call ptr @trace_buffer_lock_reserve(ptr noundef %8, i32 noundef 13, i32 noundef %add6, i32 noundef %call2.i) #22, !dbg !392
  %tobool8.not = icmp eq ptr %call7, null, !dbg !393
  br i1 %tobool8.not, label %if.then9, label %if.end, !dbg !394

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !395
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.108, align 16
  %11 = add i64 %gcov_ctr, 1
  store i64 %11, ptr @__llvm_gcov_ctr.108, align 16
  br label %cleanup, !dbg !396

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !397
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !397
  %12 = add i64 %gcov_ctr44, 1, !dbg !397
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !397
  %call10 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %call7) #22, !dbg !398
  br label %record_it, !dbg !399

if.end11:                                         ; preds = %entry
  %rchan = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 1, !dbg !400
  %13 = ptrtoint ptr %rchan to i32, !dbg !400
  call void @__asan_load4_noabort(i32 %13), !dbg !400
  %14 = load ptr, ptr %rchan, align 4, !dbg !400
  %tobool12.not = icmp eq ptr %14, null, !dbg !401
  br i1 %tobool12.not, label %if.then13, label %if.end14, !dbg !402

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21, !dbg !395
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 3), align 8
  %15 = add i64 %gcov_ctr46, 1
  store i64 %15, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 3), align 8
  br label %cleanup, !dbg !403

if.end14:                                         ; preds = %if.end11
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 2), align 16, !dbg !404
  %16 = add i64 %gcov_ctr45, 1, !dbg !404
  store i64 %16, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 2), align 16, !dbg !404
  %17 = ptrtoint ptr %rchan to i32, !dbg !405
  call void @__asan_load4_noabort(i32 %17), !dbg !405
  %18 = load ptr, ptr %rchan, align 4, !dbg !405
  %add16 = add i32 %cond, %len, !dbg !406
  %add17 = add i32 %add16, 48, !dbg !407
  %gcov_ctr.i.i78 = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %19 = add i64 %gcov_ctr.i.i78, 1
  store i64 %19, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !408
  %20 = add i64 %gcov_ctr.i.i.i, 1, !dbg !408
  store i64 %20, ptr @__llvm_gcov_ctr.139, align 8, !dbg !408
  %21 = add i64 %gcov_ctr.i, 2, !dbg !417
  store i64 %21, ptr @__llvm_gcov_ctr.107, align 8, !dbg !417
  %22 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !417
  %and.i.i.i.i = and i32 %22, -16384, !dbg !419
  %23 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !420
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1, !dbg !421
  %24 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %24), !dbg !422
  %25 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !422
  %add.i.i = add i32 %25, 1, !dbg !422
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !422
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !423, !srcloc !424
  %buf5.i = getelementptr inbounds %struct.rchan, ptr %18, i32 0, i32 8, !dbg !423
  %26 = ptrtoint ptr %buf5.i to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %26), !dbg !423
  %27 = load ptr, ptr %buf5.i, align 4, !dbg !423
  %28 = ptrtoint ptr %27 to i32, !dbg !423
  %gcov_ctr.i40.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !425
  %29 = add i64 %gcov_ctr.i40.i, 1, !dbg !425
  store i64 %29, ptr @__llvm_gcov_ctr.107, align 8, !dbg !425
  %30 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !425
  %and.i.i = and i32 %30, -16384, !dbg !427
  %31 = inttoptr i32 %and.i.i to ptr, !dbg !428
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3, !dbg !423
  %32 = ptrtoint ptr %cpu.i to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %32), !dbg !423
  %33 = load i32, ptr %cpu.i, align 4, !dbg !423
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33, !dbg !423
  %34 = ptrtoint ptr %arrayidx.i to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %34), !dbg !423
  %35 = load i32, ptr %arrayidx.i, align 4, !dbg !423
  %add.i = add i32 %35, %28, !dbg !423
  %36 = inttoptr i32 %add.i to ptr, !dbg !423
  %37 = ptrtoint ptr %36 to i32, !dbg !429
  call void @__asan_load4_noabort(i32 %37), !dbg !429
  %38 = load ptr, ptr %36, align 4, !dbg !429
  %offset.i = getelementptr inbounds %struct.rchan_buf, ptr %38, i32 0, i32 2, !dbg !430
  %39 = ptrtoint ptr %offset.i to i32, !dbg !430
  call void @__asan_load4_noabort(i32 %39), !dbg !430
  %40 = load i32, ptr %offset.i, align 8, !dbg !430
  %add7.i = add i32 %40, %add17, !dbg !430
  %chan8.i = getelementptr inbounds %struct.rchan_buf, ptr %38, i32 0, i32 5, !dbg !430
  %41 = ptrtoint ptr %chan8.i to i32, !dbg !430
  call void @__asan_load4_noabort(i32 %41), !dbg !430
  %42 = load ptr, ptr %chan8.i, align 4, !dbg !430
  %subbuf_size.i = getelementptr inbounds %struct.rchan, ptr %42, i32 0, i32 1, !dbg !430
  %43 = ptrtoint ptr %subbuf_size.i to i32, !dbg !430
  call void @__asan_load4_noabort(i32 %43), !dbg !430
  %44 = load i32, ptr %subbuf_size.i, align 4, !dbg !430
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %44), !dbg !430
  %cmp.i = icmp ugt i32 %add7.i, %44, !dbg !430
  br i1 %cmp.i, label %if.then.i, label %if.end14.if.end13.i_crit_edge, !dbg !430, !prof !368

if.end14.if.end13.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21, !dbg !430
  br label %if.end13.i, !dbg !430

if.then.i:                                        ; preds = %if.end14
  %call10.i = tail call i32 @relay_switch_subbuf(ptr noundef %38, i32 noundef %add17) #22, !dbg !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i), !dbg !432
  %tobool11.not.i = icmp eq i32 %call10.i, 0, !dbg !432
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end.i, !dbg !433

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !434
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.134, align 16, !dbg !434
  %45 = add i64 %gcov_ctr.i79, 1, !dbg !434
  store i64 %45, ptr @__llvm_gcov_ctr.134, align 16, !dbg !434
  br label %relay_reserve.exit, !dbg !434

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !435
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !435
  %46 = add i64 %gcov_ctr24.i, 1, !dbg !435
  store i64 %46, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !435
  br label %if.end13.i, !dbg !435

if.end13.i:                                       ; preds = %if.end.i, %if.end14.if.end13.i_crit_edge
  %length.addr.0.i = phi i32 [ %call10.i, %if.end.i ], [ %add17, %if.end14.if.end13.i_crit_edge ]
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !436
  %47 = add i64 %gcov_ctr25.i, 1, !dbg !436
  store i64 %47, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !436
  %data.i = getelementptr inbounds %struct.rchan_buf, ptr %38, i32 0, i32 1, !dbg !437
  %48 = ptrtoint ptr %data.i to i32, !dbg !437
  call void @__asan_load4_noabort(i32 %48), !dbg !437
  %49 = load ptr, ptr %data.i, align 4, !dbg !437
  %50 = ptrtoint ptr %offset.i to i32, !dbg !438
  call void @__asan_load4_noabort(i32 %50), !dbg !438
  %51 = load i32, ptr %offset.i, align 8, !dbg !438
  %add.ptr.i = getelementptr i8, ptr %49, i32 %51, !dbg !439
  %add16.i = add i32 %51, %length.addr.0.i, !dbg !440
  store i32 %add16.i, ptr %offset.i, align 8, !dbg !440
  br label %relay_reserve.exit, !dbg !441

relay_reserve.exit:                               ; preds = %if.end13.i, %if.then12.i
  %reserved.0.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ null, %if.then12.i ], !dbg !442
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !443, !srcloc !444
  %gcov_ctr.i35.i = load i64, ptr @__llvm_gcov_ctr.138, align 8
  %52 = add i64 %gcov_ctr.i35.i, 1
  store i64 %52, ptr @__llvm_gcov_ctr.138, align 8
  %gcov_ctr.i.i36.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !445
  %53 = add i64 %gcov_ctr.i.i36.i, 1, !dbg !445
  store i64 %53, ptr @__llvm_gcov_ctr.139, align 8, !dbg !445
  %gcov_ctr.i.i.i37.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !449
  %54 = add i64 %gcov_ctr.i.i.i37.i, 1, !dbg !449
  store i64 %54, ptr @__llvm_gcov_ctr.107, align 8, !dbg !449
  %55 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !449
  %and.i.i.i38.i = and i32 %55, -16384, !dbg !451
  %56 = inttoptr i32 %and.i.i.i38.i to ptr, !dbg !452
  %preempt_count.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1, !dbg !453
  %57 = ptrtoint ptr %preempt_count.i.i39.i to i32, !dbg !454
  call void @__asan_load4_noabort(i32 %57), !dbg !454
  %58 = load volatile i32, ptr %preempt_count.i.i39.i, align 4, !dbg !454
  %sub.i.i = add i32 %58, -1, !dbg !454
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i39.i, align 4, !dbg !454
  %tobool19.not = icmp eq ptr %reserved.0.i, null, !dbg !455
  br i1 %tobool19.not, label %relay_reserve.exit.cleanup_crit_edge, label %if.then20, !dbg !455

relay_reserve.exit.cleanup_crit_edge:             ; preds = %relay_reserve.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !455
  br label %cleanup, !dbg !455

if.then20:                                        ; preds = %relay_reserve.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !456
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 4), align 16, !dbg !456
  %59 = add i64 %gcov_ctr47, 1, !dbg !456
  store i64 %59, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 4), align 16, !dbg !456
  %60 = ptrtoint ptr %reserved.0.i to i32, !dbg !457
  call void @__asan_store4_noabort(i32 %60), !dbg !457
  store i32 1700885511, ptr %reserved.0.i, align 8, !dbg !457
  %call21 = tail call i64 @ktime_get() #22, !dbg !458
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %61 = add i64 %gcov_ctr.i80, 1
  store i64 %61, ptr @__llvm_gcov_ctr.135, align 8
  %time = getelementptr inbounds %struct.blk_io_trace, ptr %reserved.0.i, i32 0, i32 2, !dbg !459
  %62 = ptrtoint ptr %time to i32, !dbg !460
  call void @__asan_store8_noabort(i32 %62), !dbg !460
  store i64 %call21, ptr %time, align 8, !dbg !460
  br label %record_it, !dbg !461

record_it:                                        ; preds = %if.then20, %if.end
  %add28.pre-phi = phi i32 [ %add16, %if.then20 ], [ %add, %if.end ], !dbg !462
  %t.0 = phi ptr [ %reserved.0.i, %if.then20 ], [ %call10, %if.end ], !dbg !395
  %event.0 = phi ptr [ null, %if.then20 ], [ %call7, %if.end ], !dbg !395
  %buffer.0 = phi ptr [ null, %if.then20 ], [ %8, %if.end ], !dbg !395
  %trace_ctx.0 = phi i32 [ 0, %if.then20 ], [ %call2.i, %if.end ], !dbg !395
  %dev = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 8, !dbg !463
  %63 = ptrtoint ptr %dev to i32, !dbg !463
  call void @__asan_load4_noabort(i32 %63), !dbg !463
  %64 = load i32, ptr %dev, align 4, !dbg !463
  %device = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 7, !dbg !464
  %65 = ptrtoint ptr %device to i32, !dbg !465
  call void @__asan_store4_noabort(i32 %65), !dbg !465
  store i32 %64, ptr %device, align 4, !dbg !465
  %cond24 = select i1 %tobool2.not, i32 0, i32 256, !dbg !466
  %or = or i32 %cond24, %action, !dbg !467
  %action25 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 5, !dbg !468
  %66 = ptrtoint ptr %action25 to i32, !dbg !469
  call void @__asan_store4_noabort(i32 %66), !dbg !469
  store i32 %or, ptr %action25, align 4, !dbg !469
  %pid26 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 6, !dbg !470
  %67 = ptrtoint ptr %pid26 to i32, !dbg !471
  call void @__asan_store4_noabort(i32 %67), !dbg !471
  store i32 %pid, ptr %pid26, align 8, !dbg !471
  %cpu27 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 8, !dbg !472
  %68 = ptrtoint ptr %cpu27 to i32, !dbg !473
  call void @__asan_store4_noabort(i32 %68), !dbg !473
  store i32 %5, ptr %cpu27, align 8, !dbg !473
  %conv = trunc i32 %add28.pre-phi to i16, !dbg !474
  %pdu_len = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 10, !dbg !475
  %69 = ptrtoint ptr %pdu_len to i32, !dbg !476
  call void @__asan_store2_noabort(i32 %69), !dbg !476
  store i16 %conv, ptr %pdu_len, align 2, !dbg !476
  br i1 %tobool2.not, label %record_it.if.end31_crit_edge, label %if.then30, !dbg !477

record_it.if.end31_crit_edge:                     ; preds = %record_it
  call void @__sanitizer_cov_trace_pc() #21, !dbg !477
  br label %if.end31, !dbg !477

if.then30:                                        ; preds = %record_it
  call void @__sanitizer_cov_trace_pc() #21, !dbg !478
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 5), align 8, !dbg !478
  %70 = add i64 %gcov_ctr48, 1, !dbg !478
  store i64 %70, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 5), align 8, !dbg !478
  %add.ptr = getelementptr i8, ptr %t.0, i32 48, !dbg !479
  %71 = call ptr @memcpy(ptr %add.ptr, ptr %cgid.addr, i32 %cond), !dbg !480
  br label %if.end31, !dbg !480

if.end31:                                         ; preds = %if.then30, %record_it.if.end31_crit_edge
  %add.ptr32 = getelementptr i8, ptr %t.0, i32 48, !dbg !481
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 %cond, !dbg !482
  %72 = call ptr @memcpy(ptr %add.ptr33, ptr %data, i32 %len), !dbg !483
  br i1 %.b76, label %if.then35, label %if.end31.cleanup_crit_edge, !dbg !484

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21, !dbg !484
  br label %cleanup, !dbg !484

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21, !dbg !485
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 6), align 16, !dbg !485
  %73 = add i64 %gcov_ctr49, 1, !dbg !485
  store i64 %73, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 6), align 16, !dbg !485
  %74 = load ptr, ptr @blk_tr, align 4, !dbg !485
  %gcov_ctr.i81 = load i64, ptr @__llvm_gcov_ctr.136, align 8
  %75 = add i64 %gcov_ctr.i81, 1
  store i64 %75, ptr @__llvm_gcov_ctr.136, align 8
  tail call void @trace_buffer_unlock_commit_regs(ptr noundef %74, ptr noundef %buffer.0, ptr noundef %event.0, i32 noundef %trace_ctx.0, ptr noundef null) #22, !dbg !486
  br label %cleanup, !dbg !490

cleanup:                                          ; preds = %if.then35, %if.end31.cleanup_crit_edge, %relay_reserve.exit.cleanup_crit_edge, %if.then13, %if.then9
  ret void, !dbg !491
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_trace_remove(ptr noundef %q) #0 align 64 !dbg !492 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !493
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.112, align 8
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, !dbg !494
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !494
  %call = tail call fastcc i32 @__blk_trace_remove(ptr noundef %q), !dbg !495
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !496
  ret i32 %call, !dbg !497
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blk_trace_remove(ptr noundef %q) unnamed_addr #0 align 64 !dbg !498 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !499
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, i32 5, !dbg !500
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.121, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !501
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !500
  %tobool.not = icmp eq i32 %call.i, 0, !dbg !500
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge, !dbg !500

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !500
  br label %do.end, !dbg !500

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.113, align 16, !dbg !500
  %1 = add i64 %gcov_ctr, 1, !dbg !500
  store i64 %1, ptr @__llvm_gcov_ctr.113, align 16, !dbg !500
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !500
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !500
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3, !dbg !500

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !500
  br label %do.end, !dbg !500

land.lhs.true3:                                   ; preds = %land.lhs.true
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 1), align 8, !dbg !500
  %2 = add i64 %gcov_ctr49, 1, !dbg !500
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 1), align 8, !dbg !500
  %.b63 = load i1, ptr @__blk_trace_remove.__warned, align 1, !dbg !500
  br i1 %.b63, label %land.lhs.true3.do.end_crit_edge, label %if.then, !dbg !500

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #21, !dbg !500
  br label %do.end, !dbg !500

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #21, !dbg !500
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 2), align 16, !dbg !500
  %3 = add i64 %gcov_ctr50, 1, !dbg !500
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 2), align 16, !dbg !500
  store i1 true, ptr @__blk_trace_remove.__warned, align 1, !dbg !500
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #22, !dbg !500
  br label %do.end, !dbg !500

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !500
  %4 = ptrtoint ptr %blk_trace to i32, !dbg !500
  call void @__asan_load4_noabort(i32 %4), !dbg !500
  %5 = load ptr, ptr %blk_trace, align 8, !dbg !500
  store volatile ptr null, ptr %blk_trace, align 8, !dbg !500
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 3), align 8, !dbg !500
  %6 = add i64 %gcov_ctr51, 1, !dbg !500
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 3), align 8, !dbg !500
  %tobool43.not = icmp eq ptr %5, null, !dbg !505
  br i1 %tobool43.not, label %do.end.cleanup_crit_edge, label %if.end45, !dbg !506

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !506
  br label %cleanup, !dbg !506

if.end45:                                         ; preds = %do.end
  %7 = ptrtoint ptr %5 to i32, !dbg !507
  call void @__asan_load4_noabort(i32 %7), !dbg !507
  %8 = load i32, ptr %5, align 8, !dbg !507
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8), !dbg !508
  %cmp46.not = icmp eq i32 %8, 2, !dbg !508
  br i1 %cmp46.not, label %if.end45.cleanup_crit_edge, label %if.then47, !dbg !509

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21, !dbg !509
  br label %cleanup, !dbg !509

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21, !dbg !510
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 5), align 8, !dbg !510
  %9 = add i64 %gcov_ctr53, 1, !dbg !510
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 5), align 8, !dbg !510
  %gcov_ctr.i64 = load i64, ptr @__llvm_gcov_ctr.141, align 8
  %10 = add i64 %gcov_ctr.i64, 1
  store i64 %10, ptr @__llvm_gcov_ctr.141, align 8
  tail call void @synchronize_rcu() #22, !dbg !511
  tail call fastcc void @blk_trace_free(ptr noundef %q, ptr noundef nonnull %5) #22, !dbg !514
  tail call fastcc void @put_probe_ref() #22, !dbg !515
  br label %cleanup, !dbg !516

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 4), %do.end.cleanup_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 6), %if.then47 ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.113, i32 0, i32 6), %if.end45.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end45.cleanup_crit_edge ], !dbg !517
  %11 = ptrtoint ptr %.sink to i32, !dbg !517
  call void @__asan_load8_noabort(i32 %11), !dbg !517
  %gcov_ctr54 = load i64, ptr %.sink, align 16, !dbg !517
  %12 = add i64 %gcov_ctr54, 1, !dbg !517
  store i64 %12, ptr %.sink, align 16, !dbg !517
  ret i32 %retval.0, !dbg !518
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_trace_setup(ptr noundef %q, ptr nocapture noundef readonly %name, i32 noundef %dev, ptr noundef %bdev, ptr noundef %arg) #0 align 64 !dbg !519 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !520
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.114, align 8
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, !dbg !521
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !521
  %call = tail call fastcc i32 @__blk_trace_setup(ptr noundef %q, ptr noundef %name, i32 noundef %dev, ptr noundef %bdev, ptr noundef %arg), !dbg !522
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !523
  ret i32 %call, !dbg !524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blk_trace_setup(ptr noundef %q, ptr nocapture noundef readonly %name, i32 noundef %dev, ptr noundef readonly %bdev, ptr noundef %arg) unnamed_addr #0 align 64 !dbg !525 {
entry:
  %buts = alloca %struct.blk_user_trace_setup, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !526
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %buts) #22, !dbg !527
  %0 = call ptr @memset(ptr %buts, i32 255, i32 72), !dbg !528
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.187, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.187, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.190, align 16, !dbg !529
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !529
  store i64 %2, ptr @__llvm_gcov_ctr.190, align 16, !dbg !529
  %gcov_ctr67.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.190, i32 0, i32 7), align 8, !dbg !536
  %3 = add i64 %gcov_ctr67.i.i, 1, !dbg !536
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.190, i32 0, i32 7), align 8, !dbg !536
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.193, align 8
  %4 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.193, align 8
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.187, i32 0, i32 1), align 8, !dbg !537
  %5 = add i64 %gcov_ctr3.i, 1, !dbg !537
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.187, i32 0, i32 1), align 8, !dbg !537
  %gcov_ctr.i1.i = load i64, ptr @__llvm_gcov_ctr.191, align 16
  %6 = add i64 %gcov_ctr.i1.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.191, align 16
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #22, !dbg !538
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #22, !dbg !541
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i, !dbg !542

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !542
  br label %if.then11.i.i, !dbg !542

land.lhs.true.i.i:                                ; preds = %entry
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 1), align 8, !dbg !543
  %7 = add i64 %gcov_ctr13.i.i, 1, !dbg !543
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 1), align 8, !dbg !543
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 72, i32 -1226833920) #23, !dbg !543
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0, !dbg !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i), !dbg !543
  %cmp.i2.i = icmp eq i32 %asmresult.i.i, 0, !dbg !543
  br i1 %cmp.i2.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !dbg !544, !prof !316

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !544
  br label %if.then11.i.i, !dbg !544

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 2), align 16, !dbg !545
  %9 = add i64 %gcov_ctr14.i.i, 1, !dbg !545
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 2), align 16, !dbg !545
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.194, align 8
  %10 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.194, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buts, i32 noundef 72) #22, !dbg !546
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %11 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.196, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.195, align 8
  %12 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.195, align 8
  %gcov_ctr.i.i2.i.i = load i64, ptr @__llvm_gcov_ctr.197, align 8
  %13 = add i64 %gcov_ctr.i.i2.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.197, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.199, align 8
  %14 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.199, align 8
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !550
  %15 = add i64 %gcov_ctr.i.i.i.i.i.i, 1, !dbg !550
  store i64 %15, ptr @__llvm_gcov_ctr.107, align 8, !dbg !550
  %16 = call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !550
  %and.i.i.i.i.i.i = and i32 %16, -16384, !dbg !560
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !561
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4, !dbg !562
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !dbg !563, !srcloc !564
  %and.i.i.i.i = and i32 %18, -13, !dbg !565
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4, !dbg !566
  %gcov_ctr.i2.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.200, align 8
  %19 = add i64 %gcov_ctr.i2.i.i.i.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.200, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #22, !dbg !567, !srcloc !570
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !dbg !571, !srcloc !572
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buts, ptr noundef %arg, i32 noundef 72) #22, !dbg !573
  %gcov_ctr.i1.i.i.i = load i64, ptr @__llvm_gcov_ctr.198, align 8
  %20 = add i64 %gcov_ctr.i1.i.i.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.198, align 8
  %gcov_ctr.i.i2.i.i.i = load i64, ptr @__llvm_gcov_ctr.200, align 8
  %21 = add i64 %gcov_ctr.i.i2.i.i.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.200, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #22, !dbg !574, !srcloc !570
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !dbg !578, !srcloc !572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i), !dbg !579
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0, !dbg !579
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !dbg !579, !prof !316

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !579
  br label %if.then11.i.i, !dbg !579

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.05.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 72, %entry.if.then11.i.i_crit_edge ], [ 72, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %gcov_ctr15.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 3), align 8, !dbg !580
  %22 = add i64 %gcov_ctr15.i.i, 1, !dbg !580
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 3), align 8, !dbg !580
  %sub.i.i = sub i32 72, %res.05.i.i, !dbg !581
  %add.ptr.i.i = getelementptr i8, ptr %buts, i32 %sub.i.i, !dbg !582
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.05.i.i), !dbg !583
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.115, align 16, !dbg !584
  %24 = add i64 %gcov_ctr, 1, !dbg !584
  store i64 %24, ptr @__llvm_gcov_ctr.115, align 16, !dbg !584
  br label %cleanup, !dbg !584

if.end:                                           ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !585
  %25 = load i32, ptr @debug_locks, align 4, !dbg !585
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25), !dbg !585
  %tobool.not.i = icmp eq i32 %25, 0, !dbg !585
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i, !dbg !585

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !585
  br label %if.end.i, !dbg !585

land.rhs.i:                                       ; preds = %if.end
  %gcov_ctr.i35 = load i64, ptr @__llvm_gcov_ctr.188, align 16, !dbg !585
  %26 = add i64 %gcov_ctr.i35, 1, !dbg !585
  store i64 %26, ptr @__llvm_gcov_ctr.188, align 16, !dbg !585
  %dep_map.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, i32 5, !dbg !585
  %gcov_ctr.i235.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %27 = add i64 %gcov_ctr.i235.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.121, align 8
  %call.i.i36 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #22, !dbg !588
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36), !dbg !585
  %cmp.not.i = icmp eq i32 %call.i.i36, 0, !dbg !585
  br i1 %cmp.not.i, label %if.then.i37, label %land.rhs.i.if.end.i_crit_edge, !dbg !585, !prof !368

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !585
  br label %if.end.i, !dbg !585

if.then.i37:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !585
  %gcov_ctr163.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 1), align 8, !dbg !585
  %28 = add i64 %gcov_ctr163.i, 1, !dbg !585
  store i64 %28, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 1), align 8, !dbg !585
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #22, !dbg !585
  br label %if.end.i, !dbg !585

if.end.i:                                         ; preds = %if.then.i37, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %buf_size.i = getelementptr inbounds %struct.blk_user_trace_setup, ptr %buts, i32 0, i32 2, !dbg !590
  %29 = ptrtoint ptr %buf_size.i to i32, !dbg !590
  call void @__asan_load4_noabort(i32 %29), !dbg !590
  %30 = load i32, ptr %buf_size.i, align 4, !dbg !590
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30), !dbg !591
  %tobool24.not.i = icmp eq i32 %30, 0, !dbg !591
  br i1 %tobool24.not.i, label %if.end.i.if.then26.i_crit_edge, label %lor.lhs.false.i, !dbg !592

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !592
  br label %if.then26.i, !dbg !592

lor.lhs.false.i:                                  ; preds = %if.end.i
  %gcov_ctr164.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 2), align 16, !dbg !593
  %31 = add i64 %gcov_ctr164.i, 1, !dbg !593
  store i64 %31, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 2), align 16, !dbg !593
  %buf_nr.i = getelementptr inbounds %struct.blk_user_trace_setup, ptr %buts, i32 0, i32 3, !dbg !594
  %32 = ptrtoint ptr %buf_nr.i to i32, !dbg !594
  call void @__asan_load4_noabort(i32 %32), !dbg !594
  %33 = load i32, ptr %buf_nr.i, align 8, !dbg !594
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33), !dbg !593
  %tobool25.not.i = icmp eq i32 %33, 0, !dbg !593
  br i1 %tobool25.not.i, label %lor.lhs.false.i.if.then26.i_crit_edge, label %if.end27.i, !dbg !595

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !595
  br label %if.then26.i, !dbg !595

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %gcov_ctr165.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 3), align 8, !dbg !596
  %34 = add i64 %gcov_ctr165.i, 1, !dbg !596
  store i64 %34, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 3), align 8, !dbg !596
  br label %if.then3, !dbg !596

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %call29.i = call ptr @strncpy(ptr noundef nonnull %buts, ptr noundef %name, i32 noundef 32) #22, !dbg !597
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %buts, i32 0, i32 31, !dbg !598
  %35 = ptrtoint ptr %arrayidx.i to i32, !dbg !599
  call void @__asan_store1_noabort(i32 %35), !dbg !599
  store i8 0, ptr %arrayidx.i, align 1, !dbg !599
  %call33.i = call ptr @strreplace(ptr noundef nonnull %buts, i8 noundef zeroext 47, i8 noundef zeroext 95) #22, !dbg !600
  %dep_map36.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, i32 5, !dbg !601
  %gcov_ctr.i236.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %36 = add i64 %gcov_ctr.i236.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.121, align 8
  %call.i237.i = call i32 @lock_is_held_type(ptr noundef %dep_map36.i, i32 noundef -1) #22, !dbg !602
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237.i), !dbg !601
  %tobool38.not.i = icmp eq i32 %call.i237.i, 0, !dbg !601
  br i1 %tobool38.not.i, label %land.lhs.true.i, label %if.end27.i.do.end46.i_crit_edge, !dbg !601

if.end27.i.do.end46.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !601
  br label %do.end46.i, !dbg !601

land.lhs.true.i:                                  ; preds = %if.end27.i
  %gcov_ctr166.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 4), align 16, !dbg !601
  %37 = add i64 %gcov_ctr166.i, 1, !dbg !601
  store i64 %37, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 4), align 16, !dbg !601
  %call39.i = call i32 @debug_lockdep_rcu_enabled() #22, !dbg !601
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i), !dbg !601
  %tobool40.not.i = icmp eq i32 %call39.i, 0, !dbg !601
  br i1 %tobool40.not.i, label %land.lhs.true.i.do.end46.i_crit_edge, label %land.lhs.true41.i, !dbg !601

land.lhs.true.i.do.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !601
  br label %do.end46.i, !dbg !601

land.lhs.true41.i:                                ; preds = %land.lhs.true.i
  %gcov_ctr167.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 5), align 8, !dbg !601
  %38 = add i64 %gcov_ctr167.i, 1, !dbg !601
  store i64 %38, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 5), align 8, !dbg !601
  %.b234.i = load i1, ptr @do_blk_trace_setup.__warned, align 1, !dbg !601
  br i1 %.b234.i, label %land.lhs.true41.i.do.end46.i_crit_edge, label %if.then43.i, !dbg !601

land.lhs.true41.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !601
  br label %do.end46.i, !dbg !601

if.then43.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !601
  %gcov_ctr168.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 6), align 16, !dbg !601
  %39 = add i64 %gcov_ctr168.i, 1, !dbg !601
  store i64 %39, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 6), align 16, !dbg !601
  store i1 true, ptr @do_blk_trace_setup.__warned, align 1, !dbg !601
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 509, ptr noundef nonnull @.str.1) #22, !dbg !601
  br label %do.end46.i, !dbg !601

do.end46.i:                                       ; preds = %if.then43.i, %land.lhs.true41.i.do.end46.i_crit_edge, %land.lhs.true.i.do.end46.i_crit_edge, %if.end27.i.do.end46.i_crit_edge
  %blk_trace.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !601
  %40 = ptrtoint ptr %blk_trace.i to i32, !dbg !601
  call void @__asan_load4_noabort(i32 %40), !dbg !601
  %41 = load ptr, ptr %blk_trace.i, align 8, !dbg !601
  %tobool48.not.i = icmp eq ptr %41, null, !dbg !601
  br i1 %tobool48.not.i, label %if.end57.i, label %do.end52.i, !dbg !601

do.end52.i:                                       ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !604
  %gcov_ctr169.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 7), align 8, !dbg !604
  %42 = add i64 %gcov_ctr169.i, 1, !dbg !604
  store i64 %42, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 7), align 8, !dbg !604
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %buts) #24, !dbg !604
  br label %if.then3, !dbg !605

if.end57.i:                                       ; preds = %do.end46.i
  %gcov_ctr.i238.i = load i64, ptr @__llvm_gcov_ctr.201, align 8
  %43 = add i64 %gcov_ctr.i238.i, 1
  store i64 %43, ptr @__llvm_gcov_ctr.201, align 8
  %gcov_ctr79.i.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.210, i32 0, i32 1), align 8, !dbg !606
  %44 = add i64 %gcov_ctr79.i.i.i.i, 1, !dbg !606
  store i64 %44, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.210, i32 0, i32 1), align 8, !dbg !606
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.208, i32 0, i32 2), align 16, !dbg !614
  %45 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !614
  store i64 %45, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.208, i32 0, i32 2), align 16, !dbg !614
  %gcov_ctr.i.i.i239.i = load i64, ptr @__llvm_gcov_ctr.211, align 16, !dbg !615
  %46 = add i64 %gcov_ctr.i.i.i239.i, 1, !dbg !615
  store i64 %46, ptr @__llvm_gcov_ctr.211, align 16, !dbg !615
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !618
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !618
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 64) #25, !dbg !619
  %tobool59.not.i = icmp eq ptr %call7.i.i.i, null, !dbg !620
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end61.i, !dbg !621

if.then60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !622
  %gcov_ctr170.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 8), align 16, !dbg !622
  %48 = add i64 %gcov_ctr170.i, 1, !dbg !622
  store i64 %48, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 8), align 16, !dbg !622
  br label %if.then3, !dbg !622

if.end61.i:                                       ; preds = %if.end57.i
  %call62.i = call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #26, !dbg !623
  %sequence.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 2, !dbg !624
  %49 = ptrtoint ptr %sequence.i to i32, !dbg !625
  call void @__asan_store4_noabort(i32 %49), !dbg !625
  store ptr %call62.i, ptr %sequence.i, align 8, !dbg !625
  %tobool64.not.i = icmp eq ptr %call62.i, null, !dbg !626
  br i1 %tobool64.not.i, label %if.then65.i, label %if.end66.i, !dbg !627

if.then65.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !628
  %gcov_ctr171.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 9), align 8, !dbg !628
  %50 = add i64 %gcov_ctr171.i, 1, !dbg !628
  store i64 %50, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 9), align 8, !dbg !628
  br label %if.then159.i, !dbg !628

if.end66.i:                                       ; preds = %if.end61.i
  %call67.i = call noalias ptr @__alloc_percpu(i32 noundef 128, i32 noundef 1) #26, !dbg !629
  %msg_data.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 3, !dbg !630
  %51 = ptrtoint ptr %msg_data.i to i32, !dbg !631
  call void @__asan_store4_noabort(i32 %51), !dbg !631
  store ptr %call67.i, ptr %msg_data.i, align 4, !dbg !631
  %tobool69.not.i = icmp eq ptr %call67.i, null, !dbg !632
  br i1 %tobool69.not.i, label %if.then70.i, label %if.end71.i, !dbg !633

if.then70.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !634
  %gcov_ctr172.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 10), align 16, !dbg !634
  %52 = add i64 %gcov_ctr172.i, 1, !dbg !634
  store i64 %52, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 10), align 16, !dbg !634
  br label %if.then159.i, !dbg !634

if.end71.i:                                       ; preds = %if.end66.i
  %tobool72.not.i = icmp eq ptr %bdev, null, !dbg !635
  br i1 %tobool72.not.i, label %if.end71.i.if.else.i_crit_edge, label %land.lhs.true73.i, !dbg !636

if.end71.i.if.else.i_crit_edge:                   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !636
  br label %if.else.i, !dbg !636

land.lhs.true73.i:                                ; preds = %if.end71.i
  %gcov_ctr173.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 11), align 8, !dbg !637
  %53 = add i64 %gcov_ctr173.i, 1, !dbg !637
  store i64 %53, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 11), align 8, !dbg !637
  %gcov_ctr.i240.i = load i64, ptr @__llvm_gcov_ctr.202, align 8
  %54 = add i64 %gcov_ctr.i240.i, 1
  store i64 %54, ptr @__llvm_gcov_ctr.202, align 8
  %bd_partno.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 15, !dbg !638
  %55 = ptrtoint ptr %bd_partno.i.i to i32, !dbg !638
  call void @__asan_load1_noabort(i32 %55), !dbg !638
  %56 = load i8, ptr %bd_partno.i.i, align 8, !dbg !638
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56), !dbg !642
  %tobool.i.not.i = icmp eq i8 %56, 0, !dbg !642
  br i1 %tobool.i.not.i, label %if.then75.i, label %land.lhs.true73.i.if.else.i_crit_edge, !dbg !635

land.lhs.true73.i.if.else.i_crit_edge:            ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !635
  br label %if.else.i, !dbg !635

if.then75.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !643
  %gcov_ctr174.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 12), align 16, !dbg !643
  %57 = add i64 %gcov_ctr174.i, 1, !dbg !643
  store i64 %57, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 12), align 16, !dbg !643
  %debugfs_dir.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 64, !dbg !644
  %58 = ptrtoint ptr %debugfs_dir.i to i32, !dbg !644
  call void @__asan_load4_noabort(i32 %58), !dbg !644
  %59 = load ptr, ptr %debugfs_dir.i, align 8, !dbg !644
  br label %if.end80.i, !dbg !645

if.else.i:                                        ; preds = %land.lhs.true73.i.if.else.i_crit_edge, %if.end71.i.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blk_debugfs_root to i32)), !dbg !646
  %60 = load ptr, ptr @blk_debugfs_root, align 4, !dbg !646
  %call78.i = call ptr @debugfs_create_dir(ptr noundef nonnull %buts, ptr noundef %60) #22, !dbg !647
  %dir79.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 9, !dbg !648
  %61 = ptrtoint ptr %dir79.i to i32, !dbg !649
  call void @__asan_store4_noabort(i32 %61), !dbg !649
  store ptr %call78.i, ptr %dir79.i, align 8, !dbg !649
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else.i, %if.then75.i
  %dir.0.i = phi ptr [ %call78.i, %if.else.i ], [ %59, %if.then75.i ], !dbg !650
  %gcov_ctr.i241.i = load i64, ptr @__llvm_gcov_ctr.203, align 8
  %62 = add i64 %gcov_ctr.i241.i, 1
  store i64 %62, ptr @__llvm_gcov_ctr.203, align 8
  %tobool.not.i.i = icmp eq ptr %dir.0.i, null, !dbg !651
  br i1 %tobool.not.i.i, label %if.end80.i.if.then82.i_crit_edge, label %IS_ERR_OR_NULL.exit.i, !dbg !655, !prof !368

if.end80.i.if.then82.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !655
  br label %if.then82.i, !dbg !655

IS_ERR_OR_NULL.exit.i:                            ; preds = %if.end80.i
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.203, i32 0, i32 1), align 8, !dbg !656
  %63 = add i64 %gcov_ctr10.i.i, 1, !dbg !656
  store i64 %63, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.203, i32 0, i32 1), align 8, !dbg !656
  %cmp.i.i38 = icmp ugt ptr %dir.0.i, inttoptr (i32 -4096 to ptr), !dbg !656
  br i1 %cmp.i.i38, label %IS_ERR_OR_NULL.exit.i.if.then82.i_crit_edge, label %if.end90.i, !dbg !657

IS_ERR_OR_NULL.exit.i.if.then82.i_crit_edge:      ; preds = %IS_ERR_OR_NULL.exit.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !657
  br label %if.then82.i, !dbg !657

if.then82.i:                                      ; preds = %IS_ERR_OR_NULL.exit.i.if.then82.i_crit_edge, %if.end80.i.if.then82.i_crit_edge
  %gcov_ctr175.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 13), align 8, !dbg !658
  %64 = add i64 %gcov_ctr175.i, 1, !dbg !658
  store i64 %64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 13), align 8, !dbg !658
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %buts) #24, !dbg !658
  br label %if.then159.i, !dbg !659

if.end90.i:                                       ; preds = %IS_ERR_OR_NULL.exit.i
  %dev91.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 8, !dbg !660
  %65 = ptrtoint ptr %dev91.i to i32, !dbg !661
  call void @__asan_store4_noabort(i32 %65), !dbg !661
  store i32 %dev, ptr %dev91.i, align 4, !dbg !661
  %dropped.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 11, !dbg !662
  %gcov_ctr.i.i.i39 = load i64, ptr @__llvm_gcov_ctr.215, align 8
  %66 = add i64 %gcov_ctr.i.i.i39, 1
  store i64 %66, ptr @__llvm_gcov_ctr.215, align 8
  %call.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef %dropped.i, i32 noundef 4) #22, !dbg !663
  %gcov_ctr.i.i.i.i41 = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %67 = add i64 %gcov_ctr.i.i.i.i41, 1
  store i64 %67, ptr @__llvm_gcov_ctr.196, align 8
  %gcov_ctr.i.i42 = load i64, ptr @__llvm_gcov_ctr.204, align 8, !dbg !669
  %68 = add i64 %gcov_ctr.i.i42, 1, !dbg !669
  store i64 %68, ptr @__llvm_gcov_ctr.204, align 8, !dbg !669
  %69 = ptrtoint ptr %dropped.i to i32, !dbg !669
  call void @__asan_store4_noabort(i32 %69), !dbg !669
  store volatile i32 0, ptr %dropped.i, align 4, !dbg !669
  %running_list.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 10, !dbg !670
  %gcov_ctr.i242.i = load i64, ptr @__llvm_gcov_ctr.205, align 8, !dbg !671
  %70 = add i64 %gcov_ctr.i242.i, 1, !dbg !671
  store i64 %70, ptr @__llvm_gcov_ctr.205, align 8, !dbg !671
  %71 = ptrtoint ptr %running_list.i to i32, !dbg !671
  call void @__asan_store4_noabort(i32 %71), !dbg !671
  store volatile ptr %running_list.i, ptr %running_list.i, align 4, !dbg !671
  %prev.i.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 10, i32 1, !dbg !675
  %72 = ptrtoint ptr %prev.i.i to i32, !dbg !676
  call void @__asan_store4_noabort(i32 %72), !dbg !676
  store ptr %running_list.i, ptr %prev.i.i, align 8, !dbg !676
  %call92.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef nonnull %dir.0.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @blk_dropped_fops) #22, !dbg !677
  %call93.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 146, ptr noundef nonnull %dir.0.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @blk_msg_fops) #22, !dbg !678
  %73 = ptrtoint ptr %buf_size.i to i32, !dbg !679
  call void @__asan_load4_noabort(i32 %73), !dbg !679
  %74 = load i32, ptr %buf_size.i, align 4, !dbg !679
  %75 = ptrtoint ptr %buf_nr.i to i32, !dbg !680
  call void @__asan_load4_noabort(i32 %75), !dbg !680
  %76 = load i32, ptr %buf_nr.i, align 8, !dbg !680
  %call96.i = call ptr @relay_open(ptr noundef nonnull @.str.3, ptr noundef nonnull %dir.0.i, i32 noundef %74, i32 noundef %76, ptr noundef nonnull @blk_relay_callbacks, ptr noundef nonnull %call7.i.i.i) #22, !dbg !681
  %rchan.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 1, !dbg !682
  %77 = ptrtoint ptr %rchan.i to i32, !dbg !683
  call void @__asan_store4_noabort(i32 %77), !dbg !683
  store ptr %call96.i, ptr %rchan.i, align 4, !dbg !683
  %tobool98.not.i = icmp eq ptr %call96.i, null, !dbg !684
  br i1 %tobool98.not.i, label %if.then99.i, label %if.end100.i, !dbg !685

if.then99.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !686
  %gcov_ctr176.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 14), align 16, !dbg !686
  %78 = add i64 %gcov_ctr176.i, 1, !dbg !686
  store i64 %78, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 14), align 16, !dbg !686
  br label %if.then159.i, !dbg !686

if.end100.i:                                      ; preds = %if.end90.i
  %act_mask.i = getelementptr inbounds %struct.blk_user_trace_setup, ptr %buts, i32 0, i32 1, !dbg !687
  %79 = ptrtoint ptr %act_mask.i to i32, !dbg !687
  call void @__asan_load2_noabort(i32 %79), !dbg !687
  %80 = load i16, ptr %act_mask.i, align 8, !dbg !687
  %act_mask101.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 4, !dbg !688
  %81 = ptrtoint ptr %act_mask101.i to i32, !dbg !689
  call void @__asan_store2_noabort(i32 %81), !dbg !689
  store i16 %80, ptr %act_mask101.i, align 8, !dbg !689
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80), !dbg !690
  %tobool103.not.i = icmp eq i16 %80, 0, !dbg !690
  br i1 %tobool103.not.i, label %if.then104.i, label %if.end100.i.if.end106.i_crit_edge, !dbg !691

if.end100.i.if.end106.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !691
  br label %if.end106.i, !dbg !691

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !692
  %gcov_ctr177.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 15), align 8, !dbg !692
  %82 = add i64 %gcov_ctr177.i, 1, !dbg !692
  store i64 %82, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 15), align 8, !dbg !692
  %83 = ptrtoint ptr %act_mask101.i to i32, !dbg !693
  call void @__asan_store2_noabort(i32 %83), !dbg !693
  store i16 -1, ptr %act_mask101.i, align 8, !dbg !693
  br label %if.end106.i, !dbg !692

if.end106.i:                                      ; preds = %if.then104.i, %if.end100.i.if.end106.i_crit_edge
  br i1 %tobool72.not.i, label %if.else.i.i, label %if.then.i.i, !dbg !694

if.then.i.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !697
  %gcov_ctr.i244.i = load i64, ptr @__llvm_gcov_ctr.206, align 8, !dbg !697
  %84 = add i64 %gcov_ctr.i244.i, 1, !dbg !697
  store i64 %84, ptr @__llvm_gcov_ctr.206, align 8, !dbg !697
  %85 = ptrtoint ptr %bdev to i32, !dbg !698
  call void @__asan_load8_noabort(i32 %85), !dbg !698
  %86 = load i64, ptr %bdev, align 8, !dbg !698
  %gcov_ctr.i.i245.i = load i64, ptr @__llvm_gcov_ctr.229, align 8
  %87 = add i64 %gcov_ctr.i.i245.i, 1
  store i64 %87, ptr @__llvm_gcov_ctr.229, align 8
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 1, !dbg !699
  %88 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32, !dbg !699
  call void @__asan_load8_noabort(i32 %88), !dbg !699
  %89 = load i64, ptr %bd_nr_sectors.i.i.i, align 8, !dbg !699
  %add.i.i = add i64 %89, %86, !dbg !703
  br label %blk_trace_setup_lba.exit.i, !dbg !704

if.else.i.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !705
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.206, i32 0, i32 1), align 8, !dbg !705
  %90 = add i64 %gcov_ctr4.i.i, 1, !dbg !705
  store i64 %90, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.206, i32 0, i32 1), align 8, !dbg !705
  br label %blk_trace_setup_lba.exit.i

blk_trace_setup_lba.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i = phi i64 [ 0, %if.else.i.i ], [ %86, %if.then.i.i ], !dbg !706
  %add.sink.i.i = phi i64 [ -1, %if.else.i.i ], [ %add.i.i, %if.then.i.i ], !dbg !706
  %91 = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 5, !dbg !707
  %92 = ptrtoint ptr %91 to i32, !dbg !708
  call void @__asan_store8_noabort(i32 %92), !dbg !708
  store i64 %.sink.i, ptr %91, align 8, !dbg !708
  %93 = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 6, !dbg !709
  %94 = ptrtoint ptr %93 to i32, !dbg !710
  call void @__asan_store8_noabort(i32 %94), !dbg !710
  store i64 %add.sink.i.i, ptr %93, align 8, !dbg !710
  %start_lba.i = getelementptr inbounds %struct.blk_user_trace_setup, ptr %buts, i32 0, i32 4, !dbg !711
  %95 = ptrtoint ptr %start_lba.i to i32, !dbg !711
  call void @__asan_load8_noabort(i32 %95), !dbg !711
  %96 = load i64, ptr %start_lba.i, align 8, !dbg !711
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96), !dbg !712
  %tobool107.not.i = icmp eq i64 %96, 0, !dbg !712
  br i1 %tobool107.not.i, label %blk_trace_setup_lba.exit.i.if.end111.i_crit_edge, label %if.then108.i, !dbg !712

blk_trace_setup_lba.exit.i.if.end111.i_crit_edge: ; preds = %blk_trace_setup_lba.exit.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !712
  br label %if.end111.i, !dbg !712

if.then108.i:                                     ; preds = %blk_trace_setup_lba.exit.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !713
  %gcov_ctr178.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 16), align 16, !dbg !713
  %97 = add i64 %gcov_ctr178.i, 1, !dbg !713
  store i64 %97, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 16), align 16, !dbg !713
  %98 = ptrtoint ptr %91 to i32, !dbg !714
  call void @__asan_store8_noabort(i32 %98), !dbg !714
  store i64 %96, ptr %91, align 8, !dbg !714
  br label %if.end111.i, !dbg !715

if.end111.i:                                      ; preds = %if.then108.i, %blk_trace_setup_lba.exit.i.if.end111.i_crit_edge
  %end_lba.i = getelementptr inbounds %struct.blk_user_trace_setup, ptr %buts, i32 0, i32 5, !dbg !716
  %99 = ptrtoint ptr %end_lba.i to i32, !dbg !716
  call void @__asan_load8_noabort(i32 %99), !dbg !716
  %100 = load i64, ptr %end_lba.i, align 8, !dbg !716
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100), !dbg !717
  %tobool112.not.i = icmp eq i64 %100, 0, !dbg !717
  br i1 %tobool112.not.i, label %if.end111.i.if.end4_crit_edge, label %if.then113.i, !dbg !717

if.end111.i.if.end4_crit_edge:                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !717
  br label %if.end4, !dbg !717

if.then113.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !718
  %gcov_ctr179.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 17), align 8, !dbg !718
  %101 = add i64 %gcov_ctr179.i, 1, !dbg !718
  store i64 %101, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 17), align 8, !dbg !718
  %102 = ptrtoint ptr %93 to i32, !dbg !719
  call void @__asan_store8_noabort(i32 %102), !dbg !719
  store i64 %100, ptr %93, align 8, !dbg !719
  br label %if.end4, !dbg !720

if.then159.i:                                     ; preds = %if.then99.i, %if.then82.i, %if.then70.i, %if.then65.i
  %ret.0.ph.i = phi i32 [ -12, %if.then65.i ], [ -12, %if.then70.i ], [ -2, %if.then82.i ], [ -5, %if.then99.i ]
  %gcov_ctr183.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 21), align 8, !dbg !721
  %103 = add i64 %gcov_ctr183.i, 1, !dbg !721
  store i64 %103, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 21), align 8, !dbg !721
  call fastcc void @blk_trace_free(ptr noundef %q, ptr noundef nonnull %call7.i.i.i) #22, !dbg !722
  br label %if.then3, !dbg !722

if.then3:                                         ; preds = %if.then159.i, %if.then60.i, %do.end52.i, %if.then26.i
  %retval.0.i.ph = phi i32 [ %ret.0.ph.i, %if.then159.i ], [ -22, %if.then26.i ], [ -12, %if.then60.i ], [ -16, %do.end52.i ]
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 1), align 8, !dbg !723
  %104 = add i64 %gcov_ctr11, 1, !dbg !723
  store i64 %104, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 1), align 8, !dbg !723
  br label %cleanup, !dbg !724

if.end4:                                          ; preds = %if.then113.i, %if.end111.i.if.end4_crit_edge
  %pid.i = getelementptr inbounds %struct.blk_user_trace_setup, ptr %buts, i32 0, i32 6, !dbg !725
  %105 = ptrtoint ptr %pid.i to i32, !dbg !725
  call void @__asan_load4_noabort(i32 %105), !dbg !725
  %106 = load i32, ptr %pid.i, align 8, !dbg !725
  %pid117.i = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i.i, i32 0, i32 7, !dbg !726
  %107 = ptrtoint ptr %pid117.i to i32, !dbg !727
  call void @__asan_store4_noabort(i32 %107), !dbg !727
  store i32 %106, ptr %pid117.i, align 8, !dbg !727
  %108 = ptrtoint ptr %call7.i.i.i to i32, !dbg !728
  call void @__asan_store4_noabort(i32 %108), !dbg !728
  store i32 1, ptr %call7.i.i.i, align 8, !dbg !728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !dbg !729, !srcloc !730
  %109 = ptrtoint ptr %blk_trace.i to i32, !dbg !729
  call void @__asan_store4_noabort(i32 %109), !dbg !729
  store volatile ptr %call7.i.i.i, ptr %blk_trace.i, align 8, !dbg !729
  %gcov_ctr182.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 20), align 16
  %110 = add i64 %gcov_ctr182.i, 1
  store i64 %110, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 20), align 16
  call fastcc void @get_probe_ref() #22, !dbg !731
  %gcov_ctr.i18 = load i64, ptr @__llvm_gcov_ctr.189, align 8
  %111 = add i64 %gcov_ctr.i18, 1
  store i64 %111, ptr @__llvm_gcov_ctr.189, align 8
  %gcov_ctr.i.i20 = load i64, ptr @__llvm_gcov_ctr.190, align 16, !dbg !732
  %112 = add i64 %gcov_ctr.i.i20, 1, !dbg !732
  store i64 %112, ptr @__llvm_gcov_ctr.190, align 16, !dbg !732
  %gcov_ctr67.i.i24 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.190, i32 0, i32 7), align 8, !dbg !736
  %113 = add i64 %gcov_ctr67.i.i24, 1, !dbg !736
  store i64 %113, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.190, i32 0, i32 7), align 8, !dbg !736
  %gcov_ctr.i.i.i25 = load i64, ptr @__llvm_gcov_ctr.193, align 8
  %114 = add i64 %gcov_ctr.i.i.i25, 1
  store i64 %114, ptr @__llvm_gcov_ctr.193, align 8
  %gcov_ctr3.i26 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.189, i32 0, i32 1), align 8, !dbg !737
  %115 = add i64 %gcov_ctr3.i26, 1, !dbg !737
  store i64 %115, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.189, i32 0, i32 1), align 8, !dbg !737
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #22, !dbg !738
  %call.i.i27 = call zeroext i1 @should_fail_usercopy() #22, !dbg !741
  br i1 %call.i.i27, label %copy_to_user.exit.thread, label %copy_to_user.exit, !dbg !741

copy_to_user.exit.thread:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !742
  %gcov_ctr6.i.i50 = load i64, ptr @__llvm_gcov_ctr.247, align 16, !dbg !742
  %116 = add i64 %gcov_ctr6.i.i50, 1, !dbg !742
  store i64 %116, ptr @__llvm_gcov_ctr.247, align 16, !dbg !742
  br label %if.then7, !dbg !743

copy_to_user.exit:                                ; preds = %if.end4
  %gcov_ctr5.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.247, i32 0, i32 1), align 8, !dbg !744
  %117 = add i64 %gcov_ctr5.i.i, 1, !dbg !744
  store i64 %117, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.247, i32 0, i32 1), align 8, !dbg !744
  %gcov_ctr.i.i2.i = load i64, ptr @__llvm_gcov_ctr.248, align 8
  %118 = add i64 %gcov_ctr.i.i2.i, 1
  store i64 %118, ptr @__llvm_gcov_ctr.248, align 8
  %call.i.i.i31 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buts, i32 noundef 72) #22, !dbg !745
  %gcov_ctr.i.i.i.i32 = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %119 = add i64 %gcov_ctr.i.i.i.i32, 1
  store i64 %119, ptr @__llvm_gcov_ctr.196, align 8
  %gcov_ctr.i1.i.i33 = load i64, ptr @__llvm_gcov_ctr.249, align 8
  %120 = add i64 %gcov_ctr.i1.i.i33, 1
  store i64 %120, ptr @__llvm_gcov_ctr.249, align 8
  %call.i2.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %buts, i32 noundef 72) #22, !dbg !748
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.247, i32 0, i32 2), align 16, !dbg !742
  %121 = add i64 %gcov_ctr6.i.i, 1, !dbg !742
  store i64 %121, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.247, i32 0, i32 2), align 16, !dbg !742
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i), !dbg !743
  %tobool6.not = icmp eq i32 %call.i2.i.i, 0, !dbg !743
  br i1 %tobool6.not, label %if.end9, label %copy_to_user.exit.if.then7_crit_edge, !dbg !743

copy_to_user.exit.if.then7_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !743
  br label %if.then7, !dbg !743

if.then7:                                         ; preds = %copy_to_user.exit.if.then7_crit_edge, %copy_to_user.exit.thread
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 3), align 8, !dbg !751
  %122 = add i64 %gcov_ctr13, 1, !dbg !751
  store i64 %122, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 3), align 8, !dbg !751
  %call8 = call fastcc i32 @__blk_trace_remove(ptr noundef %q), !dbg !752
  br label %cleanup, !dbg !753

if.end9:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !754
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 2), align 16, !dbg !754
  %123 = add i64 %gcov_ctr12, 1, !dbg !754
  store i64 %123, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 2), align 16, !dbg !754
  br label %cleanup, !dbg !754

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %retval.0.i.ph, %if.then3 ], [ -14, %if.then7 ], [ 0, %if.end9 ], !dbg !755
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %buts) #22, !dbg !756
  ret i32 %retval.0, !dbg !756
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_trace_startstop(ptr noundef %q, i32 noundef %start) #0 align 64 !dbg !757 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !758
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.116, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.116, align 8
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, !dbg !759
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !759
  %call = tail call fastcc i32 @__blk_trace_startstop(ptr noundef %q, i32 noundef %start), !dbg !760
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !761
  ret i32 %call, !dbg !762
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blk_trace_startstop(ptr noundef %q, i32 noundef %start) unnamed_addr #0 align 64 !dbg !763 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  %words.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !764
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, i32 5, !dbg !765
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.121, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !766
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !765
  %tobool.not = icmp eq i32 %call.i, 0, !dbg !765
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge, !dbg !765

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !765
  br label %do.end, !dbg !765

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.117, align 16, !dbg !765
  %1 = add i64 %gcov_ctr, 1, !dbg !765
  store i64 %1, ptr @__llvm_gcov_ctr.117, align 16, !dbg !765
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !765
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !765
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !765
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3, !dbg !765

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !765
  br label %do.end, !dbg !765

land.lhs.true3:                                   ; preds = %land.lhs.true
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 1), align 8, !dbg !765
  %2 = add i64 %gcov_ctr29, 1, !dbg !765
  store i64 %2, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 1), align 8, !dbg !765
  %.b47 = load i1, ptr @__blk_trace_startstop.__warned, align 1, !dbg !765
  br i1 %.b47, label %land.lhs.true3.do.end_crit_edge, label %if.then, !dbg !765

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #21, !dbg !765
  br label %do.end, !dbg !765

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #21, !dbg !765
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 2), align 16, !dbg !765
  %3 = add i64 %gcov_ctr30, 1, !dbg !765
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 2), align 16, !dbg !765
  store i1 true, ptr @__blk_trace_startstop.__warned, align 1, !dbg !765
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 664, ptr noundef nonnull @.str.1) #22, !dbg !765
  br label %do.end, !dbg !765

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !765
  %4 = ptrtoint ptr %blk_trace to i32, !dbg !765
  call void @__asan_load4_noabort(i32 %4), !dbg !765
  %5 = load ptr, ptr %blk_trace, align 8, !dbg !765
  %cmp = icmp eq ptr %5, null, !dbg !768
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !769

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !770
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 3), align 8, !dbg !770
  %6 = add i64 %gcov_ctr31, 1, !dbg !770
  store i64 %6, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 3), align 8, !dbg !770
  br label %cleanup, !dbg !770

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start), !dbg !771
  %tobool7.not = icmp eq i32 %start, 0, !dbg !771
  br i1 %tobool7.not, label %if.else, label %if.then8, !dbg !771

if.then8:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %5 to i32, !dbg !772
  call void @__asan_load4_noabort(i32 %7), !dbg !772
  %8 = load i32, ptr %5, align 8, !dbg !772
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8), !dbg !773
  %cmp9 = icmp eq i32 %8, 1, !dbg !773
  br i1 %cmp9, label %if.then8.if.then12_crit_edge, label %lor.lhs.false, !dbg !774

if.then8.if.then12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !774
  br label %if.then12, !dbg !774

lor.lhs.false:                                    ; preds = %if.then8
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 5), align 8, !dbg !775
  %9 = add i64 %gcov_ctr33, 1, !dbg !775
  store i64 %9, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 5), align 8, !dbg !775
  %10 = ptrtoint ptr %5 to i32, !dbg !776
  call void @__asan_load4_noabort(i32 %10), !dbg !776
  %11 = load i32, ptr %5, align 8, !dbg !776
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11), !dbg !777
  %cmp11 = icmp eq i32 %11, 3, !dbg !777
  br i1 %cmp11, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.end20_crit_edge, !dbg !778

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !778
  br label %if.end20, !dbg !778

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !778
  br label %if.then12, !dbg !778

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then8.if.then12_crit_edge
  %12 = load i32, ptr @blktrace_seq, align 4, !dbg !779
  %inc = add i32 %12, 1, !dbg !779
  store i32 %inc, ptr @blktrace_seq, align 4, !dbg !779
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !dbg !780, !srcloc !781
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 6), align 16, !dbg !782
  %13 = add i64 %gcov_ctr34, 1, !dbg !782
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 6), align 16, !dbg !782
  %14 = ptrtoint ptr %5 to i32, !dbg !783
  call void @__asan_store4_noabort(i32 %14), !dbg !783
  store i32 2, ptr %5, align 8, !dbg !783
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @running_trace_lock) #22, !dbg !784
  %running_list = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 10, !dbg !785
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.250, align 8
  %15 = add i64 %gcov_ctr.i48, 1
  store i64 %15, ptr @__llvm_gcov_ctr.250, align 8
  %16 = load ptr, ptr @running_trace_list, align 4, !dbg !786
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %running_list, ptr noundef nonnull @running_trace_list, ptr noundef %16) #22, !dbg !789
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_add.exit_crit_edge, !dbg !792

if.then12.list_add.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21, !dbg !792
  br label %list_add.exit, !dbg !792

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21, !dbg !793
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1, !dbg !793
  %17 = ptrtoint ptr %prev1.i.i to i32, !dbg !794
  call void @__asan_store4_noabort(i32 %17), !dbg !794
  store ptr %running_list, ptr %prev1.i.i, align 4, !dbg !794
  %18 = ptrtoint ptr %running_list to i32, !dbg !795
  call void @__asan_store4_noabort(i32 %18), !dbg !795
  store ptr %16, ptr %running_list, align 4, !dbg !795
  %prev3.i.i = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 10, i32 1, !dbg !796
  %19 = ptrtoint ptr %prev3.i.i to i32, !dbg !797
  call void @__asan_store4_noabort(i32 %19), !dbg !797
  store ptr @running_trace_list, ptr %prev3.i.i, align 4, !dbg !797
  store volatile ptr %running_list, ptr @running_trace_list, align 4, !dbg !798
  br label %list_add.exit, !dbg !798

list_add.exit:                                    ; preds = %if.end.i.i, %if.then12.list_add.exit_crit_edge
  %__llvm_gcov_ctr.253.sink1.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.253, i32 0, i32 1), %if.end.i.i ], [ @__llvm_gcov_ctr.253, %if.then12.list_add.exit_crit_edge ]
  %20 = ptrtoint ptr %__llvm_gcov_ctr.253.sink1.i.i to i32, !dbg !799
  call void @__asan_load8_noabort(i32 %20), !dbg !799
  %gcov_ctr.i.i = load i64, ptr %__llvm_gcov_ctr.253.sink1.i.i, align 8, !dbg !799
  %21 = add i64 %gcov_ctr.i.i, 1, !dbg !799
  store i64 %21, ptr %__llvm_gcov_ctr.253.sink1.i.i, align 8, !dbg !799
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @running_trace_lock) #22, !dbg !800
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #22, !dbg !801
  %22 = call ptr @memset(ptr %now.i, i32 255, i32 16), !dbg !804
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %words.i) #22, !dbg !805
  %23 = getelementptr inbounds [2 x i32], ptr %words.i, i32 0, i32 1, !dbg !806
  call void @ktime_get_real_ts64(ptr noundef nonnull %now.i) #22, !dbg !807
  %24 = ptrtoint ptr %now.i to i32, !dbg !808
  call void @__asan_load8_noabort(i32 %24), !dbg !808
  %25 = load i64, ptr %now.i, align 8, !dbg !808
  %conv.i = trunc i64 %25 to i32, !dbg !809
  %26 = ptrtoint ptr %words.i to i32, !dbg !810
  call void @__asan_store4_noabort(i32 %26), !dbg !810
  store i32 %conv.i, ptr %words.i, align 4, !dbg !810
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1, !dbg !811
  %27 = ptrtoint ptr %tv_nsec.i to i32, !dbg !811
  call void @__asan_load4_noabort(i32 %27), !dbg !811
  %28 = load i32, ptr %tv_nsec.i, align 8, !dbg !811
  %29 = ptrtoint ptr %23 to i32, !dbg !812
  call void @__asan_store4_noabort(i32 %29), !dbg !812
  store i32 %28, ptr %23, align 4, !dbg !812
  %gcov_ctr.i.i49 = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %30 = add i64 %gcov_ctr.i.i49, 1
  store i64 %30, ptr @__llvm_gcov_ctr.105, align 8
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !dbg !813, !srcloc !327
  %gcov_ctr.i50.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %32 = add i64 %gcov_ctr.i50.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.106, align 8
  %and.i.i = and i32 %31, 128, !dbg !815
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !817
  %tobool.not.i = icmp eq i32 %and.i.i, 0, !dbg !817
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i, !dbg !817

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !817
  %gcov_ctr.i50 = load i64, ptr @__llvm_gcov_ctr.251, align 16, !dbg !817
  %33 = add i64 %gcov_ctr.i50, 1, !dbg !817
  store i64 %33, ptr @__llvm_gcov_ctr.251, align 16, !dbg !817
  call void @trace_hardirqs_off() #22, !dbg !817
  call fastcc void @trace_note(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 67108865, ptr noundef nonnull %words.i, i32 noundef 8, i64 noundef 0) #22, !dbg !818
  %gcov_ctr.i51.c.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %34 = add i64 %gcov_ctr.i51.c.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.106, align 8
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.251, i32 0, i32 1), align 8, !dbg !819
  %35 = add i64 %gcov_ctr45.i, 1, !dbg !819
  store i64 %35, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.251, i32 0, i32 1), align 8, !dbg !819
  call void @trace_hardirqs_on() #22, !dbg !819
  br label %do.body24.i, !dbg !819

do.body24.critedge.i:                             ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !818
  call fastcc void @trace_note(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 67108865, ptr noundef nonnull %words.i, i32 noundef 8, i64 noundef 0) #22, !dbg !818
  %gcov_ctr.i51.c55.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %36 = add i64 %gcov_ctr.i51.c55.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.106, align 8
  br label %do.body24.i, !dbg !819

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %gcov_ctr.i53.i = load i64, ptr @__llvm_gcov_ctr.110, align 8, !dbg !820
  %37 = add i64 %gcov_ctr.i53.i, 1, !dbg !820
  store i64 %37, ptr @__llvm_gcov_ctr.110, align 8, !dbg !820
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.140, align 8
  %38 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.140, align 8
  %39 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !dbg !822, !srcloc !365
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %40 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.106, align 8
  %and.i.i.i = and i32 %39, 128, !dbg !824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !819
  %tobool33.not.i = icmp eq i32 %and.i.i.i, 0, !dbg !819
  br i1 %tobool33.not.i, label %if.then37.i, label %do.body24.i.trace_note_time.exit_crit_edge, !dbg !819, !prof !368

do.body24.i.trace_note_time.exit_crit_edge:       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !819
  br label %trace_note_time.exit, !dbg !819

if.then37.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !819
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.251, i32 0, i32 2), align 16, !dbg !819
  %41 = add i64 %gcov_ctr46.i, 1, !dbg !819
  store i64 %41, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.251, i32 0, i32 2), align 16, !dbg !819
  call void @warn_bogus_irq_restore() #22, !dbg !819
  br label %trace_note_time.exit, !dbg !819

trace_note_time.exit:                             ; preds = %if.then37.i, %do.body24.i.trace_note_time.exit_crit_edge
  %gcov_ctr.i54.i = load i64, ptr @__llvm_gcov_ctr.111, align 8
  %42 = add i64 %gcov_ctr.i54.i, 1
  store i64 %42, ptr @__llvm_gcov_ctr.111, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #22, !dbg !826, !srcloc !372
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.251, i32 0, i32 3), align 8, !dbg !819
  %43 = add i64 %gcov_ctr47.i, 1, !dbg !819
  store i64 %43, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.251, i32 0, i32 3), align 8, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %words.i) #22, !dbg !828
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #22, !dbg !828
  br label %if.end20, !dbg !829

if.end20:                                         ; preds = %trace_note_time.exit, %lor.lhs.false.if.end20_crit_edge
  %ret.0 = phi i32 [ 0, %trace_note_time.exit ], [ -22, %lor.lhs.false.if.end20_crit_edge ], !dbg !830
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 7), align 8, !dbg !831
  %44 = add i64 %gcov_ctr35, 1, !dbg !831
  store i64 %44, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 7), align 8, !dbg !831
  br label %cleanup, !dbg !831

if.else:                                          ; preds = %if.end6
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 4), align 16, !dbg !832
  %45 = add i64 %gcov_ctr32, 1, !dbg !832
  store i64 %45, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 4), align 16, !dbg !832
  %46 = ptrtoint ptr %5 to i32, !dbg !833
  call void @__asan_load4_noabort(i32 %46), !dbg !833
  %47 = load i32, ptr %5, align 8, !dbg !833
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47), !dbg !834
  %cmp22 = icmp eq i32 %47, 2, !dbg !834
  br i1 %cmp22, label %if.then23, label %if.else.cleanup_crit_edge, !dbg !832

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !832
  br label %cleanup, !dbg !832

if.then23:                                        ; preds = %if.else
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 8), align 16, !dbg !835
  %48 = add i64 %gcov_ctr36, 1, !dbg !835
  store i64 %48, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 8), align 16, !dbg !835
  %49 = ptrtoint ptr %5 to i32, !dbg !836
  call void @__asan_store4_noabort(i32 %49), !dbg !836
  store i32 3, ptr %5, align 8, !dbg !836
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @running_trace_lock) #22, !dbg !837
  %running_list25 = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 10, !dbg !838
  %gcov_ctr.i51 = load i64, ptr @__llvm_gcov_ctr.252, align 8
  %50 = add i64 %gcov_ctr.i51, 1
  store i64 %50, ptr @__llvm_gcov_ctr.252, align 8
  %call.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %running_list25) #22, !dbg !839
  br i1 %call.i.i52, label %if.end.i.i55, label %if.then.i.i, !dbg !844

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21, !dbg !845
  %gcov_ctr.i.i53 = load i64, ptr @__llvm_gcov_ctr.254, align 8, !dbg !845
  %51 = add i64 %gcov_ctr.i.i53, 1, !dbg !845
  store i64 %51, ptr @__llvm_gcov_ctr.254, align 8, !dbg !845
  br label %list_del_init.exit, !dbg !845

if.end.i.i55:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21, !dbg !846
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.254, i32 0, i32 1), align 8, !dbg !846
  %52 = add i64 %gcov_ctr2.i.i, 1, !dbg !846
  store i64 %52, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.254, i32 0, i32 1), align 8, !dbg !846
  %prev.i.i = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 10, i32 1, !dbg !847
  %53 = ptrtoint ptr %prev.i.i to i32, !dbg !847
  call void @__asan_load4_noabort(i32 %53), !dbg !847
  %54 = load ptr, ptr %prev.i.i, align 4, !dbg !847
  %55 = ptrtoint ptr %running_list25 to i32, !dbg !848
  call void @__asan_load4_noabort(i32 %55), !dbg !848
  %56 = load ptr, ptr %running_list25, align 4, !dbg !848
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1, !dbg !849
  %57 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !852
  call void @__asan_store4_noabort(i32 %57), !dbg !852
  store ptr %54, ptr %prev1.i.i.i, align 4, !dbg !852
  %gcov_ctr.i.i.i54 = load i64, ptr @__llvm_gcov_ctr.255, align 8, !dbg !853
  %58 = add i64 %gcov_ctr.i.i.i54, 1, !dbg !853
  store i64 %58, ptr @__llvm_gcov_ctr.255, align 8, !dbg !853
  %59 = ptrtoint ptr %54 to i32, !dbg !853
  call void @__asan_store4_noabort(i32 %59), !dbg !853
  store volatile ptr %56, ptr %54, align 4, !dbg !853
  br label %list_del_init.exit, !dbg !854

list_del_init.exit:                               ; preds = %if.end.i.i55, %if.then.i.i
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.205, align 8, !dbg !855
  %60 = add i64 %gcov_ctr.i3.i, 1, !dbg !855
  store i64 %60, ptr @__llvm_gcov_ctr.205, align 8, !dbg !855
  %61 = ptrtoint ptr %running_list25 to i32, !dbg !855
  call void @__asan_store4_noabort(i32 %61), !dbg !855
  store volatile ptr %running_list25, ptr %running_list25, align 4, !dbg !855
  %prev.i4.i = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 10, i32 1, !dbg !857
  %62 = ptrtoint ptr %prev.i4.i to i32, !dbg !858
  call void @__asan_store4_noabort(i32 %62), !dbg !858
  store ptr %running_list25, ptr %prev.i4.i, align 4, !dbg !858
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @running_trace_lock) #22, !dbg !859
  %rchan = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 1, !dbg !860
  %63 = ptrtoint ptr %rchan to i32, !dbg !860
  call void @__asan_load4_noabort(i32 %63), !dbg !860
  %64 = load ptr, ptr %rchan, align 4, !dbg !860
  tail call void @relay_flush(ptr noundef %64) #22, !dbg !861
  br label %cleanup, !dbg !862

cleanup:                                          ; preds = %list_del_init.exit, %if.else.cleanup_crit_edge, %if.end20, %if.then5
  %retval.0 = phi i32 [ -22, %if.then5 ], [ %ret.0, %if.end20 ], [ 0, %list_del_init.exit ], [ -22, %if.else.cleanup_crit_edge ], !dbg !830
  ret i32 %retval.0, !dbg !863
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_trace_ioctl(ptr noundef %bdev, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 !dbg !864 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !865
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #22, !dbg !866
  %0 = call ptr @memset(ptr %b, i32 255, i32 32), !dbg !867
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.119, align 8
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18, !dbg !868
  %2 = ptrtoint ptr %bd_queue.i to i32, !dbg !868
  call void @__asan_load4_noabort(i32 %2), !dbg !868
  %3 = load ptr, ptr %bd_queue.i, align 4, !dbg !868
  %tobool.not = icmp eq ptr %3, null, !dbg !871
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !872

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !873
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.118, align 16, !dbg !873
  %4 = add i64 %gcov_ctr, 1, !dbg !873
  store i64 %4, ptr @__llvm_gcov_ctr.118, align 16, !dbg !873
  br label %cleanup, !dbg !873

if.end:                                           ; preds = %entry
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 45, !dbg !874
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !874
  %5 = zext i32 %cmd to i64, !dbg !875
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values), !dbg !875
  switch i32 %cmd, label %sw.default [
    i32 -1069018509, label %sw.bb
    i32 4724, label %sw.bb4
    i32 4725, label %if.end.sw.bb5_crit_edge
    i32 4726, label %sw.bb7
  ], !dbg !875

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !875
  br label %sw.bb5, !dbg !875

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !876
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !876
  %6 = add i64 %gcov_ctr13, 1, !dbg !876
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !876
  %call1 = call ptr @bdevname(ptr noundef %bdev, ptr noundef nonnull %b) #22, !dbg !877
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 5, !dbg !878
  %7 = ptrtoint ptr %bd_dev to i32, !dbg !878
  call void @__asan_load4_noabort(i32 %7), !dbg !878
  %8 = load i32, ptr %bd_dev, align 4, !dbg !878
  %call3 = call fastcc i32 @__blk_trace_setup(ptr noundef nonnull %3, ptr noundef nonnull %b, i32 noundef %8, ptr noundef %bdev, ptr noundef %arg), !dbg !879
  br label %sw.epilog, !dbg !880

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !881
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !881
  %9 = add i64 %gcov_ctr14, 1, !dbg !881
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !881
  br label %sw.bb5, !dbg !882

sw.bb5:                                           ; preds = %sw.bb4, %if.end.sw.bb5_crit_edge
  %start.0 = phi i32 [ 0, %if.end.sw.bb5_crit_edge ], [ 1, %sw.bb4 ], !dbg !883
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 3), align 8, !dbg !884
  %10 = add i64 %gcov_ctr15, 1, !dbg !884
  store i64 %10, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 3), align 8, !dbg !884
  %call6 = tail call fastcc i32 @__blk_trace_startstop(ptr noundef nonnull %3, i32 noundef %start.0), !dbg !885
  br label %sw.epilog, !dbg !886

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !887
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 4), align 16, !dbg !887
  %11 = add i64 %gcov_ctr16, 1, !dbg !887
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 4), align 16, !dbg !887
  %call8 = tail call fastcc i32 @__blk_trace_remove(ptr noundef nonnull %3), !dbg !888
  br label %sw.epilog, !dbg !889

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !890
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 5), align 8, !dbg !890
  %12 = add i64 %gcov_ctr17, 1, !dbg !890
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 5), align 8, !dbg !890
  br label %sw.epilog, !dbg !891

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb
  %ret.0 = phi i32 [ -25, %sw.default ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call3, %sw.bb ], !dbg !883
  call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !892
  br label %cleanup, !dbg !893

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -6, %if.then ], !dbg !883
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #22, !dbg !894
  ret i32 %retval.0, !dbg !894
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_trace_shutdown(ptr noundef %q) local_unnamed_addr #0 align 64 !dbg !895 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !896
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, !dbg !897
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !897
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 45, i32 5, !dbg !898
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.121, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !899
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !898
  %tobool.not = icmp eq i32 %call.i, 0, !dbg !898
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !898

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !898
  br label %if.end, !dbg !898

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.120, align 16, !dbg !898
  %1 = add i64 %gcov_ctr, 1, !dbg !898
  store i64 %1, ptr @__llvm_gcov_ctr.120, align 16, !dbg !898
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !898
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !898
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4, !dbg !898

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !898
  br label %if.end, !dbg !898

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 1), align 8, !dbg !898
  %2 = add i64 %gcov_ctr12, 1, !dbg !898
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 1), align 8, !dbg !898
  %.b21 = load i1, ptr @blk_trace_shutdown.__warned, align 1, !dbg !898
  br i1 %.b21, label %land.lhs.true4.if.end_crit_edge, label %if.then, !dbg !898

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !898
  br label %if.end, !dbg !898

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !898
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 2), align 16, !dbg !898
  %3 = add i64 %gcov_ctr13, 1, !dbg !898
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 2), align 16, !dbg !898
  store i1 true, ptr @blk_trace_shutdown.__warned, align 1, !dbg !898
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 775, ptr noundef nonnull @.str.1) #22, !dbg !898
  br label %if.end, !dbg !898

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 3), align 8, !dbg !898
  %4 = add i64 %gcov_ctr14, 1, !dbg !898
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 3), align 8, !dbg !898
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !898
  %5 = ptrtoint ptr %blk_trace to i32, !dbg !898
  call void @__asan_load4_noabort(i32 %5), !dbg !898
  %6 = load ptr, ptr %blk_trace, align 8, !dbg !898
  %tobool6.not = icmp eq ptr %6, null, !dbg !898
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7, !dbg !898

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !898
  br label %if.end10, !dbg !898

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !901
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 4), align 16, !dbg !901
  %7 = add i64 %gcov_ctr15, 1, !dbg !901
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 4), align 16, !dbg !901
  %call8 = tail call fastcc i32 @__blk_trace_startstop(ptr noundef %q, i32 noundef 0), !dbg !902
  %call9 = tail call fastcc i32 @__blk_trace_remove(ptr noundef %q), !dbg !903
  br label %if.end10, !dbg !904

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !905
  ret void, !dbg !906
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_add_driver_data(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 !dbg !907 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !908
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !909
  %0 = add i64 %gcov_ctr.i, 1, !dbg !909
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 16, !dbg !909
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !913
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !913
  store i64 %1, ptr @__llvm_gcov_ctr.256, align 8, !dbg !913
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !916
  %3 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !916
  store i64 %3, ptr @__llvm_gcov_ctr.139, align 8, !dbg !916
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !919
  %4 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !919
  store i64 %4, ptr @__llvm_gcov_ctr.107, align 8, !dbg !919
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !919
  %and.i.i.i.i.i = and i32 %5, -16384, !dbg !921
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !922
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !923
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !924
  call void @__asan_load4_noabort(i32 %7), !dbg !924
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !924
  %add.i.i.i = add i32 %8, 1, !dbg !924
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !924
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !913, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %9 = add i64 %gcov_ctr.i8.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !926
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !929
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !929

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !929
  br label %rcu_read_lock.exit, !dbg !929

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !929
  %10 = add i64 %gcov_ctr4.i, 1, !dbg !929
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !929
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !929
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !929
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !929
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !929

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !929
  br label %rcu_read_lock.exit, !dbg !929

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !929
  %11 = add i64 %gcov_ctr5.i, 1, !dbg !929
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !929
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !929
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !929

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !929
  br label %rcu_read_lock.exit, !dbg !929

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !929
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !929
  %12 = add i64 %gcov_ctr6.i, 1, !dbg !929
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !929
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !929
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !929
  br label %rcu_read_lock.exit, !dbg !929

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %13 = ptrtoint ptr %rq to i32, !dbg !930
  call void @__asan_load4_noabort(i32 %13), !dbg !930
  %14 = load ptr, ptr %rq, align 8, !dbg !930
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 46, !dbg !930
  %15 = ptrtoint ptr %blk_trace to i32, !dbg !930
  call void @__asan_load4_noabort(i32 %15), !dbg !930
  %16 = load volatile ptr, ptr %blk_trace, align 8, !dbg !930
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !930
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !930
  %tobool.not = icmp eq i32 %call, 0, !dbg !930
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge, !dbg !930

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !930
  br label %do.end7, !dbg !930

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.122, align 16, !dbg !930
  %17 = add i64 %gcov_ctr, 1, !dbg !930
  store i64 %17, ptr @__llvm_gcov_ctr.122, align 16, !dbg !930
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !930
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !930
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !930
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4, !dbg !930

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !930
  br label %do.end7, !dbg !930

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 1), align 8, !dbg !930
  %18 = add i64 %gcov_ctr18, 1, !dbg !930
  store i64 %18, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 1), align 8, !dbg !930
  %.b27 = load i1, ptr @blk_add_driver_data.__warned, align 1, !dbg !930
  br i1 %.b27, label %land.lhs.true4.do.end7_crit_edge, label %if.then, !dbg !930

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !930
  br label %do.end7, !dbg !930

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !930
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 2), align 16, !dbg !930
  %19 = add i64 %gcov_ctr19, 1, !dbg !930
  store i64 %19, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 2), align 16, !dbg !930
  store i1 true, ptr @blk_add_driver_data.__warned, align 1, !dbg !930
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1082, ptr noundef nonnull @.str.2) #22, !dbg !930
  br label %do.end7, !dbg !930

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %16, null, !dbg !931
  br i1 %tobool9.not, label %if.then13, label %if.end14, !dbg !931, !prof !316

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !932
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 3), align 8, !dbg !932
  %20 = add i64 %gcov_ctr20, 1, !dbg !932
  store i64 %20, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 3), align 8, !dbg !932
  br label %cleanup, !dbg !933

if.end14:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !934
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 4), align 16, !dbg !934
  %21 = add i64 %gcov_ctr21, 1, !dbg !934
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 4), align 16, !dbg !934
  %call15 = tail call fastcc i64 @blk_rq_trace_sector(ptr noundef %rq), !dbg !935
  %gcov_ctr.i28 = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %22 = add i64 %gcov_ctr.i28, 1
  store i64 %22, ptr @__llvm_gcov_ctr.127, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8, !dbg !936
  %23 = ptrtoint ptr %__data_len.i to i32, !dbg !936
  call void @__asan_load4_noabort(i32 %23), !dbg !936
  %24 = load i32, ptr %__data_len.i, align 8, !dbg !936
  %call17 = tail call fastcc i64 @blk_trace_request_get_cgid(ptr noundef %rq), !dbg !940
  tail call fastcc void @__blk_add_trace(ptr noundef nonnull %16, i64 noundef %call15, i32 noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 1073741841, i32 noundef 0, i32 noundef %len, ptr noundef %data, i64 noundef %call17), !dbg !941
  br label %cleanup, !dbg !942

cleanup:                                          ; preds = %if.end14, %if.then13
  tail call fastcc void @rcu_read_unlock(), !dbg !943
  ret void, !dbg !942
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 !dbg !944 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !945
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.124, align 16, !dbg !946
  %0 = add i64 %gcov_ctr, 1, !dbg !946
  store i64 %0, ptr @__llvm_gcov_ctr.124, align 16, !dbg !946
  %call = tail call zeroext i1 @rcu_is_watching() #22, !dbg !946
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true, !dbg !946

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !946
  br label %do.end, !dbg !946

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !946
  %1 = add i64 %gcov_ctr4, 1, !dbg !946
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !946
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !946
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !946
  %tobool.not = icmp eq i32 %call1, 0, !dbg !946
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2, !dbg !946

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !946
  br label %do.end, !dbg !946

land.lhs.true2:                                   ; preds = %land.lhs.true
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !946
  %2 = add i64 %gcov_ctr5, 1, !dbg !946
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !946
  %.b7 = load i1, ptr @rcu_read_unlock.__warned, align 1, !dbg !946
  br i1 %.b7, label %land.lhs.true2.do.end_crit_edge, label %if.then, !dbg !946

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #21, !dbg !946
  br label %do.end, !dbg !946

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #21, !dbg !946
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 3), align 8, !dbg !946
  %3 = add i64 %gcov_ctr6, 1, !dbg !946
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 3), align 8, !dbg !946
  store i1 true, ptr @rcu_read_unlock.__warned, align 1, !dbg !946
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #22, !dbg !946
  br label %do.end, !dbg !946

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.258, align 8, !dbg !947
  %4 = add i64 %gcov_ctr.i, 1, !dbg !947
  store i64 %4, ptr @__llvm_gcov_ctr.258, align 8, !dbg !947
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !947, !srcloc !950
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.138, align 8
  %5 = add i64 %gcov_ctr.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.138, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !951
  %6 = add i64 %gcov_ctr.i.i.i, 1, !dbg !951
  store i64 %6, ptr @__llvm_gcov_ctr.139, align 8, !dbg !951
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !954
  %7 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !954
  store i64 %7, ptr @__llvm_gcov_ctr.107, align 8, !dbg !954
  %8 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !954
  %and.i.i.i.i = and i32 %8, -16384, !dbg !956
  %9 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !957
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1, !dbg !958
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !959
  call void @__asan_load4_noabort(i32 %10), !dbg !959
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !959
  %sub.i.i = add i32 %11, -1, !dbg !959
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !959
  tail call void @rcu_read_unlock_strict() #22, !dbg !960
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.259, align 8
  %12 = add i64 %gcov_ctr.i8, 1
  store i64 %12, ptr @__llvm_gcov_ctr.259, align 8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef 1) #22, !dbg !961
  ret void, !dbg !964
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__blk_add_trace(ptr nocapture noundef readonly %bt, i64 noundef %sector, i32 noundef %bytes, i32 noundef %op, i32 noundef %op_flags, i32 noundef %what, i32 noundef %error, i32 noundef %pdu_len, ptr nocapture noundef readonly %pdu_data, i64 noundef %cgid) unnamed_addr #0 align 64 !dbg !965 {
entry:
  %cgid.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !966
  %0 = ptrtoint ptr %cgid.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %cgid, ptr %cgid.addr, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !967
  %1 = add i64 %gcov_ctr.i, 1, !dbg !967
  store i64 %1, ptr @__llvm_gcov_ctr.107, align 8, !dbg !967
  %2 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !967
  %and.i = and i32 %2, -16384, !dbg !969
  %3 = inttoptr i32 %and.i to ptr, !dbg !970
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2, !dbg !971
  %4 = ptrtoint ptr %task to i32, !dbg !971
  call void @__asan_load4_noabort(i32 %4), !dbg !971
  %5 = load ptr, ptr %task, align 8, !dbg !971
  %.b255 = load i1, ptr @blk_tracer_enabled, align 1, !dbg !972
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cgid), !dbg !973
  %tobool1.not = icmp eq i64 %cgid, 0, !dbg !973
  %cond = select i1 %tobool1.not, i32 0, i32 8, !dbg !973
  %6 = ptrtoint ptr %bt to i32, !dbg !974
  call void @__asan_load4_noabort(i32 %6), !dbg !974
  %7 = load i32, ptr %bt, align 8, !dbg !974
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7), !dbg !974
  %cmp.not = icmp eq i32 %7, 2, !dbg !974
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !974

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !974
  br label %if.end, !dbg !974

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.125, align 16, !dbg !974
  %8 = add i64 %gcov_ctr, 1, !dbg !974
  store i64 %8, ptr @__llvm_gcov_ctr.125, align 16, !dbg !974
  br i1 %.b255, label %land.rhs.if.end_crit_edge, label %if.then, !dbg !974, !prof !316

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21, !dbg !974
  br label %if.end, !dbg !974

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21, !dbg !975
  %gcov_ctr180 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 1), align 8
  %9 = add i64 %gcov_ctr180, 1
  store i64 %9, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 1), align 8
  br label %cleanup, !dbg !976

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr.i258 = load i64, ptr @__llvm_gcov_ctr.180, align 8
  %10 = add i64 %gcov_ctr.i258, 1
  store i64 %10, ptr @__llvm_gcov_ctr.180, align 8
  %and.i259 = and i32 %op, 1, !dbg !977
  %arrayidx = getelementptr [2 x i32], ptr @ddir_act, i32 0, i32 %and.i259, !dbg !981
  %11 = ptrtoint ptr %arrayidx to i32, !dbg !981
  call void @__asan_load4_noabort(i32 %11), !dbg !981
  %12 = load i32, ptr %arrayidx, align 4, !dbg !981
  %and = shl i32 %op_flags, 8, !dbg !982
  %shl = and i32 %and, 524288, !dbg !982
  %shl13 = and i32 %and, 134217728, !dbg !983
  %and18 = shl i32 %op_flags, 16, !dbg !984
  %shl19 = and i32 %and18, 268435456, !dbg !984
  %and24 = and i32 %op_flags, 262144, !dbg !985
  %13 = shl i32 %op_flags, 14, !dbg !986
  %14 = and i32 %13, -2147483648, !dbg !986
  %or = or i32 %and24, %what, !dbg !987
  %or9 = or i32 %or, %shl, !dbg !988
  %or15 = or i32 %or9, %shl13, !dbg !989
  %or21 = or i32 %or15, %shl19, !dbg !990
  %or27 = or i32 %or21, %14, !dbg !991
  %or33257 = or i32 %or27, %12, !dbg !992
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %op), !dbg !993
  %cmp35 = icmp eq i32 %op, 3, !dbg !993
  br i1 %cmp35, label %if.end.if.end41.thread_crit_edge, label %lor.lhs.false, !dbg !994

if.end.if.end41.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !994
  br label %if.end41.thread, !dbg !994

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr181 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 2), align 16, !dbg !995
  %15 = add i64 %gcov_ctr181, 1, !dbg !995
  store i64 %15, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 2), align 16, !dbg !995
  %16 = zext i32 %op to i64, !dbg !996
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.304), !dbg !996
  switch i32 %op, label %lor.lhs.false.if.end46_crit_edge [
    i32 5, label %lor.lhs.false.if.end41.thread_crit_edge
    i32 2, label %if.then44
  ], !dbg !996

lor.lhs.false.if.end41.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !996
  br label %if.end41.thread, !dbg !996

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !996
  br label %if.end46, !dbg !996

if.end41.thread:                                  ; preds = %lor.lhs.false.if.end41.thread_crit_edge, %if.end.if.end41.thread_crit_edge
  %gcov_ctr182 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 3), align 8, !dbg !997
  %17 = add i64 %gcov_ctr182, 1, !dbg !997
  store i64 %17, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 3), align 8, !dbg !997
  %or40 = or i32 %or33257, 536870912, !dbg !997
  br label %if.end46, !dbg !998

if.then44:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !999
  %gcov_ctr183 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 4), align 16, !dbg !999
  %18 = add i64 %gcov_ctr183, 1, !dbg !999
  store i64 %18, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 4), align 16, !dbg !999
  %or45 = or i32 %or33257, 262144, !dbg !999
  br label %if.end46, !dbg !1000

if.end46:                                         ; preds = %if.then44, %if.end41.thread, %lor.lhs.false.if.end46_crit_edge
  %what.addr.1 = phi i32 [ %or45, %if.then44 ], [ %or40, %if.end41.thread ], [ %or33257, %lor.lhs.false.if.end46_crit_edge ], !dbg !975
  br i1 %tobool1.not, label %if.end46.if.end50_crit_edge, label %if.then48, !dbg !1001

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1001
  br label %if.end50, !dbg !1001

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1002
  %gcov_ctr184 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 5), align 8, !dbg !1002
  %19 = add i64 %gcov_ctr184, 1, !dbg !1002
  store i64 %19, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 5), align 8, !dbg !1002
  %or49 = or i32 %what.addr.1, 256, !dbg !1002
  br label %if.end50, !dbg !1003

if.end50:                                         ; preds = %if.then48, %if.end46.if.end50_crit_edge
  %what.addr.2 = phi i32 [ %or49, %if.then48 ], [ %what.addr.1, %if.end46.if.end50_crit_edge ], !dbg !975
  %pid51 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68, !dbg !1004
  %20 = ptrtoint ptr %pid51 to i32, !dbg !1004
  call void @__asan_load4_noabort(i32 %20), !dbg !1004
  %21 = load i32, ptr %pid51, align 8, !dbg !1004
  %act_mask.i = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 4, !dbg !1005
  %22 = ptrtoint ptr %act_mask.i to i32, !dbg !1005
  call void @__asan_load2_noabort(i32 %22), !dbg !1005
  %23 = load i16, ptr %act_mask.i, align 8, !dbg !1005
  %conv.i = zext i16 %23 to i32, !dbg !1008
  %shl.i = shl nuw i32 %conv.i, 16, !dbg !1009
  %and.i260 = and i32 %shl.i, %what.addr.2, !dbg !1010
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i260), !dbg !1011
  %cmp.i = icmp eq i32 %and.i260, 0, !dbg !1011
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1012

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1013
  %gcov_ctr.i261 = load i64, ptr @__llvm_gcov_ctr.260, align 16, !dbg !1013
  %24 = add i64 %gcov_ctr.i261, 1, !dbg !1013
  store i64 %24, ptr @__llvm_gcov_ctr.260, align 16, !dbg !1013
  br label %if.then54, !dbg !1013

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sector), !dbg !1014
  %tobool.not.i = icmp eq i64 %sector, 0, !dbg !1014
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i, !dbg !1015

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1015
  br label %if.end7.i, !dbg !1015

land.lhs.true.i:                                  ; preds = %if.end.i
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 1), align 8, !dbg !1016
  %25 = add i64 %gcov_ctr16.i, 1, !dbg !1016
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 1), align 8, !dbg !1016
  %start_lba.i = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 5, !dbg !1017
  %26 = ptrtoint ptr %start_lba.i to i32, !dbg !1017
  call void @__asan_load8_noabort(i32 %26), !dbg !1017
  %27 = load i64, ptr %start_lba.i, align 8, !dbg !1017
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %sector), !dbg !1018
  %cmp2.i = icmp ugt i64 %27, %sector, !dbg !1018
  br i1 %cmp2.i, label %land.lhs.true.i.if.then6.i_crit_edge, label %lor.lhs.false.i, !dbg !1019

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1019
  br label %if.then6.i, !dbg !1019

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 2), align 16, !dbg !1020
  %28 = add i64 %gcov_ctr17.i, 1, !dbg !1020
  store i64 %28, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 2), align 16, !dbg !1020
  %end_lba.i = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 6, !dbg !1021
  %29 = ptrtoint ptr %end_lba.i to i32, !dbg !1021
  call void @__asan_load8_noabort(i32 %29), !dbg !1021
  %30 = load i64, ptr %end_lba.i, align 8, !dbg !1021
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %sector), !dbg !1022
  %cmp4.i = icmp ult i64 %30, %sector, !dbg !1022
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.if.end7.i_crit_edge, !dbg !1014

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1014
  br label %if.end7.i, !dbg !1014

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1014
  br label %if.then6.i, !dbg !1014

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %land.lhs.true.i.if.then6.i_crit_edge
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 3), align 8, !dbg !1023
  %31 = add i64 %gcov_ctr18.i, 1, !dbg !1023
  store i64 %31, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 3), align 8, !dbg !1023
  br label %if.then54, !dbg !1023

if.end7.i:                                        ; preds = %lor.lhs.false.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %pid8.i = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 7, !dbg !1024
  %32 = ptrtoint ptr %pid8.i to i32, !dbg !1024
  call void @__asan_load4_noabort(i32 %32), !dbg !1024
  %33 = load i32, ptr %pid8.i, align 8, !dbg !1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33), !dbg !1025
  %tobool9.not.i = icmp eq i32 %33, 0, !dbg !1025
  br i1 %tobool9.not.i, label %if.end7.i.if.end55_crit_edge, label %land.lhs.true10.i, !dbg !1026

if.end7.i.if.end55_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1026
  br label %if.end55, !dbg !1026

land.lhs.true10.i:                                ; preds = %if.end7.i
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 4), align 16, !dbg !1027
  %34 = add i64 %gcov_ctr19.i, 1, !dbg !1027
  store i64 %34, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 4), align 16, !dbg !1027
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %21), !dbg !1028
  %cmp12.not.i = icmp eq i32 %33, %21, !dbg !1028
  br i1 %cmp12.not.i, label %land.lhs.true10.i.if.end55_crit_edge, label %if.then14.i, !dbg !1025

land.lhs.true10.i.if.end55_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1025
  br label %if.end55, !dbg !1025

if.then14.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1029
  %gcov_ctr20.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 5), align 8, !dbg !1029
  %35 = add i64 %gcov_ctr20.i, 1, !dbg !1029
  store i64 %35, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 5), align 8, !dbg !1029
  br label %if.then54, !dbg !1029

if.then54:                                        ; preds = %if.then14.i, %if.then6.i, %if.then.i
  %gcov_ctr185 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 6), align 16
  %36 = add i64 %gcov_ctr185, 1
  store i64 %36, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 6), align 16
  br label %cleanup, !dbg !1030

if.end55:                                         ; preds = %land.lhs.true10.i.if.end55_crit_edge, %if.end7.i.if.end55_crit_edge
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 6), align 16, !dbg !1031
  %37 = add i64 %gcov_ctr21.i, 1, !dbg !1031
  store i64 %37, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.260, i32 0, i32 6), align 16, !dbg !1031
  %cpu57 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3, !dbg !1032
  %38 = ptrtoint ptr %cpu57 to i32, !dbg !1032
  call void @__asan_load4_noabort(i32 %38), !dbg !1032
  %39 = load i32, ptr %cpu57, align 4, !dbg !1032
  br i1 %.b255, label %if.then59, label %if.end70, !dbg !1033

if.then59:                                        ; preds = %if.end55
  %40 = ptrtoint ptr %task to i32, !dbg !1034
  call void @__asan_load4_noabort(i32 %40), !dbg !1034
  %41 = load ptr, ptr %task, align 8, !dbg !1034
  tail call void @tracing_record_cmdline(ptr noundef %41) #22, !dbg !1035
  %42 = load ptr, ptr @blk_tr, align 4, !dbg !1036
  %buffer62 = getelementptr inbounds %struct.trace_array, ptr %42, i32 0, i32 2, i32 1, !dbg !1037
  %43 = ptrtoint ptr %buffer62 to i32, !dbg !1037
  call void @__asan_load4_noabort(i32 %43), !dbg !1037
  %44 = load ptr, ptr %buffer62, align 4, !dbg !1037
  %gcov_ctr.i262 = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %45 = add i64 %gcov_ctr.i262, 1
  store i64 %45, ptr @__llvm_gcov_ctr.133, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %46 = add i64 %gcov_ctr.i.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.106, align 8
  %call2.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef 0) #22, !dbg !1038
  %add = add i32 %cond, %pdu_len, !dbg !1040
  %add64 = add i32 %add, 48, !dbg !1041
  %call65 = tail call ptr @trace_buffer_lock_reserve(ptr noundef %44, i32 noundef 13, i32 noundef %add64, i32 noundef %call2.i) #22, !dbg !1042
  %tobool66.not = icmp eq ptr %call65, null, !dbg !1043
  br i1 %tobool66.not, label %if.then67, label %if.end68, !dbg !1044

if.then67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #21, !dbg !975
  %gcov_ctr186 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 7), align 8
  %47 = add i64 %gcov_ctr186, 1
  store i64 %47, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 7), align 8
  br label %cleanup, !dbg !1045

if.end68:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1046
  %call69 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %call65) #22, !dbg !1046
  br label %record_it, !dbg !1047

if.end70:                                         ; preds = %if.end55
  %btrace_seq = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 30, !dbg !1048
  %48 = ptrtoint ptr %btrace_seq to i32, !dbg !1048
  call void @__asan_load4_noabort(i32 %48), !dbg !1048
  %49 = load i32, ptr %btrace_seq, align 128, !dbg !1048
  %50 = load i32, ptr @blktrace_seq, align 4, !dbg !1048
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %50), !dbg !1048
  %cmp71.not = icmp eq i32 %49, %50, !dbg !1048
  br i1 %cmp71.not, label %if.end70.do.body81_crit_edge, label %if.then79, !dbg !1048, !prof !316

if.end70.do.body81_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1048
  br label %do.body81, !dbg !1048

if.then79:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1049
  %gcov_ctr187 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 8), align 16, !dbg !1049
  %51 = add i64 %gcov_ctr187, 1, !dbg !1049
  store i64 %51, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 8), align 16, !dbg !1049
  tail call fastcc void @trace_note_tsk(ptr noundef %5), !dbg !1050
  br label %do.body81, !dbg !1050

do.body81:                                        ; preds = %if.then79, %if.end70.do.body81_crit_edge
  %gcov_ctr.i263 = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %52 = add i64 %gcov_ctr.i263, 1
  store i64 %52, ptr @__llvm_gcov_ctr.105, align 8
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !dbg !1051, !srcloc !327
  %gcov_ctr.i264 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %54 = add i64 %gcov_ctr.i264, 1
  store i64 %54, ptr @__llvm_gcov_ctr.106, align 8
  %and.i265 = and i32 %53, 128, !dbg !1053
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265), !dbg !1055
  %tobool92.not = icmp eq i32 %and.i265, 0, !dbg !1055
  br i1 %tobool92.not, label %if.then93, label %do.body81.do.end96_crit_edge, !dbg !1055

do.body81.do.end96_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1055
  br label %do.end96, !dbg !1055

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1055
  %gcov_ctr188 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 9), align 8, !dbg !1055
  %55 = add i64 %gcov_ctr188, 1, !dbg !1055
  store i64 %55, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 9), align 8, !dbg !1055
  tail call void @trace_hardirqs_off() #22, !dbg !1055
  br label %do.end96, !dbg !1055

do.end96:                                         ; preds = %if.then93, %do.body81.do.end96_crit_edge
  %rchan = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 1, !dbg !1056
  %56 = ptrtoint ptr %rchan to i32, !dbg !1056
  call void @__asan_load4_noabort(i32 %56), !dbg !1056
  %57 = load ptr, ptr %rchan, align 4, !dbg !1056
  %add97 = add i32 %cond, %pdu_len, !dbg !1057
  %add98 = add i32 %add97, 48, !dbg !1058
  %gcov_ctr.i.i266 = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %58 = add i64 %gcov_ctr.i.i266, 1
  store i64 %58, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1059
  %59 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1059
  store i64 %59, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1059
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1063
  %60 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1063
  store i64 %60, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1063
  %61 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1063
  %and.i.i.i.i = and i32 %61, -16384, !dbg !1065
  %62 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !1066
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1, !dbg !1067
  %63 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !1068
  call void @__asan_load4_noabort(i32 %63), !dbg !1068
  %64 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !1068
  %add.i.i = add i32 %64, 1, !dbg !1068
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !1068
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1069, !srcloc !424
  %buf5.i = getelementptr inbounds %struct.rchan, ptr %57, i32 0, i32 8, !dbg !1069
  %65 = ptrtoint ptr %buf5.i to i32, !dbg !1069
  call void @__asan_load4_noabort(i32 %65), !dbg !1069
  %66 = load ptr, ptr %buf5.i, align 4, !dbg !1069
  %67 = ptrtoint ptr %66 to i32, !dbg !1069
  %gcov_ctr.i40.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1070
  %68 = add i64 %gcov_ctr.i40.i, 1, !dbg !1070
  store i64 %68, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1070
  %69 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1070
  %and.i.i = and i32 %69, -16384, !dbg !1072
  %70 = inttoptr i32 %and.i.i to ptr, !dbg !1073
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3, !dbg !1069
  %71 = ptrtoint ptr %cpu.i to i32, !dbg !1069
  call void @__asan_load4_noabort(i32 %71), !dbg !1069
  %72 = load i32, ptr %cpu.i, align 4, !dbg !1069
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72, !dbg !1069
  %73 = ptrtoint ptr %arrayidx.i to i32, !dbg !1069
  call void @__asan_load4_noabort(i32 %73), !dbg !1069
  %74 = load i32, ptr %arrayidx.i, align 4, !dbg !1069
  %add.i = add i32 %74, %67, !dbg !1069
  %75 = inttoptr i32 %add.i to ptr, !dbg !1069
  %76 = ptrtoint ptr %75 to i32, !dbg !1074
  call void @__asan_load4_noabort(i32 %76), !dbg !1074
  %77 = load ptr, ptr %75, align 4, !dbg !1074
  %offset.i = getelementptr inbounds %struct.rchan_buf, ptr %77, i32 0, i32 2, !dbg !1075
  %78 = ptrtoint ptr %offset.i to i32, !dbg !1075
  call void @__asan_load4_noabort(i32 %78), !dbg !1075
  %79 = load i32, ptr %offset.i, align 8, !dbg !1075
  %add7.i = add i32 %79, %add98, !dbg !1075
  %chan8.i = getelementptr inbounds %struct.rchan_buf, ptr %77, i32 0, i32 5, !dbg !1075
  %80 = ptrtoint ptr %chan8.i to i32, !dbg !1075
  call void @__asan_load4_noabort(i32 %80), !dbg !1075
  %81 = load ptr, ptr %chan8.i, align 4, !dbg !1075
  %subbuf_size.i = getelementptr inbounds %struct.rchan, ptr %81, i32 0, i32 1, !dbg !1075
  %82 = ptrtoint ptr %subbuf_size.i to i32, !dbg !1075
  call void @__asan_load4_noabort(i32 %82), !dbg !1075
  %83 = load i32, ptr %subbuf_size.i, align 4, !dbg !1075
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %83), !dbg !1075
  %cmp.i267 = icmp ugt i32 %add7.i, %83, !dbg !1075
  br i1 %cmp.i267, label %if.then.i268, label %do.end96.if.end13.i_crit_edge, !dbg !1075, !prof !368

do.end96.if.end13.i_crit_edge:                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1075
  br label %if.end13.i, !dbg !1075

if.then.i268:                                     ; preds = %do.end96
  %call10.i = tail call i32 @relay_switch_subbuf(ptr noundef %77, i32 noundef %add98) #22, !dbg !1076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i), !dbg !1077
  %tobool11.not.i = icmp eq i32 %call10.i, 0, !dbg !1077
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end.i270, !dbg !1078

if.then12.i:                                      ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1079
  %gcov_ctr.i269 = load i64, ptr @__llvm_gcov_ctr.134, align 16, !dbg !1079
  %84 = add i64 %gcov_ctr.i269, 1, !dbg !1079
  store i64 %84, ptr @__llvm_gcov_ctr.134, align 16, !dbg !1079
  br label %relay_reserve.exit, !dbg !1079

if.end.i270:                                      ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1080
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !1080
  %85 = add i64 %gcov_ctr24.i, 1, !dbg !1080
  store i64 %85, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !1080
  br label %if.end13.i, !dbg !1080

if.end13.i:                                       ; preds = %if.end.i270, %do.end96.if.end13.i_crit_edge
  %length.addr.0.i = phi i32 [ %call10.i, %if.end.i270 ], [ %add98, %do.end96.if.end13.i_crit_edge ]
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !1081
  %86 = add i64 %gcov_ctr25.i, 1, !dbg !1081
  store i64 %86, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !1081
  %data.i = getelementptr inbounds %struct.rchan_buf, ptr %77, i32 0, i32 1, !dbg !1082
  %87 = ptrtoint ptr %data.i to i32, !dbg !1082
  call void @__asan_load4_noabort(i32 %87), !dbg !1082
  %88 = load ptr, ptr %data.i, align 4, !dbg !1082
  %89 = ptrtoint ptr %offset.i to i32, !dbg !1083
  call void @__asan_load4_noabort(i32 %89), !dbg !1083
  %90 = load i32, ptr %offset.i, align 8, !dbg !1083
  %add.ptr.i = getelementptr i8, ptr %88, i32 %90, !dbg !1084
  %add16.i = add i32 %90, %length.addr.0.i, !dbg !1085
  store i32 %add16.i, ptr %offset.i, align 8, !dbg !1085
  br label %relay_reserve.exit, !dbg !1086

relay_reserve.exit:                               ; preds = %if.end13.i, %if.then12.i
  %reserved.0.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ null, %if.then12.i ], !dbg !1087
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1088, !srcloc !444
  %gcov_ctr.i35.i = load i64, ptr @__llvm_gcov_ctr.138, align 8
  %91 = add i64 %gcov_ctr.i35.i, 1
  store i64 %91, ptr @__llvm_gcov_ctr.138, align 8
  %gcov_ctr.i.i36.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1089
  %92 = add i64 %gcov_ctr.i.i36.i, 1, !dbg !1089
  store i64 %92, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1089
  %gcov_ctr.i.i.i37.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1092
  %93 = add i64 %gcov_ctr.i.i.i37.i, 1, !dbg !1092
  store i64 %93, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1092
  %94 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1092
  %and.i.i.i38.i = and i32 %94, -16384, !dbg !1094
  %95 = inttoptr i32 %and.i.i.i38.i to ptr, !dbg !1095
  %preempt_count.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1, !dbg !1096
  %96 = ptrtoint ptr %preempt_count.i.i39.i to i32, !dbg !1097
  call void @__asan_load4_noabort(i32 %96), !dbg !1097
  %97 = load volatile i32, ptr %preempt_count.i.i39.i, align 4, !dbg !1097
  %sub.i.i = add i32 %97, -1, !dbg !1097
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i39.i, align 4, !dbg !1097
  %tobool100.not = icmp eq ptr %reserved.0.i, null, !dbg !1098
  br i1 %tobool100.not, label %relay_reserve.exit.do.body134_crit_edge, label %do.body102, !dbg !1098

relay_reserve.exit.do.body134_crit_edge:          ; preds = %relay_reserve.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1098
  br label %do.body134, !dbg !1098

do.body102:                                       ; preds = %relay_reserve.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1099
  %gcov_ctr189 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 10), align 16, !dbg !1099
  %98 = add i64 %gcov_ctr189, 1, !dbg !1099
  store i64 %98, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 10), align 16, !dbg !1099
  %sequence106 = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 2, !dbg !1099
  %99 = ptrtoint ptr %sequence106 to i32, !dbg !1099
  call void @__asan_load4_noabort(i32 %99), !dbg !1099
  %100 = load ptr, ptr %sequence106, align 8, !dbg !1099
  %101 = ptrtoint ptr %100 to i32, !dbg !1099
  %arrayidx108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39, !dbg !1099
  %102 = ptrtoint ptr %arrayidx108 to i32, !dbg !1099
  call void @__asan_load4_noabort(i32 %102), !dbg !1099
  %103 = load i32, ptr %arrayidx108, align 4, !dbg !1099
  %add109 = add i32 %103, %101, !dbg !1099
  %104 = inttoptr i32 %add109 to ptr, !dbg !1099
  %105 = ptrtoint ptr %reserved.0.i to i32, !dbg !1100
  call void @__asan_store4_noabort(i32 %105), !dbg !1100
  store i32 1700885511, ptr %reserved.0.i, align 8, !dbg !1100
  %106 = ptrtoint ptr %104 to i32, !dbg !1101
  call void @__asan_load4_noabort(i32 %106), !dbg !1101
  %107 = load i32, ptr %104, align 4, !dbg !1101
  %inc = add i32 %107, 1, !dbg !1101
  store i32 %inc, ptr %104, align 4, !dbg !1101
  %sequence110 = getelementptr inbounds %struct.blk_io_trace, ptr %reserved.0.i, i32 0, i32 1, !dbg !1102
  %108 = ptrtoint ptr %sequence110 to i32, !dbg !1103
  call void @__asan_store4_noabort(i32 %108), !dbg !1103
  store i32 %inc, ptr %sequence110, align 4, !dbg !1103
  %call111 = tail call i64 @ktime_get() #22, !dbg !1104
  %gcov_ctr.i271 = load i64, ptr @__llvm_gcov_ctr.135, align 8
  %109 = add i64 %gcov_ctr.i271, 1
  store i64 %109, ptr @__llvm_gcov_ctr.135, align 8
  %time = getelementptr inbounds %struct.blk_io_trace, ptr %reserved.0.i, i32 0, i32 2, !dbg !1105
  %110 = ptrtoint ptr %time to i32, !dbg !1106
  call void @__asan_store8_noabort(i32 %110), !dbg !1106
  store i64 %call111, ptr %time, align 8, !dbg !1106
  br label %record_it, !dbg !1107

record_it:                                        ; preds = %do.body102, %if.end68
  %add119.pre-phi = phi i32 [ %add97, %do.body102 ], [ %add, %if.end68 ], !dbg !1108
  %trace_ctx.0 = phi i32 [ 0, %do.body102 ], [ %call2.i, %if.end68 ], !dbg !975
  %flags.0 = phi i32 [ %53, %do.body102 ], [ 0, %if.end68 ], !dbg !975
  %t.0 = phi ptr [ %reserved.0.i, %do.body102 ], [ %call69, %if.end68 ], !dbg !975
  %buffer.0 = phi ptr [ null, %do.body102 ], [ %44, %if.end68 ], !dbg !975
  %event.0 = phi ptr [ null, %do.body102 ], [ %call65, %if.end68 ], !dbg !975
  %cpu113 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 8, !dbg !1109
  %111 = ptrtoint ptr %cpu113 to i32, !dbg !1110
  call void @__asan_store4_noabort(i32 %111), !dbg !1110
  store i32 %39, ptr %cpu113, align 8, !dbg !1110
  %pid114 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 6, !dbg !1111
  %112 = ptrtoint ptr %pid114 to i32, !dbg !1112
  call void @__asan_store4_noabort(i32 %112), !dbg !1112
  store i32 %21, ptr %pid114, align 8, !dbg !1112
  %sector115 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 3, !dbg !1113
  %113 = ptrtoint ptr %sector115 to i32, !dbg !1114
  call void @__asan_store8_noabort(i32 %113), !dbg !1114
  store i64 %sector, ptr %sector115, align 8, !dbg !1114
  %bytes116 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 4, !dbg !1115
  %114 = ptrtoint ptr %bytes116 to i32, !dbg !1116
  call void @__asan_store4_noabort(i32 %114), !dbg !1116
  store i32 %bytes, ptr %bytes116, align 8, !dbg !1116
  %action = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 5, !dbg !1117
  %115 = ptrtoint ptr %action to i32, !dbg !1118
  call void @__asan_store4_noabort(i32 %115), !dbg !1118
  store i32 %what.addr.2, ptr %action, align 4, !dbg !1118
  %dev = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 8, !dbg !1119
  %116 = ptrtoint ptr %dev to i32, !dbg !1119
  call void @__asan_load4_noabort(i32 %116), !dbg !1119
  %117 = load i32, ptr %dev, align 4, !dbg !1119
  %device = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 7, !dbg !1120
  %118 = ptrtoint ptr %device to i32, !dbg !1121
  call void @__asan_store4_noabort(i32 %118), !dbg !1121
  store i32 %117, ptr %device, align 4, !dbg !1121
  %conv117 = trunc i32 %error to i16, !dbg !1122
  %error118 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 9, !dbg !1123
  %119 = ptrtoint ptr %error118 to i32, !dbg !1124
  call void @__asan_store2_noabort(i32 %119), !dbg !1124
  store i16 %conv117, ptr %error118, align 4, !dbg !1124
  %conv120 = trunc i32 %add119.pre-phi to i16, !dbg !1125
  %pdu_len121 = getelementptr inbounds %struct.blk_io_trace, ptr %t.0, i32 0, i32 10, !dbg !1126
  %120 = ptrtoint ptr %pdu_len121 to i32, !dbg !1127
  call void @__asan_store2_noabort(i32 %120), !dbg !1127
  store i16 %conv120, ptr %pdu_len121, align 2, !dbg !1127
  br i1 %tobool1.not, label %record_it.if.end124_crit_edge, label %if.then123, !dbg !1128

record_it.if.end124_crit_edge:                    ; preds = %record_it
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1128
  br label %if.end124, !dbg !1128

if.then123:                                       ; preds = %record_it
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1129
  %gcov_ctr190 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 11), align 8, !dbg !1129
  %121 = add i64 %gcov_ctr190, 1, !dbg !1129
  store i64 %121, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 11), align 8, !dbg !1129
  %add.ptr = getelementptr i8, ptr %t.0, i32 48, !dbg !1130
  %122 = call ptr @memcpy(ptr %add.ptr, ptr %cgid.addr, i32 %cond), !dbg !1131
  br label %if.end124, !dbg !1131

if.end124:                                        ; preds = %if.then123, %record_it.if.end124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdu_len), !dbg !1132
  %tobool125.not = icmp eq i32 %pdu_len, 0, !dbg !1132
  br i1 %tobool125.not, label %if.end124.if.end129_crit_edge, label %if.then126, !dbg !1132

if.end124.if.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1132
  br label %if.end129, !dbg !1132

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1133
  %gcov_ctr191 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 12), align 16, !dbg !1133
  %123 = add i64 %gcov_ctr191, 1, !dbg !1133
  store i64 %123, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 12), align 16, !dbg !1133
  %add.ptr127 = getelementptr i8, ptr %t.0, i32 48, !dbg !1134
  %add.ptr128 = getelementptr i8, ptr %add.ptr127, i32 %cond, !dbg !1135
  %124 = call ptr @memcpy(ptr %add.ptr128, ptr %pdu_data, i32 %pdu_len), !dbg !1136
  br label %if.end129, !dbg !1136

if.end129:                                        ; preds = %if.then126, %if.end124.if.end129_crit_edge
  br i1 %.b255, label %if.then131, label %if.end132, !dbg !1137

if.then131:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1138
  %gcov_ctr192 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 13), align 8, !dbg !1138
  %125 = add i64 %gcov_ctr192, 1, !dbg !1138
  store i64 %125, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 13), align 8, !dbg !1138
  %126 = load ptr, ptr @blk_tr, align 4, !dbg !1138
  %gcov_ctr.i272 = load i64, ptr @__llvm_gcov_ctr.136, align 8
  %127 = add i64 %gcov_ctr.i272, 1
  store i64 %127, ptr @__llvm_gcov_ctr.136, align 8
  tail call void @trace_buffer_unlock_commit_regs(ptr noundef %126, ptr noundef %buffer.0, ptr noundef %event.0, i32 noundef %trace_ctx.0, ptr noundef null) #22, !dbg !1139
  br label %cleanup, !dbg !1141

if.end132:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1142
  %gcov_ctr193 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 14), align 16, !dbg !1142
  %128 = add i64 %gcov_ctr193, 1, !dbg !1142
  store i64 %128, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 14), align 16, !dbg !1142
  br label %do.body134, !dbg !1142

do.body134:                                       ; preds = %if.end132, %relay_reserve.exit.do.body134_crit_edge
  %flags.1 = phi i32 [ %flags.0, %if.end132 ], [ %53, %relay_reserve.exit.do.body134_crit_edge ], !dbg !975
  %gcov_ctr.i273 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %129 = add i64 %gcov_ctr.i273, 1
  store i64 %129, ptr @__llvm_gcov_ctr.106, align 8
  %and.i274 = and i32 %flags.1, 128, !dbg !1143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274), !dbg !1145
  %tobool142.not = icmp eq i32 %and.i274, 0, !dbg !1145
  br i1 %tobool142.not, label %if.then143, label %do.body134.do.body145_crit_edge, !dbg !1145

do.body134.do.body145_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1145
  br label %do.body145, !dbg !1145

if.then143:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1145
  %gcov_ctr194 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 15), align 8, !dbg !1145
  %130 = add i64 %gcov_ctr194, 1, !dbg !1145
  store i64 %130, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 15), align 8, !dbg !1145
  tail call void @trace_hardirqs_on() #22, !dbg !1145
  br label %do.body145, !dbg !1145

do.body145:                                       ; preds = %if.then143, %do.body134.do.body145_crit_edge
  %gcov_ctr.i275 = load i64, ptr @__llvm_gcov_ctr.110, align 8, !dbg !1146
  %131 = add i64 %gcov_ctr.i275, 1, !dbg !1146
  store i64 %131, ptr @__llvm_gcov_ctr.110, align 8, !dbg !1146
  %gcov_ctr.i.i276 = load i64, ptr @__llvm_gcov_ctr.140, align 8
  %132 = add i64 %gcov_ctr.i.i276, 1
  store i64 %132, ptr @__llvm_gcov_ctr.140, align 8
  %133 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !dbg !1148, !srcloc !365
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %134 = add i64 %gcov_ctr.i2.i, 1
  store i64 %134, ptr @__llvm_gcov_ctr.106, align 8
  %and.i.i277 = and i32 %133, 128, !dbg !1150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277), !dbg !1145
  %tobool153.not = icmp eq i32 %and.i.i277, 0, !dbg !1145
  br i1 %tobool153.not, label %if.then162, label %do.body145.do.end165_crit_edge, !dbg !1145, !prof !368

do.body145.do.end165_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1145
  br label %do.end165, !dbg !1145

if.then162:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1145
  %gcov_ctr195 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 16), align 16, !dbg !1145
  %135 = add i64 %gcov_ctr195, 1, !dbg !1145
  store i64 %135, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 16), align 16, !dbg !1145
  tail call void @warn_bogus_irq_restore() #22, !dbg !1145
  br label %do.end165, !dbg !1145

do.end165:                                        ; preds = %if.then162, %do.body145.do.end165_crit_edge
  %gcov_ctr.i278 = load i64, ptr @__llvm_gcov_ctr.111, align 8
  %136 = add i64 %gcov_ctr.i278, 1
  store i64 %136, ptr @__llvm_gcov_ctr.111, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.1) #22, !dbg !1152, !srcloc !372
  %gcov_ctr196 = load i64, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 17), align 8, !dbg !1154
  %137 = add i64 %gcov_ctr196, 1, !dbg !1154
  store i64 %137, ptr getelementptr inbounds ([19 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 17), align 8, !dbg !1154
  br label %cleanup, !dbg !1154

cleanup:                                          ; preds = %do.end165, %if.then131, %if.then67, %if.then54, %if.then
  ret void, !dbg !1154
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @blk_rq_trace_sector(ptr nocapture noundef readonly %rq) unnamed_addr #5 align 64 !dbg !1155 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1157
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.185, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.185, align 8
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3, !dbg !1158
  %1 = ptrtoint ptr %cmd_flags.i to i32, !dbg !1158
  call void @__asan_load4_noabort(i32 %1), !dbg !1158
  %2 = load i32, ptr %cmd_flags.i, align 4, !dbg !1158
  %and.i = and i32 %2, 255, !dbg !1158
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.186, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %and.i), !dbg !1161
  %cmp.i.i = icmp eq i32 %and.i, 34, !dbg !1161
  br i1 %cmp.i.i, label %entry.if.then_crit_edge, label %blk_rq_is_passthrough.exit, !dbg !1164

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1164
  br label %if.then, !dbg !1164

blk_rq_is_passthrough.exit:                       ; preds = %entry
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.186, i32 0, i32 1), align 8, !dbg !1165
  %4 = add i64 %gcov_ctr2.i.i, 1, !dbg !1165
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.186, i32 0, i32 1), align 8, !dbg !1165
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %and.i), !dbg !1166
  %cmp1.i.i = icmp eq i32 %and.i, 35, !dbg !1166
  br i1 %cmp1.i.i, label %blk_rq_is_passthrough.exit.if.then_crit_edge, label %lor.lhs.false, !dbg !1167

blk_rq_is_passthrough.exit.if.then_crit_edge:     ; preds = %blk_rq_is_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1167
  br label %if.then, !dbg !1167

lor.lhs.false:                                    ; preds = %blk_rq_is_passthrough.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.126, align 16, !dbg !1168
  %5 = add i64 %gcov_ctr, 1, !dbg !1168
  store i64 %5, ptr @__llvm_gcov_ctr.126, align 16, !dbg !1168
  %gcov_ctr.i7 = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %6 = add i64 %gcov_ctr.i7, 1
  store i64 %6, ptr @__llvm_gcov_ctr.179, align 8
  %__sector.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9, !dbg !1169
  %7 = ptrtoint ptr %__sector.i to i32, !dbg !1169
  call void @__asan_load8_noabort(i32 %7), !dbg !1169
  %8 = load i64, ptr %__sector.i, align 8, !dbg !1169
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8), !dbg !1172
  %cmp = icmp eq i64 %8, -1, !dbg !1172
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end, !dbg !1173

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1173
  br label %if.then, !dbg !1173

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %blk_rq_is_passthrough.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 2), align 16, !dbg !1174
  %9 = add i64 %gcov_ctr4, 1, !dbg !1174
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 2), align 16, !dbg !1174
  br label %return, !dbg !1174

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1175
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 1), align 8, !dbg !1175
  %10 = add i64 %gcov_ctr3, 1, !dbg !1175
  store i64 %10, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 1), align 8, !dbg !1175
  %11 = add i64 %gcov_ctr.i7, 2
  store i64 %11, ptr @__llvm_gcov_ctr.179, align 8
  br label %return, !dbg !1176

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %8, %if.end ], !dbg !1177
  ret i64 %retval.0, !dbg !1178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @blk_trace_request_get_cgid(ptr nocapture noundef readonly %rq) unnamed_addr #6 align 64 !dbg !1179 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1180
  %bio = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10, !dbg !1181
  %0 = ptrtoint ptr %bio to i32, !dbg !1181
  call void @__asan_load4_noabort(i32 %0), !dbg !1181
  %1 = load ptr, ptr %bio, align 8, !dbg !1181
  %tobool.not = icmp eq ptr %1, null, !dbg !1182
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1184
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1184
  %2 = add i64 %gcov_ctr, 1, !dbg !1184
  store i64 %2, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1184
  br label %return, !dbg !1184

if.end:                                           ; preds = %entry
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1185
  %3 = add i64 %gcov_ctr2, 1, !dbg !1185
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1185
  %4 = ptrtoint ptr %rq to i32, !dbg !1186
  call void @__asan_load4_noabort(i32 %4), !dbg !1186
  %5 = load ptr, ptr %rq, align 8, !dbg !1186
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %6 = add i64 %gcov_ctr.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 46, !dbg !1187
  %7 = ptrtoint ptr %blk_trace.i to i32, !dbg !1187
  call void @__asan_load4_noabort(i32 %7), !dbg !1187
  %8 = load ptr, ptr %blk_trace.i, align 8, !dbg !1187
  %tobool.not.i = icmp eq ptr %8, null, !dbg !1190
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %lor.lhs.false.i, !dbg !1191

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1191
  br label %return, !dbg !1191

lor.lhs.false.i:                                  ; preds = %if.end
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1192
  %9 = add i64 %gcov_ctr6.i, 1, !dbg !1192
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1192
  %10 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1192
  %and.i = and i32 %10, 2, !dbg !1193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1193
  %tobool1.not.i = icmp eq i32 %and.i, 0, !dbg !1193
  br i1 %tobool1.not.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i, !dbg !1194

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1194
  br label %return, !dbg !1194

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bi_blkg.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 12, !dbg !1195
  %11 = ptrtoint ptr %bi_blkg.i to i32, !dbg !1195
  call void @__asan_load4_noabort(i32 %11), !dbg !1195
  %12 = load ptr, ptr %bi_blkg.i, align 8, !dbg !1195
  %tobool2.not.i = icmp eq ptr %12, null, !dbg !1196
  br i1 %tobool2.not.i, label %if.then3.i, label %bio_blkcg.exit.i, !dbg !1197

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1198
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1198
  %13 = add i64 %gcov_ctr7.i, 1, !dbg !1198
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1198
  br label %return, !dbg !1198

bio_blkcg.exit.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1199
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1199
  %14 = add i64 %gcov_ctr8.i, 1, !dbg !1199
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1199
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1200
  %15 = add i64 %gcov_ctr.i.i, 1, !dbg !1200
  store i64 %15, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1200
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1204
  %16 = add i64 %gcov_ctr3.i.i, 1, !dbg !1204
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1204
  %blkcg.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %12, i32 0, i32 3, !dbg !1205
  %17 = ptrtoint ptr %blkcg.i.i to i32, !dbg !1205
  call void @__asan_load4_noabort(i32 %17), !dbg !1205
  %18 = load ptr, ptr %blkcg.i.i, align 4, !dbg !1205
  %19 = ptrtoint ptr %18 to i32, !dbg !1206
  call void @__asan_load4_noabort(i32 %19), !dbg !1206
  %20 = load ptr, ptr %18, align 8, !dbg !1206
  %gcov_ctr.i10.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %21 = add i64 %gcov_ctr.i10.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %20, i32 0, i32 11, !dbg !1207
  %22 = ptrtoint ptr %kn.i.i to i32, !dbg !1207
  call void @__asan_load4_noabort(i32 %22), !dbg !1207
  %23 = load ptr, ptr %kn.i.i, align 8, !dbg !1207
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %23, i32 0, i32 10, !dbg !1209
  %24 = ptrtoint ptr %id.i.i to i32, !dbg !1209
  call void @__asan_load8_noabort(i32 %24), !dbg !1209
  %25 = load i64, ptr %id.i.i, align 8, !dbg !1209
  br label %return, !dbg !1210

return:                                           ; preds = %bio_blkcg.exit.i, %if.then3.i, %lor.lhs.false.i.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %25, %bio_blkcg.exit.i ], [ 0, %if.then3.i ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ], !dbg !1211
  ret i64 %retval.0, !dbg !1212
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_blk_tracer() #7 section ".init.text" align 64 !dbg !1213 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1214
  %call = tail call i32 @register_trace_event(ptr noundef nonnull @trace_blk_event) #22, !dbg !1215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1215
  %tobool.not = icmp eq i32 %call, 0, !dbg !1215
  br i1 %tobool.not, label %do.end, label %if.end, !dbg !1216

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1217
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.129, align 16, !dbg !1217
  %0 = add i64 %gcov_ctr, 1, !dbg !1217
  store i64 %0, ptr @__llvm_gcov_ctr.129, align 16, !dbg !1217
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #24, !dbg !1217
  br label %return, !dbg !1218

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_tracer(ptr noundef nonnull @blk_tracer) #22, !dbg !1219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1220
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1220
  br i1 %cmp.not, label %if.end9, label %if.then3, !dbg !1219

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1221
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1221
  %1 = add i64 %gcov_ctr10, 1, !dbg !1221
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1221
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #24, !dbg !1221
  %call8 = tail call i32 @unregister_trace_event(ptr noundef nonnull @trace_blk_event) #22, !dbg !1222
  br label %return, !dbg !1223

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1224
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 2), align 16, !dbg !1224
  %2 = add i64 %gcov_ctr11, 1, !dbg !1224
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 2), align 16, !dbg !1224
  br label %return, !dbg !1224

return:                                           ; preds = %if.end9, %if.then3, %do.end
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end9 ], [ 1, %do.end ], !dbg !1225
  ret i32 %retval.0, !dbg !1226
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_trace_init_sysfs(ptr noundef %dev) local_unnamed_addr #0 align 64 !dbg !1227 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1228
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.130, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.130, align 8
  %call = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @blk_trace_attr_group) #22, !dbg !1229
  ret i32 %call, !dbg !1230
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_trace_remove_sysfs(ptr noundef %dev) local_unnamed_addr #0 align 64 !dbg !1231 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1232
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.131, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.131, align 8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @blk_trace_attr_group) #22, !dbg !1233
  ret void, !dbg !1234
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @blk_fill_rwbs(ptr nocapture noundef writeonly %rwbs, i32 noundef %op) #6 align 64 !dbg !1235 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1236
  %conv = zext i32 %op to i64, !dbg !1237
  %and = and i64 %conv, 262144, !dbg !1238
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and), !dbg !1238
  %tobool.not = icmp eq i64 %and, 0, !dbg !1238
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !1237

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1237
  br label %if.end, !dbg !1237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1239
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.132, align 16, !dbg !1239
  %0 = add i64 %gcov_ctr, 1, !dbg !1239
  store i64 %0, ptr @__llvm_gcov_ctr.132, align 16, !dbg !1239
  %1 = ptrtoint ptr %rwbs to i32, !dbg !1240
  call void @__asan_store1_noabort(i32 %1), !dbg !1240
  store i8 70, ptr %rwbs, align 1, !dbg !1240
  br label %if.end, !dbg !1239

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ], !dbg !1241
  %trunc = trunc i32 %op to i8, !dbg !1242
  %2 = zext i8 %trunc to i64, !dbg !1242
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.305), !dbg !1242
  switch i8 %trunc, label %sw.default [
    i8 1, label %if.end.sw.bb_crit_edge
    i8 7, label %if.end.sw.bb_crit_edge88
    i8 3, label %sw.bb4
    i8 5, label %sw.bb7
    i8 2, label %sw.bb12
    i8 0, label %sw.bb15
  ], !dbg !1242

if.end.sw.bb_crit_edge88:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1242
  br label %sw.bb, !dbg !1242

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1242
  br label %sw.bb, !dbg !1242

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge88
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 6), align 16, !dbg !1243
  %3 = add i64 %gcov_ctr54, 1, !dbg !1243
  store i64 %3, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 6), align 16, !dbg !1243
  br label %sw.epilog, !dbg !1244

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1245
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !1245
  %4 = add i64 %gcov_ctr49, 1, !dbg !1245
  store i64 %4, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !1245
  br label %sw.epilog, !dbg !1246

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1247
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !1247
  %5 = add i64 %gcov_ctr50, 1, !dbg !1247
  store i64 %5, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !1247
  %inc8 = add nuw nsw i32 %i.0, 1, !dbg !1248
  %arrayidx9 = getelementptr i8, ptr %rwbs, i32 %i.0, !dbg !1247
  %6 = ptrtoint ptr %arrayidx9 to i32, !dbg !1249
  call void @__asan_store1_noabort(i32 %6), !dbg !1249
  store i8 68, ptr %arrayidx9, align 1, !dbg !1249
  br label %sw.epilog, !dbg !1250

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1251
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 3), align 8, !dbg !1251
  %7 = add i64 %gcov_ctr51, 1, !dbg !1251
  store i64 %7, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 3), align 8, !dbg !1251
  br label %sw.epilog, !dbg !1252

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1253
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 4), align 16, !dbg !1253
  %8 = add i64 %gcov_ctr52, 1, !dbg !1253
  store i64 %8, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 4), align 16, !dbg !1253
  br label %sw.epilog, !dbg !1254

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1255
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 5), align 8, !dbg !1255
  %9 = add i64 %gcov_ctr53, 1, !dbg !1255
  store i64 %9, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 5), align 8, !dbg !1255
  br label %sw.epilog, !dbg !1256

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb7, %sw.bb4, %sw.bb
  %i.0.sink = phi i32 [ %i.0, %sw.default ], [ %i.0, %sw.bb15 ], [ %i.0, %sw.bb12 ], [ %inc8, %sw.bb7 ], [ %i.0, %sw.bb4 ], [ %i.0, %sw.bb ]
  %.sink = phi i8 [ 78, %sw.default ], [ 82, %sw.bb15 ], [ 70, %sw.bb12 ], [ 69, %sw.bb7 ], [ 68, %sw.bb4 ], [ 87, %sw.bb ]
  %arrayidx19 = getelementptr i8, ptr %rwbs, i32 %i.0.sink, !dbg !1241
  %10 = ptrtoint ptr %arrayidx19 to i32, !dbg !1241
  call void @__asan_store1_noabort(i32 %10), !dbg !1241
  store i8 %.sink, ptr %arrayidx19, align 1, !dbg !1241
  %i.1 = add nuw nsw i32 %i.0.sink, 1, !dbg !1241
  %and21 = and i64 %conv, 131072, !dbg !1257
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21), !dbg !1257
  %tobool22.not = icmp eq i64 %and21, 0, !dbg !1257
  br i1 %tobool22.not, label %sw.epilog.if.end26_crit_edge, label %if.then23, !dbg !1258

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1258
  br label %if.end26, !dbg !1258

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1259
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 7), align 8, !dbg !1259
  %11 = add i64 %gcov_ctr55, 1, !dbg !1259
  store i64 %11, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 7), align 8, !dbg !1259
  %inc24 = add nuw nsw i32 %i.0.sink, 2, !dbg !1260
  %arrayidx25 = getelementptr i8, ptr %rwbs, i32 %i.1, !dbg !1259
  %12 = ptrtoint ptr %arrayidx25 to i32, !dbg !1261
  call void @__asan_store1_noabort(i32 %12), !dbg !1261
  store i8 70, ptr %arrayidx25, align 1, !dbg !1261
  br label %if.end26, !dbg !1259

if.end26:                                         ; preds = %if.then23, %sw.epilog.if.end26_crit_edge
  %i.2 = phi i32 [ %inc24, %if.then23 ], [ %i.1, %sw.epilog.if.end26_crit_edge ], !dbg !1241
  %and28 = and i64 %conv, 524288, !dbg !1262
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28), !dbg !1262
  %tobool29.not = icmp eq i64 %and28, 0, !dbg !1262
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30, !dbg !1263

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1263
  br label %if.end33, !dbg !1263

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1264
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 8), align 16, !dbg !1264
  %13 = add i64 %gcov_ctr56, 1, !dbg !1264
  store i64 %13, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 8), align 16, !dbg !1264
  %inc31 = add nuw nsw i32 %i.2, 1, !dbg !1265
  %arrayidx32 = getelementptr i8, ptr %rwbs, i32 %i.2, !dbg !1264
  %14 = ptrtoint ptr %arrayidx32 to i32, !dbg !1266
  call void @__asan_store1_noabort(i32 %14), !dbg !1266
  store i8 65, ptr %arrayidx32, align 1, !dbg !1266
  br label %if.end33, !dbg !1264

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %i.3 = phi i32 [ %inc31, %if.then30 ], [ %i.2, %if.end26.if.end33_crit_edge ], !dbg !1241
  %and35 = and i64 %conv, 2048, !dbg !1267
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35), !dbg !1267
  %tobool36.not = icmp eq i64 %and35, 0, !dbg !1267
  br i1 %tobool36.not, label %if.end33.if.end40_crit_edge, label %if.then37, !dbg !1268

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1268
  br label %if.end40, !dbg !1268

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1269
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 9), align 8, !dbg !1269
  %15 = add i64 %gcov_ctr57, 1, !dbg !1269
  store i64 %15, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 9), align 8, !dbg !1269
  %inc38 = add nuw nsw i32 %i.3, 1, !dbg !1270
  %arrayidx39 = getelementptr i8, ptr %rwbs, i32 %i.3, !dbg !1269
  %16 = ptrtoint ptr %arrayidx39 to i32, !dbg !1271
  call void @__asan_store1_noabort(i32 %16), !dbg !1271
  store i8 83, ptr %arrayidx39, align 1, !dbg !1271
  br label %if.end40, !dbg !1269

if.end40:                                         ; preds = %if.then37, %if.end33.if.end40_crit_edge
  %i.4 = phi i32 [ %inc38, %if.then37 ], [ %i.3, %if.end33.if.end40_crit_edge ], !dbg !1241
  %and42 = and i64 %conv, 4096, !dbg !1272
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42), !dbg !1272
  %tobool43.not = icmp eq i64 %and42, 0, !dbg !1272
  br i1 %tobool43.not, label %if.end40.if.end47_crit_edge, label %if.then44, !dbg !1273

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1273
  br label %if.end47, !dbg !1273

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1274
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 10), align 16, !dbg !1274
  %17 = add i64 %gcov_ctr58, 1, !dbg !1274
  store i64 %17, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 10), align 16, !dbg !1274
  %inc45 = add nuw nsw i32 %i.4, 1, !dbg !1275
  %arrayidx46 = getelementptr i8, ptr %rwbs, i32 %i.4, !dbg !1274
  %18 = ptrtoint ptr %arrayidx46 to i32, !dbg !1276
  call void @__asan_store1_noabort(i32 %18), !dbg !1276
  store i8 77, ptr %arrayidx46, align 1, !dbg !1276
  br label %if.end47, !dbg !1274

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %i.5 = phi i32 [ %inc45, %if.then44 ], [ %i.4, %if.end40.if.end47_crit_edge ], !dbg !1241
  %arrayidx48 = getelementptr i8, ptr %rwbs, i32 %i.5, !dbg !1277
  %19 = ptrtoint ptr %arrayidx48 to i32, !dbg !1278
  call void @__asan_store1_noabort(i32 %19), !dbg !1278
  store i8 0, ptr %arrayidx48, align 1, !dbg !1278
  ret void, !dbg !1279
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_buffer_lock_reserve(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_switch_subbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffer_unlock_commit_regs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_trace_free(ptr nocapture noundef readonly %q, ptr noundef %bt) unnamed_addr #0 align 64 !dbg !1280 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1281
  %rchan = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 1, !dbg !1282
  %0 = ptrtoint ptr %rchan to i32, !dbg !1282
  call void @__asan_load4_noabort(i32 %0), !dbg !1282
  %1 = load ptr, ptr %rchan, align 4, !dbg !1282
  tail call void @relay_close(ptr noundef %1) #22, !dbg !1283
  %dir = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 9, !dbg !1284
  %2 = ptrtoint ptr %dir to i32, !dbg !1284
  call void @__asan_load4_noabort(i32 %2), !dbg !1284
  %3 = load ptr, ptr %dir, align 8, !dbg !1284
  %tobool.not = icmp eq ptr %3, null, !dbg !1285
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1286

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1287
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.142, align 8, !dbg !1287
  %4 = add i64 %gcov_ctr, 1, !dbg !1287
  store i64 %4, ptr @__llvm_gcov_ctr.142, align 8, !dbg !1287
  %debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 64, !dbg !1288
  %5 = ptrtoint ptr %debugfs_dir to i32, !dbg !1288
  call void @__asan_load4_noabort(i32 %5), !dbg !1288
  %6 = load ptr, ptr %debugfs_dir, align 8, !dbg !1288
  %call = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.7, ptr noundef %6) #22, !dbg !1289
  tail call void @debugfs_remove(ptr noundef %call) #22, !dbg !1290
  %7 = ptrtoint ptr %debugfs_dir to i32, !dbg !1291
  call void @__asan_load4_noabort(i32 %7), !dbg !1291
  %8 = load ptr, ptr %debugfs_dir, align 8, !dbg !1291
  %call2 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.8, ptr noundef %8) #22, !dbg !1292
  tail call void @debugfs_remove(ptr noundef %call2) #22, !dbg !1293
  br label %if.end, !dbg !1294

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1295
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 1), align 8, !dbg !1295
  %9 = add i64 %gcov_ctr4, 1, !dbg !1295
  store i64 %9, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 1), align 8, !dbg !1295
  tail call void @debugfs_remove(ptr noundef nonnull %3) #22, !dbg !1296
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sequence = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 2, !dbg !1297
  %10 = ptrtoint ptr %sequence to i32, !dbg !1297
  call void @__asan_load4_noabort(i32 %10), !dbg !1297
  %11 = load ptr, ptr %sequence, align 8, !dbg !1297
  tail call void @free_percpu(ptr noundef %11) #22, !dbg !1298
  %msg_data = getelementptr inbounds %struct.blk_trace, ptr %bt, i32 0, i32 3, !dbg !1299
  %12 = ptrtoint ptr %msg_data to i32, !dbg !1299
  call void @__asan_load4_noabort(i32 %12), !dbg !1299
  %13 = load ptr, ptr %msg_data, align 4, !dbg !1299
  tail call void @free_percpu(ptr noundef %13) #22, !dbg !1300
  tail call void @kfree(ptr noundef %bt) #22, !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_probe_ref() unnamed_addr #0 align 64 !dbg !1303 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1304
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.143, align 8, !dbg !1305
  %0 = add i64 %gcov_ctr, 1, !dbg !1305
  store i64 %0, ptr @__llvm_gcov_ctr.143, align 8, !dbg !1305
  tail call void @mutex_lock_nested(ptr noundef nonnull @blk_probe_mutex, i32 noundef 0) #22, !dbg !1305
  %1 = load i32, ptr @blk_probes_ref, align 4, !dbg !1306
  %dec = add i32 %1, -1, !dbg !1306
  store i32 %dec, ptr @blk_probes_ref, align 4, !dbg !1306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec), !dbg !1306
  %tobool.not = icmp eq i32 %dec, 0, !dbg !1306
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !1307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1307
  br label %if.end, !dbg !1307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1308
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1308
  %2 = add i64 %gcov_ctr1, 1, !dbg !1308
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1308
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.144, align 8, !dbg !1309
  %3 = add i64 %gcov_ctr.i, 1, !dbg !1309
  store i64 %3, ptr @__llvm_gcov_ctr.144, align 8, !dbg !1309
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.145, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.145, align 8
  %call.i.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_rq_remap, ptr noundef nonnull @blk_add_trace_rq_remap, ptr noundef null) #22, !dbg !1312
  %gcov_ctr.i16.i = load i64, ptr @__llvm_gcov_ctr.147, align 8
  %5 = add i64 %gcov_ctr.i16.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.147, align 8
  %call.i17.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_bio_remap, ptr noundef nonnull @blk_add_trace_bio_remap, ptr noundef null) #22, !dbg !1316
  %gcov_ctr.i18.i = load i64, ptr @__llvm_gcov_ctr.149, align 8
  %6 = add i64 %gcov_ctr.i18.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.149, align 8
  %call.i19.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_split, ptr noundef nonnull @blk_add_trace_split, ptr noundef null) #22, !dbg !1319
  %gcov_ctr.i20.i = load i64, ptr @__llvm_gcov_ctr.151, align 8
  %7 = add i64 %gcov_ctr.i20.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.151, align 8
  %call.i21.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_unplug, ptr noundef nonnull @blk_add_trace_unplug, ptr noundef null) #22, !dbg !1322
  %gcov_ctr.i22.i = load i64, ptr @__llvm_gcov_ctr.153, align 8
  %8 = add i64 %gcov_ctr.i22.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.153, align 8
  %call.i23.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_plug, ptr noundef nonnull @blk_add_trace_plug, ptr noundef null) #22, !dbg !1325
  %gcov_ctr.i24.i = load i64, ptr @__llvm_gcov_ctr.155, align 8
  %9 = add i64 %gcov_ctr.i24.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.155, align 8
  %call.i25.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_getrq, ptr noundef nonnull @blk_add_trace_getrq, ptr noundef null) #22, !dbg !1328
  %gcov_ctr.i26.i = load i64, ptr @__llvm_gcov_ctr.157, align 8
  %10 = add i64 %gcov_ctr.i26.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.157, align 8
  %call.i27.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_bio_queue, ptr noundef nonnull @blk_add_trace_bio_queue, ptr noundef null) #22, !dbg !1331
  %gcov_ctr.i28.i = load i64, ptr @__llvm_gcov_ctr.159, align 8
  %11 = add i64 %gcov_ctr.i28.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.159, align 8
  %call.i29.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_bio_frontmerge, ptr noundef nonnull @blk_add_trace_bio_frontmerge, ptr noundef null) #22, !dbg !1334
  %gcov_ctr.i30.i = load i64, ptr @__llvm_gcov_ctr.161, align 8
  %12 = add i64 %gcov_ctr.i30.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.161, align 8
  %call.i31.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_bio_backmerge, ptr noundef nonnull @blk_add_trace_bio_backmerge, ptr noundef null) #22, !dbg !1337
  %gcov_ctr.i32.i = load i64, ptr @__llvm_gcov_ctr.163, align 8
  %13 = add i64 %gcov_ctr.i32.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.163, align 8
  %call.i33.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_bio_complete, ptr noundef nonnull @blk_add_trace_bio_complete, ptr noundef null) #22, !dbg !1340
  %gcov_ctr.i34.i = load i64, ptr @__llvm_gcov_ctr.165, align 8
  %14 = add i64 %gcov_ctr.i34.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.165, align 8
  %call.i35.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_bio_bounce, ptr noundef nonnull @blk_add_trace_bio_bounce, ptr noundef null) #22, !dbg !1343
  %gcov_ctr.i36.i = load i64, ptr @__llvm_gcov_ctr.167, align 8
  %15 = add i64 %gcov_ctr.i36.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.167, align 8
  %call.i37.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_rq_complete, ptr noundef nonnull @blk_add_trace_rq_complete, ptr noundef null) #22, !dbg !1346
  %gcov_ctr.i38.i = load i64, ptr @__llvm_gcov_ctr.169, align 8
  %16 = add i64 %gcov_ctr.i38.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.169, align 8
  %call.i39.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_rq_requeue, ptr noundef nonnull @blk_add_trace_rq_requeue, ptr noundef null) #22, !dbg !1349
  %gcov_ctr.i40.i = load i64, ptr @__llvm_gcov_ctr.171, align 8
  %17 = add i64 %gcov_ctr.i40.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.171, align 8
  %call.i41.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_rq_merge, ptr noundef nonnull @blk_add_trace_rq_merge, ptr noundef null) #22, !dbg !1352
  %gcov_ctr.i42.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %18 = add i64 %gcov_ctr.i42.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.173, align 8
  %call.i43.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_rq_issue, ptr noundef nonnull @blk_add_trace_rq_issue, ptr noundef null) #22, !dbg !1355
  %gcov_ctr.i44.i = load i64, ptr @__llvm_gcov_ctr.175, align 8
  %19 = add i64 %gcov_ctr.i44.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.175, align 8
  %call.i45.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_block_rq_insert, ptr noundef nonnull @blk_add_trace_rq_insert, ptr noundef null) #22, !dbg !1358
  %gcov_ctr.i46.i = load i64, ptr @__llvm_gcov_ctr.177, align 8, !dbg !1361
  %20 = add i64 %gcov_ctr.i46.i, 1, !dbg !1361
  store i64 %20, ptr @__llvm_gcov_ctr.177, align 8, !dbg !1361
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #22, !dbg !1361
  tail call void @synchronize_rcu() #22, !dbg !1365
  br label %if.end, !dbg !1308

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @blk_probe_mutex) #22, !dbg !1366
  ret void, !dbg !1367
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @relay_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_rq_remap(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %rq, i32 noundef %dev, i64 noundef %from) #0 align 64 !dbg !1368 {
entry:
  %r = alloca %struct.blk_io_trace_remap, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #22, !dbg !1370
  %0 = getelementptr inbounds %struct.blk_io_trace_remap, ptr %r, i32 0, i32 1, !dbg !1371
  %1 = getelementptr inbounds %struct.blk_io_trace_remap, ptr %r, i32 0, i32 2, !dbg !1371
  %2 = call ptr @memset(ptr %r, i32 255, i32 16), !dbg !1371
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1372
  %3 = add i64 %gcov_ctr.i, 1, !dbg !1372
  store i64 %3, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1372
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1374
  %4 = add i64 %gcov_ctr.i.i, 1, !dbg !1374
  store i64 %4, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1374
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %5 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1376
  %6 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1376
  store i64 %6, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1376
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1379
  %7 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1379
  store i64 %7, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1379
  %8 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1379
  %and.i.i.i.i.i = and i32 %8, -16384, !dbg !1381
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1382
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1, !dbg !1383
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1384
  call void @__asan_load4_noabort(i32 %10), !dbg !1384
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1384
  %add.i.i.i = add i32 %11, 1, !dbg !1384
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1384
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1374, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %12 = add i64 %gcov_ctr.i8.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1385
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1387
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1387

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1387
  br label %rcu_read_lock.exit, !dbg !1387

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1387
  %13 = add i64 %gcov_ctr4.i, 1, !dbg !1387
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1387
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1387
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1387
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1387

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1387
  br label %rcu_read_lock.exit, !dbg !1387

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1387
  %14 = add i64 %gcov_ctr5.i, 1, !dbg !1387
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1387
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1387
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1387

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1387
  br label %rcu_read_lock.exit, !dbg !1387

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1387
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1387
  %15 = add i64 %gcov_ctr6.i, 1, !dbg !1387
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1387
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1387
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1387
  br label %rcu_read_lock.exit, !dbg !1387

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %16 = ptrtoint ptr %rq to i32, !dbg !1388
  call void @__asan_load4_noabort(i32 %16), !dbg !1388
  %17 = load ptr, ptr %rq, align 8, !dbg !1388
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 46, !dbg !1388
  %18 = ptrtoint ptr %blk_trace to i32, !dbg !1388
  call void @__asan_load4_noabort(i32 %18), !dbg !1388
  %19 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1388
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1388
  %tobool.not = icmp eq i32 %call, 0, !dbg !1388
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge, !dbg !1388

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1388
  br label %do.end7, !dbg !1388

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.146, align 16, !dbg !1388
  %20 = add i64 %gcov_ctr, 1, !dbg !1388
  store i64 %20, ptr @__llvm_gcov_ctr.146, align 16, !dbg !1388
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1388
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1388
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4, !dbg !1388

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1388
  br label %do.end7, !dbg !1388

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 1), align 8, !dbg !1388
  %21 = add i64 %gcov_ctr22, 1, !dbg !1388
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 1), align 8, !dbg !1388
  %.b33 = load i1, ptr @blk_add_trace_rq_remap.__warned, align 1, !dbg !1388
  br i1 %.b33, label %land.lhs.true4.do.end7_crit_edge, label %if.then, !dbg !1388

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1388
  br label %do.end7, !dbg !1388

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1388
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 2), align 16, !dbg !1388
  %22 = add i64 %gcov_ctr23, 1, !dbg !1388
  store i64 %22, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 2), align 16, !dbg !1388
  store i1 true, ptr @blk_add_trace_rq_remap.__warned, align 1, !dbg !1388
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1051, ptr noundef nonnull @.str.2) #22, !dbg !1388
  br label %do.end7, !dbg !1388

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %19, null, !dbg !1389
  br i1 %tobool9.not, label %if.then13, label %if.end14, !dbg !1389, !prof !316

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1390
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 3), align 8, !dbg !1390
  %23 = add i64 %gcov_ctr24, 1, !dbg !1390
  store i64 %23, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 3), align 8, !dbg !1390
  br label %cleanup, !dbg !1391

if.end14:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1392
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 4), align 16, !dbg !1392
  %24 = add i64 %gcov_ctr25, 1, !dbg !1392
  store i64 %24, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 4), align 16, !dbg !1392
  %25 = ptrtoint ptr %r to i32, !dbg !1393
  call void @__asan_store4_noabort(i32 %25), !dbg !1393
  store i32 %dev, ptr %r, align 8, !dbg !1393
  %26 = ptrtoint ptr %rq to i32, !dbg !1394
  call void @__asan_load4_noabort(i32 %26), !dbg !1394
  %27 = load ptr, ptr %rq, align 8, !dbg !1394
  %disk = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 15, !dbg !1394
  %28 = ptrtoint ptr %disk to i32, !dbg !1394
  call void @__asan_load4_noabort(i32 %28), !dbg !1394
  %29 = load ptr, ptr %disk, align 8, !dbg !1394
  %gcov_ctr.i34 = load i64, ptr @__llvm_gcov_ctr.178, align 8
  %30 = add i64 %gcov_ctr.i34, 1
  store i64 %30, ptr @__llvm_gcov_ctr.178, align 8
  %31 = ptrtoint ptr %29 to i32, !dbg !1395
  call void @__asan_load4_noabort(i32 %31), !dbg !1395
  %32 = load i32, ptr %29, align 8, !dbg !1395
  %shl.i = shl i32 %32, 20, !dbg !1395
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 1, !dbg !1395
  %33 = ptrtoint ptr %first_minor.i to i32, !dbg !1395
  call void @__asan_load4_noabort(i32 %33), !dbg !1395
  %34 = load i32, ptr %first_minor.i, align 4, !dbg !1395
  %or.i = or i32 %shl.i, %34, !dbg !1395
  %35 = ptrtoint ptr %0 to i32, !dbg !1398
  call void @__asan_store4_noabort(i32 %35), !dbg !1398
  store i32 %or.i, ptr %0, align 4, !dbg !1398
  %36 = ptrtoint ptr %1 to i32, !dbg !1399
  call void @__asan_store8_noabort(i32 %36), !dbg !1399
  store i64 %from, ptr %1, align 8, !dbg !1399
  %gcov_ctr.i35 = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %37 = add i64 %gcov_ctr.i35, 1
  store i64 %37, ptr @__llvm_gcov_ctr.179, align 8
  %__sector.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9, !dbg !1400
  %38 = ptrtoint ptr %__sector.i to i32, !dbg !1400
  call void @__asan_load8_noabort(i32 %38), !dbg !1400
  %39 = load i64, ptr %__sector.i, align 8, !dbg !1400
  %gcov_ctr.i36 = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %40 = add i64 %gcov_ctr.i36, 1
  store i64 %40, ptr @__llvm_gcov_ctr.127, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8, !dbg !1402
  %41 = ptrtoint ptr %__data_len.i to i32, !dbg !1402
  call void @__asan_load4_noabort(i32 %41), !dbg !1402
  %42 = load i32, ptr %__data_len.i, align 8, !dbg !1402
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3, !dbg !1404
  %43 = ptrtoint ptr %cmd_flags to i32, !dbg !1404
  call void @__asan_load4_noabort(i32 %43), !dbg !1404
  %44 = load i32, ptr %cmd_flags, align 4, !dbg !1404
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.180, align 8
  %45 = add i64 %gcov_ctr.i37, 1
  store i64 %45, ptr @__llvm_gcov_ctr.180, align 8
  %and.i = and i32 %44, 1, !dbg !1405
  %call20 = tail call fastcc i64 @blk_trace_request_get_cgid(ptr noundef %rq), !dbg !1407
  call fastcc void @__blk_add_trace(ptr noundef nonnull %19, i64 noundef %39, i32 noundef %42, i32 noundef %and.i, i32 noundef 0, i32 noundef 1048591, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %r, i64 noundef %call20), !dbg !1408
  br label %cleanup, !dbg !1409

cleanup:                                          ; preds = %if.end14, %if.then13
  tail call fastcc void @rcu_read_unlock(), !dbg !1410
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #22, !dbg !1409
  ret void, !dbg !1409
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_bio_remap(ptr nocapture noundef readnone %ignore, ptr noundef %bio, i32 noundef %dev, i64 noundef %from) #0 align 64 !dbg !1411 {
entry:
  %r = alloca %struct.blk_io_trace_remap, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1412
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1413
  %0 = ptrtoint ptr %bi_bdev to i32, !dbg !1413
  call void @__asan_load4_noabort(i32 %0), !dbg !1413
  %1 = load ptr, ptr %bi_bdev, align 4, !dbg !1413
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17, !dbg !1414
  %2 = ptrtoint ptr %bd_disk to i32, !dbg !1414
  call void @__asan_load4_noabort(i32 %2), !dbg !1414
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !1414
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9, !dbg !1415
  %4 = ptrtoint ptr %queue to i32, !dbg !1415
  call void @__asan_load4_noabort(i32 %4), !dbg !1415
  %5 = load ptr, ptr %queue, align 4, !dbg !1415
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #22, !dbg !1416
  %6 = getelementptr inbounds %struct.blk_io_trace_remap, ptr %r, i32 0, i32 1, !dbg !1417
  %7 = getelementptr inbounds %struct.blk_io_trace_remap, ptr %r, i32 0, i32 2, !dbg !1417
  %8 = call ptr @memset(ptr %r, i32 255, i32 16), !dbg !1417
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1418
  %9 = add i64 %gcov_ctr.i, 1, !dbg !1418
  store i64 %9, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1418
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1420
  %10 = add i64 %gcov_ctr.i.i, 1, !dbg !1420
  store i64 %10, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1420
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %11 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1422
  %12 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1422
  store i64 %12, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1422
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1425
  %13 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1425
  store i64 %13, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1425
  %14 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1425
  %and.i.i.i.i.i = and i32 %14, -16384, !dbg !1427
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1428
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1, !dbg !1429
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1430
  call void @__asan_load4_noabort(i32 %16), !dbg !1430
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1430
  %add.i.i.i = add i32 %17, 1, !dbg !1430
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1430
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1420, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %18 = add i64 %gcov_ctr.i8.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1431
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1433
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1433

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1433
  br label %rcu_read_lock.exit, !dbg !1433

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1433
  %19 = add i64 %gcov_ctr4.i, 1, !dbg !1433
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1433
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1433
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1433
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1433

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1433
  br label %rcu_read_lock.exit, !dbg !1433

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1433
  %20 = add i64 %gcov_ctr5.i, 1, !dbg !1433
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1433
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1433
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1433

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1433
  br label %rcu_read_lock.exit, !dbg !1433

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1433
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1433
  %21 = add i64 %gcov_ctr6.i, 1, !dbg !1433
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1433
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1433
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1433
  br label %rcu_read_lock.exit, !dbg !1433

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 46, !dbg !1434
  %22 = ptrtoint ptr %blk_trace to i32, !dbg !1434
  call void @__asan_load4_noabort(i32 %22), !dbg !1434
  %23 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1434
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1434
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1434
  %tobool.not = icmp eq i32 %call, 0, !dbg !1434
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge, !dbg !1434

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1434
  br label %do.end7, !dbg !1434

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.148, align 16, !dbg !1434
  %24 = add i64 %gcov_ctr, 1, !dbg !1434
  store i64 %24, ptr @__llvm_gcov_ctr.148, align 16, !dbg !1434
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1434
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1434
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1434
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4, !dbg !1434

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1434
  br label %do.end7, !dbg !1434

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !1434
  %25 = add i64 %gcov_ctr24, 1, !dbg !1434
  store i64 %25, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !1434
  %.b38 = load i1, ptr @blk_add_trace_bio_remap.__warned, align 1, !dbg !1434
  br i1 %.b38, label %land.lhs.true4.do.end7_crit_edge, label %if.then, !dbg !1434

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1434
  br label %do.end7, !dbg !1434

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1434
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !1434
  %26 = add i64 %gcov_ctr25, 1, !dbg !1434
  store i64 %26, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !1434
  store i1 true, ptr @blk_add_trace_bio_remap.__warned, align 1, !dbg !1434
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1015, ptr noundef nonnull @.str.2) #22, !dbg !1434
  br label %do.end7, !dbg !1434

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %23, null, !dbg !1435
  br i1 %tobool9.not, label %if.then13, label %if.end14, !dbg !1435, !prof !316

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1436
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !1436
  %27 = add i64 %gcov_ctr26, 1, !dbg !1436
  store i64 %27, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !1436
  br label %cleanup, !dbg !1437

if.end14:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1438
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !1438
  %28 = add i64 %gcov_ctr27, 1, !dbg !1438
  store i64 %28, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !1438
  %29 = ptrtoint ptr %r to i32, !dbg !1439
  call void @__asan_store4_noabort(i32 %29), !dbg !1439
  store i32 %dev, ptr %r, align 8, !dbg !1439
  %30 = ptrtoint ptr %bi_bdev to i32, !dbg !1440
  call void @__asan_load4_noabort(i32 %30), !dbg !1440
  %31 = load ptr, ptr %bi_bdev, align 4, !dbg !1440
  %bd_disk16 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 17, !dbg !1440
  %32 = ptrtoint ptr %bd_disk16 to i32, !dbg !1440
  call void @__asan_load4_noabort(i32 %32), !dbg !1440
  %33 = load ptr, ptr %bd_disk16, align 8, !dbg !1440
  %gcov_ctr.i39 = load i64, ptr @__llvm_gcov_ctr.178, align 8
  %34 = add i64 %gcov_ctr.i39, 1
  store i64 %34, ptr @__llvm_gcov_ctr.178, align 8
  %35 = ptrtoint ptr %33 to i32, !dbg !1441
  call void @__asan_load4_noabort(i32 %35), !dbg !1441
  %36 = load i32, ptr %33, align 8, !dbg !1441
  %shl.i = shl i32 %36, 20, !dbg !1441
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %33, i32 0, i32 1, !dbg !1441
  %37 = ptrtoint ptr %first_minor.i to i32, !dbg !1441
  call void @__asan_load4_noabort(i32 %37), !dbg !1441
  %38 = load i32, ptr %first_minor.i, align 4, !dbg !1441
  %or.i = or i32 %shl.i, %38, !dbg !1441
  %39 = ptrtoint ptr %6 to i32, !dbg !1443
  call void @__asan_store4_noabort(i32 %39), !dbg !1443
  store i32 %or.i, ptr %6, align 4, !dbg !1443
  %40 = ptrtoint ptr %7 to i32, !dbg !1444
  call void @__asan_store8_noabort(i32 %40), !dbg !1444
  store i64 %from, ptr %7, align 8, !dbg !1444
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, !dbg !1445
  %41 = ptrtoint ptr %bi_iter to i32, !dbg !1446
  call void @__asan_load8_noabort(i32 %41), !dbg !1446
  %42 = load i64, ptr %bi_iter, align 8, !dbg !1446
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1, !dbg !1447
  %43 = ptrtoint ptr %bi_size to i32, !dbg !1447
  call void @__asan_load4_noabort(i32 %43), !dbg !1447
  %44 = load i32, ptr %bi_size, align 8, !dbg !1447
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2, !dbg !1448
  %45 = ptrtoint ptr %bi_opf to i32, !dbg !1448
  call void @__asan_load4_noabort(i32 %45), !dbg !1448
  %46 = load i32, ptr %bi_opf, align 8, !dbg !1448
  %and = and i32 %46, 255, !dbg !1448
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6, !dbg !1449
  %47 = ptrtoint ptr %bi_status to i32, !dbg !1449
  call void @__asan_load1_noabort(i32 %47), !dbg !1449
  %48 = load i8, ptr %bi_status, align 2, !dbg !1449
  %call20 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %48) #22, !dbg !1450
  %call21 = tail call fastcc i64 @blk_trace_bio_get_cgid(ptr noundef %5, ptr noundef %bio), !dbg !1451
  call fastcc void @__blk_add_trace(ptr noundef nonnull %23, i64 noundef %42, i32 noundef %44, i32 noundef %and, i32 noundef %46, i32 noundef 1048591, i32 noundef %call20, i32 noundef 16, ptr noundef nonnull %r, i64 noundef %call21), !dbg !1452
  br label %cleanup, !dbg !1453

cleanup:                                          ; preds = %if.end14, %if.then13
  tail call fastcc void @rcu_read_unlock(), !dbg !1454
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #22, !dbg !1453
  ret void, !dbg !1453
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_split(ptr nocapture noundef readnone %ignore, ptr noundef readonly %bio, i32 noundef %pdu) #0 align 64 !dbg !1455 {
entry:
  %rpdu = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1456
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1457
  %0 = ptrtoint ptr %bi_bdev to i32, !dbg !1457
  call void @__asan_load4_noabort(i32 %0), !dbg !1457
  %1 = load ptr, ptr %bi_bdev, align 4, !dbg !1457
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17, !dbg !1458
  %2 = ptrtoint ptr %bd_disk to i32, !dbg !1458
  call void @__asan_load4_noabort(i32 %2), !dbg !1458
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !1458
  %queue = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9, !dbg !1459
  %4 = ptrtoint ptr %queue to i32, !dbg !1459
  call void @__asan_load4_noabort(i32 %4), !dbg !1459
  %5 = load ptr, ptr %queue, align 4, !dbg !1459
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1460
  %6 = add i64 %gcov_ctr.i, 1, !dbg !1460
  store i64 %6, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1460
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1462
  %7 = add i64 %gcov_ctr.i.i, 1, !dbg !1462
  store i64 %7, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1462
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %8 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1464
  %9 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1464
  store i64 %9, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1464
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1467
  %10 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1467
  store i64 %10, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1467
  %11 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1467
  %and.i.i.i.i.i = and i32 %11, -16384, !dbg !1469
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1470
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1, !dbg !1471
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1472
  call void @__asan_load4_noabort(i32 %13), !dbg !1472
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1472
  %add.i.i.i = add i32 %14, 1, !dbg !1472
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1472
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1462, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %15 = add i64 %gcov_ctr.i8.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1473
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1475
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1475

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1475
  br label %rcu_read_lock.exit, !dbg !1475

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1475
  %16 = add i64 %gcov_ctr4.i, 1, !dbg !1475
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1475
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1475
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1475
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1475
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1475

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1475
  br label %rcu_read_lock.exit, !dbg !1475

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1475
  %17 = add i64 %gcov_ctr5.i, 1, !dbg !1475
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1475
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1475
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1475

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1475
  br label %rcu_read_lock.exit, !dbg !1475

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1475
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1475
  %18 = add i64 %gcov_ctr6.i, 1, !dbg !1475
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1475
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1475
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1475
  br label %rcu_read_lock.exit, !dbg !1475

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 46, !dbg !1476
  %19 = ptrtoint ptr %blk_trace to i32, !dbg !1476
  call void @__asan_load4_noabort(i32 %19), !dbg !1476
  %20 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1476
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1476
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1476
  %tobool.not = icmp eq i32 %call, 0, !dbg !1476
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.cond6_crit_edge, !dbg !1476

rcu_read_lock.exit.do.cond6_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1476
  br label %do.cond6, !dbg !1476

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.150, align 16, !dbg !1476
  %21 = add i64 %gcov_ctr, 1, !dbg !1476
  store i64 %21, ptr @__llvm_gcov_ctr.150, align 16, !dbg !1476
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1476
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1476
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1476
  br i1 %tobool3.not, label %land.lhs.true.do.cond6_crit_edge, label %land.lhs.true4, !dbg !1476

land.lhs.true.do.cond6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1476
  br label %do.cond6, !dbg !1476

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 1), align 8, !dbg !1476
  %22 = add i64 %gcov_ctr16, 1, !dbg !1476
  store i64 %22, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 1), align 8, !dbg !1476
  %.b28 = load i1, ptr @blk_add_trace_split.__warned, align 1, !dbg !1476
  br i1 %.b28, label %land.lhs.true4.do.cond6_crit_edge, label %if.then, !dbg !1476

land.lhs.true4.do.cond6_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1476
  br label %do.cond6, !dbg !1476

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1476
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 2), align 16, !dbg !1476
  %23 = add i64 %gcov_ctr17, 1, !dbg !1476
  store i64 %23, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 2), align 16, !dbg !1476
  store i1 true, ptr @blk_add_trace_split.__warned, align 1, !dbg !1476
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 984, ptr noundef nonnull @.str.2) #22, !dbg !1476
  br label %do.cond6, !dbg !1476

do.cond6:                                         ; preds = %if.then, %land.lhs.true4.do.cond6_crit_edge, %land.lhs.true.do.cond6_crit_edge, %rcu_read_lock.exit.do.cond6_crit_edge
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 3), align 8, !dbg !1476
  %24 = add i64 %gcov_ctr18, 1, !dbg !1476
  store i64 %24, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 3), align 8, !dbg !1476
  %tobool9.not = icmp eq ptr %20, null, !dbg !1477
  br i1 %tobool9.not, label %do.cond6.if.end15_crit_edge, label %if.then10, !dbg !1477

do.cond6.if.end15_crit_edge:                      ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1477
  br label %if.end15, !dbg !1477

if.then10:                                        ; preds = %do.cond6
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 4), align 16, !dbg !1478
  %25 = add i64 %gcov_ctr19, 1, !dbg !1478
  store i64 %25, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 4), align 16, !dbg !1478
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rpdu) #22, !dbg !1478
  %conv = zext i32 %pdu to i64, !dbg !1479
  %26 = ptrtoint ptr %rpdu to i32, !dbg !1480
  call void @__asan_store8_noabort(i32 %26), !dbg !1480
  store i64 %conv, ptr %rpdu, align 8, !dbg !1480
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, !dbg !1481
  %27 = ptrtoint ptr %bi_iter to i32, !dbg !1482
  call void @__asan_load8_noabort(i32 %27), !dbg !1482
  %28 = load i64, ptr %bi_iter, align 8, !dbg !1482
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1, !dbg !1483
  %29 = ptrtoint ptr %bi_size to i32, !dbg !1483
  call void @__asan_load4_noabort(i32 %29), !dbg !1483
  %30 = load i32, ptr %bi_size, align 8, !dbg !1483
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2, !dbg !1484
  %31 = ptrtoint ptr %bi_opf to i32, !dbg !1484
  call void @__asan_load4_noabort(i32 %31), !dbg !1484
  %32 = load i32, ptr %bi_opf, align 8, !dbg !1484
  %and = and i32 %32, 255, !dbg !1484
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6, !dbg !1485
  %33 = ptrtoint ptr %bi_status to i32, !dbg !1485
  call void @__asan_load1_noabort(i32 %33), !dbg !1485
  %34 = load i8, ptr %bi_status, align 2, !dbg !1485
  %call13 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %34) #22, !dbg !1486
  %gcov_ctr.i29 = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %35 = add i64 %gcov_ctr.i29, 1
  store i64 %35, ptr @__llvm_gcov_ctr.181, align 16
  %36 = ptrtoint ptr %blk_trace to i32, !dbg !1487
  call void @__asan_load4_noabort(i32 %36), !dbg !1487
  %37 = load ptr, ptr %blk_trace, align 8, !dbg !1487
  %tobool.not.i30 = icmp eq ptr %37, null, !dbg !1489
  br i1 %tobool.not.i30, label %if.then10.blk_trace_bio_get_cgid.exit_crit_edge, label %lor.lhs.false.i, !dbg !1490

if.then10.blk_trace_bio_get_cgid.exit_crit_edge:  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1490
  br label %blk_trace_bio_get_cgid.exit, !dbg !1490

lor.lhs.false.i:                                  ; preds = %if.then10
  %gcov_ctr6.i31 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1491
  %38 = add i64 %gcov_ctr6.i31, 1, !dbg !1491
  store i64 %38, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1491
  %39 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1491
  %and.i = and i32 %39, 2, !dbg !1492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1492
  %tobool1.not.i = icmp eq i32 %and.i, 0, !dbg !1492
  br i1 %tobool1.not.i, label %lor.lhs.false.i.blk_trace_bio_get_cgid.exit_crit_edge, label %if.end.i, !dbg !1493

lor.lhs.false.i.blk_trace_bio_get_cgid.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1493
  br label %blk_trace_bio_get_cgid.exit, !dbg !1493

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bi_blkg.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12, !dbg !1494
  %40 = ptrtoint ptr %bi_blkg.i to i32, !dbg !1494
  call void @__asan_load4_noabort(i32 %40), !dbg !1494
  %41 = load ptr, ptr %bi_blkg.i, align 8, !dbg !1494
  %tobool2.not.i = icmp eq ptr %41, null, !dbg !1495
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i, !dbg !1496

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1497
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1497
  %42 = add i64 %gcov_ctr7.i, 1, !dbg !1497
  store i64 %42, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1497
  br label %blk_trace_bio_get_cgid.exit, !dbg !1497

if.end4.i:                                        ; preds = %if.end.i
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1498
  %43 = add i64 %gcov_ctr8.i, 1, !dbg !1498
  store i64 %43, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1498
  %tobool.not.i.i = icmp eq ptr %bio, null, !dbg !1499
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1501

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1502
  %gcov_ctr.i.i32 = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1502
  %44 = add i64 %gcov_ctr.i.i32, 1, !dbg !1502
  store i64 %44, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1502
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1503
  %45 = add i64 %gcov_ctr3.i.i, 1, !dbg !1503
  store i64 %45, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1503
  %blkcg.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %41, i32 0, i32 3, !dbg !1504
  %46 = ptrtoint ptr %blkcg.i.i to i32, !dbg !1504
  call void @__asan_load4_noabort(i32 %46), !dbg !1504
  %47 = load ptr, ptr %blkcg.i.i, align 4, !dbg !1504
  br label %bio_blkcg.exit.i, !dbg !1505

if.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1506
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !1506
  %48 = add i64 %gcov_ctr4.i.i, 1, !dbg !1506
  store i64 %48, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !1506
  br label %bio_blkcg.exit.i, !dbg !1506

bio_blkcg.exit.i:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %47, %if.then.i.i ], [ null, %if.end.i.i ], !dbg !1507
  %49 = ptrtoint ptr %retval.0.i.i to i32, !dbg !1508
  call void @__asan_load4_noabort(i32 %49), !dbg !1508
  %50 = load ptr, ptr %retval.0.i.i, align 8, !dbg !1508
  %gcov_ctr.i10.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %51 = add i64 %gcov_ctr.i10.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %50, i32 0, i32 11, !dbg !1509
  %52 = ptrtoint ptr %kn.i.i to i32, !dbg !1509
  call void @__asan_load4_noabort(i32 %52), !dbg !1509
  %53 = load ptr, ptr %kn.i.i, align 8, !dbg !1509
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %53, i32 0, i32 10, !dbg !1511
  %54 = ptrtoint ptr %id.i.i to i32, !dbg !1511
  call void @__asan_load8_noabort(i32 %54), !dbg !1511
  %55 = load i64, ptr %id.i.i, align 8, !dbg !1511
  br label %blk_trace_bio_get_cgid.exit, !dbg !1512

blk_trace_bio_get_cgid.exit:                      ; preds = %bio_blkcg.exit.i, %if.then3.i, %lor.lhs.false.i.blk_trace_bio_get_cgid.exit_crit_edge, %if.then10.blk_trace_bio_get_cgid.exit_crit_edge
  %retval.0.i = phi i64 [ %55, %bio_blkcg.exit.i ], [ 0, %if.then3.i ], [ 0, %lor.lhs.false.i.blk_trace_bio_get_cgid.exit_crit_edge ], [ 0, %if.then10.blk_trace_bio_get_cgid.exit_crit_edge ], !dbg !1513
  call fastcc void @__blk_add_trace(ptr noundef nonnull %20, i64 noundef %28, i32 noundef %30, i32 noundef %and, i32 noundef %32, i32 noundef 13, i32 noundef %call13, i32 noundef 8, ptr noundef nonnull %rpdu, i64 noundef %retval.0.i), !dbg !1514
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rpdu) #22, !dbg !1515
  br label %if.end15, !dbg !1515

if.end15:                                         ; preds = %blk_trace_bio_get_cgid.exit, %do.cond6.if.end15_crit_edge
  tail call fastcc void @rcu_read_unlock(), !dbg !1516
  ret void, !dbg !1517
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_unplug(ptr nocapture noundef readnone %ignore, ptr noundef %q, i32 noundef %depth, i1 noundef zeroext %explicit) #0 align 64 !dbg !1518 {
entry:
  %rpdu = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1519
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1520
  %0 = add i64 %gcov_ctr.i, 1, !dbg !1520
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1520
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1522
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !1522
  store i64 %1, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1522
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1524
  %3 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1524
  store i64 %3, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1524
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1527
  %4 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1527
  store i64 %4, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1527
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1527
  %and.i.i.i.i.i = and i32 %5, -16384, !dbg !1529
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1530
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !1531
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1532
  call void @__asan_load4_noabort(i32 %7), !dbg !1532
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1532
  %add.i.i.i = add i32 %8, 1, !dbg !1532
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1532
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1522, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %9 = add i64 %gcov_ctr.i8.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1533
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1535
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1535

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1535
  br label %rcu_read_lock.exit, !dbg !1535

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1535
  %10 = add i64 %gcov_ctr4.i, 1, !dbg !1535
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1535
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1535
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1535
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1535

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1535
  br label %rcu_read_lock.exit, !dbg !1535

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1535
  %11 = add i64 %gcov_ctr5.i, 1, !dbg !1535
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1535
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1535
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1535

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1535
  br label %rcu_read_lock.exit, !dbg !1535

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1535
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1535
  %12 = add i64 %gcov_ctr6.i, 1, !dbg !1535
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1535
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1535
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1535
  br label %rcu_read_lock.exit, !dbg !1535

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !1536
  %13 = ptrtoint ptr %blk_trace to i32, !dbg !1536
  call void @__asan_load4_noabort(i32 %13), !dbg !1536
  %14 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1536
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1536
  %tobool.not = icmp eq i32 %call, 0, !dbg !1536
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.cond6_crit_edge, !dbg !1536

rcu_read_lock.exit.do.cond6_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1536
  br label %do.cond6, !dbg !1536

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.152, align 16, !dbg !1536
  %15 = add i64 %gcov_ctr, 1, !dbg !1536
  store i64 %15, ptr @__llvm_gcov_ctr.152, align 16, !dbg !1536
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1536
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1536
  br i1 %tobool3.not, label %land.lhs.true.do.cond6_crit_edge, label %land.lhs.true4, !dbg !1536

land.lhs.true.do.cond6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1536
  br label %do.cond6, !dbg !1536

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), align 8, !dbg !1536
  %16 = add i64 %gcov_ctr15, 1, !dbg !1536
  store i64 %16, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), align 8, !dbg !1536
  %.b21 = load i1, ptr @blk_add_trace_unplug.__warned, align 1, !dbg !1536
  br i1 %.b21, label %land.lhs.true4.do.cond6_crit_edge, label %if.then, !dbg !1536

land.lhs.true4.do.cond6_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1536
  br label %do.cond6, !dbg !1536

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1536
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 2), align 16, !dbg !1536
  %17 = add i64 %gcov_ctr16, 1, !dbg !1536
  store i64 %17, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 2), align 16, !dbg !1536
  store i1 true, ptr @blk_add_trace_unplug.__warned, align 1, !dbg !1536
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 963, ptr noundef nonnull @.str.2) #22, !dbg !1536
  br label %do.cond6, !dbg !1536

do.cond6:                                         ; preds = %if.then, %land.lhs.true4.do.cond6_crit_edge, %land.lhs.true.do.cond6_crit_edge, %rcu_read_lock.exit.do.cond6_crit_edge
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 3), align 8, !dbg !1536
  %18 = add i64 %gcov_ctr17, 1, !dbg !1536
  store i64 %18, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 3), align 8, !dbg !1536
  %tobool9.not = icmp eq ptr %14, null, !dbg !1537
  br i1 %tobool9.not, label %do.cond6.if.end14_crit_edge, label %if.then10, !dbg !1537

do.cond6.if.end14_crit_edge:                      ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1537
  br label %if.end14, !dbg !1537

if.then10:                                        ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rpdu) #22, !dbg !1538
  %conv = zext i32 %depth to i64, !dbg !1539
  %19 = ptrtoint ptr %rpdu to i32, !dbg !1540
  call void @__asan_store8_noabort(i32 %19), !dbg !1540
  store i64 %conv, ptr %rpdu, align 8, !dbg !1540
  br i1 %explicit, label %if.then12, label %if.else, !dbg !1541

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1542
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 4), align 16, !dbg !1542
  %20 = add i64 %gcov_ctr18, 1, !dbg !1542
  store i64 %20, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 4), align 16, !dbg !1542
  br label %if.end13, !dbg !1543

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1544
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 5), align 8, !dbg !1544
  %21 = add i64 %gcov_ctr19, 1, !dbg !1544
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 5), align 8, !dbg !1544
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %what.0 = phi i32 [ 1048586, %if.then12 ], [ 1048587, %if.else ], !dbg !1545
  call fastcc void @__blk_add_trace(ptr noundef nonnull %14, i64 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %what.0, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %rpdu, i64 noundef 0), !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rpdu) #22, !dbg !1547
  br label %if.end14, !dbg !1547

if.end14:                                         ; preds = %if.end13, %do.cond6.if.end14_crit_edge
  tail call fastcc void @rcu_read_unlock(), !dbg !1548
  ret void, !dbg !1549
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_plug(ptr nocapture noundef readnone %ignore, ptr noundef %q) #0 align 64 !dbg !1550 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1551
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1552
  %0 = add i64 %gcov_ctr.i, 1, !dbg !1552
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1552
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1554
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !1554
  store i64 %1, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1554
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1556
  %3 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1556
  store i64 %3, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1556
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1559
  %4 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1559
  store i64 %4, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1559
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1559
  %and.i.i.i.i.i = and i32 %5, -16384, !dbg !1561
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1562
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !1563
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1564
  call void @__asan_load4_noabort(i32 %7), !dbg !1564
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1564
  %add.i.i.i = add i32 %8, 1, !dbg !1564
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1564
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1554, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %9 = add i64 %gcov_ctr.i8.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1565
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1567
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1567

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1567
  br label %rcu_read_lock.exit, !dbg !1567

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1567
  %10 = add i64 %gcov_ctr4.i, 1, !dbg !1567
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1567
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1567
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1567
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1567

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1567
  br label %rcu_read_lock.exit, !dbg !1567

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1567
  %11 = add i64 %gcov_ctr5.i, 1, !dbg !1567
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1567
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1567
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1567

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1567
  br label %rcu_read_lock.exit, !dbg !1567

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1567
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1567
  %12 = add i64 %gcov_ctr6.i, 1, !dbg !1567
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1567
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1567
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1567
  br label %rcu_read_lock.exit, !dbg !1567

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !1568
  %13 = ptrtoint ptr %blk_trace to i32, !dbg !1568
  call void @__asan_load4_noabort(i32 %13), !dbg !1568
  %14 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1568
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1568
  %tobool.not = icmp eq i32 %call, 0, !dbg !1568
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.cond6_crit_edge, !dbg !1568

rcu_read_lock.exit.do.cond6_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1568
  br label %do.cond6, !dbg !1568

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.154, align 16, !dbg !1568
  %15 = add i64 %gcov_ctr, 1, !dbg !1568
  store i64 %15, ptr @__llvm_gcov_ctr.154, align 16, !dbg !1568
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1568
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1568
  br i1 %tobool3.not, label %land.lhs.true.do.cond6_crit_edge, label %land.lhs.true4, !dbg !1568

land.lhs.true.do.cond6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1568
  br label %do.cond6, !dbg !1568

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1568
  %16 = add i64 %gcov_ctr12, 1, !dbg !1568
  store i64 %16, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1568
  %.b17 = load i1, ptr @blk_add_trace_plug.__warned, align 1, !dbg !1568
  br i1 %.b17, label %land.lhs.true4.do.cond6_crit_edge, label %if.then, !dbg !1568

land.lhs.true4.do.cond6_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1568
  br label %do.cond6, !dbg !1568

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1568
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !1568
  %17 = add i64 %gcov_ctr13, 1, !dbg !1568
  store i64 %17, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !1568
  store i1 true, ptr @blk_add_trace_plug.__warned, align 1, !dbg !1568
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 951, ptr noundef nonnull @.str.2) #22, !dbg !1568
  br label %do.cond6, !dbg !1568

do.cond6:                                         ; preds = %if.then, %land.lhs.true4.do.cond6_crit_edge, %land.lhs.true.do.cond6_crit_edge, %rcu_read_lock.exit.do.cond6_crit_edge
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 3), align 8, !dbg !1568
  %18 = add i64 %gcov_ctr14, 1, !dbg !1568
  store i64 %18, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 3), align 8, !dbg !1568
  %tobool9.not = icmp eq ptr %14, null, !dbg !1569
  br i1 %tobool9.not, label %do.cond6.if.end11_crit_edge, label %if.then10, !dbg !1569

do.cond6.if.end11_crit_edge:                      ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1569
  br label %if.end11, !dbg !1569

if.then10:                                        ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1570
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 4), align 16, !dbg !1570
  %19 = add i64 %gcov_ctr15, 1, !dbg !1570
  store i64 %19, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 4), align 16, !dbg !1570
  tail call fastcc void @__blk_add_trace(ptr noundef nonnull %14, i64 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1048585, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0), !dbg !1571
  br label %if.end11, !dbg !1571

if.end11:                                         ; preds = %if.then10, %do.cond6.if.end11_crit_edge
  tail call fastcc void @rcu_read_unlock(), !dbg !1572
  ret void, !dbg !1573
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_getrq(ptr nocapture noundef readnone %ignore, ptr noundef %bio) #0 align 64 !dbg !1574 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1575
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.156, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.156, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1576
  %1 = ptrtoint ptr %bi_bdev to i32, !dbg !1576
  call void @__asan_load4_noabort(i32 %1), !dbg !1576
  %2 = load ptr, ptr %bi_bdev, align 4, !dbg !1576
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17, !dbg !1577
  %3 = ptrtoint ptr %bd_disk to i32, !dbg !1577
  call void @__asan_load4_noabort(i32 %3), !dbg !1577
  %4 = load ptr, ptr %bd_disk, align 8, !dbg !1577
  %queue = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9, !dbg !1578
  %5 = ptrtoint ptr %queue to i32, !dbg !1578
  call void @__asan_load4_noabort(i32 %5), !dbg !1578
  %6 = load ptr, ptr %queue, align 4, !dbg !1578
  tail call fastcc void @blk_add_trace_bio(ptr noundef %6, ptr noundef %bio, i32 noundef 1048580, i32 noundef 0), !dbg !1579
  ret void, !dbg !1580
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_bio_queue(ptr nocapture noundef readnone %ignore, ptr noundef %bio) #0 align 64 !dbg !1581 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1582
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.158, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.158, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1583
  %1 = ptrtoint ptr %bi_bdev to i32, !dbg !1583
  call void @__asan_load4_noabort(i32 %1), !dbg !1583
  %2 = load ptr, ptr %bi_bdev, align 4, !dbg !1583
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17, !dbg !1584
  %3 = ptrtoint ptr %bd_disk to i32, !dbg !1584
  call void @__asan_load4_noabort(i32 %3), !dbg !1584
  %4 = load ptr, ptr %bd_disk, align 8, !dbg !1584
  %queue = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9, !dbg !1585
  %5 = ptrtoint ptr %queue to i32, !dbg !1585
  call void @__asan_load4_noabort(i32 %5), !dbg !1585
  %6 = load ptr, ptr %queue, align 4, !dbg !1585
  tail call fastcc void @blk_add_trace_bio(ptr noundef %6, ptr noundef %bio, i32 noundef 1048577, i32 noundef 0), !dbg !1586
  ret void, !dbg !1587
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_bio_frontmerge(ptr nocapture noundef readnone %ignore, ptr noundef %bio) #0 align 64 !dbg !1588 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1589
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.160, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.160, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1590
  %1 = ptrtoint ptr %bi_bdev to i32, !dbg !1590
  call void @__asan_load4_noabort(i32 %1), !dbg !1590
  %2 = load ptr, ptr %bi_bdev, align 4, !dbg !1590
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17, !dbg !1591
  %3 = ptrtoint ptr %bd_disk to i32, !dbg !1591
  call void @__asan_load4_noabort(i32 %3), !dbg !1591
  %4 = load ptr, ptr %bd_disk, align 8, !dbg !1591
  %queue = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9, !dbg !1592
  %5 = ptrtoint ptr %queue to i32, !dbg !1592
  call void @__asan_load4_noabort(i32 %5), !dbg !1592
  %6 = load ptr, ptr %queue, align 4, !dbg !1592
  tail call fastcc void @blk_add_trace_bio(ptr noundef %6, ptr noundef %bio, i32 noundef 1048579, i32 noundef 0), !dbg !1593
  ret void, !dbg !1594
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_bio_backmerge(ptr nocapture noundef readnone %ignore, ptr noundef %bio) #0 align 64 !dbg !1595 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1596
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.162, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.162, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1597
  %1 = ptrtoint ptr %bi_bdev to i32, !dbg !1597
  call void @__asan_load4_noabort(i32 %1), !dbg !1597
  %2 = load ptr, ptr %bi_bdev, align 4, !dbg !1597
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17, !dbg !1598
  %3 = ptrtoint ptr %bd_disk to i32, !dbg !1598
  call void @__asan_load4_noabort(i32 %3), !dbg !1598
  %4 = load ptr, ptr %bd_disk, align 8, !dbg !1598
  %queue = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9, !dbg !1599
  %5 = ptrtoint ptr %queue to i32, !dbg !1599
  call void @__asan_load4_noabort(i32 %5), !dbg !1599
  %6 = load ptr, ptr %queue, align 4, !dbg !1599
  tail call fastcc void @blk_add_trace_bio(ptr noundef %6, ptr noundef %bio, i32 noundef 1048578, i32 noundef 0), !dbg !1600
  ret void, !dbg !1601
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_bio_complete(ptr nocapture noundef readnone %ignore, ptr noundef %q, ptr noundef %bio) #0 align 64 !dbg !1602 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1603
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.164, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.164, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6, !dbg !1604
  %1 = ptrtoint ptr %bi_status to i32, !dbg !1604
  call void @__asan_load1_noabort(i32 %1), !dbg !1604
  %2 = load i8, ptr %bi_status, align 2, !dbg !1604
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %2) #22, !dbg !1605
  tail call fastcc void @blk_add_trace_bio(ptr noundef %q, ptr noundef %bio, i32 noundef 8388616, i32 noundef %call), !dbg !1606
  ret void, !dbg !1607
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_bio_bounce(ptr nocapture noundef readnone %ignore, ptr noundef %bio) #0 align 64 !dbg !1608 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1609
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.166, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.166, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1, !dbg !1610
  %1 = ptrtoint ptr %bi_bdev to i32, !dbg !1610
  call void @__asan_load4_noabort(i32 %1), !dbg !1610
  %2 = load ptr, ptr %bi_bdev, align 4, !dbg !1610
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17, !dbg !1611
  %3 = ptrtoint ptr %bd_disk to i32, !dbg !1611
  call void @__asan_load4_noabort(i32 %3), !dbg !1611
  %4 = load ptr, ptr %bd_disk, align 8, !dbg !1611
  %queue = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9, !dbg !1612
  %5 = ptrtoint ptr %queue to i32, !dbg !1612
  call void @__asan_load4_noabort(i32 %5), !dbg !1612
  %6 = load ptr, ptr %queue, align 4, !dbg !1612
  tail call fastcc void @blk_add_trace_bio(ptr noundef %6, ptr noundef %bio, i32 noundef 14, i32 noundef 0), !dbg !1613
  ret void, !dbg !1614
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_rq_complete(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %rq, i8 noundef zeroext %error, i32 noundef %nr_bytes) #0 align 64 !dbg !1615 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1616
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.168, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.168, align 8
  %bio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10, !dbg !1617
  %1 = ptrtoint ptr %bio.i to i32, !dbg !1617
  call void @__asan_load4_noabort(i32 %1), !dbg !1617
  %2 = load ptr, ptr %bio.i, align 8, !dbg !1617
  %tobool.not.i = icmp eq ptr %2, null, !dbg !1619
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !1620

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1621
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1621
  %3 = add i64 %gcov_ctr.i, 1, !dbg !1621
  store i64 %3, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1621
  br label %blk_trace_request_get_cgid.exit, !dbg !1621

if.end.i:                                         ; preds = %entry
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1622
  %4 = add i64 %gcov_ctr2.i, 1, !dbg !1622
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1622
  %5 = ptrtoint ptr %rq to i32, !dbg !1623
  call void @__asan_load4_noabort(i32 %5), !dbg !1623
  %6 = load ptr, ptr %rq, align 8, !dbg !1623
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 46, !dbg !1624
  %8 = ptrtoint ptr %blk_trace.i.i to i32, !dbg !1624
  call void @__asan_load4_noabort(i32 %8), !dbg !1624
  %9 = load ptr, ptr %blk_trace.i.i, align 8, !dbg !1624
  %tobool.not.i.i = icmp eq ptr %9, null, !dbg !1626
  br i1 %tobool.not.i.i, label %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, label %lor.lhs.false.i.i, !dbg !1627

if.end.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1627
  br label %blk_trace_request_get_cgid.exit, !dbg !1627

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1628
  %10 = add i64 %gcov_ctr6.i.i, 1, !dbg !1628
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1628
  %11 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1628
  %and.i.i = and i32 %11, 2, !dbg !1629
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1629
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1629
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, label %if.end.i.i, !dbg !1630

lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1630
  br label %blk_trace_request_get_cgid.exit, !dbg !1630

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bi_blkg.i.i = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 12, !dbg !1631
  %12 = ptrtoint ptr %bi_blkg.i.i to i32, !dbg !1631
  call void @__asan_load4_noabort(i32 %12), !dbg !1631
  %13 = load ptr, ptr %bi_blkg.i.i, align 8, !dbg !1631
  %tobool2.not.i.i = icmp eq ptr %13, null, !dbg !1632
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %bio_blkcg.exit.i.i, !dbg !1633

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1634
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1634
  %14 = add i64 %gcov_ctr7.i.i, 1, !dbg !1634
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1634
  br label %blk_trace_request_get_cgid.exit, !dbg !1634

bio_blkcg.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1635
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1635
  %15 = add i64 %gcov_ctr8.i.i, 1, !dbg !1635
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1635
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1636
  %16 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1636
  store i64 %16, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1636
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1638
  %17 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !1638
  store i64 %17, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1638
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %13, i32 0, i32 3, !dbg !1639
  %18 = ptrtoint ptr %blkcg.i.i.i to i32, !dbg !1639
  call void @__asan_load4_noabort(i32 %18), !dbg !1639
  %19 = load ptr, ptr %blkcg.i.i.i, align 4, !dbg !1639
  %20 = ptrtoint ptr %19 to i32, !dbg !1640
  call void @__asan_load4_noabort(i32 %20), !dbg !1640
  %21 = load ptr, ptr %19, align 8, !dbg !1640
  %gcov_ctr.i10.i.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %22 = add i64 %gcov_ctr.i10.i.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i.i = getelementptr inbounds %struct.cgroup, ptr %21, i32 0, i32 11, !dbg !1641
  %23 = ptrtoint ptr %kn.i.i.i to i32, !dbg !1641
  call void @__asan_load4_noabort(i32 %23), !dbg !1641
  %24 = load ptr, ptr %kn.i.i.i, align 8, !dbg !1641
  %id.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %24, i32 0, i32 10, !dbg !1643
  %25 = ptrtoint ptr %id.i.i.i to i32, !dbg !1643
  call void @__asan_load8_noabort(i32 %25), !dbg !1643
  %26 = load i64, ptr %id.i.i.i, align 8, !dbg !1643
  br label %blk_trace_request_get_cgid.exit, !dbg !1644

blk_trace_request_get_cgid.exit:                  ; preds = %bio_blkcg.exit.i.i, %if.then3.i.i, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ 0, %if.then.i ], [ %26, %bio_blkcg.exit.i.i ], [ 0, %if.then3.i.i ], [ 0, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge ], [ 0, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge ], !dbg !1645
  tail call fastcc void @blk_add_trace_rq(ptr noundef %rq, i8 noundef zeroext %error, i32 noundef %nr_bytes, i32 noundef 8388616, i64 noundef %retval.0.i), !dbg !1646
  ret void, !dbg !1647
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_rq_requeue(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %rq) #0 align 64 !dbg !1648 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1649
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.170, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.170, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.127, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8, !dbg !1650
  %2 = ptrtoint ptr %__data_len.i to i32, !dbg !1650
  call void @__asan_load4_noabort(i32 %2), !dbg !1650
  %3 = load i32, ptr %__data_len.i, align 8, !dbg !1650
  %bio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10, !dbg !1652
  %4 = ptrtoint ptr %bio.i to i32, !dbg !1652
  call void @__asan_load4_noabort(i32 %4), !dbg !1652
  %5 = load ptr, ptr %bio.i, align 8, !dbg !1652
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1654
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !1655

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1656
  %gcov_ctr.i4 = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1656
  %6 = add i64 %gcov_ctr.i4, 1, !dbg !1656
  store i64 %6, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1656
  br label %blk_trace_request_get_cgid.exit, !dbg !1656

if.end.i:                                         ; preds = %entry
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1657
  %7 = add i64 %gcov_ctr2.i, 1, !dbg !1657
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1657
  %8 = ptrtoint ptr %rq to i32, !dbg !1658
  call void @__asan_load4_noabort(i32 %8), !dbg !1658
  %9 = load ptr, ptr %rq, align 8, !dbg !1658
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 46, !dbg !1659
  %11 = ptrtoint ptr %blk_trace.i.i to i32, !dbg !1659
  call void @__asan_load4_noabort(i32 %11), !dbg !1659
  %12 = load ptr, ptr %blk_trace.i.i, align 8, !dbg !1659
  %tobool.not.i.i = icmp eq ptr %12, null, !dbg !1661
  br i1 %tobool.not.i.i, label %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, label %lor.lhs.false.i.i, !dbg !1662

if.end.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1662
  br label %blk_trace_request_get_cgid.exit, !dbg !1662

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1663
  %13 = add i64 %gcov_ctr6.i.i, 1, !dbg !1663
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1663
  %14 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1663
  %and.i.i = and i32 %14, 2, !dbg !1664
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1664
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1664
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, label %if.end.i.i, !dbg !1665

lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1665
  br label %blk_trace_request_get_cgid.exit, !dbg !1665

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bi_blkg.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 12, !dbg !1666
  %15 = ptrtoint ptr %bi_blkg.i.i to i32, !dbg !1666
  call void @__asan_load4_noabort(i32 %15), !dbg !1666
  %16 = load ptr, ptr %bi_blkg.i.i, align 8, !dbg !1666
  %tobool2.not.i.i = icmp eq ptr %16, null, !dbg !1667
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %bio_blkcg.exit.i.i, !dbg !1668

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1669
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1669
  %17 = add i64 %gcov_ctr7.i.i, 1, !dbg !1669
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1669
  br label %blk_trace_request_get_cgid.exit, !dbg !1669

bio_blkcg.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1670
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1670
  %18 = add i64 %gcov_ctr8.i.i, 1, !dbg !1670
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1670
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1671
  %19 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1671
  store i64 %19, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1671
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1673
  %20 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !1673
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1673
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %16, i32 0, i32 3, !dbg !1674
  %21 = ptrtoint ptr %blkcg.i.i.i to i32, !dbg !1674
  call void @__asan_load4_noabort(i32 %21), !dbg !1674
  %22 = load ptr, ptr %blkcg.i.i.i, align 4, !dbg !1674
  %23 = ptrtoint ptr %22 to i32, !dbg !1675
  call void @__asan_load4_noabort(i32 %23), !dbg !1675
  %24 = load ptr, ptr %22, align 8, !dbg !1675
  %gcov_ctr.i10.i.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %25 = add i64 %gcov_ctr.i10.i.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i.i = getelementptr inbounds %struct.cgroup, ptr %24, i32 0, i32 11, !dbg !1676
  %26 = ptrtoint ptr %kn.i.i.i to i32, !dbg !1676
  call void @__asan_load4_noabort(i32 %26), !dbg !1676
  %27 = load ptr, ptr %kn.i.i.i, align 8, !dbg !1676
  %id.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 10, !dbg !1678
  %28 = ptrtoint ptr %id.i.i.i to i32, !dbg !1678
  call void @__asan_load8_noabort(i32 %28), !dbg !1678
  %29 = load i64, ptr %id.i.i.i, align 8, !dbg !1678
  br label %blk_trace_request_get_cgid.exit, !dbg !1679

blk_trace_request_get_cgid.exit:                  ; preds = %bio_blkcg.exit.i.i, %if.then3.i.i, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ 0, %if.then.i ], [ %29, %bio_blkcg.exit.i.i ], [ 0, %if.then3.i.i ], [ 0, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge ], [ 0, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge ], !dbg !1680
  tail call fastcc void @blk_add_trace_rq(ptr noundef %rq, i8 noundef zeroext 0, i32 noundef %3, i32 noundef 2097158, i64 noundef %retval.0.i), !dbg !1681
  ret void, !dbg !1682
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_rq_merge(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %rq) #0 align 64 !dbg !1683 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1684
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.172, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.172, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.127, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8, !dbg !1685
  %2 = ptrtoint ptr %__data_len.i to i32, !dbg !1685
  call void @__asan_load4_noabort(i32 %2), !dbg !1685
  %3 = load i32, ptr %__data_len.i, align 8, !dbg !1685
  %bio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10, !dbg !1687
  %4 = ptrtoint ptr %bio.i to i32, !dbg !1687
  call void @__asan_load4_noabort(i32 %4), !dbg !1687
  %5 = load ptr, ptr %bio.i, align 8, !dbg !1687
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1689
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !1690

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1691
  %gcov_ctr.i4 = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1691
  %6 = add i64 %gcov_ctr.i4, 1, !dbg !1691
  store i64 %6, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1691
  br label %blk_trace_request_get_cgid.exit, !dbg !1691

if.end.i:                                         ; preds = %entry
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1692
  %7 = add i64 %gcov_ctr2.i, 1, !dbg !1692
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1692
  %8 = ptrtoint ptr %rq to i32, !dbg !1693
  call void @__asan_load4_noabort(i32 %8), !dbg !1693
  %9 = load ptr, ptr %rq, align 8, !dbg !1693
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 46, !dbg !1694
  %11 = ptrtoint ptr %blk_trace.i.i to i32, !dbg !1694
  call void @__asan_load4_noabort(i32 %11), !dbg !1694
  %12 = load ptr, ptr %blk_trace.i.i, align 8, !dbg !1694
  %tobool.not.i.i = icmp eq ptr %12, null, !dbg !1696
  br i1 %tobool.not.i.i, label %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, label %lor.lhs.false.i.i, !dbg !1697

if.end.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1697
  br label %blk_trace_request_get_cgid.exit, !dbg !1697

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1698
  %13 = add i64 %gcov_ctr6.i.i, 1, !dbg !1698
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1698
  %14 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1698
  %and.i.i = and i32 %14, 2, !dbg !1699
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1699
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1699
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, label %if.end.i.i, !dbg !1700

lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1700
  br label %blk_trace_request_get_cgid.exit, !dbg !1700

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bi_blkg.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 12, !dbg !1701
  %15 = ptrtoint ptr %bi_blkg.i.i to i32, !dbg !1701
  call void @__asan_load4_noabort(i32 %15), !dbg !1701
  %16 = load ptr, ptr %bi_blkg.i.i, align 8, !dbg !1701
  %tobool2.not.i.i = icmp eq ptr %16, null, !dbg !1702
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %bio_blkcg.exit.i.i, !dbg !1703

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1704
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1704
  %17 = add i64 %gcov_ctr7.i.i, 1, !dbg !1704
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1704
  br label %blk_trace_request_get_cgid.exit, !dbg !1704

bio_blkcg.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1705
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1705
  %18 = add i64 %gcov_ctr8.i.i, 1, !dbg !1705
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1705
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1706
  %19 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1706
  store i64 %19, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1706
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1708
  %20 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !1708
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1708
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %16, i32 0, i32 3, !dbg !1709
  %21 = ptrtoint ptr %blkcg.i.i.i to i32, !dbg !1709
  call void @__asan_load4_noabort(i32 %21), !dbg !1709
  %22 = load ptr, ptr %blkcg.i.i.i, align 4, !dbg !1709
  %23 = ptrtoint ptr %22 to i32, !dbg !1710
  call void @__asan_load4_noabort(i32 %23), !dbg !1710
  %24 = load ptr, ptr %22, align 8, !dbg !1710
  %gcov_ctr.i10.i.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %25 = add i64 %gcov_ctr.i10.i.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i.i = getelementptr inbounds %struct.cgroup, ptr %24, i32 0, i32 11, !dbg !1711
  %26 = ptrtoint ptr %kn.i.i.i to i32, !dbg !1711
  call void @__asan_load4_noabort(i32 %26), !dbg !1711
  %27 = load ptr, ptr %kn.i.i.i, align 8, !dbg !1711
  %id.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 10, !dbg !1713
  %28 = ptrtoint ptr %id.i.i.i to i32, !dbg !1713
  call void @__asan_load8_noabort(i32 %28), !dbg !1713
  %29 = load i64, ptr %id.i.i.i, align 8, !dbg !1713
  br label %blk_trace_request_get_cgid.exit, !dbg !1714

blk_trace_request_get_cgid.exit:                  ; preds = %bio_blkcg.exit.i.i, %if.then3.i.i, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ 0, %if.then.i ], [ %29, %bio_blkcg.exit.i.i ], [ 0, %if.then3.i.i ], [ 0, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge ], [ 0, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge ], !dbg !1715
  tail call fastcc void @blk_add_trace_rq(ptr noundef %rq, i8 noundef zeroext 0, i32 noundef %3, i32 noundef 1048578, i64 noundef %retval.0.i), !dbg !1716
  ret void, !dbg !1717
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_rq_issue(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %rq) #0 align 64 !dbg !1718 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1719
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.174, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.127, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8, !dbg !1720
  %2 = ptrtoint ptr %__data_len.i to i32, !dbg !1720
  call void @__asan_load4_noabort(i32 %2), !dbg !1720
  %3 = load i32, ptr %__data_len.i, align 8, !dbg !1720
  %bio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10, !dbg !1722
  %4 = ptrtoint ptr %bio.i to i32, !dbg !1722
  call void @__asan_load4_noabort(i32 %4), !dbg !1722
  %5 = load ptr, ptr %bio.i, align 8, !dbg !1722
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1724
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !1725

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1726
  %gcov_ctr.i4 = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1726
  %6 = add i64 %gcov_ctr.i4, 1, !dbg !1726
  store i64 %6, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1726
  br label %blk_trace_request_get_cgid.exit, !dbg !1726

if.end.i:                                         ; preds = %entry
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1727
  %7 = add i64 %gcov_ctr2.i, 1, !dbg !1727
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1727
  %8 = ptrtoint ptr %rq to i32, !dbg !1728
  call void @__asan_load4_noabort(i32 %8), !dbg !1728
  %9 = load ptr, ptr %rq, align 8, !dbg !1728
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 46, !dbg !1729
  %11 = ptrtoint ptr %blk_trace.i.i to i32, !dbg !1729
  call void @__asan_load4_noabort(i32 %11), !dbg !1729
  %12 = load ptr, ptr %blk_trace.i.i, align 8, !dbg !1729
  %tobool.not.i.i = icmp eq ptr %12, null, !dbg !1731
  br i1 %tobool.not.i.i, label %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, label %lor.lhs.false.i.i, !dbg !1732

if.end.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1732
  br label %blk_trace_request_get_cgid.exit, !dbg !1732

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1733
  %13 = add i64 %gcov_ctr6.i.i, 1, !dbg !1733
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1733
  %14 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1733
  %and.i.i = and i32 %14, 2, !dbg !1734
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1734
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1734
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, label %if.end.i.i, !dbg !1735

lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1735
  br label %blk_trace_request_get_cgid.exit, !dbg !1735

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bi_blkg.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 12, !dbg !1736
  %15 = ptrtoint ptr %bi_blkg.i.i to i32, !dbg !1736
  call void @__asan_load4_noabort(i32 %15), !dbg !1736
  %16 = load ptr, ptr %bi_blkg.i.i, align 8, !dbg !1736
  %tobool2.not.i.i = icmp eq ptr %16, null, !dbg !1737
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %bio_blkcg.exit.i.i, !dbg !1738

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1739
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1739
  %17 = add i64 %gcov_ctr7.i.i, 1, !dbg !1739
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1739
  br label %blk_trace_request_get_cgid.exit, !dbg !1739

bio_blkcg.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1740
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1740
  %18 = add i64 %gcov_ctr8.i.i, 1, !dbg !1740
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1740
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1741
  %19 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1741
  store i64 %19, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1741
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1743
  %20 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !1743
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1743
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %16, i32 0, i32 3, !dbg !1744
  %21 = ptrtoint ptr %blkcg.i.i.i to i32, !dbg !1744
  call void @__asan_load4_noabort(i32 %21), !dbg !1744
  %22 = load ptr, ptr %blkcg.i.i.i, align 4, !dbg !1744
  %23 = ptrtoint ptr %22 to i32, !dbg !1745
  call void @__asan_load4_noabort(i32 %23), !dbg !1745
  %24 = load ptr, ptr %22, align 8, !dbg !1745
  %gcov_ctr.i10.i.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %25 = add i64 %gcov_ctr.i10.i.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i.i = getelementptr inbounds %struct.cgroup, ptr %24, i32 0, i32 11, !dbg !1746
  %26 = ptrtoint ptr %kn.i.i.i to i32, !dbg !1746
  call void @__asan_load4_noabort(i32 %26), !dbg !1746
  %27 = load ptr, ptr %kn.i.i.i, align 8, !dbg !1746
  %id.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 10, !dbg !1748
  %28 = ptrtoint ptr %id.i.i.i to i32, !dbg !1748
  call void @__asan_load8_noabort(i32 %28), !dbg !1748
  %29 = load i64, ptr %id.i.i.i, align 8, !dbg !1748
  br label %blk_trace_request_get_cgid.exit, !dbg !1749

blk_trace_request_get_cgid.exit:                  ; preds = %bio_blkcg.exit.i.i, %if.then3.i.i, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ 0, %if.then.i ], [ %29, %bio_blkcg.exit.i.i ], [ 0, %if.then3.i.i ], [ 0, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge ], [ 0, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge ], !dbg !1750
  tail call fastcc void @blk_add_trace_rq(ptr noundef %rq, i8 noundef zeroext 0, i32 noundef %3, i32 noundef 4194311, i64 noundef %retval.0.i), !dbg !1751
  ret void, !dbg !1752
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_add_trace_rq_insert(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %rq) #0 align 64 !dbg !1753 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1754
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.176, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.176, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.127, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8, !dbg !1755
  %2 = ptrtoint ptr %__data_len.i to i32, !dbg !1755
  call void @__asan_load4_noabort(i32 %2), !dbg !1755
  %3 = load i32, ptr %__data_len.i, align 8, !dbg !1755
  %bio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10, !dbg !1757
  %4 = ptrtoint ptr %bio.i to i32, !dbg !1757
  call void @__asan_load4_noabort(i32 %4), !dbg !1757
  %5 = load ptr, ptr %bio.i, align 8, !dbg !1757
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1759
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !1760

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1761
  %gcov_ctr.i4 = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1761
  %6 = add i64 %gcov_ctr.i4, 1, !dbg !1761
  store i64 %6, ptr @__llvm_gcov_ctr.128, align 8, !dbg !1761
  br label %blk_trace_request_get_cgid.exit, !dbg !1761

if.end.i:                                         ; preds = %entry
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1762
  %7 = add i64 %gcov_ctr2.i, 1, !dbg !1762
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1762
  %8 = ptrtoint ptr %rq to i32, !dbg !1763
  call void @__asan_load4_noabort(i32 %8), !dbg !1763
  %9 = load ptr, ptr %rq, align 8, !dbg !1763
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 46, !dbg !1764
  %11 = ptrtoint ptr %blk_trace.i.i to i32, !dbg !1764
  call void @__asan_load4_noabort(i32 %11), !dbg !1764
  %12 = load ptr, ptr %blk_trace.i.i, align 8, !dbg !1764
  %tobool.not.i.i = icmp eq ptr %12, null, !dbg !1766
  br i1 %tobool.not.i.i, label %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, label %lor.lhs.false.i.i, !dbg !1767

if.end.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1767
  br label %blk_trace_request_get_cgid.exit, !dbg !1767

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1768
  %13 = add i64 %gcov_ctr6.i.i, 1, !dbg !1768
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1768
  %14 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1768
  %and.i.i = and i32 %14, 2, !dbg !1769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1769
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1769
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, label %if.end.i.i, !dbg !1770

lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1770
  br label %blk_trace_request_get_cgid.exit, !dbg !1770

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %bi_blkg.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 12, !dbg !1771
  %15 = ptrtoint ptr %bi_blkg.i.i to i32, !dbg !1771
  call void @__asan_load4_noabort(i32 %15), !dbg !1771
  %16 = load ptr, ptr %bi_blkg.i.i, align 8, !dbg !1771
  %tobool2.not.i.i = icmp eq ptr %16, null, !dbg !1772
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %bio_blkcg.exit.i.i, !dbg !1773

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1774
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1774
  %17 = add i64 %gcov_ctr7.i.i, 1, !dbg !1774
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1774
  br label %blk_trace_request_get_cgid.exit, !dbg !1774

bio_blkcg.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1775
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1775
  %18 = add i64 %gcov_ctr8.i.i, 1, !dbg !1775
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1775
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1776
  %19 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1776
  store i64 %19, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1776
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1778
  %20 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !1778
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1778
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %16, i32 0, i32 3, !dbg !1779
  %21 = ptrtoint ptr %blkcg.i.i.i to i32, !dbg !1779
  call void @__asan_load4_noabort(i32 %21), !dbg !1779
  %22 = load ptr, ptr %blkcg.i.i.i, align 4, !dbg !1779
  %23 = ptrtoint ptr %22 to i32, !dbg !1780
  call void @__asan_load4_noabort(i32 %23), !dbg !1780
  %24 = load ptr, ptr %22, align 8, !dbg !1780
  %gcov_ctr.i10.i.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %25 = add i64 %gcov_ctr.i10.i.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i.i.i = getelementptr inbounds %struct.cgroup, ptr %24, i32 0, i32 11, !dbg !1781
  %26 = ptrtoint ptr %kn.i.i.i to i32, !dbg !1781
  call void @__asan_load4_noabort(i32 %26), !dbg !1781
  %27 = load ptr, ptr %kn.i.i.i, align 8, !dbg !1781
  %id.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 10, !dbg !1783
  %28 = ptrtoint ptr %id.i.i.i to i32, !dbg !1783
  call void @__asan_load8_noabort(i32 %28), !dbg !1783
  %29 = load i64, ptr %id.i.i.i, align 8, !dbg !1783
  br label %blk_trace_request_get_cgid.exit, !dbg !1784

blk_trace_request_get_cgid.exit:                  ; preds = %bio_blkcg.exit.i.i, %if.then3.i.i, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ 0, %if.then.i ], [ %29, %bio_blkcg.exit.i.i ], [ 0, %if.then3.i.i ], [ 0, %lor.lhs.false.i.i.blk_trace_request_get_cgid.exit_crit_edge ], [ 0, %if.end.i.blk_trace_request_get_cgid.exit_crit_edge ], !dbg !1785
  tail call fastcc void @blk_add_trace_rq(ptr noundef %rq, i8 noundef zeroext 0, i32 noundef %3, i32 noundef 1048588, i64 noundef %retval.0.i), !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @blk_trace_bio_get_cgid(ptr nocapture noundef readonly %q, ptr noundef readonly %bio) unnamed_addr #6 align 64 !dbg !1188 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1788
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.181, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.181, align 16
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !1789
  %1 = ptrtoint ptr %blk_trace to i32, !dbg !1789
  call void @__asan_load4_noabort(i32 %1), !dbg !1789
  %2 = load ptr, ptr %blk_trace, align 8, !dbg !1789
  %tobool.not = icmp eq ptr %2, null, !dbg !1790
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !dbg !1791

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1791
  br label %cleanup, !dbg !1791

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1792
  %3 = add i64 %gcov_ctr6, 1, !dbg !1792
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !1792
  %4 = load i32, ptr @blk_tracer_flags, align 4, !dbg !1792
  %and = and i32 %4, 2, !dbg !1793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !1793
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1793
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end, !dbg !1794

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1794
  br label %cleanup, !dbg !1794

if.end:                                           ; preds = %lor.lhs.false
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12, !dbg !1795
  %5 = ptrtoint ptr %bi_blkg to i32, !dbg !1795
  call void @__asan_load4_noabort(i32 %5), !dbg !1795
  %6 = load ptr, ptr %bi_blkg, align 8, !dbg !1795
  %tobool2.not = icmp eq ptr %6, null, !dbg !1796
  br i1 %tobool2.not, label %if.then3, label %if.end4, !dbg !1797

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1798
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1798
  %7 = add i64 %gcov_ctr7, 1, !dbg !1798
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !1798
  br label %cleanup, !dbg !1798

if.end4:                                          ; preds = %if.end
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1799
  %8 = add i64 %gcov_ctr8, 1, !dbg !1799
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 3), align 8, !dbg !1799
  %tobool.not.i = icmp eq ptr %bio, null, !dbg !1800
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !1802

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1803
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1803
  %9 = add i64 %gcov_ctr.i, 1, !dbg !1803
  store i64 %9, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1803
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1804
  %10 = add i64 %gcov_ctr3.i, 1, !dbg !1804
  store i64 %10, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1804
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %6, i32 0, i32 3, !dbg !1805
  %11 = ptrtoint ptr %blkcg.i to i32, !dbg !1805
  call void @__asan_load4_noabort(i32 %11), !dbg !1805
  %12 = load ptr, ptr %blkcg.i, align 4, !dbg !1805
  br label %bio_blkcg.exit, !dbg !1806

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1807
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !1807
  %13 = add i64 %gcov_ctr4.i, 1, !dbg !1807
  store i64 %13, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !1807
  br label %bio_blkcg.exit, !dbg !1807

bio_blkcg.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %12, %if.then.i ], [ null, %if.end.i ], !dbg !1808
  %14 = ptrtoint ptr %retval.0.i to i32, !dbg !1809
  call void @__asan_load4_noabort(i32 %14), !dbg !1809
  %15 = load ptr, ptr %retval.0.i, align 8, !dbg !1809
  %gcov_ctr.i10 = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %16 = add i64 %gcov_ctr.i10, 1
  store i64 %16, ptr @__llvm_gcov_ctr.109, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 11, !dbg !1810
  %17 = ptrtoint ptr %kn.i to i32, !dbg !1810
  call void @__asan_load4_noabort(i32 %17), !dbg !1810
  %18 = load ptr, ptr %kn.i, align 8, !dbg !1810
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 10, !dbg !1812
  %19 = ptrtoint ptr %id.i to i32, !dbg !1812
  call void @__asan_load8_noabort(i32 %19), !dbg !1812
  %20 = load i64, ptr %id.i, align 8, !dbg !1812
  br label %cleanup, !dbg !1813

cleanup:                                          ; preds = %bio_blkcg.exit, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %20, %bio_blkcg.exit ], [ 0, %if.then3 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], !dbg !1814
  ret i64 %retval.0, !dbg !1815
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_add_trace_bio(ptr noundef %q, ptr noundef %bio, i32 noundef %what, i32 noundef %error) unnamed_addr #0 align 64 !dbg !1816 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1817
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1818
  %0 = add i64 %gcov_ctr.i, 1, !dbg !1818
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1818
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1820
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !1820
  store i64 %1, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1820
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1822
  %3 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1822
  store i64 %3, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1822
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1825
  %4 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1825
  store i64 %4, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1825
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1825
  %and.i.i.i.i.i = and i32 %5, -16384, !dbg !1827
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1828
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !1829
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1830
  call void @__asan_load4_noabort(i32 %7), !dbg !1830
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1830
  %add.i.i.i = add i32 %8, 1, !dbg !1830
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1830
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1820, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %9 = add i64 %gcov_ctr.i8.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1831
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1833
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1833

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1833
  br label %rcu_read_lock.exit, !dbg !1833

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1833
  %10 = add i64 %gcov_ctr4.i, 1, !dbg !1833
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1833
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1833
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1833
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1833
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1833

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1833
  br label %rcu_read_lock.exit, !dbg !1833

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1833
  %11 = add i64 %gcov_ctr5.i, 1, !dbg !1833
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1833
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1833
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1833

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1833
  br label %rcu_read_lock.exit, !dbg !1833

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1833
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1833
  %12 = add i64 %gcov_ctr6.i, 1, !dbg !1833
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1833
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1833
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1833
  br label %rcu_read_lock.exit, !dbg !1833

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !1834
  %13 = ptrtoint ptr %blk_trace to i32, !dbg !1834
  call void @__asan_load4_noabort(i32 %13), !dbg !1834
  %14 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1834
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1834
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1834
  %tobool.not = icmp eq i32 %call, 0, !dbg !1834
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge, !dbg !1834

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1834
  br label %do.end7, !dbg !1834

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.183, align 16, !dbg !1834
  %15 = add i64 %gcov_ctr, 1, !dbg !1834
  store i64 %15, ptr @__llvm_gcov_ctr.183, align 16, !dbg !1834
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1834
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1834
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1834
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4, !dbg !1834

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1834
  br label %do.end7, !dbg !1834

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 1), align 8, !dbg !1834
  %16 = add i64 %gcov_ctr18, 1, !dbg !1834
  store i64 %16, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 1), align 8, !dbg !1834
  %.b29 = load i1, ptr @blk_add_trace_bio.__warned, align 1, !dbg !1834
  br i1 %.b29, label %land.lhs.true4.do.end7_crit_edge, label %if.then, !dbg !1834

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1834
  br label %do.end7, !dbg !1834

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1834
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 2), align 16, !dbg !1834
  %17 = add i64 %gcov_ctr19, 1, !dbg !1834
  store i64 %17, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 2), align 16, !dbg !1834
  store i1 true, ptr @blk_add_trace_bio.__warned, align 1, !dbg !1834
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 900, ptr noundef nonnull @.str.2) #22, !dbg !1834
  br label %do.end7, !dbg !1834

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %14, null, !dbg !1835
  br i1 %tobool9.not, label %if.then13, label %if.end14, !dbg !1835, !prof !316

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1836
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 3), align 8, !dbg !1836
  %18 = add i64 %gcov_ctr20, 1, !dbg !1836
  store i64 %18, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 3), align 8, !dbg !1836
  br label %cleanup, !dbg !1837

if.end14:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1838
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 4), align 16, !dbg !1838
  %19 = add i64 %gcov_ctr21, 1, !dbg !1838
  store i64 %19, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 4), align 16, !dbg !1838
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, !dbg !1839
  %20 = ptrtoint ptr %bi_iter to i32, !dbg !1840
  call void @__asan_load8_noabort(i32 %20), !dbg !1840
  %21 = load i64, ptr %bi_iter, align 8, !dbg !1840
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1, !dbg !1841
  %22 = ptrtoint ptr %bi_size to i32, !dbg !1841
  call void @__asan_load4_noabort(i32 %22), !dbg !1841
  %23 = load i32, ptr %bi_size, align 8, !dbg !1841
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2, !dbg !1842
  %24 = ptrtoint ptr %bi_opf to i32, !dbg !1842
  call void @__asan_load4_noabort(i32 %24), !dbg !1842
  %25 = load i32, ptr %bi_opf, align 8, !dbg !1842
  %and = and i32 %25, 255, !dbg !1842
  %call17 = tail call fastcc i64 @blk_trace_bio_get_cgid(ptr noundef %q, ptr noundef %bio), !dbg !1843
  tail call fastcc void @__blk_add_trace(ptr noundef nonnull %14, i64 noundef %21, i32 noundef %23, i32 noundef %and, i32 noundef %25, i32 noundef %what, i32 noundef %error, i32 noundef 0, ptr noundef null, i64 noundef %call17), !dbg !1844
  br label %cleanup, !dbg !1845

cleanup:                                          ; preds = %if.end14, %if.then13
  tail call fastcc void @rcu_read_unlock(), !dbg !1846
  ret void, !dbg !1845
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_add_trace_rq(ptr nocapture noundef readonly %rq, i8 noundef zeroext %error, i32 noundef %nr_bytes, i32 noundef %what, i64 noundef %cgid) unnamed_addr #0 align 64 !dbg !1847 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1848
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1849
  %0 = add i64 %gcov_ctr.i, 1, !dbg !1849
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 16, !dbg !1849
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1851
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !1851
  store i64 %1, ptr @__llvm_gcov_ctr.256, align 8, !dbg !1851
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.137, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.137, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1853
  %3 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1853
  store i64 %3, ptr @__llvm_gcov_ctr.139, align 8, !dbg !1853
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1856
  %4 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1856
  store i64 %4, ptr @__llvm_gcov_ctr.107, align 8, !dbg !1856
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #22, !dbg !1856
  %and.i.i.i.i.i = and i32 %5, -16384, !dbg !1858
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !1859
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1, !dbg !1860
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !1861
  call void @__asan_load4_noabort(i32 %7), !dbg !1861
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !1861
  %add.i.i.i = add i32 %8, 1, !dbg !1861
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !1861
  tail call void asm sideeffect "", "~{memory}"() #22, !dbg !1851, !srcloc !925
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.257, align 8
  %9 = add i64 %gcov_ctr.i8.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.257, align 8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #22, !dbg !1862
  %call.i = tail call zeroext i1 @rcu_is_watching() #22, !dbg !1864
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i, !dbg !1864

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1864
  br label %rcu_read_lock.exit, !dbg !1864

land.lhs.true.i:                                  ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1864
  %10 = add i64 %gcov_ctr4.i, 1, !dbg !1864
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 1), align 8, !dbg !1864
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1864
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !1864
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i, !dbg !1864

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1864
  br label %rcu_read_lock.exit, !dbg !1864

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1864
  %11 = add i64 %gcov_ctr5.i, 1, !dbg !1864
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 2), align 16, !dbg !1864
  %.b7.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1864
  br i1 %.b7.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i, !dbg !1864

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1864
  br label %rcu_read_lock.exit, !dbg !1864

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1864
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1864
  %12 = add i64 %gcov_ctr6.i, 1, !dbg !1864
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.123, i32 0, i32 3), align 8, !dbg !1864
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1864
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #22, !dbg !1864
  br label %rcu_read_lock.exit, !dbg !1864

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %13 = ptrtoint ptr %rq to i32, !dbg !1865
  call void @__asan_load4_noabort(i32 %13), !dbg !1865
  %14 = load ptr, ptr %rq, align 8, !dbg !1865
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 46, !dbg !1865
  %15 = ptrtoint ptr %blk_trace to i32, !dbg !1865
  call void @__asan_load4_noabort(i32 %15), !dbg !1865
  %16 = load volatile ptr, ptr %blk_trace, align 8, !dbg !1865
  %call = tail call i32 @rcu_read_lock_held() #22, !dbg !1865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1865
  %tobool.not = icmp eq i32 %call, 0, !dbg !1865
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge, !dbg !1865

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1865
  br label %do.end7, !dbg !1865

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.184, align 16, !dbg !1865
  %17 = add i64 %gcov_ctr, 1, !dbg !1865
  store i64 %17, ptr @__llvm_gcov_ctr.184, align 16, !dbg !1865
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !1865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1865
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1865
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4, !dbg !1865

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1865
  br label %do.end7, !dbg !1865

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 1), align 8, !dbg !1865
  %18 = add i64 %gcov_ctr22, 1, !dbg !1865
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 1), align 8, !dbg !1865
  %.b35 = load i1, ptr @blk_add_trace_rq.__warned, align 1, !dbg !1865
  br i1 %.b35, label %land.lhs.true4.do.end7_crit_edge, label %if.then, !dbg !1865

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1865
  br label %do.end7, !dbg !1865

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1865
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 2), align 16, !dbg !1865
  %19 = add i64 %gcov_ctr23, 1, !dbg !1865
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 2), align 16, !dbg !1865
  store i1 true, ptr @blk_add_trace_rq.__warned, align 1, !dbg !1865
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.2) #22, !dbg !1865
  br label %do.end7, !dbg !1865

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %16, null, !dbg !1866
  br i1 %tobool9.not, label %if.then13, label %if.end14, !dbg !1866, !prof !316

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1867
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 3), align 8, !dbg !1867
  %20 = add i64 %gcov_ctr24, 1, !dbg !1867
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 3), align 8, !dbg !1867
  br label %cleanup, !dbg !1868

if.end14:                                         ; preds = %do.end7
  %gcov_ctr.i36 = load i64, ptr @__llvm_gcov_ctr.185, align 8
  %21 = add i64 %gcov_ctr.i36, 1
  store i64 %21, ptr @__llvm_gcov_ctr.185, align 8
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3, !dbg !1869
  %22 = ptrtoint ptr %cmd_flags.i to i32, !dbg !1869
  call void @__asan_load4_noabort(i32 %22), !dbg !1869
  %23 = load i32, ptr %cmd_flags.i, align 4, !dbg !1869
  %and.i = and i32 %23, 255, !dbg !1869
  %gcov_ctr.i.i37 = load i64, ptr @__llvm_gcov_ctr.186, align 8
  %24 = add i64 %gcov_ctr.i.i37, 1
  store i64 %24, ptr @__llvm_gcov_ctr.186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %and.i), !dbg !1871
  %cmp.i.i = icmp eq i32 %and.i, 34, !dbg !1871
  br i1 %cmp.i.i, label %if.end14.if.then16_crit_edge, label %blk_rq_is_passthrough.exit, !dbg !1873

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1873
  br label %if.then16, !dbg !1873

blk_rq_is_passthrough.exit:                       ; preds = %if.end14
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.186, i32 0, i32 1), align 8, !dbg !1874
  %25 = add i64 %gcov_ctr2.i.i, 1, !dbg !1874
  store i64 %25, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.186, i32 0, i32 1), align 8, !dbg !1874
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %and.i), !dbg !1875
  %cmp1.i.i = icmp eq i32 %and.i, 35, !dbg !1875
  br i1 %cmp1.i.i, label %blk_rq_is_passthrough.exit.if.then16_crit_edge, label %if.else, !dbg !1876

blk_rq_is_passthrough.exit.if.then16_crit_edge:   ; preds = %blk_rq_is_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1876
  br label %if.then16, !dbg !1876

if.then16:                                        ; preds = %blk_rq_is_passthrough.exit.if.then16_crit_edge, %if.end14.if.then16_crit_edge
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 4), align 16, !dbg !1877
  %26 = add i64 %gcov_ctr25, 1, !dbg !1877
  store i64 %26, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 4), align 16, !dbg !1877
  br label %if.end18, !dbg !1878

if.else:                                          ; preds = %blk_rq_is_passthrough.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1879
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 5), align 8, !dbg !1879
  %27 = add i64 %gcov_ctr26, 1, !dbg !1879
  store i64 %27, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 5), align 8, !dbg !1879
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %.sink = phi i32 [ 16777216, %if.else ], [ 33554432, %if.then16 ]
  %or17 = or i32 %.sink, %what, !dbg !1880
  %call19 = tail call fastcc i64 @blk_rq_trace_sector(ptr noundef %rq), !dbg !1881
  %28 = ptrtoint ptr %cmd_flags.i to i32, !dbg !1882
  call void @__asan_load4_noabort(i32 %28), !dbg !1882
  %29 = load i32, ptr %cmd_flags.i, align 4, !dbg !1882
  %and = and i32 %29, 255, !dbg !1882
  %call21 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %error) #22, !dbg !1883
  tail call fastcc void @__blk_add_trace(ptr noundef nonnull %16, i64 noundef %call19, i32 noundef %nr_bytes, i32 noundef %and, i32 noundef %29, i32 noundef %or17, i32 noundef %call21, i32 noundef 0, ptr noundef null, i64 noundef %cgid), !dbg !1884
  br label %cleanup, !dbg !1885

cleanup:                                          ; preds = %if.end18, %if.then13
  tail call fastcc void @rcu_read_unlock(), !dbg !1880
  ret void, !dbg !1885
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @relay_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_probe_ref() unnamed_addr #0 align 64 !dbg !1886 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1887
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.207, align 8, !dbg !1888
  %0 = add i64 %gcov_ctr, 1, !dbg !1888
  store i64 %0, ptr @__llvm_gcov_ctr.207, align 8, !dbg !1888
  tail call void @mutex_lock_nested(ptr noundef nonnull @blk_probe_mutex, i32 noundef 0) #22, !dbg !1888
  %1 = load i32, ptr @blk_probes_ref, align 4, !dbg !1889
  %inc = add i32 %1, 1, !dbg !1889
  store i32 %inc, ptr @blk_probes_ref, align 4, !dbg !1889
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !1890
  %cmp = icmp eq i32 %1, 0, !dbg !1890
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !1889

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1889
  br label %if.end, !dbg !1889

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.207, i32 0, i32 1), align 8, !dbg !1891
  %2 = add i64 %gcov_ctr1, 1, !dbg !1891
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.207, i32 0, i32 1), align 8, !dbg !1891
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.230, align 16
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.230, align 16
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.231, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.231, align 8
  %call.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_rq_insert, ptr noundef nonnull @blk_add_trace_rq_insert, ptr noundef null) #22, !dbg !1892
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !1897
  %tobool.not.i = icmp eq i32 %call.i.i, 0, !dbg !1897
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i, !dbg !1897, !prof !316

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1897
  br label %if.end.i, !dbg !1897

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1897
  %gcov_ctr500.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 1), align 8, !dbg !1897
  %5 = add i64 %gcov_ctr500.i, 1, !dbg !1897
  store i64 %5, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 1), align 8, !dbg !1897
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1100, i32 noundef 9, ptr noundef null) #22, !dbg !1897
  br label %if.end.i, !dbg !1897

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %gcov_ctr.i547.i = load i64, ptr @__llvm_gcov_ctr.232, align 8
  %6 = add i64 %gcov_ctr.i547.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.232, align 8
  %call.i548.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_rq_issue, ptr noundef nonnull @blk_add_trace_rq_issue, ptr noundef null) #22, !dbg !1898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i548.i), !dbg !1901
  %tobool22.not.i = icmp eq i32 %call.i548.i, 0, !dbg !1901
  br i1 %tobool22.not.i, label %if.end.i.if.end44.i_crit_edge, label %if.then34.i, !dbg !1901, !prof !316

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1901
  br label %if.end44.i, !dbg !1901

if.then34.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1901
  %gcov_ctr501.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 2), align 16, !dbg !1901
  %7 = add i64 %gcov_ctr501.i, 1, !dbg !1901
  store i64 %7, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 2), align 16, !dbg !1901
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1102, i32 noundef 9, ptr noundef null) #22, !dbg !1901
  br label %if.end44.i, !dbg !1901

if.end44.i:                                       ; preds = %if.then34.i, %if.end.i.if.end44.i_crit_edge
  %gcov_ctr.i549.i = load i64, ptr @__llvm_gcov_ctr.233, align 8
  %8 = add i64 %gcov_ctr.i549.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.233, align 8
  %call.i550.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_rq_merge, ptr noundef nonnull @blk_add_trace_rq_merge, ptr noundef null) #22, !dbg !1902
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i550.i), !dbg !1905
  %tobool54.not.i = icmp eq i32 %call.i550.i, 0, !dbg !1905
  br i1 %tobool54.not.i, label %if.end44.i.if.end76.i_crit_edge, label %if.then66.i, !dbg !1905, !prof !316

if.end44.i.if.end76.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1905
  br label %if.end76.i, !dbg !1905

if.then66.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1905
  %gcov_ctr502.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 3), align 8, !dbg !1905
  %9 = add i64 %gcov_ctr502.i, 1, !dbg !1905
  store i64 %9, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 3), align 8, !dbg !1905
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1104, i32 noundef 9, ptr noundef null) #22, !dbg !1905
  br label %if.end76.i, !dbg !1905

if.end76.i:                                       ; preds = %if.then66.i, %if.end44.i.if.end76.i_crit_edge
  %gcov_ctr.i551.i = load i64, ptr @__llvm_gcov_ctr.234, align 8
  %10 = add i64 %gcov_ctr.i551.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.234, align 8
  %call.i552.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_rq_requeue, ptr noundef nonnull @blk_add_trace_rq_requeue, ptr noundef null) #22, !dbg !1906
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i552.i), !dbg !1909
  %tobool86.not.i = icmp eq i32 %call.i552.i, 0, !dbg !1909
  br i1 %tobool86.not.i, label %if.end76.i.if.end108.i_crit_edge, label %if.then98.i, !dbg !1909, !prof !316

if.end76.i.if.end108.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1909
  br label %if.end108.i, !dbg !1909

if.then98.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1909
  %gcov_ctr503.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 4), align 16, !dbg !1909
  %11 = add i64 %gcov_ctr503.i, 1, !dbg !1909
  store i64 %11, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 4), align 16, !dbg !1909
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1106, i32 noundef 9, ptr noundef null) #22, !dbg !1909
  br label %if.end108.i, !dbg !1909

if.end108.i:                                      ; preds = %if.then98.i, %if.end76.i.if.end108.i_crit_edge
  %gcov_ctr.i553.i = load i64, ptr @__llvm_gcov_ctr.235, align 8
  %12 = add i64 %gcov_ctr.i553.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.235, align 8
  %call.i554.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_rq_complete, ptr noundef nonnull @blk_add_trace_rq_complete, ptr noundef null) #22, !dbg !1910
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i554.i), !dbg !1913
  %tobool118.not.i = icmp eq i32 %call.i554.i, 0, !dbg !1913
  br i1 %tobool118.not.i, label %if.end108.i.if.end140.i_crit_edge, label %if.then130.i, !dbg !1913, !prof !316

if.end108.i.if.end140.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1913
  br label %if.end140.i, !dbg !1913

if.then130.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1913
  %gcov_ctr504.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 5), align 8, !dbg !1913
  %13 = add i64 %gcov_ctr504.i, 1, !dbg !1913
  store i64 %13, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 5), align 8, !dbg !1913
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1108, i32 noundef 9, ptr noundef null) #22, !dbg !1913
  br label %if.end140.i, !dbg !1913

if.end140.i:                                      ; preds = %if.then130.i, %if.end108.i.if.end140.i_crit_edge
  %gcov_ctr.i555.i = load i64, ptr @__llvm_gcov_ctr.236, align 8
  %14 = add i64 %gcov_ctr.i555.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.236, align 8
  %call.i556.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_bio_bounce, ptr noundef nonnull @blk_add_trace_bio_bounce, ptr noundef null) #22, !dbg !1914
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i556.i), !dbg !1917
  %tobool150.not.i = icmp eq i32 %call.i556.i, 0, !dbg !1917
  br i1 %tobool150.not.i, label %if.end140.i.if.end172.i_crit_edge, label %if.then162.i, !dbg !1917, !prof !316

if.end140.i.if.end172.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1917
  br label %if.end172.i, !dbg !1917

if.then162.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1917
  %gcov_ctr505.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 6), align 16, !dbg !1917
  %15 = add i64 %gcov_ctr505.i, 1, !dbg !1917
  store i64 %15, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 6), align 16, !dbg !1917
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1110, i32 noundef 9, ptr noundef null) #22, !dbg !1917
  br label %if.end172.i, !dbg !1917

if.end172.i:                                      ; preds = %if.then162.i, %if.end140.i.if.end172.i_crit_edge
  %gcov_ctr.i557.i = load i64, ptr @__llvm_gcov_ctr.237, align 8
  %16 = add i64 %gcov_ctr.i557.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.237, align 8
  %call.i558.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_bio_complete, ptr noundef nonnull @blk_add_trace_bio_complete, ptr noundef null) #22, !dbg !1918
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i558.i), !dbg !1921
  %tobool182.not.i = icmp eq i32 %call.i558.i, 0, !dbg !1921
  br i1 %tobool182.not.i, label %if.end172.i.if.end204.i_crit_edge, label %if.then194.i, !dbg !1921, !prof !316

if.end172.i.if.end204.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1921
  br label %if.end204.i, !dbg !1921

if.then194.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1921
  %gcov_ctr506.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 7), align 8, !dbg !1921
  %17 = add i64 %gcov_ctr506.i, 1, !dbg !1921
  store i64 %17, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 7), align 8, !dbg !1921
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef null) #22, !dbg !1921
  br label %if.end204.i, !dbg !1921

if.end204.i:                                      ; preds = %if.then194.i, %if.end172.i.if.end204.i_crit_edge
  %gcov_ctr.i559.i = load i64, ptr @__llvm_gcov_ctr.238, align 8
  %18 = add i64 %gcov_ctr.i559.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.238, align 8
  %call.i560.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_bio_backmerge, ptr noundef nonnull @blk_add_trace_bio_backmerge, ptr noundef null) #22, !dbg !1922
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i560.i), !dbg !1925
  %tobool214.not.i = icmp eq i32 %call.i560.i, 0, !dbg !1925
  br i1 %tobool214.not.i, label %if.end204.i.if.end236.i_crit_edge, label %if.then226.i, !dbg !1925, !prof !316

if.end204.i.if.end236.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1925
  br label %if.end236.i, !dbg !1925

if.then226.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1925
  %gcov_ctr507.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 8), align 16, !dbg !1925
  %19 = add i64 %gcov_ctr507.i, 1, !dbg !1925
  store i64 %19, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 8), align 16, !dbg !1925
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 9, ptr noundef null) #22, !dbg !1925
  br label %if.end236.i, !dbg !1925

if.end236.i:                                      ; preds = %if.then226.i, %if.end204.i.if.end236.i_crit_edge
  %gcov_ctr.i561.i = load i64, ptr @__llvm_gcov_ctr.239, align 8
  %20 = add i64 %gcov_ctr.i561.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.239, align 8
  %call.i562.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_bio_frontmerge, ptr noundef nonnull @blk_add_trace_bio_frontmerge, ptr noundef null) #22, !dbg !1926
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i562.i), !dbg !1929
  %tobool246.not.i = icmp eq i32 %call.i562.i, 0, !dbg !1929
  br i1 %tobool246.not.i, label %if.end236.i.if.end268.i_crit_edge, label %if.then258.i, !dbg !1929, !prof !316

if.end236.i.if.end268.i_crit_edge:                ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1929
  br label %if.end268.i, !dbg !1929

if.then258.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1929
  %gcov_ctr508.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 9), align 8, !dbg !1929
  %21 = add i64 %gcov_ctr508.i, 1, !dbg !1929
  store i64 %21, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 9), align 8, !dbg !1929
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1116, i32 noundef 9, ptr noundef null) #22, !dbg !1929
  br label %if.end268.i, !dbg !1929

if.end268.i:                                      ; preds = %if.then258.i, %if.end236.i.if.end268.i_crit_edge
  %gcov_ctr.i563.i = load i64, ptr @__llvm_gcov_ctr.240, align 8
  %22 = add i64 %gcov_ctr.i563.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.240, align 8
  %call.i564.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_bio_queue, ptr noundef nonnull @blk_add_trace_bio_queue, ptr noundef null) #22, !dbg !1930
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i564.i), !dbg !1933
  %tobool278.not.i = icmp eq i32 %call.i564.i, 0, !dbg !1933
  br i1 %tobool278.not.i, label %if.end268.i.if.end300.i_crit_edge, label %if.then290.i, !dbg !1933, !prof !316

if.end268.i.if.end300.i_crit_edge:                ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1933
  br label %if.end300.i, !dbg !1933

if.then290.i:                                     ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1933
  %gcov_ctr509.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 10), align 16, !dbg !1933
  %23 = add i64 %gcov_ctr509.i, 1, !dbg !1933
  store i64 %23, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 10), align 16, !dbg !1933
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1118, i32 noundef 9, ptr noundef null) #22, !dbg !1933
  br label %if.end300.i, !dbg !1933

if.end300.i:                                      ; preds = %if.then290.i, %if.end268.i.if.end300.i_crit_edge
  %gcov_ctr.i565.i = load i64, ptr @__llvm_gcov_ctr.241, align 8
  %24 = add i64 %gcov_ctr.i565.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.241, align 8
  %call.i566.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_getrq, ptr noundef nonnull @blk_add_trace_getrq, ptr noundef null) #22, !dbg !1934
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566.i), !dbg !1937
  %tobool310.not.i = icmp eq i32 %call.i566.i, 0, !dbg !1937
  br i1 %tobool310.not.i, label %if.end300.i.if.end332.i_crit_edge, label %if.then322.i, !dbg !1937, !prof !316

if.end300.i.if.end332.i_crit_edge:                ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1937
  br label %if.end332.i, !dbg !1937

if.then322.i:                                     ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1937
  %gcov_ctr510.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 11), align 8, !dbg !1937
  %25 = add i64 %gcov_ctr510.i, 1, !dbg !1937
  store i64 %25, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 11), align 8, !dbg !1937
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1120, i32 noundef 9, ptr noundef null) #22, !dbg !1937
  br label %if.end332.i, !dbg !1937

if.end332.i:                                      ; preds = %if.then322.i, %if.end300.i.if.end332.i_crit_edge
  %gcov_ctr.i567.i = load i64, ptr @__llvm_gcov_ctr.242, align 8
  %26 = add i64 %gcov_ctr.i567.i, 1
  store i64 %26, ptr @__llvm_gcov_ctr.242, align 8
  %call.i568.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_plug, ptr noundef nonnull @blk_add_trace_plug, ptr noundef null) #22, !dbg !1938
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i568.i), !dbg !1941
  %tobool342.not.i = icmp eq i32 %call.i568.i, 0, !dbg !1941
  br i1 %tobool342.not.i, label %if.end332.i.if.end364.i_crit_edge, label %if.then354.i, !dbg !1941, !prof !316

if.end332.i.if.end364.i_crit_edge:                ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1941
  br label %if.end364.i, !dbg !1941

if.then354.i:                                     ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1941
  %gcov_ctr511.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 12), align 16, !dbg !1941
  %27 = add i64 %gcov_ctr511.i, 1, !dbg !1941
  store i64 %27, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 12), align 16, !dbg !1941
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1122, i32 noundef 9, ptr noundef null) #22, !dbg !1941
  br label %if.end364.i, !dbg !1941

if.end364.i:                                      ; preds = %if.then354.i, %if.end332.i.if.end364.i_crit_edge
  %gcov_ctr.i569.i = load i64, ptr @__llvm_gcov_ctr.243, align 8
  %28 = add i64 %gcov_ctr.i569.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.243, align 8
  %call.i570.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_unplug, ptr noundef nonnull @blk_add_trace_unplug, ptr noundef null) #22, !dbg !1942
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i570.i), !dbg !1945
  %tobool374.not.i = icmp eq i32 %call.i570.i, 0, !dbg !1945
  br i1 %tobool374.not.i, label %if.end364.i.if.end396.i_crit_edge, label %if.then386.i, !dbg !1945, !prof !316

if.end364.i.if.end396.i_crit_edge:                ; preds = %if.end364.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1945
  br label %if.end396.i, !dbg !1945

if.then386.i:                                     ; preds = %if.end364.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1945
  %gcov_ctr512.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 13), align 8, !dbg !1945
  %29 = add i64 %gcov_ctr512.i, 1, !dbg !1945
  store i64 %29, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 13), align 8, !dbg !1945
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1124, i32 noundef 9, ptr noundef null) #22, !dbg !1945
  br label %if.end396.i, !dbg !1945

if.end396.i:                                      ; preds = %if.then386.i, %if.end364.i.if.end396.i_crit_edge
  %gcov_ctr.i571.i = load i64, ptr @__llvm_gcov_ctr.244, align 8
  %30 = add i64 %gcov_ctr.i571.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.244, align 8
  %call.i572.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_split, ptr noundef nonnull @blk_add_trace_split, ptr noundef null) #22, !dbg !1946
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i572.i), !dbg !1949
  %tobool406.not.i = icmp eq i32 %call.i572.i, 0, !dbg !1949
  br i1 %tobool406.not.i, label %if.end396.i.if.end428.i_crit_edge, label %if.then418.i, !dbg !1949, !prof !316

if.end396.i.if.end428.i_crit_edge:                ; preds = %if.end396.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1949
  br label %if.end428.i, !dbg !1949

if.then418.i:                                     ; preds = %if.end396.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1949
  %gcov_ctr513.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 14), align 16, !dbg !1949
  %31 = add i64 %gcov_ctr513.i, 1, !dbg !1949
  store i64 %31, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 14), align 16, !dbg !1949
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1126, i32 noundef 9, ptr noundef null) #22, !dbg !1949
  br label %if.end428.i, !dbg !1949

if.end428.i:                                      ; preds = %if.then418.i, %if.end396.i.if.end428.i_crit_edge
  %gcov_ctr.i573.i = load i64, ptr @__llvm_gcov_ctr.245, align 8
  %32 = add i64 %gcov_ctr.i573.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.245, align 8
  %call.i574.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_bio_remap, ptr noundef nonnull @blk_add_trace_bio_remap, ptr noundef null) #22, !dbg !1950
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574.i), !dbg !1953
  %tobool438.not.i = icmp eq i32 %call.i574.i, 0, !dbg !1953
  br i1 %tobool438.not.i, label %if.end428.i.if.end460.i_crit_edge, label %if.then450.i, !dbg !1953, !prof !316

if.end428.i.if.end460.i_crit_edge:                ; preds = %if.end428.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1953
  br label %if.end460.i, !dbg !1953

if.then450.i:                                     ; preds = %if.end428.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1953
  %gcov_ctr514.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 15), align 8, !dbg !1953
  %33 = add i64 %gcov_ctr514.i, 1, !dbg !1953
  store i64 %33, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 15), align 8, !dbg !1953
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1128, i32 noundef 9, ptr noundef null) #22, !dbg !1953
  br label %if.end460.i, !dbg !1953

if.end460.i:                                      ; preds = %if.then450.i, %if.end428.i.if.end460.i_crit_edge
  %gcov_ctr.i575.i = load i64, ptr @__llvm_gcov_ctr.246, align 8
  %34 = add i64 %gcov_ctr.i575.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.246, align 8
  %call.i576.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_block_rq_remap, ptr noundef nonnull @blk_add_trace_rq_remap, ptr noundef null) #22, !dbg !1954
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i576.i), !dbg !1957
  %tobool470.not.i = icmp eq i32 %call.i576.i, 0, !dbg !1957
  br i1 %tobool470.not.i, label %if.end460.i.if.end_crit_edge, label %if.then482.i, !dbg !1957, !prof !316

if.end460.i.if.end_crit_edge:                     ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1957
  br label %if.end, !dbg !1957

if.then482.i:                                     ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1957
  %gcov_ctr515.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 16), align 16, !dbg !1957
  %35 = add i64 %gcov_ctr515.i, 1, !dbg !1957
  store i64 %35, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.230, i32 0, i32 16), align 16, !dbg !1957
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1130, i32 noundef 9, ptr noundef null) #22, !dbg !1957
  br label %if.end, !dbg !1957

if.end:                                           ; preds = %if.then482.i, %if.end460.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @blk_probe_mutex) #22, !dbg !1958
  ret void, !dbg !1959
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_dropped_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 !dbg !1960 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1961
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.216, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.216, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16, !dbg !1962
  %1 = ptrtoint ptr %private_data to i32, !dbg !1962
  call void @__asan_load4_noabort(i32 %1), !dbg !1962
  %2 = load ptr, ptr %private_data, align 4, !dbg !1962
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #22, !dbg !1963
  %dropped = getelementptr inbounds %struct.blk_trace, ptr %2, i32 0, i32 11, !dbg !1964
  %3 = call ptr @memset(ptr %buf, i32 255, i32 16), !dbg !1965
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.217, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.217, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.218, align 8
  %5 = add i64 %gcov_ctr.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.218, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dropped, i32 noundef 4) #22, !dbg !1966
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %6 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.196, align 8
  %7 = ptrtoint ptr %dropped to i32, !dbg !1971
  call void @__asan_load4_noabort(i32 %7), !dbg !1971
  %8 = load volatile i32, ptr %dropped, align 4, !dbg !1971
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %8), !dbg !1972
  %call4 = call i32 @strlen(ptr noundef nonnull %buf) #27, !dbg !1973
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call4) #22, !dbg !1974
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #22, !dbg !1975
  ret i32 %call5, !dbg !1976
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_msg_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 !dbg !1977 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1978
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %count), !dbg !1979
  %cmp = icmp ugt i32 %count, 127, !dbg !1979
  br i1 %cmp, label %if.then, label %if.end, !dbg !1980

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1981
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.219, align 16, !dbg !1981
  %0 = add i64 %gcov_ctr, 1, !dbg !1981
  store i64 %0, ptr @__llvm_gcov_ctr.219, align 16, !dbg !1981
  br label %cleanup, !dbg !1981

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user_nul(ptr noundef %buffer, i32 noundef %count) #22, !dbg !1982
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.220, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.220, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr), !dbg !1983
  br i1 %cmp.i, label %if.then2, label %if.end4, !dbg !1986

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1987
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.219, i32 0, i32 1), align 8, !dbg !1987
  %2 = add i64 %gcov_ctr6, 1, !dbg !1987
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.219, i32 0, i32 1), align 8, !dbg !1987
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr.221, align 8
  %3 = add i64 %gcov_ctr.i13, 1
  store i64 %3, ptr @__llvm_gcov_ctr.221, align 8
  %4 = ptrtoint ptr %call to i32, !dbg !1988
  br label %cleanup, !dbg !1991

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !1992
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.219, i32 0, i32 2), align 16, !dbg !1992
  %5 = add i64 %gcov_ctr7, 1, !dbg !1992
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.219, i32 0, i32 2), align 16, !dbg !1992
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16, !dbg !1993
  %6 = ptrtoint ptr %private_data to i32, !dbg !1993
  call void @__asan_load4_noabort(i32 %6), !dbg !1993
  %7 = load ptr, ptr %private_data, align 4, !dbg !1993
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef %call), !dbg !1994
  tail call void @kfree(ptr noundef %call) #22, !dbg !1995
  br label %cleanup, !dbg !1996

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %4, %if.then2 ], [ %count, %if.end4 ], !dbg !1997
  ret i32 %retval.0, !dbg !1998
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_subbuf_start_callback(ptr noundef %buf, ptr nocapture noundef readnone %subbuf, ptr nocapture noundef readnone %prev_subbuf, i32 noundef %prev_padding) #0 align 64 !dbg !1999 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2000
  %call = tail call i32 @relay_buf_full(ptr noundef %buf) #22, !dbg !2001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !2001
  %tobool.not = icmp eq i32 %call, 0, !dbg !2001
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2002

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2003
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.222, align 8, !dbg !2003
  %0 = add i64 %gcov_ctr, 1, !dbg !2003
  store i64 %0, ptr @__llvm_gcov_ctr.222, align 8, !dbg !2003
  br label %cleanup, !dbg !2003

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2004
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.222, i32 0, i32 1), align 8, !dbg !2004
  %1 = add i64 %gcov_ctr1, 1, !dbg !2004
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.222, i32 0, i32 1), align 8, !dbg !2004
  %chan = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 5, !dbg !2005
  %2 = ptrtoint ptr %chan to i32, !dbg !2005
  call void @__asan_load4_noabort(i32 %2), !dbg !2005
  %3 = load ptr, ptr %chan, align 4, !dbg !2005
  %private_data = getelementptr inbounds %struct.rchan, ptr %3, i32 0, i32 6, !dbg !2006
  %4 = ptrtoint ptr %private_data to i32, !dbg !2006
  call void @__asan_load4_noabort(i32 %4), !dbg !2006
  %5 = load ptr, ptr %private_data, align 4, !dbg !2006
  %dropped = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 11, !dbg !2007
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.225, align 8
  %6 = add i64 %gcov_ctr.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.225, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.226, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.226, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dropped, i32 noundef 4) #22, !dbg !2008
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %8 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.196, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.227, align 8
  %9 = add i64 %gcov_ctr.i2.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.227, align 8
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.228, align 8
  %10 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.228, align 8
  tail call void @llvm.prefetch.p0(ptr %dropped, i32 1, i32 3, i32 1) #22, !dbg !2013
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dropped, ptr %dropped, i32 1, ptr elementtype(i32) %dropped) #22, !dbg !2013, !srcloc !2020
  br label %cleanup, !dbg !2021

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.then ], !dbg !2022
  ret i32 %retval.0, !dbg !2023
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @blk_create_buf_file_callback(ptr noundef %filename, ptr noundef %parent, i16 noundef zeroext %mode, ptr noundef %buf, ptr nocapture noundef readnone %is_global) #0 align 64 !dbg !2024 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2025
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.223, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.223, align 8
  %call = tail call ptr @debugfs_create_file(ptr noundef %filename, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %buf, ptr noundef nonnull @relay_file_operations) #22, !dbg !2026
  ret ptr %call, !dbg !2027
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_remove_buf_file_callback(ptr noundef %dentry) #0 align 64 !dbg !2028 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2029
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.224, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.224, align 8
  tail call void @debugfs_remove(ptr noundef %dentry) #22, !dbg !2030
  ret i32 0, !dbg !2031
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_buf_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @relay_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_record_cmdline(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_note_tsk(ptr nocapture noundef %tsk) unnamed_addr #0 align 64 !dbg !2032 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2033
  %0 = load i32, ptr @blktrace_seq, align 4, !dbg !2034
  %btrace_seq = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 30, !dbg !2035
  %1 = ptrtoint ptr %btrace_seq to i32, !dbg !2036
  call void @__asan_store4_noabort(i32 %1), !dbg !2036
  store i32 %0, ptr %btrace_seq, align 128, !dbg !2036
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @running_trace_lock) #22, !dbg !2037
  %.pn21 = load ptr, ptr @running_trace_list, align 4, !dbg !2038
  %cmp2.not22 = icmp eq ptr %.pn21, @running_trace_list, !dbg !2038
  br i1 %cmp2.not22, label %entry.do.body8_crit_edge, label %for.body.lr.ph, !dbg !2038

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2038
  br label %do.body8, !dbg !2038

for.body.lr.ph:                                   ; preds = %entry
  %pid = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 68
  %comm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 101
  br label %for.body, !dbg !2038

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn23 = phi ptr [ %.pn21, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %bt.0 = getelementptr i8, ptr %.pn23, i32 -52, !dbg !2038
  %2 = ptrtoint ptr %pid to i32, !dbg !2039
  call void @__asan_load4_noabort(i32 %2), !dbg !2039
  %3 = load i32, ptr %pid, align 8, !dbg !2039
  tail call fastcc void @trace_note(ptr noundef %bt.0, i32 noundef %3, i32 noundef 67108864, ptr noundef %comm, i32 noundef 16, i64 noundef 0), !dbg !2040
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.261, align 8, !dbg !2038
  %4 = add i64 %gcov_ctr, 1, !dbg !2038
  store i64 %4, ptr @__llvm_gcov_ctr.261, align 8, !dbg !2038
  %5 = ptrtoint ptr %.pn23 to i32, !dbg !2038
  call void @__asan_load4_noabort(i32 %5), !dbg !2038
  %.pn = load ptr, ptr %.pn23, align 4, !dbg !2038
  %cmp2.not = icmp eq ptr %.pn, @running_trace_list, !dbg !2038
  br i1 %cmp2.not, label %for.body.do.body8_crit_edge, label %for.body.for.body_crit_edge, !dbg !2038, !llvm.loop !2041

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2038
  br label %for.body, !dbg !2038

for.body.do.body8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2038
  br label %do.body8, !dbg !2038

do.body8:                                         ; preds = %for.body.do.body8_crit_edge, %entry.do.body8_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.261, i32 0, i32 1), align 8, !dbg !2043
  %6 = add i64 %gcov_ctr16, 1, !dbg !2043
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.261, i32 0, i32 1), align 8, !dbg !2043
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @running_trace_lock, i32 noundef %call) #22, !dbg !2043
  ret void, !dbg !2044
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trace_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tracer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_trace_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_trace_event_print(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readnone %event) #0 align 64 !dbg !2045 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2046
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.262, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.262, align 8
  %call = tail call fastcc i32 @print_one_line(ptr noundef %iter, i1 noundef zeroext false), !dbg !2047
  ret i32 %call, !dbg !2048
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_trace_event_print_binary(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readnone %event) #0 align 64 !dbg !2049 {
entry:
  %old.i = alloca %struct.blk_io_trace, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2050
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.263, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.263, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.289, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.289, align 8
  %seq.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2051
  %ent.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !2054
  %2 = ptrtoint ptr %ent.i to i32, !dbg !2054
  call void @__asan_load4_noabort(i32 %2), !dbg !2054
  %3 = load ptr, ptr %ent.i, align 8, !dbg !2054
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %old.i) #22, !dbg !2055
  %4 = call ptr @memset(ptr %old.i, i32 0, i32 48), !dbg !2056
  %5 = ptrtoint ptr %old.i to i32, !dbg !2057
  call void @__asan_store4_noabort(i32 %5), !dbg !2057
  store i32 1700885511, ptr %old.i, align 8, !dbg !2057
  %time.i = getelementptr inbounds %struct.blk_io_trace, ptr %old.i, i32 0, i32 2, !dbg !2057
  %ts.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 21, !dbg !2058
  %6 = ptrtoint ptr %ts.i to i32, !dbg !2058
  call void @__asan_load8_noabort(i32 %6), !dbg !2058
  %7 = load i64, ptr %ts.i, align 8, !dbg !2058
  %8 = ptrtoint ptr %time.i to i32, !dbg !2057
  call void @__asan_store8_noabort(i32 %8), !dbg !2057
  store i64 %7, ptr %time.i, align 8, !dbg !2057
  call void @trace_seq_putmem(ptr noundef %seq.i, ptr noundef nonnull %old.i, i32 noundef 16) #22, !dbg !2059
  %sector.i = getelementptr inbounds %struct.blk_io_trace, ptr %3, i32 0, i32 3, !dbg !2060
  %pdu_len.i = getelementptr inbounds %struct.blk_io_trace, ptr %3, i32 0, i32 10, !dbg !2061
  %9 = ptrtoint ptr %pdu_len.i to i32, !dbg !2061
  call void @__asan_load2_noabort(i32 %9), !dbg !2061
  %10 = load i16, ptr %pdu_len.i, align 2, !dbg !2061
  %conv.i = zext i16 %10 to i32, !dbg !2062
  %add.i = add nuw nsw i32 %conv.i, 32, !dbg !2063
  call void @trace_seq_putmem(ptr noundef %seq.i, ptr noundef %sector.i, i32 noundef %add.i) #22, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %old.i) #22, !dbg !2065
  %call = call i32 @trace_handle_return(ptr noundef %seq.i) #22, !dbg !2066
  ret i32 %call, !dbg !2067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @print_one_line(ptr noundef %iter, i1 noundef zeroext %classic) unnamed_addr #0 align 64 !dbg !2068 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2069
  %0 = ptrtoint ptr %iter to i32, !dbg !2070
  call void @__asan_load4_noabort(i32 %0), !dbg !2070
  %1 = load ptr, ptr %iter, align 8, !dbg !2070
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2071
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !2072
  %2 = ptrtoint ptr %ent to i32, !dbg !2072
  call void @__asan_load4_noabort(i32 %2), !dbg !2072
  %3 = load ptr, ptr %ent, align 8, !dbg !2072
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.265, align 8
  %action = getelementptr inbounds %struct.blk_io_trace, ptr %3, i32 0, i32 5, !dbg !2073
  %5 = ptrtoint ptr %action to i32, !dbg !2073
  call void @__asan_load4_noabort(i32 %5), !dbg !2073
  %6 = load i32, ptr %action, align 4, !dbg !2073
  %trace_flags = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 24, !dbg !2074
  %7 = ptrtoint ptr %trace_flags to i32, !dbg !2074
  call void @__asan_load4_noabort(i32 %7), !dbg !2074
  %8 = load i32, ptr %trace_flags, align 4, !dbg !2074
  %and3 = and i32 %8, 8, !dbg !2075
  %cond = select i1 %classic, ptr @blk_log_action_classic, ptr @blk_log_action, !dbg !2076
  %and9 = and i32 %6, 256, !dbg !2077
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9), !dbg !2078
  %tobool10 = icmp ne i32 %and9, 0, !dbg !2078
  %and13 = and i32 %6, -257, !dbg !2079
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108866, i32 %and13), !dbg !2080
  %cmp = icmp eq i32 %and13, 67108866, !dbg !2080
  br i1 %cmp, label %if.then, label %if.end, !dbg !2081

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2082
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3), !dbg !2082
  %tobool.not = icmp eq i32 %and3, 0, !dbg !2082
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.264, align 16, !dbg !2083
  %9 = add i64 %gcov_ctr, 1, !dbg !2083
  store i64 %9, ptr @__llvm_gcov_ctr.264, align 16, !dbg !2083
  %cond17 = select i1 %tobool.not, ptr @.str.31, ptr @.str.30, !dbg !2084
  tail call void %cond(ptr noundef %iter, ptr noundef nonnull %cond17, i1 noundef zeroext %tobool10) #22, !dbg !2083, !callees !2085
  %10 = ptrtoint ptr %ent to i32, !dbg !2086
  call void @__asan_load4_noabort(i32 %10), !dbg !2086
  %11 = load ptr, ptr %ent, align 8, !dbg !2086
  %gcov_ctr.i73 = load i64, ptr @__llvm_gcov_ctr.268, align 8
  %12 = add i64 %gcov_ctr.i73, 1
  store i64 %12, ptr @__llvm_gcov_ctr.268, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.274, align 8
  %13 = add i64 %gcov_ctr.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.274, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %add.ptr.i.i = getelementptr %struct.blk_io_trace, ptr %11, i32 1, !dbg !2087
  %14 = lshr exact i32 %and9, 5, !dbg !2092
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %14, !dbg !2093
  %gcov_ctr.i6.i = load i64, ptr @__llvm_gcov_ctr.275, align 8
  %15 = add i64 %gcov_ctr.i6.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.275, align 8
  %16 = add i64 %gcov_ctr.i.i.i, 2
  store i64 %16, ptr @__llvm_gcov_ctr.265, align 8
  %pdu_len.i.i = getelementptr inbounds %struct.blk_io_trace, ptr %11, i32 0, i32 10, !dbg !2094
  %17 = ptrtoint ptr %pdu_len.i.i to i32, !dbg !2094
  call void @__asan_load2_noabort(i32 %17), !dbg !2094
  %18 = load i16, ptr %pdu_len.i.i, align 2, !dbg !2094
  %conv.i.i = zext i16 %18 to i32, !dbg !2097
  %cond.neg.i.i = select i1 %tobool10, i32 -8, i32 0, !dbg !2098
  %sub.i.i = add nsw i32 %cond.neg.i.i, %conv.i.i, !dbg !2099
  tail call void @trace_seq_putmem(ptr noundef %seq, ptr noundef %add.ptr1.i.i, i32 noundef %sub.i.i) #22, !dbg !2100
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #22, !dbg !2101
  br label %cleanup, !dbg !2102

if.end:                                           ; preds = %entry
  %conv = and i32 %6, 65279, !dbg !2103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv), !dbg !2104
  %cmp23 = icmp eq i32 %conv, 0, !dbg !2104
  br i1 %cmp23, label %if.end.if.then31_crit_edge, label %lor.rhs, !dbg !2104, !prof !368

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2104
  br label %if.then31, !dbg !2104

lor.rhs:                                          ; preds = %if.end
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.264, i32 0, i32 1), align 8, !dbg !2104
  %19 = add i64 %gcov_ctr49, 1, !dbg !2104
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.264, i32 0, i32 1), align 8, !dbg !2104
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv), !dbg !2104
  %cmp26 = icmp ugt i32 %conv, 15, !dbg !2104
  br i1 %cmp26, label %lor.rhs.if.then31_crit_edge, label %if.else, !dbg !2104, !prof !368

lor.rhs.if.then31_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2104
  br label %if.then31, !dbg !2104

if.then31:                                        ; preds = %lor.rhs.if.then31_crit_edge, %if.end.if.then31_crit_edge
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.264, i32 0, i32 3), align 8, !dbg !2105
  %20 = add i64 %gcov_ctr51, 1, !dbg !2105
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.264, i32 0, i32 3), align 8, !dbg !2105
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, i32 noundef %conv) #22, !dbg !2106
  br label %cleanup, !dbg !2106

if.else:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2107
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.264, i32 0, i32 2), align 16, !dbg !2107
  %21 = add i64 %gcov_ctr50, 1, !dbg !2107
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.264, i32 0, i32 2), align 16, !dbg !2107
  %arrayidx = getelementptr [16 x %struct.anon.113], ptr @what2act, i32 0, i32 %conv, !dbg !2108
  %and3.lobit = lshr exact i32 %and3, 3, !dbg !2108
  %arrayidx35 = getelementptr [2 x ptr], ptr %arrayidx, i32 0, i32 %and3.lobit, !dbg !2108
  %22 = ptrtoint ptr %arrayidx35 to i32, !dbg !2108
  call void @__asan_load4_noabort(i32 %22), !dbg !2108
  %23 = load ptr, ptr %arrayidx35, align 4, !dbg !2108
  tail call void %cond(ptr noundef %iter, ptr noundef %23, i1 noundef zeroext %tobool10) #22, !dbg !2107, !callees !2085
  %print = getelementptr [16 x %struct.anon.113], ptr @what2act, i32 0, i32 %conv, i32 1, !dbg !2109
  %24 = ptrtoint ptr %print to i32, !dbg !2109
  call void @__asan_load4_noabort(i32 %24), !dbg !2109
  %25 = load ptr, ptr %print, align 4, !dbg !2109
  %26 = ptrtoint ptr %ent to i32, !dbg !2110
  call void @__asan_load4_noabort(i32 %26), !dbg !2110
  %27 = load ptr, ptr %ent, align 8, !dbg !2110
  tail call void %25(ptr noundef %seq, ptr noundef %27, i1 noundef zeroext %tobool10) #22, !dbg !2111
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then31, %if.then
  %call42 = tail call i32 @trace_handle_return(ptr noundef %seq) #22, !dbg !2112
  ret i32 %call42, !dbg !2113
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_action_classic(ptr noundef %iter, ptr noundef %act, i1 noundef zeroext %has_cg) unnamed_addr #0 align 64 !dbg !2114 {
entry:
  %rwbs = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rwbs) #22, !dbg !2116
  %ts1 = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 21, !dbg !2117
  %0 = ptrtoint ptr %rwbs to i32, !dbg !2118
  call void @__asan_store8_noabort(i32 %0), !dbg !2118
  store i64 -1, ptr %rwbs, align 8, !dbg !2118
  %1 = ptrtoint ptr %ts1 to i32, !dbg !2117
  call void @__asan_load8_noabort(i32 %1), !dbg !2117
  %2 = load i64, ptr %ts1, align 8, !dbg !2117
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.266, align 16, !dbg !2119
  %3 = add i64 %gcov_ctr, 1, !dbg !2119
  store i64 %3, ptr @__llvm_gcov_ctr.266, align 16, !dbg !2119
  %gcov_ctr191 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.266, i32 0, i32 4), align 16, !dbg !2119
  %4 = add i64 %gcov_ctr191, 1, !dbg !2119
  store i64 %4, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.266, i32 0, i32 4), align 16, !dbg !2119
  %gcov_ctr193 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.266, i32 0, i32 6), align 16, !dbg !2119
  %5 = add i64 %gcov_ctr193, 1, !dbg !2119
  store i64 %5, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.266, i32 0, i32 6), align 16, !dbg !2119
  %gcov_ctr195 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.266, i32 0, i32 8), align 16, !dbg !2119
  %6 = add i64 %gcov_ctr195, 1, !dbg !2119
  store i64 %6, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.266, i32 0, i32 8), align 16, !dbg !2119
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.270, i32 0, i32 2), align 16, !dbg !2120
  %7 = add i64 %gcov_ctr14.i, 1, !dbg !2120
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.270, i32 0, i32 2), align 16, !dbg !2120
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %2, i32 0) #23, !dbg !2120, !srcloc !2124
  %asmresult.i = extractvalue { i64, i32 } %8, 0, !dbg !2120
  %asmresult4.i = extractvalue { i64, i32 } %8, 1, !dbg !2120
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %2, i64 %asmresult.i, i32 %asmresult4.i) #23, !dbg !2125, !srcloc !2126
  %asmresult10.i = extractvalue { i64, i32 } %9, 0, !dbg !2125
  %conv15 = trunc i64 %2 to i32, !dbg !2119
  %div159289 = lshr i64 %asmresult10.i, 29, !dbg !2119
  %conv160 = trunc i64 %div159289 to i32, !dbg !2119
  %mul161.neg = mul i32 %conv160, -1000000000, !dbg !2119
  %sub162 = add i32 %mul161.neg, %conv15, !dbg !2119
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !2127
  %10 = ptrtoint ptr %ent to i32, !dbg !2127
  call void @__asan_load4_noabort(i32 %10), !dbg !2127
  %11 = load ptr, ptr %ent, align 8, !dbg !2127
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %12 = add i64 %gcov_ctr.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.265, align 8
  call fastcc void @fill_rwbs(ptr noundef nonnull %rwbs, ptr noundef %11), !dbg !2128
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2129
  %device = getelementptr inbounds %struct.blk_io_trace, ptr %11, i32 0, i32 7, !dbg !2130
  %13 = ptrtoint ptr %device to i32, !dbg !2130
  call void @__asan_load4_noabort(i32 %13), !dbg !2130
  %14 = load i32, ptr %device, align 4, !dbg !2130
  %shr183 = lshr i32 %14, 20, !dbg !2130
  %and185 = and i32 %14, 1048575, !dbg !2131
  %cpu = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 20, !dbg !2132
  %15 = ptrtoint ptr %cpu to i32, !dbg !2132
  call void @__asan_load4_noabort(i32 %15), !dbg !2132
  %16 = load i32, ptr %cpu, align 8, !dbg !2132
  %17 = ptrtoint ptr %ent to i32, !dbg !2133
  call void @__asan_load4_noabort(i32 %17), !dbg !2133
  %18 = load ptr, ptr %ent, align 8, !dbg !2133
  %pid = getelementptr inbounds %struct.trace_entry, ptr %18, i32 0, i32 3, !dbg !2134
  %19 = ptrtoint ptr %pid to i32, !dbg !2134
  call void @__asan_load4_noabort(i32 %19), !dbg !2134
  %20 = load i32, ptr %pid, align 4, !dbg !2134
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.33, i32 noundef %shr183, i32 noundef %and185, i32 noundef %16, i32 noundef %conv160, i32 noundef %sub162, i32 noundef %20, ptr noundef %act, ptr noundef nonnull %rwbs) #22, !dbg !2135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rwbs) #22, !dbg !2136
  ret void, !dbg !2136
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_action(ptr noundef %iter, ptr noundef %act, i1 noundef zeroext %has_cg) unnamed_addr #0 align 64 !dbg !2137 {
entry:
  %rwbs = alloca [8 x i8], align 8
  %blkcg_name_buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rwbs) #22, !dbg !2139
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !2140
  %0 = ptrtoint ptr %rwbs to i32, !dbg !2141
  call void @__asan_store8_noabort(i32 %0), !dbg !2141
  store i64 -1, ptr %rwbs, align 8, !dbg !2141
  %1 = ptrtoint ptr %ent to i32, !dbg !2140
  call void @__asan_load4_noabort(i32 %1), !dbg !2140
  %2 = load ptr, ptr %ent, align 8, !dbg !2140
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.265, align 8
  call fastcc void @fill_rwbs(ptr noundef nonnull %rwbs, ptr noundef %2), !dbg !2142
  br i1 %has_cg, label %if.then, label %if.else18, !dbg !2143

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %ent to i32, !dbg !2144
  call void @__asan_load4_noabort(i32 %4), !dbg !2144
  %5 = load ptr, ptr %ent, align 8, !dbg !2144
  %gcov_ctr.i42 = load i64, ptr @__llvm_gcov_ctr.273, align 8
  %6 = add i64 %gcov_ctr.i42, 1
  store i64 %6, ptr @__llvm_gcov_ctr.273, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.265, align 8
  %add.ptr.i = getelementptr %struct.blk_io_trace, ptr %5, i32 1, !dbg !2145
  %8 = ptrtoint ptr %add.ptr.i to i32, !dbg !2148
  call void @__asan_load8_noabort(i32 %8), !dbg !2148
  %9 = load i64, ptr %add.ptr.i, align 8, !dbg !2148
  %10 = load i32, ptr @blk_tracer_flags, align 4, !dbg !2149
  %and = and i32 %10, 4, !dbg !2150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2150
  %tobool3.not = icmp eq i32 %and, 0, !dbg !2150
  br i1 %tobool3.not, label %if.else, label %if.then4, !dbg !2151

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2152
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.267, align 16, !dbg !2152
  %11 = add i64 %gcov_ctr, 1, !dbg !2152
  store i64 %11, ptr @__llvm_gcov_ctr.267, align 16, !dbg !2152
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %blkcg_name_buf) #22, !dbg !2152
  %12 = getelementptr inbounds i8, ptr %blkcg_name_buf, i32 5, !dbg !2153
  %13 = call ptr @memset(ptr %12, i32 0, i32 251), !dbg !2153
  %14 = ptrtoint ptr %blkcg_name_buf to i32, !dbg !2153
  call void @__asan_store1_noabort(i32 %14), !dbg !2153
  store i8 60, ptr %blkcg_name_buf, align 1, !dbg !2153
  %15 = getelementptr inbounds [256 x i8], ptr %blkcg_name_buf, i32 0, i32 1, !dbg !2153
  %16 = ptrtoint ptr %15 to i32, !dbg !2153
  call void @__asan_store1_noabort(i32 %16), !dbg !2153
  store i8 46, ptr %15, align 1, !dbg !2153
  %17 = getelementptr inbounds [256 x i8], ptr %blkcg_name_buf, i32 0, i32 2, !dbg !2153
  %18 = ptrtoint ptr %17 to i32, !dbg !2153
  call void @__asan_store1_noabort(i32 %18), !dbg !2153
  store i8 46, ptr %17, align 1, !dbg !2153
  %19 = getelementptr inbounds [256 x i8], ptr %blkcg_name_buf, i32 0, i32 3, !dbg !2153
  %20 = ptrtoint ptr %19 to i32, !dbg !2153
  call void @__asan_store1_noabort(i32 %20), !dbg !2153
  store i8 46, ptr %19, align 1, !dbg !2153
  %21 = getelementptr inbounds [256 x i8], ptr %blkcg_name_buf, i32 0, i32 4, !dbg !2153
  %22 = ptrtoint ptr %21 to i32, !dbg !2153
  call void @__asan_store1_noabort(i32 %22), !dbg !2153
  store i8 62, ptr %21, align 1, !dbg !2153
  call void @cgroup_path_from_kernfs_id(i64 noundef %9, ptr noundef nonnull %blkcg_name_buf, i32 noundef 256) #22, !dbg !2154
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2155
  %device = getelementptr inbounds %struct.blk_io_trace, ptr %2, i32 0, i32 7, !dbg !2156
  %23 = ptrtoint ptr %device to i32, !dbg !2156
  call void @__asan_load4_noabort(i32 %23), !dbg !2156
  %24 = load i32, ptr %device, align 4, !dbg !2156
  %shr = lshr i32 %24, 20, !dbg !2156
  %and7 = and i32 %24, 1048575, !dbg !2157
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.34, i32 noundef %shr, i32 noundef %and7, ptr noundef nonnull %blkcg_name_buf, ptr noundef %act, ptr noundef nonnull %rwbs) #22, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %blkcg_name_buf) #22, !dbg !2159
  br label %if.end25, !dbg !2159

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2160
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.267, i32 0, i32 1), align 8, !dbg !2160
  %25 = add i64 %gcov_ctr26, 1, !dbg !2160
  store i64 %25, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.267, i32 0, i32 1), align 8, !dbg !2160
  %seq10 = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2161
  %device11 = getelementptr inbounds %struct.blk_io_trace, ptr %2, i32 0, i32 7, !dbg !2162
  %26 = ptrtoint ptr %device11 to i32, !dbg !2162
  call void @__asan_load4_noabort(i32 %26), !dbg !2162
  %27 = load i32, ptr %device11, align 4, !dbg !2162
  %shr12 = lshr i32 %27, 20, !dbg !2162
  %and14 = and i32 %27, 1048575, !dbg !2163
  %and15 = and i64 %9, 4294967295, !dbg !2164
  %shr16 = lshr i64 %9, 32, !dbg !2165
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq10, ptr noundef nonnull @.str.35, i32 noundef %shr12, i32 noundef %and14, i64 noundef %and15, i64 noundef %shr16, ptr noundef %act, ptr noundef nonnull %rwbs) #22, !dbg !2166
  br label %if.end25

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2167
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.267, i32 0, i32 2), align 16, !dbg !2167
  %28 = add i64 %gcov_ctr27, 1, !dbg !2167
  store i64 %28, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.267, i32 0, i32 2), align 16, !dbg !2167
  %seq19 = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2168
  %device20 = getelementptr inbounds %struct.blk_io_trace, ptr %2, i32 0, i32 7, !dbg !2169
  %29 = ptrtoint ptr %device20 to i32, !dbg !2169
  call void @__asan_load4_noabort(i32 %29), !dbg !2169
  %30 = load i32, ptr %device20, align 4, !dbg !2169
  %shr21 = lshr i32 %30, 20, !dbg !2169
  %and23 = and i32 %30, 1048575, !dbg !2170
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq19, ptr noundef nonnull @.str.36, i32 noundef %shr21, i32 noundef %and23, ptr noundef %act, ptr noundef nonnull %rwbs) #22, !dbg !2171
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %if.else, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rwbs) #22, !dbg !2172
  ret void, !dbg !2172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fill_rwbs(ptr nocapture noundef writeonly %rwbs, ptr nocapture noundef readonly %t) unnamed_addr #6 align 64 !dbg !2173 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2174
  %action = getelementptr inbounds %struct.blk_io_trace, ptr %t, i32 0, i32 5, !dbg !2175
  %0 = ptrtoint ptr %action to i32, !dbg !2175
  call void @__asan_load4_noabort(i32 %0), !dbg !2175
  %1 = load i32, ptr %action, align 4, !dbg !2175
  %and = and i32 %1, -257, !dbg !2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108866, i32 %and), !dbg !2177
  %cmp = icmp eq i32 %and, 67108866, !dbg !2177
  br i1 %cmp, label %if.then, label %if.end, !dbg !2178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2179
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.272, align 16, !dbg !2179
  %2 = add i64 %gcov_ctr, 1, !dbg !2179
  store i64 %2, ptr @__llvm_gcov_ctr.272, align 16, !dbg !2179
  %3 = ptrtoint ptr %rwbs to i32, !dbg !2180
  call void @__asan_store1_noabort(i32 %3), !dbg !2180
  store i8 78, ptr %rwbs, align 1, !dbg !2180
  br label %out, !dbg !2181

if.end:                                           ; preds = %entry
  %4 = and i32 %1, 262144, !dbg !2182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4), !dbg !2182
  %tobool.not = icmp eq i32 %4, 0, !dbg !2182
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3, !dbg !2183

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2183
  br label %if.end6, !dbg !2183

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2184
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 1), align 8, !dbg !2184
  %5 = add i64 %gcov_ctr53, 1, !dbg !2184
  store i64 %5, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 1), align 8, !dbg !2184
  %6 = ptrtoint ptr %rwbs to i32, !dbg !2185
  call void @__asan_store1_noabort(i32 %6), !dbg !2185
  store i8 70, ptr %rwbs, align 1, !dbg !2185
  br label %if.end6, !dbg !2184

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %i.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ], !dbg !2186
  %7 = and i32 %1, 536870912, !dbg !2187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !2187
  %tobool8.not = icmp eq i32 %7, 0, !dbg !2187
  br i1 %tobool8.not, label %if.else, label %if.then9, !dbg !2188

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2189
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 2), align 16, !dbg !2189
  %8 = add i64 %gcov_ctr54, 1, !dbg !2189
  store i64 %8, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 2), align 16, !dbg !2189
  br label %if.end27, !dbg !2189

if.else:                                          ; preds = %if.end6
  %9 = and i32 %1, 131072, !dbg !2190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9), !dbg !2190
  %tobool13.not = icmp eq i32 %9, 0, !dbg !2190
  br i1 %tobool13.not, label %if.else17, label %if.then14, !dbg !2191

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2192
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 3), align 8, !dbg !2192
  %10 = add i64 %gcov_ctr55, 1, !dbg !2192
  store i64 %10, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 3), align 8, !dbg !2192
  br label %if.end27, !dbg !2192

if.else17:                                        ; preds = %if.else
  %bytes = getelementptr inbounds %struct.blk_io_trace, ptr %t, i32 0, i32 4, !dbg !2193
  %11 = ptrtoint ptr %bytes to i32, !dbg !2193
  call void @__asan_load4_noabort(i32 %11), !dbg !2193
  %12 = load i32, ptr %bytes, align 8, !dbg !2193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12), !dbg !2194
  %tobool18.not = icmp eq i32 %12, 0, !dbg !2194
  br i1 %tobool18.not, label %if.else22, label %if.then19, !dbg !2194

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2195
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 5), align 8, !dbg !2195
  %13 = add i64 %gcov_ctr57, 1, !dbg !2195
  store i64 %13, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 5), align 8, !dbg !2195
  br label %if.end27, !dbg !2195

if.else22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2196
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 4), align 16, !dbg !2196
  %14 = add i64 %gcov_ctr56, 1, !dbg !2196
  store i64 %14, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 4), align 16, !dbg !2196
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then19, %if.then14, %if.then9
  %.sink = phi i8 [ 87, %if.then14 ], [ 78, %if.else22 ], [ 82, %if.then19 ], [ 68, %if.then9 ]
  %arrayidx16 = getelementptr i8, ptr %rwbs, i32 %i.0, !dbg !2186
  %15 = ptrtoint ptr %arrayidx16 to i32, !dbg !2186
  call void @__asan_store1_noabort(i32 %15), !dbg !2186
  store i8 %.sink, ptr %arrayidx16, align 1, !dbg !2186
  %i.1 = add nuw nsw i32 %i.0, 1, !dbg !2186
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1), !dbg !2197
  %tobool29.not = icmp sgt i32 %1, -1, !dbg !2197
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30, !dbg !2198

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2198
  br label %if.end33, !dbg !2198

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2199
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 6), align 16, !dbg !2199
  %16 = add i64 %gcov_ctr58, 1, !dbg !2199
  store i64 %16, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 6), align 16, !dbg !2199
  %inc31 = or i32 %i.0, 2, !dbg !2200
  %arrayidx32 = getelementptr i8, ptr %rwbs, i32 %i.1, !dbg !2199
  %17 = ptrtoint ptr %arrayidx32 to i32, !dbg !2201
  call void @__asan_store1_noabort(i32 %17), !dbg !2201
  store i8 70, ptr %arrayidx32, align 1, !dbg !2201
  br label %if.end33, !dbg !2199

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %i.2 = phi i32 [ %inc31, %if.then30 ], [ %i.1, %if.end27.if.end33_crit_edge ], !dbg !2186
  %18 = and i32 %1, 134217728, !dbg !2202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !2202
  %tobool35.not = icmp eq i32 %18, 0, !dbg !2202
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36, !dbg !2203

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2203
  br label %if.end39, !dbg !2203

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2204
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 7), align 8, !dbg !2204
  %19 = add i64 %gcov_ctr59, 1, !dbg !2204
  store i64 %19, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 7), align 8, !dbg !2204
  %inc37 = add nsw i32 %i.2, 1, !dbg !2205
  %arrayidx38 = getelementptr i8, ptr %rwbs, i32 %i.2, !dbg !2204
  %20 = ptrtoint ptr %arrayidx38 to i32, !dbg !2206
  call void @__asan_store1_noabort(i32 %20), !dbg !2206
  store i8 65, ptr %arrayidx38, align 1, !dbg !2206
  br label %if.end39, !dbg !2204

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %i.3 = phi i32 [ %inc37, %if.then36 ], [ %i.2, %if.end33.if.end39_crit_edge ], !dbg !2186
  %21 = and i32 %1, 524288, !dbg !2207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21), !dbg !2207
  %tobool41.not = icmp eq i32 %21, 0, !dbg !2207
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42, !dbg !2208

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2208
  br label %if.end45, !dbg !2208

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2209
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 8), align 16, !dbg !2209
  %22 = add i64 %gcov_ctr60, 1, !dbg !2209
  store i64 %22, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 8), align 16, !dbg !2209
  %inc43 = add nsw i32 %i.3, 1, !dbg !2210
  %arrayidx44 = getelementptr i8, ptr %rwbs, i32 %i.3, !dbg !2209
  %23 = ptrtoint ptr %arrayidx44 to i32, !dbg !2211
  call void @__asan_store1_noabort(i32 %23), !dbg !2211
  store i8 83, ptr %arrayidx44, align 1, !dbg !2211
  br label %if.end45, !dbg !2209

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %i.4 = phi i32 [ %inc43, %if.then42 ], [ %i.3, %if.end39.if.end45_crit_edge ], !dbg !2186
  %24 = and i32 %1, 268435456, !dbg !2212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24), !dbg !2212
  %tobool47.not = icmp eq i32 %24, 0, !dbg !2212
  br i1 %tobool47.not, label %if.end45.out_crit_edge, label %if.then48, !dbg !2213

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2213
  br label %out, !dbg !2213

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2214
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 9), align 8, !dbg !2214
  %25 = add i64 %gcov_ctr61, 1, !dbg !2214
  store i64 %25, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.272, i32 0, i32 9), align 8, !dbg !2214
  %inc49 = add i32 %i.4, 1, !dbg !2215
  %arrayidx50 = getelementptr i8, ptr %rwbs, i32 %i.4, !dbg !2214
  %26 = ptrtoint ptr %arrayidx50 to i32, !dbg !2216
  call void @__asan_store1_noabort(i32 %26), !dbg !2216
  store i8 77, ptr %arrayidx50, align 1, !dbg !2216
  br label %out, !dbg !2214

out:                                              ; preds = %if.then48, %if.end45.out_crit_edge, %if.then
  %i.5 = phi i32 [ 1, %if.then ], [ %inc49, %if.then48 ], [ %i.4, %if.end45.out_crit_edge ], !dbg !2186
  %arrayidx52 = getelementptr i8, ptr %rwbs, i32 %i.5, !dbg !2217
  %27 = ptrtoint ptr %arrayidx52 to i32, !dbg !2218
  call void @__asan_store1_noabort(i32 %27), !dbg !2218
  store i8 0, ptr %arrayidx52, align 1, !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_path_from_kernfs_id(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putmem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_generic(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) #0 align 64 !dbg !2220 {
entry:
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2221
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2222
  %pid = getelementptr inbounds %struct.trace_entry, ptr %ent, i32 0, i32 3, !dbg !2223
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16), !dbg !2224
  %1 = ptrtoint ptr %pid to i32, !dbg !2223
  call void @__asan_load4_noabort(i32 %1), !dbg !2223
  %2 = load i32, ptr %pid, align 4, !dbg !2223
  call void @trace_find_cmdline(i32 noundef %2, ptr noundef nonnull %cmd) #22, !dbg !2225
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.282, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.282, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %action.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 5, !dbg !2226
  %4 = ptrtoint ptr %action.i to i32, !dbg !2226
  call void @__asan_load4_noabort(i32 %4), !dbg !2226
  %5 = load i32, ptr %action.i, align 4, !dbg !2226
  %and = and i32 %5, 33554432, !dbg !2229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2229
  %tobool.not = icmp eq i32 %and, 0, !dbg !2229
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2231
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.276, align 16, !dbg !2231
  %6 = add i64 %gcov_ctr, 1, !dbg !2231
  store i64 %6, ptr @__llvm_gcov_ctr.276, align 16, !dbg !2231
  %gcov_ctr.i25 = load i64, ptr @__llvm_gcov_ctr.283, align 8
  %7 = add i64 %gcov_ctr.i25, 1
  store i64 %7, ptr @__llvm_gcov_ctr.283, align 8
  %8 = add i64 %gcov_ctr.i.i, 2
  store i64 %8, ptr @__llvm_gcov_ctr.265, align 8
  %bytes.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 4, !dbg !2232
  %9 = ptrtoint ptr %bytes.i to i32, !dbg !2232
  call void @__asan_load4_noabort(i32 %9), !dbg !2232
  %10 = load i32, ptr %bytes.i, align 8, !dbg !2232
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %10) #22, !dbg !2235
  call fastcc void @blk_log_dump_pdu(ptr noundef %s, ptr noundef %ent, i1 noundef zeroext %has_cg), !dbg !2236
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull %cmd) #22, !dbg !2237
  br label %if.end12, !dbg !2238

if.else:                                          ; preds = %entry
  %gcov_ctr.i27 = load i64, ptr @__llvm_gcov_ctr.285, align 8
  %11 = add i64 %gcov_ctr.i27, 1
  store i64 %11, ptr @__llvm_gcov_ctr.285, align 8
  %12 = add i64 %gcov_ctr.i.i, 2
  store i64 %12, ptr @__llvm_gcov_ctr.265, align 8
  %bytes.i29 = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 4, !dbg !2239
  %13 = ptrtoint ptr %bytes.i29 to i32, !dbg !2239
  call void @__asan_load4_noabort(i32 %13), !dbg !2239
  %14 = load i32, ptr %bytes.i29, align 8, !dbg !2239
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14), !dbg !2242
  %tobool5.not = icmp ult i32 %14, 512, !dbg !2242
  br i1 %tobool5.not, label %if.else10, label %if.then6, !dbg !2242

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2243
  %shr.i = lshr i32 %14, 9, !dbg !2243
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.276, i32 0, i32 2), align 16, !dbg !2244
  %15 = add i64 %gcov_ctr14, 1, !dbg !2244
  store i64 %15, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.276, i32 0, i32 2), align 16, !dbg !2244
  %gcov_ctr.i30 = load i64, ptr @__llvm_gcov_ctr.286, align 8
  %16 = add i64 %gcov_ctr.i30, 1
  store i64 %16, ptr @__llvm_gcov_ctr.286, align 8
  %sector.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 3, !dbg !2245
  %17 = ptrtoint ptr %sector.i to i32, !dbg !2245
  call void @__asan_load8_noabort(i32 %17), !dbg !2245
  %18 = load i64, ptr %sector.i, align 8, !dbg !2245
  %19 = add i64 %gcov_ctr.i27, 2
  store i64 %19, ptr @__llvm_gcov_ctr.285, align 8
  %20 = add i64 %gcov_ctr.i.i, 4
  store i64 %20, ptr @__llvm_gcov_ctr.265, align 8
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, i64 noundef %18, i32 noundef %shr.i, ptr noundef nonnull %cmd) #22, !dbg !2248
  br label %if.end12, !dbg !2248

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2249
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.276, i32 0, i32 1), align 8, !dbg !2249
  %21 = add i64 %gcov_ctr13, 1, !dbg !2249
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.276, i32 0, i32 1), align 8, !dbg !2249
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull %cmd) #22, !dbg !2250
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2251
  ret void, !dbg !2251
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_with_error(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) #0 align 64 !dbg !2252 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2253
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.282, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.282, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.265, align 8
  %action.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 5, !dbg !2254
  %2 = ptrtoint ptr %action.i to i32, !dbg !2254
  call void @__asan_load4_noabort(i32 %2), !dbg !2254
  %3 = load i32, ptr %action.i, align 4, !dbg !2254
  %and = and i32 %3, 33554432, !dbg !2256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2256
  %tobool.not = icmp eq i32 %and, 0, !dbg !2256
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2257

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2258
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.277, align 16, !dbg !2258
  %4 = add i64 %gcov_ctr, 1, !dbg !2258
  store i64 %4, ptr @__llvm_gcov_ctr.277, align 16, !dbg !2258
  tail call fastcc void @blk_log_dump_pdu(ptr noundef %s, ptr noundef %ent, i1 noundef zeroext %has_cg), !dbg !2259
  %gcov_ctr.i28 = load i64, ptr @__llvm_gcov_ctr.287, align 8
  %5 = add i64 %gcov_ctr.i28, 1
  store i64 %5, ptr @__llvm_gcov_ctr.287, align 8
  %gcov_ctr.i.i29 = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %6 = add i64 %gcov_ctr.i.i29, 1
  store i64 %6, ptr @__llvm_gcov_ctr.265, align 8
  %error.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 9, !dbg !2260
  %7 = ptrtoint ptr %error.i to i32, !dbg !2260
  call void @__asan_load2_noabort(i32 %7), !dbg !2260
  %8 = load i16, ptr %error.i, align 4, !dbg !2260
  %conv = zext i16 %8 to i32, !dbg !2263
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %conv) #22, !dbg !2264
  br label %if.end14, !dbg !2265

if.else:                                          ; preds = %entry
  %gcov_ctr.i30 = load i64, ptr @__llvm_gcov_ctr.285, align 8
  %9 = add i64 %gcov_ctr.i30, 1
  store i64 %9, ptr @__llvm_gcov_ctr.285, align 8
  %bytes.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 4, !dbg !2266
  %10 = ptrtoint ptr %bytes.i to i32, !dbg !2266
  call void @__asan_load4_noabort(i32 %10), !dbg !2266
  %11 = load i32, ptr %bytes.i, align 8, !dbg !2266
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11), !dbg !2268
  %tobool4.not = icmp ult i32 %11, 512, !dbg !2268
  br i1 %tobool4.not, label %if.else10, label %if.then5, !dbg !2268

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2269
  %shr.i = lshr i32 %11, 9, !dbg !2269
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.277, i32 0, i32 2), align 16, !dbg !2270
  %12 = add i64 %gcov_ctr16, 1, !dbg !2270
  store i64 %12, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.277, i32 0, i32 2), align 16, !dbg !2270
  %gcov_ctr.i32 = load i64, ptr @__llvm_gcov_ctr.286, align 8
  %13 = add i64 %gcov_ctr.i32, 1
  store i64 %13, ptr @__llvm_gcov_ctr.286, align 8
  %sector.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 3, !dbg !2271
  %14 = ptrtoint ptr %sector.i to i32, !dbg !2271
  call void @__asan_load8_noabort(i32 %14), !dbg !2271
  %15 = load i64, ptr %sector.i, align 8, !dbg !2271
  %16 = add i64 %gcov_ctr.i30, 2
  store i64 %16, ptr @__llvm_gcov_ctr.285, align 8
  %gcov_ctr.i38 = load i64, ptr @__llvm_gcov_ctr.287, align 8
  %17 = add i64 %gcov_ctr.i38, 1
  store i64 %17, ptr @__llvm_gcov_ctr.287, align 8
  %18 = add i64 %gcov_ctr.i.i, 5
  store i64 %18, ptr @__llvm_gcov_ctr.265, align 8
  %error.i40 = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 9, !dbg !2273
  %19 = ptrtoint ptr %error.i40 to i32, !dbg !2273
  call void @__asan_load2_noabort(i32 %19), !dbg !2273
  %20 = load i16, ptr %error.i40, align 4, !dbg !2273
  %conv9 = zext i16 %20 to i32, !dbg !2275
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i64 noundef %15, i32 noundef %shr.i, i32 noundef %conv9) #22, !dbg !2276
  br label %if.end14, !dbg !2276

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2277
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.277, i32 0, i32 1), align 8, !dbg !2277
  %21 = add i64 %gcov_ctr15, 1, !dbg !2277
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.277, i32 0, i32 1), align 8, !dbg !2277
  %gcov_ctr.i41 = load i64, ptr @__llvm_gcov_ctr.286, align 8
  %22 = add i64 %gcov_ctr.i41, 1
  store i64 %22, ptr @__llvm_gcov_ctr.286, align 8
  %sector.i43 = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 3, !dbg !2278
  %23 = ptrtoint ptr %sector.i43 to i32, !dbg !2278
  call void @__asan_load8_noabort(i32 %23), !dbg !2278
  %24 = load i64, ptr %sector.i43, align 8, !dbg !2278
  %gcov_ctr.i44 = load i64, ptr @__llvm_gcov_ctr.287, align 8
  %25 = add i64 %gcov_ctr.i44, 1
  store i64 %25, ptr @__llvm_gcov_ctr.287, align 8
  %26 = add i64 %gcov_ctr.i.i, 4
  store i64 %26, ptr @__llvm_gcov_ctr.265, align 8
  %error.i46 = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 9, !dbg !2280
  %27 = ptrtoint ptr %error.i46 to i32, !dbg !2280
  call void @__asan_load2_noabort(i32 %27), !dbg !2280
  %28 = load i16, ptr %error.i46, align 4, !dbg !2280
  %conv13 = zext i16 %28 to i32, !dbg !2282
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i64 noundef %24, i32 noundef %conv13) #22, !dbg !2283
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then5, %if.then
  ret void, !dbg !2284
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_plug(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) #0 align 64 !dbg !2285 {
entry:
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2286
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.278, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.278, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2287
  %pid = getelementptr inbounds %struct.trace_entry, ptr %ent, i32 0, i32 3, !dbg !2288
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16), !dbg !2289
  %2 = ptrtoint ptr %pid to i32, !dbg !2288
  call void @__asan_load4_noabort(i32 %2), !dbg !2288
  %3 = load i32, ptr %pid, align 4, !dbg !2288
  call void @trace_find_cmdline(i32 noundef %3, ptr noundef nonnull %cmd) #22, !dbg !2290
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull %cmd) #22, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2292
  ret void, !dbg !2292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_unplug(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) #0 align 64 !dbg !2293 {
entry:
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2294
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.279, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.279, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2295
  %pid = getelementptr inbounds %struct.trace_entry, ptr %ent, i32 0, i32 3, !dbg !2296
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16), !dbg !2297
  %2 = ptrtoint ptr %pid to i32, !dbg !2296
  call void @__asan_load4_noabort(i32 %2), !dbg !2296
  %3 = load i32, ptr %pid, align 4, !dbg !2296
  call void @trace_find_cmdline(i32 noundef %3, ptr noundef nonnull %cmd) #22, !dbg !2298
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.288, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.288, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.274, align 8
  %5 = add i64 %gcov_ctr.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.274, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %6 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.265, align 8
  %add.ptr.i.i = getelementptr %struct.blk_io_trace, ptr %ent, i32 1, !dbg !2299
  %cond.i.i = select i1 %has_cg, i32 8, i32 0, !dbg !2303
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %cond.i.i, !dbg !2304
  %7 = ptrtoint ptr %add.ptr1.i.i to i32, !dbg !2305
  call void @__asan_load8_noabort(i32 %7), !dbg !2305
  %8 = load i64, ptr %add.ptr1.i.i, align 8, !dbg !2305
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, ptr noundef nonnull %cmd, i64 noundef %8) #22, !dbg !2306
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2307
  ret void, !dbg !2307
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_split(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) #0 align 64 !dbg !2308 {
entry:
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2309
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.280, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.280, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2310
  %pid = getelementptr inbounds %struct.trace_entry, ptr %ent, i32 0, i32 3, !dbg !2311
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16), !dbg !2312
  %2 = ptrtoint ptr %pid to i32, !dbg !2311
  call void @__asan_load4_noabort(i32 %2), !dbg !2311
  %3 = load i32, ptr %pid, align 4, !dbg !2311
  call void @trace_find_cmdline(i32 noundef %3, ptr noundef nonnull %cmd) #22, !dbg !2313
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.286, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.286, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %sector.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 3, !dbg !2314
  %5 = ptrtoint ptr %sector.i to i32, !dbg !2314
  call void @__asan_load8_noabort(i32 %5), !dbg !2314
  %6 = load i64, ptr %sector.i, align 8, !dbg !2314
  %gcov_ctr.i5 = load i64, ptr @__llvm_gcov_ctr.288, align 8
  %7 = add i64 %gcov_ctr.i5, 1
  store i64 %7, ptr @__llvm_gcov_ctr.288, align 8
  %gcov_ctr.i.i6 = load i64, ptr @__llvm_gcov_ctr.274, align 8
  %8 = add i64 %gcov_ctr.i.i6, 1
  store i64 %8, ptr @__llvm_gcov_ctr.274, align 8
  %9 = add i64 %gcov_ctr.i.i, 2
  store i64 %9, ptr @__llvm_gcov_ctr.265, align 8
  %add.ptr.i.i = getelementptr %struct.blk_io_trace, ptr %ent, i32 1, !dbg !2316
  %cond.i.i = select i1 %has_cg, i32 8, i32 0, !dbg !2319
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %cond.i.i, !dbg !2320
  %10 = ptrtoint ptr %add.ptr1.i.i to i32, !dbg !2321
  call void @__asan_load8_noabort(i32 %10), !dbg !2321
  %11 = load i64, ptr %add.ptr1.i.i, align 8, !dbg !2321
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i64 noundef %6, i64 noundef %11, ptr noundef nonnull %cmd) #22, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #22, !dbg !2323
  ret void, !dbg !2323
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_log_remap(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) #0 align 64 !dbg !2324 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2325
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.281, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.281, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.274, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.274, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %add.ptr.i = getelementptr %struct.blk_io_trace, ptr %ent, i32 1, !dbg !2326
  %cond.i = select i1 %has_cg, i32 8, i32 0, !dbg !2328
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.i, !dbg !2329
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.286, align 8
  %2 = add i64 %gcov_ctr.i8, 1
  store i64 %2, ptr @__llvm_gcov_ctr.286, align 8
  %sector.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 3, !dbg !2330
  %3 = ptrtoint ptr %sector.i to i32, !dbg !2330
  call void @__asan_load8_noabort(i32 %3), !dbg !2330
  %4 = load i64, ptr %sector.i, align 8, !dbg !2330
  %gcov_ctr.i10 = load i64, ptr @__llvm_gcov_ctr.285, align 8
  %5 = add i64 %gcov_ctr.i10, 1
  store i64 %5, ptr @__llvm_gcov_ctr.285, align 8
  %6 = add i64 %gcov_ctr.i.i, 3
  store i64 %6, ptr @__llvm_gcov_ctr.265, align 8
  %bytes.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 4, !dbg !2332
  %7 = ptrtoint ptr %bytes.i to i32, !dbg !2332
  call void @__asan_load4_noabort(i32 %7), !dbg !2332
  %8 = load i32, ptr %bytes.i, align 8, !dbg !2332
  %shr.i = lshr i32 %8, 9, !dbg !2334
  %9 = ptrtoint ptr %add.ptr1.i to i32, !dbg !2335
  call void @__asan_load4_noabort(i32 %9), !dbg !2335
  %10 = load i32, ptr %add.ptr1.i, align 8, !dbg !2335
  %shr = lshr i32 %10, 20, !dbg !2335
  %and = and i32 %10, 1048575, !dbg !2336
  %sector_from = getelementptr inbounds %struct.blk_io_trace_remap, ptr %add.ptr1.i, i32 0, i32 2, !dbg !2337
  %11 = ptrtoint ptr %sector_from to i32, !dbg !2337
  call void @__asan_load8_noabort(i32 %11), !dbg !2337
  %12 = load i64, ptr %sector_from, align 8, !dbg !2337
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i64 noundef %4, i32 noundef %shr.i, i32 noundef %shr, i32 noundef %and, i64 noundef %12) #22, !dbg !2338
  ret void, !dbg !2339
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_find_cmdline(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_log_dump_pdu(ptr noundef %s, ptr nocapture noundef readonly %ent, i1 noundef zeroext %has_cg) unnamed_addr #0 align 64 !dbg !2340 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2341
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.274, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.274, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.265, align 8
  %add.ptr.i = getelementptr %struct.blk_io_trace, ptr %ent, i32 1, !dbg !2342
  %cond.i = select i1 %has_cg, i32 8, i32 0, !dbg !2344
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.i, !dbg !2345
  %gcov_ctr.i50 = load i64, ptr @__llvm_gcov_ctr.275, align 8
  %1 = add i64 %gcov_ctr.i50, 1
  store i64 %1, ptr @__llvm_gcov_ctr.275, align 8
  %2 = add i64 %gcov_ctr.i.i, 2
  store i64 %2, ptr @__llvm_gcov_ctr.265, align 8
  %pdu_len.i = getelementptr inbounds %struct.blk_io_trace, ptr %ent, i32 0, i32 10, !dbg !2346
  %3 = ptrtoint ptr %pdu_len.i to i32, !dbg !2346
  call void @__asan_load2_noabort(i32 %3), !dbg !2346
  %4 = load i16, ptr %pdu_len.i, align 2, !dbg !2346
  %conv.i = zext i16 %4 to i32, !dbg !2348
  %cond.neg.i = select i1 %has_cg, i32 -8, i32 0, !dbg !2349
  %sub.i = add nsw i32 %cond.neg.i, %conv.i, !dbg !2350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i), !dbg !2351
  %tobool3.not = icmp eq i32 %sub.i, 0, !dbg !2351
  br i1 %tobool3.not, label %if.then, label %if.end, !dbg !2352

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2353
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.284, align 16
  %5 = add i64 %gcov_ctr, 1
  store i64 %5, ptr @__llvm_gcov_ctr.284, align 16
  br label %cleanup, !dbg !2354

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %sub.i, -1, !dbg !2355
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i), !dbg !2356
  %cmp54 = icmp sgt i32 %sub.i, 0, !dbg !2356
  br i1 %cmp54, label %if.end.for.body_crit_edge, label %for.end.thread, !dbg !2357

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !2357

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2358
  tail call void @trace_seq_putc(ptr noundef %s, i8 noundef zeroext 40) #22, !dbg !2358
  br label %for.end21, !dbg !2359

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %if.end.for.body_crit_edge
  %end.055 = phi i32 [ %dec, %if.end6.for.body_crit_edge ], [ %sub, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr1.i, i32 %end.055, !dbg !2360
  %6 = ptrtoint ptr %arrayidx to i32, !dbg !2360
  call void @__asan_load1_noabort(i32 %6), !dbg !2360
  %7 = load i8, ptr %arrayidx, align 1, !dbg !2360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7), !dbg !2360
  %tobool4.not = icmp eq i8 %7, 0, !dbg !2360
  br i1 %tobool4.not, label %if.end6, label %if.then5, !dbg !2360

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2361
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 2), align 16, !dbg !2361
  %8 = add i64 %gcov_ctr26, 1, !dbg !2361
  store i64 %8, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 2), align 16, !dbg !2361
  br label %for.end, !dbg !2361

if.end6:                                          ; preds = %for.body
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 1), align 8, !dbg !2362
  %9 = add i64 %gcov_ctr25, 1, !dbg !2362
  store i64 %9, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 1), align 8, !dbg !2362
  %dec = add nsw i32 %end.055, -1, !dbg !2363
  %cmp = icmp sgt i32 %end.055, 0, !dbg !2356
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge, !dbg !2357, !llvm.loop !2364

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2357
  br label %for.end, !dbg !2357

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2357
  br label %for.body, !dbg !2357

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.then5
  %end.053 = phi i32 [ %end.055, %if.then5 ], [ -1, %if.end6.for.end_crit_edge ]
  %inc = add nsw i32 %end.053, 1, !dbg !2365
  tail call void @trace_seq_putc(ptr noundef %s, i8 noundef zeroext 40) #22, !dbg !2358
  br i1 %cmp54, label %for.body9.lr.ph, label %for.end.for.end21_crit_edge, !dbg !2359

for.end.for.end21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2359
  br label %for.end21, !dbg !2359

for.body9.lr.ph:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub)
  %cmp15.not = icmp eq i32 %inc, %sub
  br label %for.body9, !dbg !2359

for.body9:                                        ; preds = %for.inc19.for.body9_crit_edge, %for.body9.lr.ph
  %i.057 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc20, %for.inc19.for.body9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.057), !dbg !2366
  %cmp10 = icmp eq i32 %i.057, 0, !dbg !2366
  %cond = select i1 %cmp10, ptr @.str.71, ptr @.str.72, !dbg !2367
  %arrayidx11 = getelementptr i8, ptr %add.ptr1.i, i32 %i.057, !dbg !2368
  %10 = ptrtoint ptr %arrayidx11 to i32, !dbg !2368
  call void @__asan_load1_noabort(i32 %10), !dbg !2368
  %11 = load i8, ptr %arrayidx11, align 1, !dbg !2368
  %conv = zext i8 %11 to i32, !dbg !2368
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond, i32 noundef %conv) #22, !dbg !2369
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %inc), !dbg !2370
  %cmp12 = icmp eq i32 %i.057, %inc, !dbg !2370
  br i1 %cmp12, label %land.lhs.true, label %for.body9.for.inc19_crit_edge, !dbg !2371

for.body9.for.inc19_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2371
  br label %for.inc19, !dbg !2371

land.lhs.true:                                    ; preds = %for.body9
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 3), align 8, !dbg !2372
  %12 = add i64 %gcov_ctr27, 1, !dbg !2372
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 3), align 8, !dbg !2372
  br i1 %cmp15.not, label %land.lhs.true.for.inc19_crit_edge, label %if.then17, !dbg !2373

land.lhs.true.for.inc19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2373
  br label %for.inc19, !dbg !2373

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2374
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 4), align 16, !dbg !2374
  %13 = add i64 %gcov_ctr28, 1, !dbg !2374
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 4), align 16, !dbg !2374
  tail call void @trace_seq_puts(ptr noundef %s, ptr noundef nonnull @.str.73) #22, !dbg !2375
  br label %cleanup, !dbg !2376

for.inc19:                                        ; preds = %land.lhs.true.for.inc19_crit_edge, %for.body9.for.inc19_crit_edge
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 5), align 8, !dbg !2377
  %14 = add i64 %gcov_ctr29, 1, !dbg !2377
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 5), align 8, !dbg !2377
  %inc20 = add nuw nsw i32 %i.057, 1, !dbg !2377
  %exitcond.not = icmp eq i32 %inc20, %sub.i, !dbg !2378
  br i1 %exitcond.not, label %for.inc19.for.end21_crit_edge, label %for.inc19.for.body9_crit_edge, !dbg !2359, !llvm.loop !2379

for.inc19.for.body9_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2359
  br label %for.body9, !dbg !2359

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2359
  br label %for.end21, !dbg !2359

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %for.end.for.end21_crit_edge, %for.end.thread
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 6), align 16, !dbg !2381
  %15 = add i64 %gcov_ctr30, 1, !dbg !2381
  store i64 %15, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.284, i32 0, i32 6), align 16, !dbg !2381
  tail call void @trace_seq_puts(ptr noundef %s, ptr noundef nonnull @.str.74) #22, !dbg !2382
  br label %cleanup, !dbg !2383

cleanup:                                          ; preds = %for.end21, %if.then17, %if.then
  ret void, !dbg !2383
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @blk_tracer_init(ptr noundef %tr) #6 align 64 !dbg !2384 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2385
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.290, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.290, align 8
  store ptr %tr, ptr @blk_tr, align 4, !dbg !2386
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.292, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.292, align 8
  store i1 true, ptr @blk_tracer_enabled, align 1, !dbg !2387
  ret i32 0, !dbg !2390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blk_tracer_reset(ptr nocapture noundef readnone %tr) #6 align 64 !dbg !2391 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2392
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.291, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.291, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.293, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.293, align 8
  store i1 false, ptr @blk_tracer_enabled, align 1, !dbg !2393
  ret void, !dbg !2396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blk_tracer_start(ptr nocapture noundef readnone %tr) #6 align 64 !dbg !2388 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2397
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.292, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.292, align 8
  store i1 true, ptr @blk_tracer_enabled, align 1, !dbg !2398
  ret void, !dbg !2399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blk_tracer_stop(ptr nocapture noundef readnone %tr) #6 align 64 !dbg !2394 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2400
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.293, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.293, align 8
  store i1 false, ptr @blk_tracer_enabled, align 1, !dbg !2401
  ret void, !dbg !2402
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_tracer_print_header(ptr noundef %m) #0 align 64 !dbg !2403 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2404
  %0 = load i32, ptr @blk_tracer_flags, align 4, !dbg !2405
  %and = and i32 %0, 1, !dbg !2406
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2406
  %tobool.not = icmp eq i32 %and, 0, !dbg !2406
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2408
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.294, align 8, !dbg !2408
  %1 = add i64 %gcov_ctr, 1, !dbg !2408
  store i64 %1, ptr @__llvm_gcov_ctr.294, align 8, !dbg !2408
  br label %return, !dbg !2408

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2409
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.294, i32 0, i32 1), align 8, !dbg !2409
  %2 = add i64 %gcov_ctr1, 1, !dbg !2409
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.294, i32 0, i32 1), align 8, !dbg !2409
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.82) #22, !dbg !2410
  br label %return, !dbg !2411

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2411
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_tracer_print_line(ptr noundef %iter) #0 align 64 !dbg !2412 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2413
  %0 = load i32, ptr @blk_tracer_flags, align 4, !dbg !2414
  %and = and i32 %0, 1, !dbg !2415
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2415
  %tobool.not = icmp eq i32 %and, 0, !dbg !2415
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2416

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2417
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.295, align 8, !dbg !2417
  %1 = add i64 %gcov_ctr, 1, !dbg !2417
  store i64 %1, ptr @__llvm_gcov_ctr.295, align 8, !dbg !2417
  br label %return, !dbg !2417

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2418
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.295, i32 0, i32 1), align 8, !dbg !2418
  %2 = add i64 %gcov_ctr1, 1, !dbg !2418
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.295, i32 0, i32 1), align 8, !dbg !2418
  %call = tail call fastcc i32 @print_one_line(ptr noundef %iter, i1 noundef zeroext true), !dbg !2419
  br label %return, !dbg !2420

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ 2, %if.then ], !dbg !2421
  ret i32 %retval.0, !dbg !2422
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @blk_tracer_set_flag(ptr nocapture noundef %tr, i32 noundef %old_flags, i32 noundef %bit, i32 noundef %set) #6 align 64 !dbg !2423 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2424
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.296, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.296, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bit), !dbg !2425
  %cmp = icmp eq i32 %bit, 1, !dbg !2425
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge, !dbg !2426

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2426
  br label %if.end3, !dbg !2426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set), !dbg !2427
  %tobool.not = icmp eq i32 %set, 0, !dbg !2427
  br i1 %tobool.not, label %if.else, label %if.then1, !dbg !2427

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2428
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.296, i32 0, i32 2), align 16, !dbg !2428
  %1 = add i64 %gcov_ctr5, 1, !dbg !2428
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.296, i32 0, i32 2), align 16, !dbg !2428
  %trace_flags = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 24, !dbg !2429
  %2 = ptrtoint ptr %trace_flags to i32, !dbg !2430
  call void @__asan_load4_noabort(i32 %2), !dbg !2430
  %3 = load i32, ptr %trace_flags, align 4, !dbg !2430
  %and = and i32 %3, -8193, !dbg !2430
  store i32 %and, ptr %trace_flags, align 4, !dbg !2430
  br label %if.end3, !dbg !2428

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2431
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.296, i32 0, i32 1), align 8, !dbg !2431
  %4 = add i64 %gcov_ctr4, 1, !dbg !2431
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.296, i32 0, i32 1), align 8, !dbg !2431
  %trace_flags2 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 24, !dbg !2432
  %5 = ptrtoint ptr %trace_flags2 to i32, !dbg !2433
  call void @__asan_load4_noabort(i32 %5), !dbg !2433
  %6 = load i32, ptr %trace_flags2, align 4, !dbg !2433
  %or = or i32 %6, 8192, !dbg !2433
  store i32 %or, ptr %trace_flags2, align 4, !dbg !2433
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1, %entry.if.end3_crit_edge
  ret i32 0, !dbg !2434
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_blk_trace_attr_show(ptr nocapture noundef readonly %dev, ptr noundef readnone %attr, ptr noundef %buf) #0 align 64 !dbg !2435 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2436
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.119, align 8
  %bd_queue.i = getelementptr i8, ptr %dev, i32 996, !dbg !2437
  %1 = ptrtoint ptr %bd_queue.i to i32, !dbg !2437
  call void @__asan_load4_noabort(i32 %1), !dbg !2437
  %2 = load ptr, ptr %bd_queue.i, align 4, !dbg !2437
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 45, !dbg !2439
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !2439
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 45, i32 5, !dbg !2440
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %3 = add i64 %gcov_ctr.i67, 1
  store i64 %3, ptr @__llvm_gcov_ctr.121, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !2441
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !2440
  %tobool.not = icmp eq i32 %call.i, 0, !dbg !2440
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge, !dbg !2440

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2440
  br label %do.end, !dbg !2440

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.297, align 16, !dbg !2440
  %4 = add i64 %gcov_ctr, 1, !dbg !2440
  store i64 %4, ptr @__llvm_gcov_ctr.297, align 16, !dbg !2440
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #22, !dbg !2440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !2440
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !2440
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5, !dbg !2440

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2440
  br label %do.end, !dbg !2440

land.lhs.true5:                                   ; preds = %land.lhs.true
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 1), align 8, !dbg !2440
  %5 = add i64 %gcov_ctr40, 1, !dbg !2440
  store i64 %5, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 1), align 8, !dbg !2440
  %.b66 = load i1, ptr @sysfs_blk_trace_attr_show.__warned, align 1, !dbg !2440
  br i1 %.b66, label %land.lhs.true5.do.end_crit_edge, label %if.then, !dbg !2440

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2440
  br label %do.end, !dbg !2440

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2440
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 2), align 16, !dbg !2440
  %6 = add i64 %gcov_ctr41, 1, !dbg !2440
  store i64 %6, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 2), align 16, !dbg !2440
  store i1 true, ptr @sysfs_blk_trace_attr_show.__warned, align 1, !dbg !2440
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1784, ptr noundef nonnull @.str.1) #22, !dbg !2440
  br label %do.end, !dbg !2440

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 46, !dbg !2440
  %7 = ptrtoint ptr %blk_trace to i32, !dbg !2440
  call void @__asan_load4_noabort(i32 %7), !dbg !2440
  %8 = load ptr, ptr %blk_trace, align 8, !dbg !2440
  %cmp = icmp eq ptr %attr, @dev_attr_enable, !dbg !2443
  br i1 %cmp, label %if.then8, label %if.end12, !dbg !2444

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2445
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 3), align 8, !dbg !2445
  %9 = add i64 %gcov_ctr42, 1, !dbg !2445
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 3), align 8, !dbg !2445
  %tobool9 = icmp ne ptr %8, null, !dbg !2446
  %lnot.ext = zext i1 %tobool9 to i32, !dbg !2447
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %lnot.ext), !dbg !2448
  br label %out_unlock_bdev, !dbg !2449

if.end12:                                         ; preds = %do.end
  %cmp13 = icmp eq ptr %8, null, !dbg !2450
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2451

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2452
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 4), align 16, !dbg !2452
  %10 = add i64 %gcov_ctr43, 1, !dbg !2452
  store i64 %10, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 4), align 16, !dbg !2452
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.84, i32 10), !dbg !2453
  br label %out_unlock_bdev, !dbg !2454

if.else:                                          ; preds = %if.end12
  %cmp16 = icmp eq ptr %attr, @dev_attr_act_mask, !dbg !2455
  br i1 %cmp16, label %if.then17, label %if.else19, !dbg !2456

if.then17:                                        ; preds = %if.else
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 5), align 8, !dbg !2457
  %12 = add i64 %gcov_ctr44, 1, !dbg !2457
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 5), align 8, !dbg !2457
  %act_mask = getelementptr inbounds %struct.blk_trace, ptr %8, i32 0, i32 4, !dbg !2458
  %13 = ptrtoint ptr %act_mask to i32, !dbg !2458
  call void @__asan_load2_noabort(i32 %13), !dbg !2458
  %14 = load i16, ptr %act_mask, align 8, !dbg !2458
  %conv = zext i16 %14 to i32, !dbg !2459
  %gcov_ctr.i68 = load i64, ptr @__llvm_gcov_ctr.299, align 16
  %15 = add i64 %gcov_ctr.i68, 1
  store i64 %15, ptr @__llvm_gcov_ctr.299, align 16
  br label %for.body.i, !dbg !2460

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then17
  %p.017.i = phi ptr [ %buf, %if.then17 ], [ %p.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ 0, %if.then17 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.anon.114], ptr @mask_maps, i32 0, i32 %i.015.i, !dbg !2463
  %16 = ptrtoint ptr %arrayidx.i to i32, !dbg !2464
  call void @__asan_load4_noabort(i32 %16), !dbg !2464
  %17 = load i32, ptr %arrayidx.i, align 4, !dbg !2464
  %and.i = and i32 %17, %conv, !dbg !2465
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !2465
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !2465
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i, !dbg !2466

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2466
  br label %for.inc.i, !dbg !2466

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2467
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.299, i32 0, i32 1), align 8, !dbg !2467
  %18 = add i64 %gcov_ctr4.i, 1, !dbg !2467
  store i64 %18, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.299, i32 0, i32 1), align 8, !dbg !2467
  %cmp2.i = icmp eq ptr %p.017.i, %buf, !dbg !2468
  %cond.i = select i1 %cmp2.i, ptr @.str.71, ptr @.str.87, !dbg !2469
  %str.i = getelementptr [16 x %struct.anon.114], ptr @mask_maps, i32 0, i32 %i.015.i, i32 1, !dbg !2470
  %19 = ptrtoint ptr %str.i to i32, !dbg !2470
  call void @__asan_load4_noabort(i32 %19), !dbg !2470
  %20 = load ptr, ptr %str.i, align 4, !dbg !2470
  %call.i69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.017.i, ptr noundef nonnull @.str.86, ptr noundef nonnull %cond.i, ptr noundef %20) #22, !dbg !2471
  %add.ptr.i = getelementptr i8, ptr %p.017.i, i32 %call.i69, !dbg !2472
  br label %for.inc.i, !dbg !2473

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %p.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %p.017.i, %for.body.i.for.inc.i_crit_edge ], !dbg !2474
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.299, i32 0, i32 2), align 16, !dbg !2475
  %21 = add i64 %gcov_ctr5.i, 1, !dbg !2475
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.299, i32 0, i32 2), align 16, !dbg !2475
  %inc.i = add nuw nsw i32 %i.015.i, 1, !dbg !2475
  %exitcond.not.i = icmp eq i32 %inc.i, 16, !dbg !2476
  br i1 %exitcond.not.i, label %blk_trace_mask2str.exit, label %for.inc.i.for.body.i_crit_edge, !dbg !2460, !llvm.loop !2477

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2460
  br label %for.body.i, !dbg !2460

blk_trace_mask2str.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2479
  %incdec.ptr.i = getelementptr i8, ptr %p.1.i, i32 1, !dbg !2479
  %22 = ptrtoint ptr %p.1.i to i32, !dbg !2480
  call void @__asan_store1_noabort(i32 %22), !dbg !2480
  store i8 10, ptr %p.1.i, align 1, !dbg !2480
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32, !dbg !2481
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32, !dbg !2481
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2481
  br label %out_unlock_bdev, !dbg !2482

if.else19:                                        ; preds = %if.else
  %cmp20 = icmp eq ptr %attr, @dev_attr_pid, !dbg !2483
  br i1 %cmp20, label %if.then22, label %if.else24, !dbg !2484

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2485
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 6), align 16, !dbg !2485
  %23 = add i64 %gcov_ctr45, 1, !dbg !2485
  store i64 %23, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 6), align 16, !dbg !2485
  %pid = getelementptr inbounds %struct.blk_trace, ptr %8, i32 0, i32 7, !dbg !2486
  %24 = ptrtoint ptr %pid to i32, !dbg !2486
  call void @__asan_load4_noabort(i32 %24), !dbg !2486
  %25 = load i32, ptr %pid, align 8, !dbg !2486
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %25), !dbg !2487
  br label %out_unlock_bdev, !dbg !2488

if.else24:                                        ; preds = %if.else19
  %cmp25 = icmp eq ptr %attr, @dev_attr_start_lba, !dbg !2489
  br i1 %cmp25, label %if.then27, label %if.else29, !dbg !2490

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2491
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 7), align 8, !dbg !2491
  %26 = add i64 %gcov_ctr46, 1, !dbg !2491
  store i64 %26, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 7), align 8, !dbg !2491
  %start_lba = getelementptr inbounds %struct.blk_trace, ptr %8, i32 0, i32 5, !dbg !2492
  %27 = ptrtoint ptr %start_lba to i32, !dbg !2492
  call void @__asan_load8_noabort(i32 %27), !dbg !2492
  %28 = load i64, ptr %start_lba, align 8, !dbg !2492
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.85, i64 noundef %28), !dbg !2493
  br label %out_unlock_bdev, !dbg !2494

if.else29:                                        ; preds = %if.else24
  %cmp30 = icmp eq ptr %attr, @dev_attr_end_lba, !dbg !2495
  br i1 %cmp30, label %if.then32, label %if.else29.if.end34_crit_edge, !dbg !2496

if.else29.if.end34_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2496
  br label %if.end34, !dbg !2496

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2497
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 8), align 16, !dbg !2497
  %29 = add i64 %gcov_ctr47, 1, !dbg !2497
  store i64 %29, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 8), align 16, !dbg !2497
  %end_lba = getelementptr inbounds %struct.blk_trace, ptr %8, i32 0, i32 6, !dbg !2498
  %30 = ptrtoint ptr %end_lba to i32, !dbg !2498
  call void @__asan_load8_noabort(i32 %30), !dbg !2498
  %31 = load i64, ptr %end_lba, align 8, !dbg !2498
  %call33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.85, i64 noundef %31), !dbg !2499
  br label %if.end34, !dbg !2500

if.end34:                                         ; preds = %if.then32, %if.else29.if.end34_crit_edge
  %ret.0 = phi i32 [ %call33, %if.then32 ], [ -6, %if.else29.if.end34_crit_edge ], !dbg !2501
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 9), align 8
  %32 = add i64 %gcov_ctr48, 1
  store i64 %32, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.297, i32 0, i32 9), align 8
  br label %out_unlock_bdev

out_unlock_bdev:                                  ; preds = %if.end34, %if.then27, %if.then22, %blk_trace_mask2str.exit, %if.then14, %if.then8
  %ret.1 = phi i32 [ %call11, %if.then8 ], [ 9, %if.then14 ], [ %sub.ptr.sub.i, %blk_trace_mask2str.exit ], [ %call23, %if.then22 ], [ %call28, %if.then27 ], [ %ret.0, %if.end34 ], !dbg !2501
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !2502
  ret i32 %ret.1, !dbg !2503
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_blk_trace_attr_store(ptr noundef %dev, ptr noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 !dbg !2504 {
entry:
  %s.i = alloca ptr, align 4
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2505
  %add.ptr = getelementptr i8, ptr %dev, i32 -48, !dbg !2506
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.119, align 8
  %bd_queue.i = getelementptr i8, ptr %dev, i32 996, !dbg !2507
  %1 = ptrtoint ptr %bd_queue.i to i32, !dbg !2507
  call void @__asan_load4_noabort(i32 %1), !dbg !2507
  %2 = load ptr, ptr %bd_queue.i, align 4, !dbg !2507
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #22, !dbg !2509
  %3 = ptrtoint ptr %value to i32, !dbg !2510
  call void @__asan_store8_noabort(i32 %3), !dbg !2510
  store i64 -1, ptr %value, align 8, !dbg !2510, !annotation !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count), !dbg !2511
  %cmp = icmp eq i32 %count, 0, !dbg !2511
  br i1 %cmp, label %if.then, label %if.end, !dbg !2512

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2513
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.298, align 16, !dbg !2513
  %4 = add i64 %gcov_ctr, 1, !dbg !2513
  store i64 %4, ptr @__llvm_gcov_ctr.298, align 16, !dbg !2513
  br label %cond.end, !dbg !2513

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %attr, @dev_attr_act_mask, !dbg !2514
  %call3 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #22, !dbg !2515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !2515
  %tobool.not = icmp eq i32 %call3, 0, !dbg !2515
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2516

if.then2:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then2.if.end14_crit_edge, label %if.then4, !dbg !2517

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2517
  br label %if.end14, !dbg !2517

if.then4:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i) #22, !dbg !2518
  %call.i = call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #22, !dbg !2521
  %cmp.i = icmp eq ptr %call.i, null, !dbg !2522
  br i1 %cmp.i, label %blk_trace_str2mask.exit.thread, label %if.end.i, !dbg !2523

blk_trace_str2mask.exit.thread:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2524
  %gcov_ctr.i145 = load i64, ptr @__llvm_gcov_ctr.300, align 16, !dbg !2524
  %5 = add i64 %gcov_ctr.i145, 1, !dbg !2524
  store i64 %5, ptr @__llvm_gcov_ctr.300, align 16, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #22, !dbg !2525
  br label %if.then7, !dbg !2526

if.end.i:                                         ; preds = %if.then4
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.303, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.303, align 8
  %call.i.i = call ptr @strim(ptr noundef nonnull %call.i) #22, !dbg !2527
  %7 = ptrtoint ptr %s.i to i32, !dbg !2531
  call void @__asan_store4_noabort(i32 %7), !dbg !2531
  store ptr %call.i.i, ptr %s.i, align 4, !dbg !2531
  %call24954.i = call ptr @strsep(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.87) #22, !dbg !2532
  %cmp35055.i = icmp eq ptr %call24954.i, null, !dbg !2533
  br i1 %cmp35055.i, label %if.end.i.blk_trace_str2mask.exit_crit_edge, label %if.end.i.if.end5.lr.ph.i_crit_edge, !dbg !2534

if.end.i.if.end5.lr.ph.i_crit_edge:               ; preds = %if.end.i
  br label %if.end5.lr.ph.i, !dbg !2534

if.end.i.blk_trace_str2mask.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2534
  br label %blk_trace_str2mask.exit, !dbg !2534

if.end5.lr.ph.i:                                  ; preds = %if.end23.i.if.end5.lr.ph.i_crit_edge, %if.end.i.if.end5.lr.ph.i_crit_edge
  %call24957.i = phi ptr [ %call249.i, %if.end23.i.if.end5.lr.ph.i_crit_edge ], [ %call24954.i, %if.end.i.if.end5.lr.ph.i_crit_edge ]
  %mask.0.ph56.i = phi i32 [ %or.i, %if.end23.i.if.end5.lr.ph.i_crit_edge ], [ 0, %if.end.i.if.end5.lr.ph.i_crit_edge ]
  br label %if.end5.i, !dbg !2534

if.end5.i:                                        ; preds = %if.then8.i.if.end5.i_crit_edge, %if.end5.lr.ph.i
  %call251.i = phi ptr [ %call24957.i, %if.end5.lr.ph.i ], [ %call2.i, %if.then8.i.if.end5.i_crit_edge ]
  %8 = ptrtoint ptr %call251.i to i32, !dbg !2535
  call void @__asan_load1_noabort(i32 %8), !dbg !2535
  %9 = load i8, ptr %call251.i, align 1, !dbg !2535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9), !dbg !2536
  %cmp6.i = icmp eq i8 %9, 0, !dbg !2536
  br i1 %cmp6.i, label %if.then8.i, label %if.end5.i.for.body.i_crit_edge, !dbg !2535

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i, !dbg !2535

if.then8.i:                                       ; preds = %if.end5.i
  %gcov_ctr29.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 2), align 16, !dbg !2537
  %10 = add i64 %gcov_ctr29.i, 1, !dbg !2537
  store i64 %10, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 2), align 16, !dbg !2537
  %call2.i = call ptr @strsep(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.87) #22, !dbg !2532
  %cmp3.i = icmp eq ptr %call2.i, null, !dbg !2533
  br i1 %cmp3.i, label %if.then8.i.blk_trace_str2mask.exit_crit_edge, label %if.then8.i.if.end5.i_crit_edge, !dbg !2534, !llvm.loop !2538

if.then8.i.if.end5.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2534
  br label %if.end5.i, !dbg !2534

if.then8.i.blk_trace_str2mask.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2534
  br label %blk_trace_str2mask.exit, !dbg !2534

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %i.053.i = phi i32 [ %inc.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %str12.i = getelementptr [16 x %struct.anon.114], ptr @mask_maps, i32 0, i32 %i.053.i, i32 1, !dbg !2541
  %11 = ptrtoint ptr %str12.i to i32, !dbg !2541
  call void @__asan_load4_noabort(i32 %11), !dbg !2541
  %12 = load ptr, ptr %str12.i, align 4, !dbg !2541
  %call13.i = call i32 @strcasecmp(ptr noundef nonnull %call251.i, ptr noundef %12) #22, !dbg !2542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i), !dbg !2543
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !2543
  br i1 %cmp14.i, label %if.end23.i, label %if.end19.i, !dbg !2542

if.end19.i:                                       ; preds = %for.body.i
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 3), align 8, !dbg !2544
  %13 = add i64 %gcov_ctr30.i, 1, !dbg !2544
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 3), align 8, !dbg !2544
  %inc.i = add nuw nsw i32 %i.053.i, 1, !dbg !2545
  %exitcond.not.i = icmp eq i32 %inc.i, 16, !dbg !2546
  br i1 %exitcond.not.i, label %if.end19.i.blk_trace_str2mask.exit_crit_edge, label %if.end19.i.for.body.i_crit_edge, !dbg !2547, !llvm.loop !2548

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2547
  br label %for.body.i, !dbg !2547

if.end19.i.blk_trace_str2mask.exit_crit_edge:     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2547
  br label %blk_trace_str2mask.exit, !dbg !2547

if.end23.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr [16 x %struct.anon.114], ptr @mask_maps, i32 0, i32 %i.053.i, !dbg !2549
  %gcov_ctr31.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 4), align 16, !dbg !2550
  %14 = add i64 %gcov_ctr31.i, 1, !dbg !2550
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 4), align 16, !dbg !2550
  %15 = ptrtoint ptr %arrayidx.i to i32, !dbg !2551
  call void @__asan_load4_noabort(i32 %15), !dbg !2551
  %16 = load i32, ptr %arrayidx.i, align 4, !dbg !2551
  %or.i = or i32 %16, %mask.0.ph56.i, !dbg !2552
  %gcov_ctr33.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 6), align 16, !dbg !2539
  %17 = add i64 %gcov_ctr33.i, 1, !dbg !2539
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 6), align 16, !dbg !2539
  %call249.i = call ptr @strsep(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.87) #22, !dbg !2532
  %cmp350.i = icmp eq ptr %call249.i, null, !dbg !2533
  br i1 %cmp350.i, label %if.end23.i.blk_trace_str2mask.exit_crit_edge, label %if.end23.i.if.end5.lr.ph.i_crit_edge, !dbg !2534, !llvm.loop !2553

if.end23.i.if.end5.lr.ph.i_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2534
  br label %if.end5.lr.ph.i, !dbg !2534

if.end23.i.blk_trace_str2mask.exit_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2534
  br label %blk_trace_str2mask.exit, !dbg !2534

blk_trace_str2mask.exit:                          ; preds = %if.end23.i.blk_trace_str2mask.exit_crit_edge, %if.end19.i.blk_trace_str2mask.exit_crit_edge, %if.then8.i.blk_trace_str2mask.exit_crit_edge, %if.end.i.blk_trace_str2mask.exit_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 1), %if.end.i.blk_trace_str2mask.exit_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 5), %if.end19.i.blk_trace_str2mask.exit_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 1), %if.then8.i.blk_trace_str2mask.exit_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.300, i32 0, i32 1), %if.end23.i.blk_trace_str2mask.exit_crit_edge ]
  %mask.2.i = phi i32 [ 0, %if.end.i.blk_trace_str2mask.exit_crit_edge ], [ -22, %if.end19.i.blk_trace_str2mask.exit_crit_edge ], [ %mask.0.ph56.i, %if.then8.i.blk_trace_str2mask.exit_crit_edge ], [ %or.i, %if.end23.i.blk_trace_str2mask.exit_crit_edge ], !dbg !2554
  %18 = ptrtoint ptr %.sink.i to i32, !dbg !2554
  call void @__asan_load8_noabort(i32 %18), !dbg !2554
  %gcov_ctr32.i = load i64, ptr %.sink.i, align 8, !dbg !2554
  %19 = add i64 %gcov_ctr32.i, 1, !dbg !2554
  store i64 %19, ptr %.sink.i, align 8, !dbg !2554
  call void @kfree(ptr noundef nonnull %call.i) #22, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #22, !dbg !2525
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.2.i), !dbg !2556
  %cmp6 = icmp slt i32 %mask.2.i, 0, !dbg !2556
  br i1 %cmp6, label %blk_trace_str2mask.exit.if.then7_crit_edge, label %if.end8, !dbg !2526

blk_trace_str2mask.exit.if.then7_crit_edge:       ; preds = %blk_trace_str2mask.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2526
  br label %if.then7, !dbg !2526

if.then7:                                         ; preds = %blk_trace_str2mask.exit.if.then7_crit_edge, %blk_trace_str2mask.exit.thread
  %retval.0.i157 = phi i32 [ -12, %blk_trace_str2mask.exit.thread ], [ %mask.2.i, %blk_trace_str2mask.exit.if.then7_crit_edge ]
  %gcov_ctr94 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 1), align 8, !dbg !2557
  %20 = add i64 %gcov_ctr94, 1, !dbg !2557
  store i64 %20, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 1), align 8, !dbg !2557
  br label %cond.end, !dbg !2557

if.end8:                                          ; preds = %blk_trace_str2mask.exit
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2558
  %gcov_ctr95 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 2), align 16, !dbg !2558
  %21 = add i64 %gcov_ctr95, 1, !dbg !2558
  store i64 %21, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 2), align 16, !dbg !2558
  %conv172 = zext i32 %mask.2.i to i64, !dbg !2558
  %22 = ptrtoint ptr %value to i32, !dbg !2559
  call void @__asan_store8_noabort(i32 %22), !dbg !2559
  store i64 %conv172, ptr %value, align 8, !dbg !2559
  br label %if.end14, !dbg !2560

if.else:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.else.if.end14_crit_edge, label %if.then12, !dbg !2561

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2561
  br label %if.end14, !dbg !2561

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2562
  %gcov_ctr97 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 4), align 16, !dbg !2562
  %23 = add i64 %gcov_ctr97, 1, !dbg !2562
  store i64 %23, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 4), align 16, !dbg !2562
  br label %cond.end, !dbg !2562

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end8, %if.then2.if.end14_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 3), %if.end8 ], [ getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 3), %if.then2.if.end14_crit_edge ], [ getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 5), %if.else.if.end14_crit_edge ]
  %24 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %24)
  %gcov_ctr98 = load i64, ptr %.sink, align 8
  %25 = add i64 %gcov_ctr98, 1
  store i64 %25, ptr %.sink, align 8
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 45, !dbg !2563
  call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #22, !dbg !2563
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 45, i32 5, !dbg !2564
  %gcov_ctr.i146 = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %26 = add i64 %gcov_ctr.i146, 1
  store i64 %26, ptr @__llvm_gcov_ctr.121, align 8
  %call.i147 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !2565
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147), !dbg !2564
  %tobool17.not = icmp eq i32 %call.i147, 0, !dbg !2564
  br i1 %tobool17.not, label %land.lhs.true, label %if.end14.do.end_crit_edge, !dbg !2564

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2564
  br label %do.end, !dbg !2564

land.lhs.true:                                    ; preds = %if.end14
  %gcov_ctr99 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 6), align 16, !dbg !2564
  %27 = add i64 %gcov_ctr99, 1, !dbg !2564
  store i64 %27, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 6), align 16, !dbg !2564
  %call18 = call i32 @debug_lockdep_rcu_enabled() #22, !dbg !2564
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18), !dbg !2564
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !2564
  br i1 %tobool19.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true20, !dbg !2564

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2564
  br label %do.end, !dbg !2564

land.lhs.true20:                                  ; preds = %land.lhs.true
  %gcov_ctr100 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 7), align 8, !dbg !2564
  %28 = add i64 %gcov_ctr100, 1, !dbg !2564
  store i64 %28, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 7), align 8, !dbg !2564
  %.b144 = load i1, ptr @sysfs_blk_trace_attr_store.__warned, align 1, !dbg !2564
  br i1 %.b144, label %land.lhs.true20.do.end_crit_edge, label %if.then22, !dbg !2564

land.lhs.true20.do.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2564
  br label %do.end, !dbg !2564

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2564
  %gcov_ctr101 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 8), align 16, !dbg !2564
  %29 = add i64 %gcov_ctr101, 1, !dbg !2564
  store i64 %29, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 8), align 16, !dbg !2564
  store i1 true, ptr @sysfs_blk_trace_attr_store.__warned, align 1, !dbg !2564
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1835, ptr noundef nonnull @.str.1) #22, !dbg !2564
  br label %do.end, !dbg !2564

do.end:                                           ; preds = %if.then22, %land.lhs.true20.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end14.do.end_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 46, !dbg !2564
  %30 = ptrtoint ptr %blk_trace to i32, !dbg !2564
  call void @__asan_load4_noabort(i32 %30), !dbg !2564
  %31 = load ptr, ptr %blk_trace, align 8, !dbg !2564
  %cmp25 = icmp eq ptr %attr, @dev_attr_enable, !dbg !2567
  br i1 %cmp25, label %if.then27, label %if.end45, !dbg !2568

if.then27:                                        ; preds = %do.end
  %32 = ptrtoint ptr %value to i32, !dbg !2569
  call void @__asan_load8_noabort(i32 %32), !dbg !2569
  %33 = load i64, ptr %value, align 8, !dbg !2569
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33), !dbg !2570
  %tobool28 = icmp ne i64 %33, 0, !dbg !2570
  %tobool30 = icmp eq ptr %31, null, !dbg !2571
  %cmp35 = xor i1 %tobool30, %tobool28, !dbg !2572
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !2573

if.then37:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2574
  %gcov_ctr102 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 9), align 8, !dbg !2574
  %34 = add i64 %gcov_ctr102, 1, !dbg !2574
  store i64 %34, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 9), align 8, !dbg !2574
  br label %out.thread165, !dbg !2575

if.end38:                                         ; preds = %if.then27
  br i1 %tobool28, label %out, label %if.else42, !dbg !2576

if.else42:                                        ; preds = %if.end38
  %gcov_ctr103 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 10), align 16, !dbg !2577
  %35 = add i64 %gcov_ctr103, 1, !dbg !2577
  store i64 %35, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 10), align 16, !dbg !2577
  %gcov_ctr.i.i148 = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %36 = add i64 %gcov_ctr.i.i148, 1
  store i64 %36, ptr @__llvm_gcov_ctr.121, align 8
  %call.i.i149 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !2578
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149), !dbg !2582
  %tobool.not.i = icmp eq i32 %call.i.i149, 0, !dbg !2582
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else42.do.end.i_crit_edge, !dbg !2582

if.else42.do.end.i_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2582
  br label %do.end.i, !dbg !2582

land.lhs.true.i:                                  ; preds = %if.else42
  %gcov_ctr.i150 = load i64, ptr @__llvm_gcov_ctr.302, align 16, !dbg !2582
  %37 = add i64 %gcov_ctr.i150, 1, !dbg !2582
  store i64 %37, ptr @__llvm_gcov_ctr.302, align 16, !dbg !2582
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #22, !dbg !2582
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !2582
  %tobool2.not.i = icmp eq i32 %call1.i, 0, !dbg !2582
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i, !dbg !2582

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2582
  br label %do.end.i, !dbg !2582

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr50.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 1), align 8, !dbg !2582
  %38 = add i64 %gcov_ctr50.i, 1, !dbg !2582
  store i64 %38, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 1), align 8, !dbg !2582
  %.b67.i = load i1, ptr @blk_trace_remove_queue.__warned, align 1, !dbg !2582
  br i1 %.b67.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i151, !dbg !2582

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2582
  br label %do.end.i, !dbg !2582

if.then.i151:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2582
  %gcov_ctr51.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 2), align 16, !dbg !2582
  %39 = add i64 %gcov_ctr51.i, 1, !dbg !2582
  store i64 %39, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 2), align 16, !dbg !2582
  store i1 true, ptr @blk_trace_remove_queue.__warned, align 1, !dbg !2582
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1615, ptr noundef nonnull @.str.1) #22, !dbg !2582
  br label %do.end.i, !dbg !2582

do.end.i:                                         ; preds = %if.then.i151, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.else42.do.end.i_crit_edge
  %40 = ptrtoint ptr %blk_trace to i32, !dbg !2582
  call void @__asan_load4_noabort(i32 %40), !dbg !2582
  %41 = load ptr, ptr %blk_trace, align 8, !dbg !2582
  store volatile ptr null, ptr %blk_trace, align 8, !dbg !2582
  %gcov_ctr52.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 3), align 8, !dbg !2582
  %42 = add i64 %gcov_ctr52.i, 1, !dbg !2582
  store i64 %42, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 3), align 8, !dbg !2582
  %cmp43.i = icmp eq ptr %41, null, !dbg !2583
  br i1 %cmp43.i, label %if.then44.i, label %if.end45.i, !dbg !2584

if.then44.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2585
  %gcov_ctr53.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 4), align 16, !dbg !2585
  %43 = add i64 %gcov_ctr53.i, 1, !dbg !2585
  store i64 %43, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 4), align 16, !dbg !2585
  br label %out.thread169, !dbg !2585

if.end45.i:                                       ; preds = %do.end.i
  %44 = ptrtoint ptr %41 to i32, !dbg !2586
  call void @__asan_load4_noabort(i32 %44), !dbg !2586
  %45 = load i32, ptr %41, align 8, !dbg !2586
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45), !dbg !2587
  %cmp46.i = icmp eq i32 %45, 2, !dbg !2587
  br i1 %cmp46.i, label %if.then47.i, label %if.end45.i.if.end49.i_crit_edge, !dbg !2588

if.end45.i.if.end49.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2588
  br label %if.end49.i, !dbg !2588

if.then47.i:                                      ; preds = %if.end45.i
  %gcov_ctr54.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 5), align 8, !dbg !2589
  %46 = add i64 %gcov_ctr54.i, 1, !dbg !2589
  store i64 %46, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 5), align 8, !dbg !2589
  %47 = ptrtoint ptr %41 to i32, !dbg !2590
  call void @__asan_store4_noabort(i32 %47), !dbg !2590
  store i32 3, ptr %41, align 8, !dbg !2590
  call void @_raw_spin_lock_irq(ptr noundef nonnull @running_trace_lock) #22, !dbg !2591
  %running_list.i = getelementptr inbounds %struct.blk_trace, ptr %41, i32 0, i32 10, !dbg !2592
  %gcov_ctr.i68.i = load i64, ptr @__llvm_gcov_ctr.252, align 8
  %48 = add i64 %gcov_ctr.i68.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.252, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %running_list.i) #22, !dbg !2593
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !dbg !2596

if.then.i.i.i:                                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2597
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.254, align 8, !dbg !2597
  %49 = add i64 %gcov_ctr.i.i.i, 1, !dbg !2597
  store i64 %49, ptr @__llvm_gcov_ctr.254, align 8, !dbg !2597
  br label %list_del_init.exit.i, !dbg !2597

if.end.i.i.i:                                     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2598
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.254, i32 0, i32 1), align 8, !dbg !2598
  %50 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !2598
  store i64 %50, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.254, i32 0, i32 1), align 8, !dbg !2598
  %prev.i.i.i = getelementptr inbounds %struct.blk_trace, ptr %41, i32 0, i32 10, i32 1, !dbg !2599
  %51 = ptrtoint ptr %prev.i.i.i to i32, !dbg !2599
  call void @__asan_load4_noabort(i32 %51), !dbg !2599
  %52 = load ptr, ptr %prev.i.i.i, align 4, !dbg !2599
  %53 = ptrtoint ptr %running_list.i to i32, !dbg !2600
  call void @__asan_load4_noabort(i32 %53), !dbg !2600
  %54 = load ptr, ptr %running_list.i, align 4, !dbg !2600
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1, !dbg !2601
  %55 = ptrtoint ptr %prev1.i.i.i.i to i32, !dbg !2603
  call void @__asan_store4_noabort(i32 %55), !dbg !2603
  store ptr %52, ptr %prev1.i.i.i.i, align 4, !dbg !2603
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.255, align 8, !dbg !2604
  %56 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !2604
  store i64 %56, ptr @__llvm_gcov_ctr.255, align 8, !dbg !2604
  %57 = ptrtoint ptr %52 to i32, !dbg !2604
  call void @__asan_store4_noabort(i32 %57), !dbg !2604
  store volatile ptr %54, ptr %52, align 4, !dbg !2604
  br label %list_del_init.exit.i, !dbg !2605

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.i.i
  %gcov_ctr.i3.i.i = load i64, ptr @__llvm_gcov_ctr.205, align 8, !dbg !2606
  %58 = add i64 %gcov_ctr.i3.i.i, 1, !dbg !2606
  store i64 %58, ptr @__llvm_gcov_ctr.205, align 8, !dbg !2606
  %59 = ptrtoint ptr %running_list.i to i32, !dbg !2606
  call void @__asan_store4_noabort(i32 %59), !dbg !2606
  store volatile ptr %running_list.i, ptr %running_list.i, align 4, !dbg !2606
  %prev.i4.i.i = getelementptr inbounds %struct.blk_trace, ptr %41, i32 0, i32 10, i32 1, !dbg !2608
  %60 = ptrtoint ptr %prev.i4.i.i to i32, !dbg !2609
  call void @__asan_store4_noabort(i32 %60), !dbg !2609
  store ptr %running_list.i, ptr %prev.i4.i.i, align 4, !dbg !2609
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @running_trace_lock) #22, !dbg !2610
  %rchan.i = getelementptr inbounds %struct.blk_trace, ptr %41, i32 0, i32 1, !dbg !2611
  %61 = ptrtoint ptr %rchan.i to i32, !dbg !2611
  call void @__asan_load4_noabort(i32 %61), !dbg !2611
  %62 = load ptr, ptr %rchan.i, align 4, !dbg !2611
  call void @relay_flush(ptr noundef %62) #22, !dbg !2612
  br label %if.end49.i, !dbg !2613

if.end49.i:                                       ; preds = %list_del_init.exit.i, %if.end45.i.if.end49.i_crit_edge
  %gcov_ctr55.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 6), align 16, !dbg !2614
  %63 = add i64 %gcov_ctr55.i, 1, !dbg !2614
  store i64 %63, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.302, i32 0, i32 6), align 16, !dbg !2614
  call fastcc void @put_probe_ref() #22, !dbg !2614
  call void @synchronize_rcu() #22, !dbg !2615
  call fastcc void @blk_trace_free(ptr noundef %2, ptr noundef nonnull %41) #22, !dbg !2616
  br label %out.thread165, !dbg !2617

if.end45:                                         ; preds = %do.end
  %cmp46 = icmp eq ptr %31, null, !dbg !2618
  br i1 %cmp46, label %if.then48, label %if.end45.if.then69_crit_edge, !dbg !2619

if.end45.if.then69_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2619
  br label %if.then69, !dbg !2619

if.then48:                                        ; preds = %if.end45
  %call49 = call fastcc i32 @blk_trace_setup_queue(ptr noundef %2, ptr noundef %add.ptr), !dbg !2620
  %gcov_ctr.i153 = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %64 = add i64 %gcov_ctr.i153, 1
  store i64 %64, ptr @__llvm_gcov_ctr.121, align 8
  %call.i154 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #22, !dbg !2621
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154), !dbg !2623
  %tobool54.not = icmp eq i32 %call.i154, 0, !dbg !2623
  br i1 %tobool54.not, label %land.lhs.true55, label %if.then48.if.end66_crit_edge, !dbg !2623

if.then48.if.end66_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2623
  br label %if.end66, !dbg !2623

land.lhs.true55:                                  ; preds = %if.then48
  %gcov_ctr105 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 12), align 16, !dbg !2623
  %65 = add i64 %gcov_ctr105, 1, !dbg !2623
  store i64 %65, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 12), align 16, !dbg !2623
  %call56 = call i32 @debug_lockdep_rcu_enabled() #22, !dbg !2623
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56), !dbg !2623
  %tobool57.not = icmp eq i32 %call56, 0, !dbg !2623
  br i1 %tobool57.not, label %land.lhs.true55.if.end66_crit_edge, label %land.lhs.true58, !dbg !2623

land.lhs.true55.if.end66_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2623
  br label %if.end66, !dbg !2623

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %gcov_ctr106 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 13), align 8, !dbg !2623
  %66 = add i64 %gcov_ctr106, 1, !dbg !2623
  store i64 %66, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 13), align 8, !dbg !2623
  %.b142143 = load i1, ptr @sysfs_blk_trace_attr_store.__warned.100, align 1, !dbg !2623
  br i1 %.b142143, label %land.lhs.true58.if.end66_crit_edge, label %if.then60, !dbg !2623

land.lhs.true58.if.end66_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2623
  br label %if.end66, !dbg !2623

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2623
  %gcov_ctr107 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 14), align 16, !dbg !2623
  %67 = add i64 %gcov_ctr107, 1, !dbg !2623
  store i64 %67, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 14), align 16, !dbg !2623
  store i1 true, ptr @sysfs_blk_trace_attr_store.__warned.100, align 1, !dbg !2623
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1852, ptr noundef nonnull @.str.1) #22, !dbg !2623
  br label %if.end66, !dbg !2623

if.end66:                                         ; preds = %if.then60, %land.lhs.true58.if.end66_crit_edge, %land.lhs.true55.if.end66_crit_edge, %if.then48.if.end66_crit_edge
  %gcov_ctr108 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 15), align 8, !dbg !2623
  %68 = add i64 %gcov_ctr108, 1, !dbg !2623
  store i64 %68, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 15), align 8, !dbg !2623
  %69 = ptrtoint ptr %blk_trace to i32, !dbg !2623
  call void @__asan_load4_noabort(i32 %69), !dbg !2623
  %70 = load ptr, ptr %blk_trace, align 8, !dbg !2623
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49), !dbg !2624
  %cmp67 = icmp eq i32 %call49, 0, !dbg !2624
  br i1 %cmp67, label %if.end66.if.then69_crit_edge, label %if.end66.out.thread169_crit_edge, !dbg !2625

if.end66.out.thread169_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2625
  br label %out.thread169, !dbg !2625

if.end66.if.then69_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2625
  br label %if.then69, !dbg !2625

if.then69:                                        ; preds = %if.end66.if.then69_crit_edge, %if.end45.if.then69_crit_edge
  %bt.0161 = phi ptr [ %70, %if.end66.if.then69_crit_edge ], [ %31, %if.end45.if.then69_crit_edge ]
  br i1 %cmp1, label %if.then72, label %if.else74, !dbg !2626

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2627
  %gcov_ctr109 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 16), align 16, !dbg !2627
  %71 = add i64 %gcov_ctr109, 1, !dbg !2627
  store i64 %71, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 16), align 16, !dbg !2627
  %72 = ptrtoint ptr %value to i32, !dbg !2627
  call void @__asan_load8_noabort(i32 %72), !dbg !2627
  %73 = load i64, ptr %value, align 8, !dbg !2627
  %conv73 = trunc i64 %73 to i16, !dbg !2627
  %act_mask = getelementptr inbounds %struct.blk_trace, ptr %bt.0161, i32 0, i32 4, !dbg !2628
  %74 = ptrtoint ptr %act_mask to i32, !dbg !2629
  call void @__asan_store2_noabort(i32 %74), !dbg !2629
  store i16 %conv73, ptr %act_mask, align 8, !dbg !2629
  br label %out.thread165, !dbg !2630

if.else74:                                        ; preds = %if.then69
  %cmp75 = icmp eq ptr %attr, @dev_attr_pid, !dbg !2631
  br i1 %cmp75, label %if.then77, label %if.else79, !dbg !2632

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2633
  %gcov_ctr110 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 17), align 8, !dbg !2633
  %75 = add i64 %gcov_ctr110, 1, !dbg !2633
  store i64 %75, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 17), align 8, !dbg !2633
  %76 = ptrtoint ptr %value to i32, !dbg !2633
  call void @__asan_load8_noabort(i32 %76), !dbg !2633
  %77 = load i64, ptr %value, align 8, !dbg !2633
  %conv78 = trunc i64 %77 to i32, !dbg !2633
  %pid = getelementptr inbounds %struct.blk_trace, ptr %bt.0161, i32 0, i32 7, !dbg !2634
  %78 = ptrtoint ptr %pid to i32, !dbg !2635
  call void @__asan_store4_noabort(i32 %78), !dbg !2635
  store i32 %conv78, ptr %pid, align 8, !dbg !2635
  br label %out.thread165, !dbg !2636

if.else79:                                        ; preds = %if.else74
  %cmp80 = icmp eq ptr %attr, @dev_attr_start_lba, !dbg !2637
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !2638

if.then82:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2639
  %gcov_ctr111 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 18), align 16, !dbg !2639
  %79 = add i64 %gcov_ctr111, 1, !dbg !2639
  store i64 %79, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 18), align 16, !dbg !2639
  %80 = ptrtoint ptr %value to i32, !dbg !2639
  call void @__asan_load8_noabort(i32 %80), !dbg !2639
  %81 = load i64, ptr %value, align 8, !dbg !2639
  %start_lba = getelementptr inbounds %struct.blk_trace, ptr %bt.0161, i32 0, i32 5, !dbg !2640
  %82 = ptrtoint ptr %start_lba to i32, !dbg !2641
  call void @__asan_store8_noabort(i32 %82), !dbg !2641
  store i64 %81, ptr %start_lba, align 8, !dbg !2641
  br label %out.thread165, !dbg !2642

if.else83:                                        ; preds = %if.else79
  %cmp84 = icmp eq ptr %attr, @dev_attr_end_lba, !dbg !2643
  br i1 %cmp84, label %if.then86, label %if.else83.if.end87_crit_edge, !dbg !2644

if.else83.if.end87_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2644
  br label %if.end87, !dbg !2644

if.then86:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2645
  %gcov_ctr112 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 19), align 8, !dbg !2645
  %83 = add i64 %gcov_ctr112, 1, !dbg !2645
  store i64 %83, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 19), align 8, !dbg !2645
  %84 = ptrtoint ptr %value to i32, !dbg !2645
  call void @__asan_load8_noabort(i32 %84), !dbg !2645
  %85 = load i64, ptr %value, align 8, !dbg !2645
  %end_lba = getelementptr inbounds %struct.blk_trace, ptr %bt.0161, i32 0, i32 6, !dbg !2646
  %86 = ptrtoint ptr %end_lba to i32, !dbg !2647
  call void @__asan_store8_noabort(i32 %86), !dbg !2647
  store i64 %85, ptr %end_lba, align 8, !dbg !2647
  br label %if.end87, !dbg !2648

if.end87:                                         ; preds = %if.then86, %if.else83.if.end87_crit_edge
  %gcov_ctr113 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 20), align 16
  %87 = add i64 %gcov_ctr113, 1
  store i64 %87, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 20), align 16
  br label %out.thread165

out.thread165:                                    ; preds = %if.end87, %if.then82, %if.then77, %if.then72, %if.end49.i, %if.then37
  call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !2649
  br label %cond.false, !dbg !2650

out.thread169:                                    ; preds = %if.end66.out.thread169_crit_edge, %if.then44.i
  %ret.1.ph = phi i32 [ -22, %if.then44.i ], [ %call49, %if.end66.out.thread169_crit_edge ]
  call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !2649
  br label %cond.end, !dbg !2650

out:                                              ; preds = %if.end38
  %gcov_ctr104 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 11), align 8, !dbg !2651
  %88 = add i64 %gcov_ctr104, 1, !dbg !2651
  store i64 %88, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 11), align 8, !dbg !2651
  %call41 = call fastcc i32 @blk_trace_setup_queue(ptr noundef %2, ptr noundef %add.ptr), !dbg !2652
  call void @mutex_unlock(ptr noundef %debugfs_mutex) #22, !dbg !2649
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41), !dbg !2650
  %tobool93.not = icmp eq i32 %call41, 0, !dbg !2650
  br i1 %tobool93.not, label %out.cond.false_crit_edge, label %out.cond.end_crit_edge, !dbg !2650

out.cond.end_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2650
  br label %cond.end, !dbg !2650

out.cond.false_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2650
  br label %cond.false, !dbg !2650

cond.false:                                       ; preds = %out.cond.false_crit_edge, %out.thread165
  %gcov_ctr114 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 21), align 8, !dbg !2653
  %89 = add i64 %gcov_ctr114, 1, !dbg !2653
  store i64 %89, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.298, i32 0, i32 21), align 8, !dbg !2653
  br label %cond.end, !dbg !2650

cond.end:                                         ; preds = %cond.false, %out.cond.end_crit_edge, %out.thread169, %if.then12, %if.then7, %if.then
  %cond = phi i32 [ %count, %cond.false ], [ %call41, %out.cond.end_crit_edge ], [ %ret.1.ph, %out.thread169 ], [ -22, %if.then12 ], [ %retval.0.i157, %if.then7 ], [ -22, %if.then ], !dbg !2650
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #22, !dbg !2654
  ret i32 %cond, !dbg !2655
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_trace_setup_queue(ptr noundef %q, ptr noundef readonly %bdev) unnamed_addr #0 align 64 !dbg !2656 {
entry:
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2657
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.201, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.201, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.210, i32 0, i32 1), align 8, !dbg !2658
  %1 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !2658
  store i64 %1, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.210, i32 0, i32 1), align 8, !dbg !2658
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.208, i32 0, i32 2), align 16, !dbg !2662
  %2 = add i64 %gcov_ctr11.i.i, 1, !dbg !2662
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.208, i32 0, i32 2), align 16, !dbg !2662
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.211, align 16, !dbg !2663
  %3 = add i64 %gcov_ctr.i.i.i, 1, !dbg !2663
  store i64 %3, ptr @__llvm_gcov_ctr.211, align 16, !dbg !2663
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !2665
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !2665
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #25, !dbg !2666
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !2667
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2668

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2669
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.301, align 16, !dbg !2669
  %5 = add i64 %gcov_ctr, 1, !dbg !2669
  store i64 %5, ptr @__llvm_gcov_ctr.301, align 16, !dbg !2669
  br label %cleanup, !dbg !2669

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 128, i32 noundef 1) #26, !dbg !2670
  %msg_data = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i, i32 0, i32 3, !dbg !2671
  %6 = ptrtoint ptr %msg_data to i32, !dbg !2672
  call void @__asan_store4_noabort(i32 %6), !dbg !2672
  store ptr %call1, ptr %msg_data, align 4, !dbg !2672
  %tobool3.not = icmp eq ptr %call1, null, !dbg !2673
  br i1 %tobool3.not, label %free_bt, label %if.end5, !dbg !2674

if.end5:                                          ; preds = %if.end
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 5, !dbg !2675
  %7 = ptrtoint ptr %bd_dev to i32, !dbg !2675
  call void @__asan_load4_noabort(i32 %7), !dbg !2675
  %8 = load i32, ptr %bd_dev, align 4, !dbg !2675
  %dev = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i, i32 0, i32 8, !dbg !2676
  %9 = ptrtoint ptr %dev to i32, !dbg !2677
  call void @__asan_store4_noabort(i32 %9), !dbg !2677
  store i32 %8, ptr %dev, align 4, !dbg !2677
  %act_mask = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i, i32 0, i32 4, !dbg !2678
  %10 = ptrtoint ptr %act_mask to i32, !dbg !2679
  call void @__asan_store2_noabort(i32 %10), !dbg !2679
  store i16 -1, ptr %act_mask, align 8, !dbg !2679
  %tobool.not.i = icmp eq ptr %bdev, null, !dbg !2680
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !2680

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2682
  %gcov_ctr.i53 = load i64, ptr @__llvm_gcov_ctr.206, align 8, !dbg !2682
  %11 = add i64 %gcov_ctr.i53, 1, !dbg !2682
  store i64 %11, ptr @__llvm_gcov_ctr.206, align 8, !dbg !2682
  %12 = ptrtoint ptr %bdev to i32, !dbg !2683
  call void @__asan_load8_noabort(i32 %12), !dbg !2683
  %13 = load i64, ptr %bdev, align 8, !dbg !2683
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.229, align 8
  %14 = add i64 %gcov_ctr.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.229, align 8
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 1, !dbg !2684
  %15 = ptrtoint ptr %bd_nr_sectors.i.i to i32, !dbg !2684
  call void @__asan_load8_noabort(i32 %15), !dbg !2684
  %16 = load i64, ptr %bd_nr_sectors.i.i, align 8, !dbg !2684
  %add.i = add i64 %16, %13, !dbg !2686
  br label %blk_trace_setup_lba.exit, !dbg !2687

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2688
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.206, i32 0, i32 1), align 8, !dbg !2688
  %17 = add i64 %gcov_ctr4.i, 1, !dbg !2688
  store i64 %17, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.206, i32 0, i32 1), align 8, !dbg !2688
  br label %blk_trace_setup_lba.exit

blk_trace_setup_lba.exit:                         ; preds = %if.else.i, %if.then.i
  %.sink = phi i64 [ 0, %if.else.i ], [ %13, %if.then.i ], !dbg !2689
  %add.sink.i = phi i64 [ -1, %if.else.i ], [ %add.i, %if.then.i ], !dbg !2689
  %18 = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i, i32 0, i32 5, !dbg !2690
  %19 = ptrtoint ptr %18 to i32, !dbg !2691
  call void @__asan_store8_noabort(i32 %19), !dbg !2691
  store i64 %.sink, ptr %18, align 8, !dbg !2691
  %20 = getelementptr inbounds %struct.blk_trace, ptr %call7.i.i, i32 0, i32 6, !dbg !2692
  %21 = ptrtoint ptr %20 to i32, !dbg !2693
  call void @__asan_store8_noabort(i32 %21), !dbg !2693
  store i64 %add.sink.i, ptr %20, align 8, !dbg !2693
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !dbg !2694, !srcloc !2695
  %blk_trace27 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46, !dbg !2694
  %22 = ptrtoint ptr %blk_trace27 to i32, !dbg !2694
  call void @__asan_store4_noabort(i32 %22), !dbg !2694
  store volatile ptr %call7.i.i, ptr %blk_trace27, align 8, !dbg !2694
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.301, i32 0, i32 3), align 8
  %23 = add i64 %gcov_ctr42, 1
  store i64 %23, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.301, i32 0, i32 3), align 8
  tail call fastcc void @get_probe_ref(), !dbg !2696
  br label %cleanup, !dbg !2697

free_bt:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21, !dbg !2698
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.301, i32 0, i32 4), align 16, !dbg !2698
  %24 = add i64 %gcov_ctr43, 1, !dbg !2698
  store i64 %24, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.301, i32 0, i32 4), align 16, !dbg !2698
  tail call fastcc void @blk_trace_free(ptr noundef %q, ptr noundef nonnull %call7.i.i), !dbg !2699
  br label %cleanup, !dbg !2700

cleanup:                                          ; preds = %free_bt, %blk_trace_setup_lba.exit, %if.then
  %retval.0 = phi i32 [ 0, %blk_trace_setup_lba.exit ], [ -12, %free_bt ], [ -12, %if.then ], !dbg !2701
  ret i32 %retval.0, !dbg !2702
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #18 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1834378304) #22
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #22
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #22
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 200
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #21
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @llvm_gcda_summary_info() #22
  tail call void @llvm_gcda_end_file() #22
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #19 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr, i8 0, i64 80, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.105, align 8
  store i64 0, ptr @__llvm_gcov_ctr.106, align 8
  store i64 0, ptr @__llvm_gcov_ctr.107, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.108, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.109, align 8
  store i64 0, ptr @__llvm_gcov_ctr.110, align 8
  store i64 0, ptr @__llvm_gcov_ctr.111, align 8
  store i64 0, ptr @__llvm_gcov_ctr.112, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.113, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.114, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.115, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.116, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.117, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.118, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.119, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.120, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.121, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.122, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.123, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.124, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) @__llvm_gcov_ctr.125, i8 0, i64 152, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.126, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.127, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.128, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.129, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.130, align 8
  store i64 0, ptr @__llvm_gcov_ctr.131, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.132, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.133, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.134, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.135, align 8
  store i64 0, ptr @__llvm_gcov_ctr.136, align 8
  store i64 0, ptr @__llvm_gcov_ctr.137, align 8
  store i64 0, ptr @__llvm_gcov_ctr.138, align 8
  store i64 0, ptr @__llvm_gcov_ctr.139, align 8
  store i64 0, ptr @__llvm_gcov_ctr.140, align 8
  store i64 0, ptr @__llvm_gcov_ctr.141, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.142, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.143, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.144, align 8
  store i64 0, ptr @__llvm_gcov_ctr.145, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.146, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.147, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.148, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.149, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.150, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.151, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.152, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.153, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.154, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.155, align 8
  store i64 0, ptr @__llvm_gcov_ctr.156, align 8
  store i64 0, ptr @__llvm_gcov_ctr.157, align 8
  store i64 0, ptr @__llvm_gcov_ctr.158, align 8
  store i64 0, ptr @__llvm_gcov_ctr.159, align 8
  store i64 0, ptr @__llvm_gcov_ctr.160, align 8
  store i64 0, ptr @__llvm_gcov_ctr.161, align 8
  store i64 0, ptr @__llvm_gcov_ctr.162, align 8
  store i64 0, ptr @__llvm_gcov_ctr.163, align 8
  store i64 0, ptr @__llvm_gcov_ctr.164, align 8
  store i64 0, ptr @__llvm_gcov_ctr.165, align 8
  store i64 0, ptr @__llvm_gcov_ctr.166, align 8
  store i64 0, ptr @__llvm_gcov_ctr.167, align 8
  store i64 0, ptr @__llvm_gcov_ctr.168, align 8
  store i64 0, ptr @__llvm_gcov_ctr.169, align 8
  store i64 0, ptr @__llvm_gcov_ctr.170, align 8
  store i64 0, ptr @__llvm_gcov_ctr.171, align 8
  store i64 0, ptr @__llvm_gcov_ctr.172, align 8
  store i64 0, ptr @__llvm_gcov_ctr.173, align 8
  store i64 0, ptr @__llvm_gcov_ctr.174, align 8
  store i64 0, ptr @__llvm_gcov_ctr.175, align 8
  store i64 0, ptr @__llvm_gcov_ctr.176, align 8
  store i64 0, ptr @__llvm_gcov_ctr.177, align 8
  store i64 0, ptr @__llvm_gcov_ctr.178, align 8
  store i64 0, ptr @__llvm_gcov_ctr.179, align 8
  store i64 0, ptr @__llvm_gcov_ctr.180, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.181, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.182, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.183, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.184, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.185, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.186, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.187, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.188, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.189, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.190, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.191, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.192, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.193, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.194, align 8
  store i64 0, ptr @__llvm_gcov_ctr.195, align 8
  store i64 0, ptr @__llvm_gcov_ctr.196, align 8
  store i64 0, ptr @__llvm_gcov_ctr.197, align 8
  store i64 0, ptr @__llvm_gcov_ctr.198, align 8
  store i64 0, ptr @__llvm_gcov_ctr.199, align 8
  store i64 0, ptr @__llvm_gcov_ctr.200, align 8
  store i64 0, ptr @__llvm_gcov_ctr.201, align 8
  store i64 0, ptr @__llvm_gcov_ctr.202, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.203, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.204, align 8
  store i64 0, ptr @__llvm_gcov_ctr.205, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.206, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.207, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.208, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.209, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.210, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.211, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.212, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.213, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.214, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.215, align 8
  store i64 0, ptr @__llvm_gcov_ctr.216, align 8
  store i64 0, ptr @__llvm_gcov_ctr.217, align 8
  store i64 0, ptr @__llvm_gcov_ctr.218, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.219, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.220, align 8
  store i64 0, ptr @__llvm_gcov_ctr.221, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.222, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.223, align 8
  store i64 0, ptr @__llvm_gcov_ctr.224, align 8
  store i64 0, ptr @__llvm_gcov_ctr.225, align 8
  store i64 0, ptr @__llvm_gcov_ctr.226, align 8
  store i64 0, ptr @__llvm_gcov_ctr.227, align 8
  store i64 0, ptr @__llvm_gcov_ctr.228, align 8
  store i64 0, ptr @__llvm_gcov_ctr.229, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @__llvm_gcov_ctr.230, i8 0, i64 136, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.231, align 8
  store i64 0, ptr @__llvm_gcov_ctr.232, align 8
  store i64 0, ptr @__llvm_gcov_ctr.233, align 8
  store i64 0, ptr @__llvm_gcov_ctr.234, align 8
  store i64 0, ptr @__llvm_gcov_ctr.235, align 8
  store i64 0, ptr @__llvm_gcov_ctr.236, align 8
  store i64 0, ptr @__llvm_gcov_ctr.237, align 8
  store i64 0, ptr @__llvm_gcov_ctr.238, align 8
  store i64 0, ptr @__llvm_gcov_ctr.239, align 8
  store i64 0, ptr @__llvm_gcov_ctr.240, align 8
  store i64 0, ptr @__llvm_gcov_ctr.241, align 8
  store i64 0, ptr @__llvm_gcov_ctr.242, align 8
  store i64 0, ptr @__llvm_gcov_ctr.243, align 8
  store i64 0, ptr @__llvm_gcov_ctr.244, align 8
  store i64 0, ptr @__llvm_gcov_ctr.245, align 8
  store i64 0, ptr @__llvm_gcov_ctr.246, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.247, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.248, align 8
  store i64 0, ptr @__llvm_gcov_ctr.249, align 8
  store i64 0, ptr @__llvm_gcov_ctr.250, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.251, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.252, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.253, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.254, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.255, align 8
  store i64 0, ptr @__llvm_gcov_ctr.256, align 8
  store i64 0, ptr @__llvm_gcov_ctr.257, align 8
  store i64 0, ptr @__llvm_gcov_ctr.258, align 8
  store i64 0, ptr @__llvm_gcov_ctr.259, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.260, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.261, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.262, align 8
  store i64 0, ptr @__llvm_gcov_ctr.263, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.264, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.265, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @__llvm_gcov_ctr.266, i8 0, i64 136, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.267, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.268, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.269, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.270, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.271, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.272, i8 0, i64 80, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.273, align 8
  store i64 0, ptr @__llvm_gcov_ctr.274, align 8
  store i64 0, ptr @__llvm_gcov_ctr.275, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.276, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.277, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.278, align 8
  store i64 0, ptr @__llvm_gcov_ctr.279, align 8
  store i64 0, ptr @__llvm_gcov_ctr.280, align 8
  store i64 0, ptr @__llvm_gcov_ctr.281, align 8
  store i64 0, ptr @__llvm_gcov_ctr.282, align 8
  store i64 0, ptr @__llvm_gcov_ctr.283, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.284, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.285, align 8
  store i64 0, ptr @__llvm_gcov_ctr.286, align 8
  store i64 0, ptr @__llvm_gcov_ctr.287, align 8
  store i64 0, ptr @__llvm_gcov_ctr.288, align 8
  store i64 0, ptr @__llvm_gcov_ctr.289, align 8
  store i64 0, ptr @__llvm_gcov_ctr.290, align 8
  store i64 0, ptr @__llvm_gcov_ctr.291, align 8
  store i64 0, ptr @__llvm_gcov_ctr.292, align 8
  store i64 0, ptr @__llvm_gcov_ctr.293, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.294, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.295, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.296, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.297, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.298, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.299, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.300, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.301, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.302, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.303, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #18 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #22
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

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
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 124)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { noinline nounwind uwtable(sync) }
attributes #19 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #20 = { nounwind uwtable(sync) }
attributes #21 = { nomerge }
attributes #22 = { nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !288, !290, !291, !293, !294, !296}
!llvm.named.register.sp = !{!297}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.gcov = !{!306}
!llvm.ident = !{!307}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/blktrace.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__ksymtab___trace_note_message, !3, !"__ksymtab___trace_note_message", i1 false, i1 false}
!3 = !{!"../kernel/trace/blktrace.c", i32 183, i32 1}
!4 = !{ptr @__ksymtab_blk_trace_remove, !5, !"__ksymtab_blk_trace_remove", i1 false, i1 false}
!5 = !{!"../kernel/trace/blktrace.c", i32 380, i32 1}
!6 = !{ptr @__ksymtab_blk_trace_setup, !7, !"__ksymtab_blk_trace_setup", i1 false, i1 false}
!7 = !{!"../kernel/trace/blktrace.c", i32 622, i32 1}
!8 = !{ptr @__ksymtab_blk_trace_startstop, !9, !"__ksymtab_blk_trace_startstop", i1 false, i1 false}
!9 = !{!"../kernel/trace/blktrace.c", i32 710, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../kernel/trace/blktrace.c", i32 774, i32 6}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../kernel/trace/blktrace.c", i32 1082, i32 7}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_blk_add_driver_data, !18, !"__ksymtab_blk_add_driver_data", i1 false, i1 false}
!18 = !{!"../kernel/trace/blktrace.c", i32 1093, i32 1}
!19 = !{ptr @__initcall__kmod_blktrace__376_1608_init_blk_tracer6, !20, !"__initcall__kmod_blktrace__376_1608_init_blk_tracer6", i1 false, i1 false}
!20 = !{!"../kernel/trace/blktrace.c", i32 1608, i32 1}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/trace/blktrace.c", i32 1695, i32 11}
!23 = !{ptr @blk_trace_attr_group, !24, !"blk_trace_attr_group", i1 false, i1 false}
!24 = !{!"../kernel/trace/blktrace.c", i32 1694, i32 24}
!25 = !{ptr @__ksymtab_blk_fill_rwbs, !26, !"__ksymtab_blk_fill_rwbs", i1 false, i1 false}
!26 = !{!"../kernel/trace/blktrace.c", i32 1936, i32 1}
!27 = distinct !{null, !28, !"blk_tracer_enabled", i1 false, i1 false}
!28 = !{!"../kernel/trace/blktrace.c", i32 34, i32 13}
!29 = !{ptr @blk_tracer_flags, !30, !"blk_tracer_flags", i1 false, i1 false}
!30 = !{!"../kernel/trace/blktrace.c", i32 54, i32 28}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/trace/blktrace.c", i32 46, i32 4}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/trace/blktrace.c", i32 48, i32 4}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/trace/blktrace.c", i32 49, i32 4}
!37 = !{ptr @blk_tracer_opts, !38, !"blk_tracer_opts", i1 false, i1 false}
!38 = !{!"../kernel/trace/blktrace.c", i32 44, i32 26}
!39 = !{ptr @blk_tr, !40, !"blk_tr", i1 false, i1 false}
!40 = !{!"../kernel/trace/blktrace.c", i32 33, i32 28}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../kernel/trace/blktrace.c", i32 359, i32 7}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/trace/blktrace.c", i32 322, i32 33}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/trace/blktrace.c", i32 323, i32 33}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/trace/blktrace.c", i32 60, i32 8}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @blk_probe_mutex, !48, !"blk_probe_mutex", i1 false, i1 false}
!51 = !{ptr @blk_probes_ref, !52, !"blk_probes_ref", i1 false, i1 false}
!52 = !{!"../kernel/trace/blktrace.c", i32 61, i32 12}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../kernel/trace/blktrace.c", i32 1051, i32 7}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../kernel/trace/blktrace.c", i32 1015, i32 7}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../kernel/trace/blktrace.c", i32 789, i32 7}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../kernel/trace/blktrace.c", i32 984, i32 7}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../kernel/trace/blktrace.c", i32 963, i32 7}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../kernel/trace/blktrace.c", i32 951, i32 7}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../kernel/trace/blktrace.c", i32 900, i32 7}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../kernel/trace/blktrace.c", i32 835, i32 7}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!71 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../kernel/trace/blktrace.c", i32 508, i32 6}
!78 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/trace/blktrace.c", i32 510, i32 3}
!80 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @do_blk_trace_setup._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @do_blk_trace_setup._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/trace/blktrace.c", i32 545, i32 3}
!85 = !{ptr @do_blk_trace_setup._entry.16, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @do_blk_trace_setup._entry_ptr.18, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @blk_dropped_fops, !88, !"blk_dropped_fops", i1 false, i1 false}
!88 = !{!"../kernel/trace/blktrace.c", i32 393, i32 37}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/trace/blktrace.c", i32 388, i32 29}
!91 = !{ptr @blk_msg_fops, !92, !"blk_msg_fops", i1 false, i1 false}
!92 = !{!"../kernel/trace/blktrace.c", i32 420, i32 37}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/trace/blktrace.c", i32 414, i32 33}
!95 = !{ptr @blk_relay_callbacks, !96, !"blk_relay_callbacks", i1 false, i1 false}
!96 = !{!"../kernel/trace/blktrace.c", i32 461, i32 37}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../kernel/trace/blktrace.c", i32 663, i32 7}
!99 = !{ptr @blktrace_seq, !100, !"blktrace_seq", i1 false, i1 false}
!100 = !{!"../kernel/trace/blktrace.c", i32 31, i32 21}
!101 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/trace/blktrace.c", i32 37, i32 35}
!103 = !{ptr @running_trace_lock, !102, !"running_trace_lock", i1 false, i1 false}
!104 = !{ptr @running_trace_list, !105, !"running_trace_list", i1 false, i1 false}
!105 = !{!"../kernel/trace/blktrace.c", i32 36, i32 8}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!108 = !{ptr @.str.22, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!112 = !{ptr @.str.24, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ddir_act, !114, !"ddir_act", i1 false, i1 false}
!114 = !{!"../kernel/trace/blktrace.c", i32 201, i32 18}
!115 = !{ptr @.str.25, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/trace/blktrace.c", i32 1595, i32 3}
!117 = !{ptr @.str.26, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @init_blk_tracer._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @init_blk_tracer._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.28, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/trace/blktrace.c", i32 1600, i32 3}
!122 = !{ptr @init_blk_tracer._entry.27, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @init_blk_tracer._entry_ptr.29, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @trace_blk_event, !125, !"trace_blk_event", i1 false, i1 false}
!125 = !{!"../kernel/trace/blktrace.c", i32 1587, i32 27}
!126 = !{ptr @trace_blk_event_funcs, !127, !"trace_blk_event_funcs", i1 false, i1 false}
!127 = !{!"../kernel/trace/blktrace.c", i32 1582, i32 37}
!128 = !{ptr @.str.30, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/trace/blktrace.c", i32 1504, i32 31}
!130 = !{ptr @.str.31, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/trace/blktrace.c", i32 1504, i32 43}
!132 = !{ptr @.str.32, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/trace/blktrace.c", i32 1510, i32 23}
!134 = !{ptr @.str.33, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/trace/blktrace.c", i32 1260, i32 5}
!136 = !{ptr @.str.34, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/trace/blktrace.c", i32 1280, i32 33}
!138 = !{ptr @.str.35, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/trace/blktrace.c", i32 1298, i32 6}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/trace/blktrace.c", i32 1303, i32 32}
!142 = !{ptr @.str.37, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/trace/blktrace.c", i32 1469, i32 25}
!144 = !{ptr @.str.38, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/trace/blktrace.c", i32 1469, i32 30}
!146 = !{ptr @.str.39, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/trace/blktrace.c", i32 1470, i32 29}
!148 = !{ptr @.str.40, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/trace/blktrace.c", i32 1470, i32 34}
!150 = !{ptr @.str.41, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/trace/blktrace.c", i32 1471, i32 30}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/trace/blktrace.c", i32 1471, i32 35}
!154 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/trace/blktrace.c", i32 1472, i32 25}
!156 = !{ptr @.str.44, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/trace/blktrace.c", i32 1472, i32 30}
!158 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/trace/blktrace.c", i32 1473, i32 27}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../kernel/trace/blktrace.c", i32 1473, i32 32}
!162 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/trace/blktrace.c", i32 1474, i32 27}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/trace/blktrace.c", i32 1474, i32 32}
!166 = !{ptr @.str.49, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/trace/blktrace.c", i32 1475, i32 25}
!168 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/trace/blktrace.c", i32 1475, i32 30}
!170 = !{ptr @.str.51, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/trace/blktrace.c", i32 1476, i32 28}
!172 = !{ptr @.str.52, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/trace/blktrace.c", i32 1476, i32 33}
!174 = !{ptr @.str.53, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/trace/blktrace.c", i32 1477, i32 25}
!176 = !{ptr @.str.54, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/trace/blktrace.c", i32 1477, i32 30}
!178 = !{ptr @.str.55, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/trace/blktrace.c", i32 1478, i32 29}
!180 = !{ptr @.str.56, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/trace/blktrace.c", i32 1478, i32 34}
!182 = !{ptr @.str.57, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/trace/blktrace.c", i32 1479, i32 31}
!184 = !{ptr @.str.58, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/trace/blktrace.c", i32 1479, i32 37}
!186 = !{ptr @.str.59, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/trace/blktrace.c", i32 1480, i32 26}
!188 = !{ptr @.str.60, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/trace/blktrace.c", i32 1480, i32 31}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/trace/blktrace.c", i32 1481, i32 25}
!192 = !{ptr @.str.62, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/trace/blktrace.c", i32 1481, i32 30}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../kernel/trace/blktrace.c", i32 1482, i32 26}
!196 = !{ptr @.str.64, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/trace/blktrace.c", i32 1482, i32 31}
!198 = !{ptr @.str.65, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/trace/blktrace.c", i32 1483, i32 25}
!200 = !{ptr @.str.66, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../kernel/trace/blktrace.c", i32 1483, i32 30}
!202 = !{ptr @what2act, !203, !"what2act", i1 false, i1 false}
!203 = !{!"../kernel/trace/blktrace.c", i32 1468, i32 3}
!204 = !{ptr @.str.67, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/trace/blktrace.c", i32 1353, i32 23}
!206 = !{ptr @.str.68, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../kernel/trace/blktrace.c", i32 1355, i32 23}
!208 = !{ptr @.str.69, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../kernel/trace/blktrace.c", i32 1358, i32 24}
!210 = !{ptr @.str.70, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/trace/blktrace.c", i32 1330, i32 23}
!212 = !{ptr @.str.71, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/trace/blktrace.c", i32 1331, i32 15}
!214 = !{ptr @.str.72, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/trace/blktrace.c", i32 1331, i32 20}
!216 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../kernel/trace/blktrace.c", i32 1338, i32 22}
!218 = !{ptr @.str.74, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../kernel/trace/blktrace.c", i32 1343, i32 20}
!220 = !{ptr @.str.75, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../kernel/trace/blktrace.c", i32 1370, i32 23}
!222 = !{ptr @.str.76, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../kernel/trace/blktrace.c", i32 1373, i32 24}
!224 = !{ptr @.str.77, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../kernel/trace/blktrace.c", i32 1377, i32 24}
!226 = !{ptr @.str.78, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/trace/blktrace.c", i32 1408, i32 22}
!228 = !{ptr @.str.79, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/trace/blktrace.c", i32 1417, i32 22}
!230 = !{ptr @.str.80, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../kernel/trace/blktrace.c", i32 1386, i32 22}
!232 = !{ptr @.str.81, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../kernel/trace/blktrace.c", i32 1571, i32 11}
!234 = !{ptr @blk_tracer, !235, !"blk_tracer", i1 false, i1 false}
!235 = !{!"../kernel/trace/blktrace.c", i32 1570, i32 22}
!236 = !{ptr @.str.82, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../kernel/trace/blktrace.c", i32 1438, i32 14}
!238 = !{ptr @blk_trace_attrs, !239, !"blk_trace_attrs", i1 false, i1 false}
!239 = !{!"../kernel/trace/blktrace.c", i32 1685, i32 26}
!240 = !{ptr @.str.83, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../kernel/trace/blktrace.c", i32 1679, i32 8}
!242 = !{ptr @dev_attr_enable, !241, !"dev_attr_enable", i1 false, i1 false}
!243 = distinct !{null, !244, !"__warned", i1 false, i1 false}
!244 = !{!"../kernel/trace/blktrace.c", i32 1783, i32 7}
!245 = !{ptr @.str.84, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../kernel/trace/blktrace.c", i32 1791, i32 22}
!247 = !{ptr @.str.85, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../kernel/trace/blktrace.c", i32 1797, i32 22}
!249 = !{ptr @.str.86, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../kernel/trace/blktrace.c", i32 1763, i32 20}
!251 = !{ptr @.str.87, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../kernel/trace/blktrace.c", i32 1764, i32 27}
!253 = !{ptr @.str.88, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../kernel/trace/blktrace.c", i32 1703, i32 18}
!255 = !{ptr @.str.89, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../kernel/trace/blktrace.c", i32 1704, i32 19}
!257 = !{ptr @.str.90, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../kernel/trace/blktrace.c", i32 1705, i32 19}
!259 = !{ptr @.str.91, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../kernel/trace/blktrace.c", i32 1706, i32 18}
!261 = !{ptr @.str.92, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../kernel/trace/blktrace.c", i32 1711, i32 16}
!263 = !{ptr @.str.93, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../kernel/trace/blktrace.c", i32 1712, i32 16}
!265 = !{ptr @.str.94, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../kernel/trace/blktrace.c", i32 1713, i32 19}
!267 = !{ptr @.str.95, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../kernel/trace/blktrace.c", i32 1714, i32 19}
!269 = !{ptr @.str.96, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../kernel/trace/blktrace.c", i32 1715, i32 18}
!271 = !{ptr @.str.97, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../kernel/trace/blktrace.c", i32 1716, i32 20}
!273 = !{ptr @.str.98, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../kernel/trace/blktrace.c", i32 1717, i32 21}
!275 = !{ptr @.str.99, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../kernel/trace/blktrace.c", i32 1718, i32 17}
!277 = !{ptr @mask_maps, !278, !"mask_maps", i1 false, i1 false}
!278 = !{!"../kernel/trace/blktrace.c", i32 1702, i32 3}
!279 = distinct !{null, !280, !"__warned", i1 false, i1 false}
!280 = !{!"../kernel/trace/blktrace.c", i32 1834, i32 7}
!281 = distinct !{null, !282, !"__warned", i1 false, i1 false}
!282 = !{!"../kernel/trace/blktrace.c", i32 1851, i32 8}
!283 = distinct !{null, !284, !"__warned", i1 false, i1 false}
!284 = !{!"../kernel/trace/blktrace.c", i32 1614, i32 7}
!285 = !{ptr @.str.101, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../kernel/trace/blktrace.c", i32 1680, i32 8}
!287 = !{ptr @dev_attr_act_mask, !286, !"dev_attr_act_mask", i1 false, i1 false}
!288 = !{ptr @.str.102, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../kernel/trace/blktrace.c", i32 1681, i32 8}
!290 = !{ptr @dev_attr_pid, !289, !"dev_attr_pid", i1 false, i1 false}
!291 = !{ptr @.str.103, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../kernel/trace/blktrace.c", i32 1682, i32 8}
!293 = !{ptr @dev_attr_start_lba, !292, !"dev_attr_start_lba", i1 false, i1 false}
!294 = !{ptr @.str.104, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../kernel/trace/blktrace.c", i32 1683, i32 8}
!296 = !{ptr @dev_attr_end_lba, !295, !"dev_attr_end_lba", i1 false, i1 false}
!297 = !{!"sp"}
!298 = !{i32 2, !"Debug Info Version", i32 3}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/blktrace.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/blktrace.gcda", !0}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = distinct !DISubprogram(name: "__trace_note_message", scope: !1, file: !1, line: 148, type: !309, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!309 = !DISubroutineType(types: !310)
!310 = !{}
!311 = !DILocation(line: 150, scope: !308)
!312 = !DILocation(line: 152, column: 2, scope: !308)
!313 = !DILocation(line: 152, column: 10, scope: !308)
!314 = !{!"auto-init"}
!315 = !DILocation(line: 156, column: 6, scope: !308)
!316 = !{!"branch_weights", i32 2000, i32 1}
!317 = !DILocation(line: 0, scope: !308)
!318 = !DILocation(line: 158, column: 3, scope: !308)
!319 = !DILocation(line: 164, column: 12, scope: !308)
!320 = !DILocation(line: 164, column: 21, scope: !308)
!321 = !DILocation(line: 164, column: 6, scope: !308)
!322 = !DILocation(line: 165, column: 3, scope: !308)
!323 = !DILocation(line: 29, column: 2, scope: !324, inlinedAt: !326)
!324 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !325, file: !325, line: 25, type: !309, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!325 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!326 = distinct !DILocation(line: 167, column: 2, scope: !308)
!327 = !{i64 648244, i64 648305}
!328 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !330)
!329 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !325, file: !325, line: 179, type: !309, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!330 = distinct !DILocation(line: 167, column: 2, scope: !308)
!331 = !DILocation(line: 167, column: 2, scope: !308)
!332 = !DILocation(line: 168, column: 8, scope: !308)
!333 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !336)
!334 = distinct !DISubprogram(name: "current_thread_info", scope: !335, file: !335, line: 101, type: !309, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!335 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!336 = distinct !DILocation(line: 168, column: 8, scope: !308)
!337 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !336)
!338 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !336)
!339 = !DILocation(line: 169, column: 2, scope: !308)
!340 = !DILocation(line: 170, column: 6, scope: !308)
!341 = !DILocation(line: 171, column: 2, scope: !308)
!342 = !DILocation(line: 173, column: 25, scope: !308)
!343 = !DILocation(line: 173, column: 29, scope: !308)
!344 = !DILocation(line: 173, column: 6, scope: !308)
!345 = !DILocation(line: 174, column: 9, scope: !308)
!346 = !DILocation(line: 176, column: 17, scope: !308)
!347 = !DILocation(line: 176, column: 26, scope: !308)
!348 = !DILocation(line: 177, column: 6, scope: !308)
!349 = !DILocation(line: 177, column: 24, scope: !308)
!350 = !DILocation(line: 177, column: 35, scope: !308)
!351 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !354)
!352 = distinct !DISubprogram(name: "cgroup_id", scope: !353, file: !353, line: 310, type: !309, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!353 = !DIFile(filename: "../include/linux/cgroup.h", directory: "/llk/linux-5.17/build_arm_allyes")
!354 = distinct !DILocation(line: 177, column: 14, scope: !308)
!355 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !354)
!356 = !DILocation(line: 176, column: 2, scope: !308)
!357 = !DILocation(line: 181, column: 2, scope: !308)
!358 = !DILocation(line: 63, column: 34, scope: !359, inlinedAt: !361)
!359 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !360, file: !360, line: 61, type: !309, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!360 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!361 = distinct !DILocation(line: 181, column: 2, scope: !308)
!362 = !DILocation(line: 159, column: 2, scope: !363, inlinedAt: !364)
!363 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !325, file: !325, line: 156, type: !309, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!364 = distinct !DILocation(line: 63, column: 34, scope: !359, inlinedAt: !361)
!365 = !{i64 650976}
!366 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !367)
!367 = distinct !DILocation(line: 63, column: 9, scope: !359, inlinedAt: !361)
!368 = !{!"branch_weights", i32 1, i32 2000}
!369 = !DILocation(line: 171, column: 2, scope: !370, inlinedAt: !371)
!370 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !325, file: !325, line: 169, type: !309, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!371 = distinct !DILocation(line: 181, column: 2, scope: !308)
!372 = !{i64 651261}
!373 = !DILocation(line: 182, column: 1, scope: !308)
!374 = distinct !DISubprogram(name: "trace_note", scope: !1, file: !1, line: 69, type: !309, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!375 = !DILocation(line: 71, scope: !374)
!376 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !377)
!377 = distinct !DILocation(line: 76, column: 12, scope: !374)
!378 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !377)
!379 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !377)
!380 = !DILocation(line: 76, column: 12, scope: !374)
!381 = !DILocation(line: 77, column: 20, scope: !374)
!382 = !DILocation(line: 78, column: 21, scope: !374)
!383 = !DILocation(line: 80, column: 6, scope: !374)
!384 = !DILocation(line: 81, column: 12, scope: !374)
!385 = !DILocation(line: 81, column: 33, scope: !374)
!386 = !DILocation(line: 183, column: 9, scope: !387, inlinedAt: !389)
!387 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !388, file: !388, line: 179, type: !309, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!388 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!389 = distinct !DILocation(line: 82, column: 15, scope: !374)
!390 = !DILocation(line: 84, column: 20, scope: !374)
!391 = !DILocation(line: 84, column: 26, scope: !374)
!392 = !DILocation(line: 83, column: 11, scope: !374)
!393 = !DILocation(line: 86, column: 8, scope: !374)
!394 = !DILocation(line: 86, column: 7, scope: !374)
!395 = !DILocation(line: 0, scope: !374)
!396 = !DILocation(line: 87, column: 4, scope: !374)
!397 = !DILocation(line: 88, column: 30, scope: !374)
!398 = !DILocation(line: 88, column: 7, scope: !374)
!399 = !DILocation(line: 89, column: 3, scope: !374)
!400 = !DILocation(line: 92, column: 11, scope: !374)
!401 = !DILocation(line: 92, column: 7, scope: !374)
!402 = !DILocation(line: 92, column: 6, scope: !374)
!403 = !DILocation(line: 93, column: 3, scope: !374)
!404 = !DILocation(line: 95, column: 20, scope: !374)
!405 = !DILocation(line: 95, column: 24, scope: !374)
!406 = !DILocation(line: 95, column: 42, scope: !374)
!407 = !DILocation(line: 95, column: 48, scope: !374)
!408 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !411)
!409 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !410, file: !410, line: 14, type: !309, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!410 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!411 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !413)
!412 = distinct !DISubprogram(name: "__preempt_count_add", scope: !410, file: !410, line: 52, type: !309, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!413 = distinct !DILocation(line: 245, column: 27, scope: !414, inlinedAt: !416)
!414 = distinct !DISubprogram(name: "relay_reserve", scope: !415, file: !415, line: 242, type: !309, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!415 = !DIFile(filename: "../include/linux/relay.h", directory: "/llk/linux-5.17/build_arm_allyes")
!416 = distinct !DILocation(line: 95, column: 6, scope: !374)
!417 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !418)
!418 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !411)
!419 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !418)
!420 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !418)
!421 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !411)
!422 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !413)
!423 = !DILocation(line: 245, column: 27, scope: !414, inlinedAt: !416)
!424 = !{i64 2154508875}
!425 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !426)
!426 = distinct !DILocation(line: 245, column: 27, scope: !414, inlinedAt: !416)
!427 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !426)
!428 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !426)
!429 = !DILocation(line: 245, column: 26, scope: !414, inlinedAt: !416)
!430 = !DILocation(line: 247, column: 6, scope: !414, inlinedAt: !416)
!431 = !DILocation(line: 248, column: 12, scope: !414, inlinedAt: !416)
!432 = !DILocation(line: 249, column: 8, scope: !414, inlinedAt: !416)
!433 = !DILocation(line: 249, column: 7, scope: !414, inlinedAt: !416)
!434 = !DILocation(line: 250, column: 4, scope: !414, inlinedAt: !416)
!435 = !DILocation(line: 251, column: 2, scope: !414, inlinedAt: !416)
!436 = !DILocation(line: 252, column: 13, scope: !414, inlinedAt: !416)
!437 = !DILocation(line: 252, column: 18, scope: !414, inlinedAt: !416)
!438 = !DILocation(line: 252, column: 30, scope: !414, inlinedAt: !416)
!439 = !DILocation(line: 252, column: 23, scope: !414, inlinedAt: !416)
!440 = !DILocation(line: 253, column: 14, scope: !414, inlinedAt: !416)
!441 = !DILocation(line: 253, column: 2, scope: !414, inlinedAt: !416)
!442 = !DILocation(line: 0, scope: !414, inlinedAt: !416)
!443 = !DILocation(line: 256, column: 2, scope: !414, inlinedAt: !416)
!444 = !{i64 2154509985}
!445 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !446)
!446 = distinct !DILocation(line: 59, column: 3, scope: !447, inlinedAt: !448)
!447 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !410, file: !410, line: 57, type: !309, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!448 = distinct !DILocation(line: 256, column: 2, scope: !414, inlinedAt: !416)
!449 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !450)
!450 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !446)
!451 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !450)
!452 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !450)
!453 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !446)
!454 = !DILocation(line: 59, column: 23, scope: !447, inlinedAt: !448)
!455 = !DILocation(line: 96, column: 6, scope: !374)
!456 = !DILocation(line: 97, column: 3, scope: !374)
!457 = !DILocation(line: 97, column: 12, scope: !374)
!458 = !DILocation(line: 98, column: 25, scope: !374)
!459 = !DILocation(line: 98, column: 6, scope: !374)
!460 = !DILocation(line: 98, column: 11, scope: !374)
!461 = !DILocation(line: 98, column: 3, scope: !374)
!462 = !DILocation(line: 104, column: 20, scope: !374)
!463 = !DILocation(line: 100, column: 19, scope: !374)
!464 = !DILocation(line: 100, column: 6, scope: !374)
!465 = !DILocation(line: 100, column: 13, scope: !374)
!466 = !DILocation(line: 101, column: 25, scope: !374)
!467 = !DILocation(line: 101, column: 22, scope: !374)
!468 = !DILocation(line: 101, column: 6, scope: !374)
!469 = !DILocation(line: 101, column: 13, scope: !374)
!470 = !DILocation(line: 102, column: 6, scope: !374)
!471 = !DILocation(line: 102, column: 10, scope: !374)
!472 = !DILocation(line: 103, column: 6, scope: !374)
!473 = !DILocation(line: 103, column: 10, scope: !374)
!474 = !DILocation(line: 104, column: 16, scope: !374)
!475 = !DILocation(line: 104, column: 6, scope: !374)
!476 = !DILocation(line: 104, column: 14, scope: !374)
!477 = !DILocation(line: 105, column: 7, scope: !374)
!478 = !DILocation(line: 106, column: 19, scope: !374)
!479 = !DILocation(line: 106, column: 21, scope: !374)
!480 = !DILocation(line: 106, column: 4, scope: !374)
!481 = !DILocation(line: 107, column: 21, scope: !374)
!482 = !DILocation(line: 107, column: 34, scope: !374)
!483 = !DILocation(line: 107, column: 3, scope: !374)
!484 = !DILocation(line: 109, column: 7, scope: !374)
!485 = !DILocation(line: 110, column: 31, scope: !374)
!486 = !DILocation(line: 1326, column: 2, scope: !487, inlinedAt: !489)
!487 = distinct !DISubprogram(name: "trace_buffer_unlock_commit", scope: !488, file: !488, line: 1321, type: !309, scopeLine: 1325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!488 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!489 = distinct !DILocation(line: 110, column: 4, scope: !374)
!490 = !DILocation(line: 110, column: 4, scope: !374)
!491 = !DILocation(line: 112, column: 1, scope: !374)
!492 = distinct !DISubprogram(name: "blk_trace_remove", scope: !1, file: !1, line: 370, type: !309, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!493 = !DILocation(line: 371, scope: !492)
!494 = !DILocation(line: 374, column: 2, scope: !492)
!495 = !DILocation(line: 375, column: 8, scope: !492)
!496 = !DILocation(line: 376, column: 2, scope: !492)
!497 = !DILocation(line: 378, column: 2, scope: !492)
!498 = distinct !DISubprogram(name: "__blk_trace_remove", scope: !1, file: !1, line: 355, type: !309, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!499 = !DILocation(line: 356, scope: !498)
!500 = !DILocation(line: 359, column: 7, scope: !498)
!501 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !504)
!502 = distinct !DISubprogram(name: "lock_is_held", scope: !503, file: !503, line: 281, type: !309, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!503 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!504 = distinct !DILocation(line: 359, column: 7, scope: !498)
!505 = !DILocation(line: 361, column: 7, scope: !498)
!506 = !DILocation(line: 361, column: 6, scope: !498)
!507 = !DILocation(line: 364, column: 10, scope: !498)
!508 = !DILocation(line: 364, column: 22, scope: !498)
!509 = !DILocation(line: 364, column: 6, scope: !498)
!510 = !DILocation(line: 365, column: 21, scope: !498)
!511 = !DILocation(line: 350, column: 2, scope: !512, inlinedAt: !513)
!512 = distinct !DISubprogram(name: "blk_trace_cleanup", scope: !1, file: !1, line: 348, type: !309, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!513 = distinct !DILocation(line: 365, column: 3, scope: !498)
!514 = !DILocation(line: 351, column: 2, scope: !512, inlinedAt: !513)
!515 = !DILocation(line: 352, column: 2, scope: !512, inlinedAt: !513)
!516 = !DILocation(line: 365, column: 3, scope: !498)
!517 = !DILocation(line: 0, scope: !498)
!518 = !DILocation(line: 368, column: 1, scope: !498)
!519 = distinct !DISubprogram(name: "blk_trace_setup", scope: !1, file: !1, line: 610, type: !309, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!520 = !DILocation(line: 613, scope: !519)
!521 = !DILocation(line: 616, column: 2, scope: !519)
!522 = !DILocation(line: 617, column: 8, scope: !519)
!523 = !DILocation(line: 618, column: 2, scope: !519)
!524 = !DILocation(line: 620, column: 2, scope: !519)
!525 = distinct !DISubprogram(name: "__blk_trace_setup", scope: !1, file: !1, line: 589, type: !309, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!526 = !DILocation(line: 591, scope: !525)
!527 = !DILocation(line: 592, column: 2, scope: !525)
!528 = !DILocation(line: 592, column: 30, scope: !525)
!529 = !DILocation(line: 221, column: 6, scope: !530, inlinedAt: !532)
!530 = distinct !DISubprogram(name: "check_copy_size", scope: !531, file: !531, line: 218, type: !309, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!531 = !DIFile(filename: "../include/linux/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!532 = distinct !DILocation(line: 191, column: 6, scope: !533, inlinedAt: !535)
!533 = distinct !DISubprogram(name: "copy_from_user", scope: !534, file: !534, line: 189, type: !309, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!534 = !DIFile(filename: "../include/linux/uaccess.h", directory: "/llk/linux-5.17/build_arm_allyes")
!535 = distinct !DILocation(line: 595, column: 8, scope: !525)
!536 = !DILocation(line: 232, column: 20, scope: !530, inlinedAt: !532)
!537 = !DILocation(line: 192, column: 23, scope: !533, inlinedAt: !535)
!538 = !DILocation(line: 156, column: 2, scope: !539, inlinedAt: !540)
!539 = distinct !DISubprogram(name: "_copy_from_user", scope: !534, file: !534, line: 153, type: !309, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!540 = distinct !DILocation(line: 192, column: 7, scope: !533, inlinedAt: !535)
!541 = !DILocation(line: 157, column: 7, scope: !539, inlinedAt: !540)
!542 = !DILocation(line: 157, column: 30, scope: !539, inlinedAt: !540)
!543 = !DILocation(line: 157, column: 33, scope: !539, inlinedAt: !540)
!544 = !DILocation(line: 157, column: 6, scope: !539, inlinedAt: !540)
!545 = !DILocation(line: 158, column: 29, scope: !539, inlinedAt: !540)
!546 = !DILocation(line: 135, column: 2, scope: !547, inlinedAt: !549)
!547 = distinct !DISubprogram(name: "instrument_copy_from_user", scope: !548, file: !548, line: 133, type: !309, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!548 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!549 = distinct !DILocation(line: 158, column: 3, scope: !539, inlinedAt: !540)
!550 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !551)
!551 = distinct !DILocation(line: 92, column: 10, scope: !552, inlinedAt: !554)
!552 = distinct !DISubprogram(name: "get_domain", scope: !553, file: !553, line: 85, type: !309, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!553 = !DIFile(filename: "../arch/arm/include/asm/domain.h", directory: "/llk/linux-5.17/build_arm_allyes")
!554 = distinct !DILocation(line: 29, column: 28, scope: !555, inlinedAt: !557)
!555 = distinct !DISubprogram(name: "uaccess_save_and_enable", scope: !556, file: !556, line: 26, type: !309, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!556 = !DIFile(filename: "../arch/arm/include/asm/uaccess.h", directory: "/llk/linux-5.17/build_arm_allyes")
!557 = distinct !DILocation(line: 537, column: 15, scope: !558, inlinedAt: !559)
!558 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !556, file: !556, line: 533, type: !309, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!559 = distinct !DILocation(line: 159, column: 9, scope: !539, inlinedAt: !540)
!560 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !551)
!561 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !551)
!562 = !DILocation(line: 92, column: 33, scope: !552, inlinedAt: !554)
!563 = !DILocation(line: 89, column: 2, scope: !552, inlinedAt: !554)
!564 = !{i64 4793397}
!565 = !DILocation(line: 32, column: 25, scope: !555, inlinedAt: !557)
!566 = !DILocation(line: 32, column: 54, scope: !555, inlinedAt: !557)
!567 = !DILocation(line: 99, column: 2, scope: !568, inlinedAt: !569)
!568 = distinct !DISubprogram(name: "set_domain", scope: !553, file: !553, line: 97, type: !309, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!569 = distinct !DILocation(line: 32, column: 2, scope: !555, inlinedAt: !557)
!570 = !{i64 4793594}
!571 = !DILocation(line: 102, column: 2, scope: !568, inlinedAt: !569)
!572 = !{i64 2152278827}
!573 = !DILocation(line: 538, column: 6, scope: !558, inlinedAt: !559)
!574 = !DILocation(line: 99, column: 2, scope: !568, inlinedAt: !575)
!575 = distinct !DILocation(line: 45, column: 2, scope: !576, inlinedAt: !577)
!576 = distinct !DISubprogram(name: "uaccess_restore", scope: !556, file: !556, line: 41, type: !309, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!577 = distinct !DILocation(line: 539, column: 2, scope: !558, inlinedAt: !559)
!578 = !DILocation(line: 102, column: 2, scope: !568, inlinedAt: !575)
!579 = !DILocation(line: 161, column: 6, scope: !539, inlinedAt: !540)
!580 = !DILocation(line: 162, column: 10, scope: !539, inlinedAt: !540)
!581 = !DILocation(line: 162, column: 18, scope: !539, inlinedAt: !540)
!582 = !DILocation(line: 162, column: 13, scope: !539, inlinedAt: !540)
!583 = !DILocation(line: 162, column: 3, scope: !539, inlinedAt: !540)
!584 = !DILocation(line: 597, column: 3, scope: !525)
!585 = !DILocation(line: 490, column: 2, scope: !586, inlinedAt: !587)
!586 = distinct !DISubprogram(name: "do_blk_trace_setup", scope: !1, file: !1, line: 482, type: !309, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!587 = distinct !DILocation(line: 599, column: 8, scope: !525)
!588 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !589)
!589 = distinct !DILocation(line: 490, column: 2, scope: !586, inlinedAt: !587)
!590 = !DILocation(line: 492, column: 13, scope: !586, inlinedAt: !587)
!591 = !DILocation(line: 492, column: 7, scope: !586, inlinedAt: !587)
!592 = !DILocation(line: 492, column: 22, scope: !586, inlinedAt: !587)
!593 = !DILocation(line: 492, column: 26, scope: !586, inlinedAt: !587)
!594 = !DILocation(line: 492, column: 32, scope: !586, inlinedAt: !587)
!595 = !DILocation(line: 492, column: 6, scope: !586, inlinedAt: !587)
!596 = !DILocation(line: 493, column: 3, scope: !586, inlinedAt: !587)
!597 = !DILocation(line: 495, column: 2, scope: !586, inlinedAt: !587)
!598 = !DILocation(line: 496, column: 2, scope: !586, inlinedAt: !587)
!599 = !DILocation(line: 496, column: 37, scope: !586, inlinedAt: !587)
!600 = !DILocation(line: 502, column: 2, scope: !586, inlinedAt: !587)
!601 = !DILocation(line: 508, column: 6, scope: !586, inlinedAt: !587)
!602 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !603)
!603 = distinct !DILocation(line: 508, column: 6, scope: !586, inlinedAt: !587)
!604 = !DILocation(line: 510, column: 3, scope: !586, inlinedAt: !587)
!605 = !DILocation(line: 512, column: 3, scope: !586, inlinedAt: !587)
!606 = !DILocation(line: 376, column: 3, scope: !607, inlinedAt: !609)
!607 = distinct !DISubprogram(name: "__kmalloc_index", scope: !608, file: !608, line: 369, type: !309, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!608 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!609 = distinct !DILocation(line: 576, column: 11, scope: !610, inlinedAt: !611)
!610 = distinct !DISubprogram(name: "kmalloc", scope: !608, file: !608, line: 567, type: !309, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!611 = distinct !DILocation(line: 714, column: 9, scope: !612, inlinedAt: !613)
!612 = distinct !DISubprogram(name: "kzalloc", scope: !608, file: !608, line: 712, type: !309, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!613 = distinct !DILocation(line: 515, column: 7, scope: !586, inlinedAt: !587)
!614 = !DILocation(line: 582, column: 33, scope: !610, inlinedAt: !611)
!615 = !DILocation(line: 339, column: 3, scope: !616, inlinedAt: !617)
!616 = distinct !DISubprogram(name: "kmalloc_type", scope: !608, file: !608, line: 332, type: !309, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!617 = distinct !DILocation(line: 582, column: 20, scope: !610, inlinedAt: !611)
!618 = !DILocation(line: 582, column: 5, scope: !610, inlinedAt: !611)
!619 = !DILocation(line: 581, column: 10, scope: !610, inlinedAt: !611)
!620 = !DILocation(line: 516, column: 7, scope: !586, inlinedAt: !587)
!621 = !DILocation(line: 516, column: 6, scope: !586, inlinedAt: !587)
!622 = !DILocation(line: 517, column: 3, scope: !586, inlinedAt: !587)
!623 = !DILocation(line: 520, column: 17, scope: !586, inlinedAt: !587)
!624 = !DILocation(line: 520, column: 6, scope: !586, inlinedAt: !587)
!625 = !DILocation(line: 520, column: 15, scope: !586, inlinedAt: !587)
!626 = !DILocation(line: 521, column: 7, scope: !586, inlinedAt: !587)
!627 = !DILocation(line: 521, column: 6, scope: !586, inlinedAt: !587)
!628 = !DILocation(line: 522, column: 3, scope: !586, inlinedAt: !587)
!629 = !DILocation(line: 524, column: 17, scope: !586, inlinedAt: !587)
!630 = !DILocation(line: 524, column: 6, scope: !586, inlinedAt: !587)
!631 = !DILocation(line: 524, column: 15, scope: !586, inlinedAt: !587)
!632 = !DILocation(line: 525, column: 7, scope: !586, inlinedAt: !587)
!633 = !DILocation(line: 525, column: 6, scope: !586, inlinedAt: !587)
!634 = !DILocation(line: 526, column: 3, scope: !586, inlinedAt: !587)
!635 = !DILocation(line: 534, column: 6, scope: !586, inlinedAt: !587)
!636 = !DILocation(line: 534, column: 11, scope: !586, inlinedAt: !587)
!637 = !DILocation(line: 534, column: 33, scope: !586, inlinedAt: !587)
!638 = !DILocation(line: 889, column: 15, scope: !639, inlinedAt: !641)
!639 = distinct !DISubprogram(name: "bdev_is_partition", scope: !640, file: !640, line: 887, type: !309, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!640 = !DIFile(filename: "../include/linux/blkdev.h", directory: "/llk/linux-5.17/build_arm_allyes")
!641 = distinct !DILocation(line: 534, column: 15, scope: !586, inlinedAt: !587)
!642 = !DILocation(line: 889, column: 9, scope: !639, inlinedAt: !641)
!643 = !DILocation(line: 535, column: 9, scope: !586, inlinedAt: !587)
!644 = !DILocation(line: 535, column: 12, scope: !586, inlinedAt: !587)
!645 = !DILocation(line: 535, column: 3, scope: !586, inlinedAt: !587)
!646 = !DILocation(line: 537, column: 50, scope: !586, inlinedAt: !587)
!647 = !DILocation(line: 537, column: 19, scope: !586, inlinedAt: !587)
!648 = !DILocation(line: 537, column: 7, scope: !586, inlinedAt: !587)
!649 = !DILocation(line: 537, column: 11, scope: !586, inlinedAt: !587)
!650 = !DILocation(line: 0, scope: !586, inlinedAt: !587)
!651 = !DILocation(line: 41, column: 9, scope: !652, inlinedAt: !654)
!652 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !653, file: !653, line: 39, type: !309, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!653 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!654 = distinct !DILocation(line: 544, column: 6, scope: !586, inlinedAt: !587)
!655 = !DILocation(line: 41, column: 24, scope: !652, inlinedAt: !654)
!656 = !DILocation(line: 41, column: 27, scope: !652, inlinedAt: !654)
!657 = !DILocation(line: 544, column: 6, scope: !586, inlinedAt: !587)
!658 = !DILocation(line: 545, column: 3, scope: !586, inlinedAt: !587)
!659 = !DILocation(line: 548, column: 3, scope: !586, inlinedAt: !587)
!660 = !DILocation(line: 551, column: 6, scope: !586, inlinedAt: !587)
!661 = !DILocation(line: 551, column: 10, scope: !586, inlinedAt: !587)
!662 = !DILocation(line: 552, column: 18, scope: !586, inlinedAt: !587)
!663 = !DILocation(line: 86, column: 2, scope: !664, inlinedAt: !665)
!664 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !548, file: !548, line: 84, type: !309, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!665 = distinct !DILocation(line: 41, column: 2, scope: !666, inlinedAt: !668)
!666 = distinct !DISubprogram(name: "atomic_set", scope: !667, file: !667, line: 39, type: !309, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!667 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!668 = distinct !DILocation(line: 552, column: 2, scope: !586, inlinedAt: !587)
!669 = !DILocation(line: 42, column: 2, scope: !666, inlinedAt: !668)
!670 = !DILocation(line: 553, column: 22, scope: !586, inlinedAt: !587)
!671 = !DILocation(line: 37, column: 2, scope: !672, inlinedAt: !674)
!672 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !673, file: !673, line: 35, type: !309, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!673 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!674 = distinct !DILocation(line: 553, column: 2, scope: !586, inlinedAt: !587)
!675 = !DILocation(line: 38, column: 8, scope: !672, inlinedAt: !674)
!676 = !DILocation(line: 38, column: 13, scope: !672, inlinedAt: !674)
!677 = !DILocation(line: 556, column: 2, scope: !586, inlinedAt: !587)
!678 = !DILocation(line: 557, column: 2, scope: !586, inlinedAt: !587)
!679 = !DILocation(line: 559, column: 45, scope: !586, inlinedAt: !587)
!680 = !DILocation(line: 560, column: 11, scope: !586, inlinedAt: !587)
!681 = !DILocation(line: 559, column: 14, scope: !586, inlinedAt: !587)
!682 = !DILocation(line: 559, column: 6, scope: !586, inlinedAt: !587)
!683 = !DILocation(line: 559, column: 12, scope: !586, inlinedAt: !587)
!684 = !DILocation(line: 561, column: 7, scope: !586, inlinedAt: !587)
!685 = !DILocation(line: 561, column: 6, scope: !586, inlinedAt: !587)
!686 = !DILocation(line: 562, column: 3, scope: !586, inlinedAt: !587)
!687 = !DILocation(line: 564, column: 23, scope: !586, inlinedAt: !587)
!688 = !DILocation(line: 564, column: 6, scope: !586, inlinedAt: !587)
!689 = !DILocation(line: 564, column: 15, scope: !586, inlinedAt: !587)
!690 = !DILocation(line: 565, column: 7, scope: !586, inlinedAt: !587)
!691 = !DILocation(line: 565, column: 6, scope: !586, inlinedAt: !587)
!692 = !DILocation(line: 566, column: 3, scope: !586, inlinedAt: !587)
!693 = !DILocation(line: 566, column: 16, scope: !586, inlinedAt: !587)
!694 = !DILocation(line: 470, column: 6, scope: !695, inlinedAt: !696)
!695 = distinct !DISubprogram(name: "blk_trace_setup_lba", scope: !1, file: !1, line: 467, type: !309, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!696 = distinct !DILocation(line: 568, column: 2, scope: !586, inlinedAt: !587)
!697 = !DILocation(line: 471, column: 19, scope: !695, inlinedAt: !696)
!698 = !DILocation(line: 471, column: 25, scope: !695, inlinedAt: !696)
!699 = !DILocation(line: 205, column: 15, scope: !700, inlinedAt: !702)
!700 = distinct !DISubprogram(name: "bdev_nr_sectors", scope: !701, file: !701, line: 203, type: !309, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!701 = !DIFile(filename: "../include/linux/genhd.h", directory: "/llk/linux-5.17/build_arm_allyes")
!702 = distinct !DILocation(line: 472, column: 39, scope: !695, inlinedAt: !696)
!703 = !DILocation(line: 472, column: 37, scope: !695, inlinedAt: !696)
!704 = !DILocation(line: 473, column: 2, scope: !695, inlinedAt: !696)
!705 = !DILocation(line: 474, column: 3, scope: !695, inlinedAt: !696)
!706 = !DILocation(line: 0, scope: !695, inlinedAt: !696)
!707 = !DILocation(line: 474, column: 7, scope: !695, inlinedAt: !696)
!708 = !DILocation(line: 474, column: 17, scope: !695, inlinedAt: !696)
!709 = !DILocation(line: 475, column: 7, scope: !695, inlinedAt: !696)
!710 = !DILocation(line: 475, column: 15, scope: !695, inlinedAt: !696)
!711 = !DILocation(line: 571, column: 12, scope: !586, inlinedAt: !587)
!712 = !DILocation(line: 571, column: 6, scope: !586, inlinedAt: !587)
!713 = !DILocation(line: 572, column: 19, scope: !586, inlinedAt: !587)
!714 = !DILocation(line: 572, column: 17, scope: !586, inlinedAt: !587)
!715 = !DILocation(line: 572, column: 3, scope: !586, inlinedAt: !587)
!716 = !DILocation(line: 573, column: 12, scope: !586, inlinedAt: !587)
!717 = !DILocation(line: 573, column: 6, scope: !586, inlinedAt: !587)
!718 = !DILocation(line: 574, column: 17, scope: !586, inlinedAt: !587)
!719 = !DILocation(line: 574, column: 15, scope: !586, inlinedAt: !587)
!720 = !DILocation(line: 574, column: 3, scope: !586, inlinedAt: !587)
!721 = !DILocation(line: 585, column: 18, scope: !586, inlinedAt: !587)
!722 = !DILocation(line: 585, column: 3, scope: !586, inlinedAt: !587)
!723 = !DILocation(line: 601, column: 10, scope: !525)
!724 = !DILocation(line: 601, column: 3, scope: !525)
!725 = !DILocation(line: 576, column: 18, scope: !586, inlinedAt: !587)
!726 = !DILocation(line: 576, column: 6, scope: !586, inlinedAt: !587)
!727 = !DILocation(line: 576, column: 10, scope: !586, inlinedAt: !587)
!728 = !DILocation(line: 577, column: 18, scope: !586, inlinedAt: !587)
!729 = !DILocation(line: 579, column: 2, scope: !586, inlinedAt: !587)
!730 = !{i64 2156534586}
!731 = !DILocation(line: 580, column: 2, scope: !586, inlinedAt: !587)
!732 = !DILocation(line: 221, column: 6, scope: !530, inlinedAt: !733)
!733 = distinct !DILocation(line: 199, column: 6, scope: !734, inlinedAt: !735)
!734 = distinct !DISubprogram(name: "copy_to_user", scope: !534, file: !534, line: 197, type: !309, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!735 = distinct !DILocation(line: 603, column: 6, scope: !525)
!736 = !DILocation(line: 232, column: 20, scope: !530, inlinedAt: !733)
!737 = !DILocation(line: 200, column: 21, scope: !734, inlinedAt: !735)
!738 = !DILocation(line: 174, column: 2, scope: !739, inlinedAt: !740)
!739 = distinct !DISubprogram(name: "_copy_to_user", scope: !534, file: !534, line: 172, type: !309, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!740 = distinct !DILocation(line: 200, column: 7, scope: !734, inlinedAt: !735)
!741 = !DILocation(line: 175, column: 6, scope: !739, inlinedAt: !740)
!742 = !DILocation(line: 0, scope: !739, inlinedAt: !740)
!743 = !DILocation(line: 603, column: 6, scope: !525)
!744 = !DILocation(line: 178, column: 27, scope: !739, inlinedAt: !740)
!745 = !DILocation(line: 118, column: 2, scope: !746, inlinedAt: !747)
!746 = distinct !DISubprogram(name: "instrument_copy_to_user", scope: !548, file: !548, line: 116, type: !309, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!747 = distinct !DILocation(line: 178, column: 3, scope: !739, inlinedAt: !740)
!748 = !DILocation(line: 558, column: 9, scope: !749, inlinedAt: !750)
!749 = distinct !DISubprogram(name: "raw_copy_to_user", scope: !556, file: !556, line: 549, type: !309, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!750 = distinct !DILocation(line: 179, column: 7, scope: !739, inlinedAt: !740)
!751 = !DILocation(line: 604, column: 22, scope: !525)
!752 = !DILocation(line: 604, column: 3, scope: !525)
!753 = !DILocation(line: 605, column: 3, scope: !525)
!754 = !DILocation(line: 607, column: 2, scope: !525)
!755 = !DILocation(line: 0, scope: !525)
!756 = !DILocation(line: 608, column: 1, scope: !525)
!757 = distinct !DISubprogram(name: "blk_trace_startstop", scope: !1, file: !1, line: 700, type: !309, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!758 = !DILocation(line: 701, scope: !757)
!759 = !DILocation(line: 704, column: 2, scope: !757)
!760 = !DILocation(line: 705, column: 8, scope: !757)
!761 = !DILocation(line: 706, column: 2, scope: !757)
!762 = !DILocation(line: 708, column: 2, scope: !757)
!763 = distinct !DISubprogram(name: "__blk_trace_startstop", scope: !1, file: !1, line: 658, type: !309, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!764 = !DILocation(line: 659, scope: !763)
!765 = !DILocation(line: 663, column: 7, scope: !763)
!766 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !767)
!767 = distinct !DILocation(line: 663, column: 7, scope: !763)
!768 = !DILocation(line: 665, column: 9, scope: !763)
!769 = !DILocation(line: 665, column: 6, scope: !763)
!770 = !DILocation(line: 666, column: 3, scope: !763)
!771 = !DILocation(line: 673, column: 6, scope: !763)
!772 = !DILocation(line: 674, column: 11, scope: !763)
!773 = !DILocation(line: 674, column: 23, scope: !763)
!774 = !DILocation(line: 674, column: 41, scope: !763)
!775 = !DILocation(line: 675, column: 7, scope: !763)
!776 = !DILocation(line: 675, column: 11, scope: !763)
!777 = !DILocation(line: 675, column: 23, scope: !763)
!778 = !DILocation(line: 674, column: 7, scope: !763)
!779 = !DILocation(line: 676, column: 16, scope: !763)
!780 = !DILocation(line: 677, column: 4, scope: !763)
!781 = !{i64 2156539485}
!782 = !DILocation(line: 678, column: 4, scope: !763)
!783 = !DILocation(line: 678, column: 20, scope: !763)
!784 = !DILocation(line: 679, column: 4, scope: !763)
!785 = !DILocation(line: 680, column: 18, scope: !763)
!786 = !DILocation(line: 88, column: 30, scope: !787, inlinedAt: !788)
!787 = distinct !DISubprogram(name: "list_add", scope: !673, file: !673, line: 86, type: !309, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!788 = distinct !DILocation(line: 680, column: 4, scope: !763)
!789 = !DILocation(line: 69, column: 7, scope: !790, inlinedAt: !791)
!790 = distinct !DISubprogram(name: "__list_add", scope: !673, file: !673, line: 65, type: !309, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!791 = distinct !DILocation(line: 88, column: 2, scope: !787, inlinedAt: !788)
!792 = !DILocation(line: 69, column: 6, scope: !790, inlinedAt: !791)
!793 = !DILocation(line: 72, column: 8, scope: !790, inlinedAt: !791)
!794 = !DILocation(line: 72, column: 13, scope: !790, inlinedAt: !791)
!795 = !DILocation(line: 73, column: 12, scope: !790, inlinedAt: !791)
!796 = !DILocation(line: 74, column: 7, scope: !790, inlinedAt: !791)
!797 = !DILocation(line: 74, column: 12, scope: !790, inlinedAt: !791)
!798 = !DILocation(line: 75, column: 2, scope: !790, inlinedAt: !791)
!799 = !DILocation(line: 0, scope: !790, inlinedAt: !791)
!800 = !DILocation(line: 681, column: 4, scope: !763)
!801 = !DILocation(line: 134, column: 2, scope: !802, inlinedAt: !803)
!802 = distinct !DISubprogram(name: "trace_note_time", scope: !1, file: !1, line: 132, type: !309, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!803 = distinct !DILocation(line: 683, column: 4, scope: !763)
!804 = !DILocation(line: 134, column: 20, scope: !802, inlinedAt: !803)
!805 = !DILocation(line: 136, column: 2, scope: !802, inlinedAt: !803)
!806 = !DILocation(line: 136, column: 6, scope: !802, inlinedAt: !803)
!807 = !DILocation(line: 139, column: 2, scope: !802, inlinedAt: !803)
!808 = !DILocation(line: 140, column: 22, scope: !802, inlinedAt: !803)
!809 = !DILocation(line: 140, column: 13, scope: !802, inlinedAt: !803)
!810 = !DILocation(line: 140, column: 11, scope: !802, inlinedAt: !803)
!811 = !DILocation(line: 141, column: 17, scope: !802, inlinedAt: !803)
!812 = !DILocation(line: 141, column: 11, scope: !802, inlinedAt: !803)
!813 = !DILocation(line: 29, column: 2, scope: !324, inlinedAt: !814)
!814 = distinct !DILocation(line: 143, column: 2, scope: !802, inlinedAt: !803)
!815 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !816)
!816 = distinct !DILocation(line: 143, column: 2, scope: !802, inlinedAt: !803)
!817 = !DILocation(line: 143, column: 2, scope: !802, inlinedAt: !803)
!818 = !DILocation(line: 144, column: 2, scope: !802, inlinedAt: !803)
!819 = !DILocation(line: 145, column: 2, scope: !802, inlinedAt: !803)
!820 = !DILocation(line: 63, column: 34, scope: !359, inlinedAt: !821)
!821 = distinct !DILocation(line: 145, column: 2, scope: !802, inlinedAt: !803)
!822 = !DILocation(line: 159, column: 2, scope: !363, inlinedAt: !823)
!823 = distinct !DILocation(line: 63, column: 34, scope: !359, inlinedAt: !821)
!824 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !825)
!825 = distinct !DILocation(line: 63, column: 9, scope: !359, inlinedAt: !821)
!826 = !DILocation(line: 171, column: 2, scope: !370, inlinedAt: !827)
!827 = distinct !DILocation(line: 145, column: 2, scope: !802, inlinedAt: !803)
!828 = !DILocation(line: 146, column: 1, scope: !802, inlinedAt: !803)
!829 = !DILocation(line: 685, column: 3, scope: !763)
!830 = !DILocation(line: 0, scope: !763)
!831 = !DILocation(line: 686, column: 2, scope: !763)
!832 = !DILocation(line: 687, column: 7, scope: !763)
!833 = !DILocation(line: 687, column: 11, scope: !763)
!834 = !DILocation(line: 687, column: 23, scope: !763)
!835 = !DILocation(line: 688, column: 4, scope: !763)
!836 = !DILocation(line: 688, column: 20, scope: !763)
!837 = !DILocation(line: 689, column: 4, scope: !763)
!838 = !DILocation(line: 690, column: 23, scope: !763)
!839 = !DILocation(line: 134, column: 7, scope: !840, inlinedAt: !841)
!840 = distinct !DISubprogram(name: "__list_del_entry", scope: !673, file: !673, line: 132, type: !309, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!841 = distinct !DILocation(line: 206, column: 2, scope: !842, inlinedAt: !843)
!842 = distinct !DISubprogram(name: "list_del_init", scope: !673, file: !673, line: 204, type: !309, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!843 = distinct !DILocation(line: 690, column: 4, scope: !763)
!844 = !DILocation(line: 134, column: 6, scope: !840, inlinedAt: !841)
!845 = !DILocation(line: 135, column: 3, scope: !840, inlinedAt: !841)
!846 = !DILocation(line: 137, column: 13, scope: !840, inlinedAt: !841)
!847 = !DILocation(line: 137, column: 20, scope: !840, inlinedAt: !841)
!848 = !DILocation(line: 137, column: 33, scope: !840, inlinedAt: !841)
!849 = !DILocation(line: 114, column: 8, scope: !850, inlinedAt: !851)
!850 = distinct !DISubprogram(name: "__list_del", scope: !673, file: !673, line: 112, type: !309, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!851 = distinct !DILocation(line: 137, column: 2, scope: !840, inlinedAt: !841)
!852 = !DILocation(line: 114, column: 13, scope: !850, inlinedAt: !851)
!853 = !DILocation(line: 115, column: 2, scope: !850, inlinedAt: !851)
!854 = !DILocation(line: 138, column: 1, scope: !840, inlinedAt: !841)
!855 = !DILocation(line: 37, column: 2, scope: !672, inlinedAt: !856)
!856 = distinct !DILocation(line: 207, column: 2, scope: !842, inlinedAt: !843)
!857 = !DILocation(line: 38, column: 8, scope: !672, inlinedAt: !856)
!858 = !DILocation(line: 38, column: 13, scope: !672, inlinedAt: !856)
!859 = !DILocation(line: 691, column: 4, scope: !763)
!860 = !DILocation(line: 692, column: 20, scope: !763)
!861 = !DILocation(line: 692, column: 4, scope: !763)
!862 = !DILocation(line: 694, column: 3, scope: !763)
!863 = !DILocation(line: 698, column: 1, scope: !763)
!864 = distinct !DISubprogram(name: "blk_trace_ioctl", scope: !1, file: !1, line: 725, type: !309, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!865 = !DILocation(line: 726, scope: !864)
!866 = !DILocation(line: 729, column: 2, scope: !864)
!867 = !DILocation(line: 729, column: 7, scope: !864)
!868 = !DILocation(line: 626, column: 15, scope: !869, inlinedAt: !870)
!869 = distinct !DISubprogram(name: "bdev_get_queue", scope: !640, file: !640, line: 624, type: !309, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!870 = distinct !DILocation(line: 731, column: 6, scope: !864)
!871 = !DILocation(line: 732, column: 7, scope: !864)
!872 = !DILocation(line: 732, column: 6, scope: !864)
!873 = !DILocation(line: 733, column: 3, scope: !864)
!874 = !DILocation(line: 735, column: 2, scope: !864)
!875 = !DILocation(line: 737, column: 2, scope: !864)
!876 = !DILocation(line: 739, column: 12, scope: !864)
!877 = !DILocation(line: 739, column: 3, scope: !864)
!878 = !DILocation(line: 740, column: 39, scope: !864)
!879 = !DILocation(line: 740, column: 9, scope: !864)
!880 = !DILocation(line: 741, column: 3, scope: !864)
!881 = !DILocation(line: 749, column: 9, scope: !864)
!882 = !DILocation(line: 749, column: 3, scope: !864)
!883 = !DILocation(line: 0, scope: !864)
!884 = !DILocation(line: 752, column: 31, scope: !864)
!885 = !DILocation(line: 752, column: 9, scope: !864)
!886 = !DILocation(line: 753, column: 3, scope: !864)
!887 = !DILocation(line: 755, column: 28, scope: !864)
!888 = !DILocation(line: 755, column: 9, scope: !864)
!889 = !DILocation(line: 756, column: 3, scope: !864)
!890 = !DILocation(line: 758, column: 7, scope: !864)
!891 = !DILocation(line: 759, column: 3, scope: !864)
!892 = !DILocation(line: 762, column: 2, scope: !864)
!893 = !DILocation(line: 763, column: 2, scope: !864)
!894 = !DILocation(line: 764, column: 1, scope: !864)
!895 = distinct !DISubprogram(name: "blk_trace_shutdown", scope: !1, file: !1, line: 771, type: !309, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!896 = !DILocation(line: 772, scope: !895)
!897 = !DILocation(line: 773, column: 2, scope: !895)
!898 = !DILocation(line: 774, column: 6, scope: !895)
!899 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !900)
!900 = distinct !DILocation(line: 774, column: 6, scope: !895)
!901 = !DILocation(line: 776, column: 25, scope: !895)
!902 = !DILocation(line: 776, column: 3, scope: !895)
!903 = !DILocation(line: 777, column: 3, scope: !895)
!904 = !DILocation(line: 778, column: 2, scope: !895)
!905 = !DILocation(line: 780, column: 2, scope: !895)
!906 = !DILocation(line: 781, column: 1, scope: !895)
!907 = distinct !DISubprogram(name: "blk_add_driver_data", scope: !1, file: !1, line: 1077, type: !309, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!908 = !DILocation(line: 1078, scope: !907)
!909 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !912)
!910 = distinct !DISubprogram(name: "rcu_read_lock", scope: !911, file: !911, line: 690, type: !309, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!911 = !DIFile(filename: "../include/linux/rcupdate.h", directory: "/llk/linux-5.17/build_arm_allyes")
!912 = distinct !DILocation(line: 1081, column: 2, scope: !907)
!913 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !915)
!914 = distinct !DISubprogram(name: "__rcu_read_lock", scope: !911, file: !911, line: 66, type: !309, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!915 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !912)
!916 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !917)
!917 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !918)
!918 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !915)
!919 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !920)
!920 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !917)
!921 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !920)
!922 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !920)
!923 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !917)
!924 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !918)
!925 = !{i64 2149332608}
!926 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !928)
!927 = distinct !DISubprogram(name: "rcu_lock_acquire", scope: !911, file: !911, line: 266, type: !309, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!928 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !912)
!929 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !912)
!930 = !DILocation(line: 1082, column: 7, scope: !907)
!931 = !DILocation(line: 1083, column: 6, scope: !907)
!932 = !DILocation(line: 1084, column: 3, scope: !907)
!933 = !DILocation(line: 1085, column: 3, scope: !907)
!934 = !DILocation(line: 1088, column: 18, scope: !907)
!935 = !DILocation(line: 1088, column: 22, scope: !907)
!936 = !DILocation(line: 1015, column: 13, scope: !937, inlinedAt: !939)
!937 = distinct !DISubprogram(name: "blk_rq_bytes", scope: !938, file: !938, line: 1013, type: !309, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!938 = !DIFile(filename: "../include/linux/blk-mq.h", directory: "/llk/linux-5.17/build_arm_allyes")
!939 = distinct !DILocation(line: 1088, column: 47, scope: !907)
!940 = !DILocation(line: 1090, column: 5, scope: !907)
!941 = !DILocation(line: 1088, column: 2, scope: !907)
!942 = !DILocation(line: 1092, column: 1, scope: !907)
!943 = !DILocation(line: 0, scope: !907)
!944 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !911, file: !911, line: 721, type: !309, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!945 = !DILocation(line: 722, scope: !944)
!946 = !DILocation(line: 723, column: 2, scope: !944)
!947 = !DILocation(line: 73, column: 2, scope: !948, inlinedAt: !949)
!948 = distinct !DISubprogram(name: "__rcu_read_unlock", scope: !911, file: !911, line: 71, type: !309, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!949 = distinct !DILocation(line: 726, column: 2, scope: !944)
!950 = !{i64 2149332874}
!951 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !952)
!952 = distinct !DILocation(line: 59, column: 3, scope: !447, inlinedAt: !953)
!953 = distinct !DILocation(line: 73, column: 2, scope: !948, inlinedAt: !949)
!954 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !955)
!955 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !952)
!956 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !955)
!957 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !955)
!958 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !952)
!959 = !DILocation(line: 59, column: 23, scope: !447, inlinedAt: !953)
!960 = !DILocation(line: 75, column: 3, scope: !948, inlinedAt: !949)
!961 = !DILocation(line: 273, column: 2, scope: !962, inlinedAt: !963)
!962 = distinct !DISubprogram(name: "rcu_lock_release", scope: !911, file: !911, line: 271, type: !309, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!963 = distinct !DILocation(line: 727, column: 2, scope: !944)
!964 = !DILocation(line: 728, column: 1, scope: !944)
!965 = distinct !DISubprogram(name: "__blk_add_trace", scope: !1, file: !1, line: 215, type: !309, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!966 = !DILocation(line: 218, scope: !965)
!967 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !968)
!968 = distinct !DILocation(line: 219, column: 28, scope: !965)
!969 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !968)
!970 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !968)
!971 = !DILocation(line: 219, column: 28, scope: !965)
!972 = !DILocation(line: 228, column: 20, scope: !965)
!973 = !DILocation(line: 229, column: 21, scope: !965)
!974 = !DILocation(line: 231, column: 6, scope: !965)
!975 = !DILocation(line: 0, scope: !965)
!976 = !DILocation(line: 232, column: 3, scope: !965)
!977 = !DILocation(line: 466, column: 13, scope: !978, inlinedAt: !980)
!978 = distinct !DISubprogram(name: "op_is_write", scope: !979, file: !979, line: 464, type: !309, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!979 = !DIFile(filename: "../include/linux/blk_types.h", directory: "/llk/linux-5.17/build_arm_allyes")
!980 = distinct !DILocation(line: 234, column: 19, scope: !965)
!981 = !DILocation(line: 234, column: 10, scope: !965)
!982 = !DILocation(line: 235, column: 10, scope: !965)
!983 = !DILocation(line: 236, column: 10, scope: !965)
!984 = !DILocation(line: 237, column: 10, scope: !965)
!985 = !DILocation(line: 238, column: 10, scope: !965)
!986 = !DILocation(line: 239, column: 10, scope: !965)
!987 = !DILocation(line: 234, column: 7, scope: !965)
!988 = !DILocation(line: 235, column: 7, scope: !965)
!989 = !DILocation(line: 236, column: 7, scope: !965)
!990 = !DILocation(line: 237, column: 7, scope: !965)
!991 = !DILocation(line: 238, column: 7, scope: !965)
!992 = !DILocation(line: 239, column: 7, scope: !965)
!993 = !DILocation(line: 240, column: 9, scope: !965)
!994 = !DILocation(line: 240, column: 27, scope: !965)
!995 = !DILocation(line: 240, column: 30, scope: !965)
!996 = !DILocation(line: 240, column: 6, scope: !965)
!997 = !DILocation(line: 241, column: 8, scope: !965)
!998 = !DILocation(line: 242, column: 6, scope: !965)
!999 = !DILocation(line: 243, column: 8, scope: !965)
!1000 = !DILocation(line: 243, column: 3, scope: !965)
!1001 = !DILocation(line: 244, column: 6, scope: !965)
!1002 = !DILocation(line: 245, column: 8, scope: !965)
!1003 = !DILocation(line: 245, column: 3, scope: !965)
!1004 = !DILocation(line: 247, column: 13, scope: !965)
!1005 = !DILocation(line: 188, column: 12, scope: !1006, inlinedAt: !1007)
!1006 = distinct !DISubprogram(name: "act_log_check", scope: !1, file: !1, line: 185, type: !309, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1007 = distinct !DILocation(line: 248, column: 6, scope: !965)
!1008 = !DILocation(line: 188, column: 8, scope: !1006, inlinedAt: !1007)
!1009 = !DILocation(line: 188, column: 21, scope: !1006, inlinedAt: !1007)
!1010 = !DILocation(line: 188, column: 38, scope: !1006, inlinedAt: !1007)
!1011 = !DILocation(line: 188, column: 46, scope: !1006, inlinedAt: !1007)
!1012 = !DILocation(line: 188, column: 6, scope: !1006, inlinedAt: !1007)
!1013 = !DILocation(line: 189, column: 3, scope: !1006, inlinedAt: !1007)
!1014 = !DILocation(line: 190, column: 6, scope: !1006, inlinedAt: !1007)
!1015 = !DILocation(line: 190, column: 13, scope: !1006, inlinedAt: !1007)
!1016 = !DILocation(line: 190, column: 17, scope: !1006, inlinedAt: !1007)
!1017 = !DILocation(line: 190, column: 30, scope: !1006, inlinedAt: !1007)
!1018 = !DILocation(line: 190, column: 24, scope: !1006, inlinedAt: !1007)
!1019 = !DILocation(line: 190, column: 40, scope: !1006, inlinedAt: !1007)
!1020 = !DILocation(line: 190, column: 43, scope: !1006, inlinedAt: !1007)
!1021 = !DILocation(line: 190, column: 56, scope: !1006, inlinedAt: !1007)
!1022 = !DILocation(line: 190, column: 50, scope: !1006, inlinedAt: !1007)
!1023 = !DILocation(line: 191, column: 3, scope: !1006, inlinedAt: !1007)
!1024 = !DILocation(line: 192, column: 10, scope: !1006, inlinedAt: !1007)
!1025 = !DILocation(line: 192, column: 6, scope: !1006, inlinedAt: !1007)
!1026 = !DILocation(line: 192, column: 14, scope: !1006, inlinedAt: !1007)
!1027 = !DILocation(line: 192, column: 17, scope: !1006, inlinedAt: !1007)
!1028 = !DILocation(line: 192, column: 21, scope: !1006, inlinedAt: !1007)
!1029 = !DILocation(line: 193, column: 3, scope: !1006, inlinedAt: !1007)
!1030 = !DILocation(line: 249, column: 3, scope: !965)
!1031 = !DILocation(line: 195, column: 2, scope: !1006, inlinedAt: !1007)
!1032 = !DILocation(line: 250, column: 8, scope: !965)
!1033 = !DILocation(line: 252, column: 6, scope: !965)
!1034 = !DILocation(line: 253, column: 26, scope: !965)
!1035 = !DILocation(line: 253, column: 3, scope: !965)
!1036 = !DILocation(line: 255, column: 12, scope: !965)
!1037 = !DILocation(line: 255, column: 33, scope: !965)
!1038 = !DILocation(line: 183, column: 9, scope: !387, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 256, column: 15, scope: !965)
!1040 = !DILocation(line: 258, column: 20, scope: !965)
!1041 = !DILocation(line: 258, column: 30, scope: !965)
!1042 = !DILocation(line: 257, column: 11, scope: !965)
!1043 = !DILocation(line: 260, column: 8, scope: !965)
!1044 = !DILocation(line: 260, column: 7, scope: !965)
!1045 = !DILocation(line: 261, column: 4, scope: !965)
!1046 = !DILocation(line: 262, column: 7, scope: !965)
!1047 = !DILocation(line: 263, column: 3, scope: !965)
!1048 = !DILocation(line: 266, column: 6, scope: !965)
!1049 = !DILocation(line: 267, column: 18, scope: !965)
!1050 = !DILocation(line: 267, column: 3, scope: !965)
!1051 = !DILocation(line: 29, column: 2, scope: !324, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 274, column: 2, scope: !965)
!1053 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 274, column: 2, scope: !965)
!1055 = !DILocation(line: 274, column: 2, scope: !965)
!1056 = !DILocation(line: 275, column: 24, scope: !965)
!1057 = !DILocation(line: 275, column: 42, scope: !965)
!1058 = !DILocation(line: 275, column: 52, scope: !965)
!1059 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 245, column: 27, scope: !414, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 275, column: 6, scope: !965)
!1063 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1060)
!1065 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1064)
!1066 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1064)
!1067 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1060)
!1068 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1061)
!1069 = !DILocation(line: 245, column: 27, scope: !414, inlinedAt: !1062)
!1070 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 245, column: 27, scope: !414, inlinedAt: !1062)
!1072 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1071)
!1073 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1071)
!1074 = !DILocation(line: 245, column: 26, scope: !414, inlinedAt: !1062)
!1075 = !DILocation(line: 247, column: 6, scope: !414, inlinedAt: !1062)
!1076 = !DILocation(line: 248, column: 12, scope: !414, inlinedAt: !1062)
!1077 = !DILocation(line: 249, column: 8, scope: !414, inlinedAt: !1062)
!1078 = !DILocation(line: 249, column: 7, scope: !414, inlinedAt: !1062)
!1079 = !DILocation(line: 250, column: 4, scope: !414, inlinedAt: !1062)
!1080 = !DILocation(line: 251, column: 2, scope: !414, inlinedAt: !1062)
!1081 = !DILocation(line: 252, column: 13, scope: !414, inlinedAt: !1062)
!1082 = !DILocation(line: 252, column: 18, scope: !414, inlinedAt: !1062)
!1083 = !DILocation(line: 252, column: 30, scope: !414, inlinedAt: !1062)
!1084 = !DILocation(line: 252, column: 23, scope: !414, inlinedAt: !1062)
!1085 = !DILocation(line: 253, column: 14, scope: !414, inlinedAt: !1062)
!1086 = !DILocation(line: 253, column: 2, scope: !414, inlinedAt: !1062)
!1087 = !DILocation(line: 0, scope: !414, inlinedAt: !1062)
!1088 = !DILocation(line: 256, column: 2, scope: !414, inlinedAt: !1062)
!1089 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 59, column: 3, scope: !447, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 256, column: 2, scope: !414, inlinedAt: !1062)
!1092 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1090)
!1094 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1093)
!1095 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1093)
!1096 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1090)
!1097 = !DILocation(line: 59, column: 23, scope: !447, inlinedAt: !1091)
!1098 = !DILocation(line: 276, column: 6, scope: !965)
!1099 = !DILocation(line: 277, column: 14, scope: !965)
!1100 = !DILocation(line: 279, column: 12, scope: !965)
!1101 = !DILocation(line: 280, column: 17, scope: !965)
!1102 = !DILocation(line: 280, column: 6, scope: !965)
!1103 = !DILocation(line: 280, column: 15, scope: !965)
!1104 = !DILocation(line: 281, column: 25, scope: !965)
!1105 = !DILocation(line: 281, column: 6, scope: !965)
!1106 = !DILocation(line: 281, column: 11, scope: !965)
!1107 = !DILocation(line: 281, column: 3, scope: !965)
!1108 = !DILocation(line: 297, column: 24, scope: !965)
!1109 = !DILocation(line: 289, column: 6, scope: !965)
!1110 = !DILocation(line: 289, column: 10, scope: !965)
!1111 = !DILocation(line: 290, column: 6, scope: !965)
!1112 = !DILocation(line: 290, column: 10, scope: !965)
!1113 = !DILocation(line: 292, column: 6, scope: !965)
!1114 = !DILocation(line: 292, column: 13, scope: !965)
!1115 = !DILocation(line: 293, column: 6, scope: !965)
!1116 = !DILocation(line: 293, column: 12, scope: !965)
!1117 = !DILocation(line: 294, column: 6, scope: !965)
!1118 = !DILocation(line: 294, column: 13, scope: !965)
!1119 = !DILocation(line: 295, column: 19, scope: !965)
!1120 = !DILocation(line: 295, column: 6, scope: !965)
!1121 = !DILocation(line: 295, column: 13, scope: !965)
!1122 = !DILocation(line: 296, column: 14, scope: !965)
!1123 = !DILocation(line: 296, column: 6, scope: !965)
!1124 = !DILocation(line: 296, column: 12, scope: !965)
!1125 = !DILocation(line: 297, column: 16, scope: !965)
!1126 = !DILocation(line: 297, column: 6, scope: !965)
!1127 = !DILocation(line: 297, column: 14, scope: !965)
!1128 = !DILocation(line: 299, column: 7, scope: !965)
!1129 = !DILocation(line: 300, column: 19, scope: !965)
!1130 = !DILocation(line: 300, column: 21, scope: !965)
!1131 = !DILocation(line: 300, column: 4, scope: !965)
!1132 = !DILocation(line: 301, column: 7, scope: !965)
!1133 = !DILocation(line: 302, column: 19, scope: !965)
!1134 = !DILocation(line: 302, column: 21, scope: !965)
!1135 = !DILocation(line: 302, column: 34, scope: !965)
!1136 = !DILocation(line: 302, column: 4, scope: !965)
!1137 = !DILocation(line: 304, column: 7, scope: !965)
!1138 = !DILocation(line: 305, column: 31, scope: !965)
!1139 = !DILocation(line: 1326, column: 2, scope: !487, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 305, column: 4, scope: !965)
!1141 = !DILocation(line: 306, column: 4, scope: !965)
!1142 = !DILocation(line: 308, column: 2, scope: !965)
!1143 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 310, column: 2, scope: !965)
!1145 = !DILocation(line: 310, column: 2, scope: !965)
!1146 = !DILocation(line: 63, column: 34, scope: !359, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 310, column: 2, scope: !965)
!1148 = !DILocation(line: 159, column: 2, scope: !363, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 63, column: 34, scope: !359, inlinedAt: !1147)
!1150 = !DILocation(line: 181, column: 15, scope: !329, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 63, column: 9, scope: !359, inlinedAt: !1147)
!1152 = !DILocation(line: 171, column: 2, scope: !370, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 310, column: 2, scope: !965)
!1154 = !DILocation(line: 311, column: 1, scope: !965)
!1155 = distinct !DISubprogram(name: "blk_rq_trace_sector", scope: !1156, file: !1156, line: 122, type: !309, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1156 = !DIFile(filename: "../include/linux/blktrace_api.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1157 = !DILocation(line: 123, scope: !1155)
!1158 = !DILocation(line: 206, column: 31, scope: !1159, inlinedAt: !1160)
!1159 = distinct !DISubprogram(name: "blk_rq_is_passthrough", scope: !938, file: !938, line: 204, type: !309, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1160 = distinct !DILocation(line: 128, column: 6, scope: !1155)
!1161 = !DILocation(line: 59, column: 12, scope: !1162, inlinedAt: !1163)
!1162 = distinct !DISubprogram(name: "blk_op_is_passthrough", scope: !640, file: !640, line: 56, type: !309, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1163 = distinct !DILocation(line: 206, column: 9, scope: !1159, inlinedAt: !1160)
!1164 = !DILocation(line: 59, column: 29, scope: !1162, inlinedAt: !1163)
!1165 = !DILocation(line: 59, column: 32, scope: !1162, inlinedAt: !1163)
!1166 = !DILocation(line: 59, column: 35, scope: !1162, inlinedAt: !1163)
!1167 = !DILocation(line: 128, column: 32, scope: !1155)
!1168 = !DILocation(line: 128, column: 46, scope: !1155)
!1169 = !DILocation(line: 1010, column: 13, scope: !1170, inlinedAt: !1171)
!1170 = distinct !DISubprogram(name: "blk_rq_pos", scope: !938, file: !938, line: 1008, type: !309, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1171 = distinct !DILocation(line: 128, column: 35, scope: !1155)
!1172 = !DILocation(line: 128, column: 50, scope: !1155)
!1173 = !DILocation(line: 128, column: 6, scope: !1155)
!1174 = !DILocation(line: 129, column: 3, scope: !1155)
!1175 = !DILocation(line: 130, column: 20, scope: !1155)
!1176 = !DILocation(line: 130, column: 2, scope: !1155)
!1177 = !DILocation(line: 0, scope: !1155)
!1178 = !DILocation(line: 131, column: 1, scope: !1155)
!1179 = distinct !DISubprogram(name: "blk_trace_request_get_cgid", scope: !1, file: !1, line: 805, type: !309, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1180 = !DILocation(line: 806, scope: !1179)
!1181 = !DILocation(line: 807, column: 11, scope: !1179)
!1182 = !DILocation(line: 807, column: 7, scope: !1179)
!1183 = !DILocation(line: 807, column: 6, scope: !1179)
!1184 = !DILocation(line: 808, column: 3, scope: !1179)
!1185 = !DILocation(line: 810, column: 32, scope: !1179)
!1186 = !DILocation(line: 810, column: 36, scope: !1179)
!1187 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1189)
!1188 = distinct !DISubprogram(name: "blk_trace_bio_get_cgid", scope: !1, file: !1, line: 784, type: !309, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1189 = distinct !DILocation(line: 810, column: 9, scope: !1179)
!1190 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1189)
!1191 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1189)
!1192 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1189)
!1193 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1189)
!1194 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1189)
!1195 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1189)
!1196 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1189)
!1197 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1189)
!1198 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1189)
!1199 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1189)
!1200 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1203)
!1201 = distinct !DISubprogram(name: "bio_blkcg", scope: !1202, file: !1202, line: 266, type: !309, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1202 = !DIFile(filename: "../include/linux/blk-cgroup.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1203 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1189)
!1204 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1203)
!1205 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1203)
!1206 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1189)
!1207 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1189)
!1209 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1208)
!1210 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1189)
!1211 = !DILocation(line: 0, scope: !1179)
!1212 = !DILocation(line: 811, column: 1, scope: !1179)
!1213 = distinct !DISubprogram(name: "init_blk_tracer", scope: !1, file: !1, line: 1592, type: !309, scopeLine: 1593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1214 = !DILocation(line: 1593, scope: !1213)
!1215 = !DILocation(line: 1594, column: 7, scope: !1213)
!1216 = !DILocation(line: 1594, column: 6, scope: !1213)
!1217 = !DILocation(line: 1595, column: 3, scope: !1213)
!1218 = !DILocation(line: 1596, column: 3, scope: !1213)
!1219 = !DILocation(line: 1599, column: 6, scope: !1213)
!1220 = !DILocation(line: 1599, column: 35, scope: !1213)
!1221 = !DILocation(line: 1600, column: 3, scope: !1213)
!1222 = !DILocation(line: 1601, column: 3, scope: !1213)
!1223 = !DILocation(line: 1602, column: 3, scope: !1213)
!1224 = !DILocation(line: 1605, column: 2, scope: !1213)
!1225 = !DILocation(line: 0, scope: !1213)
!1226 = !DILocation(line: 1606, column: 1, scope: !1213)
!1227 = distinct !DISubprogram(name: "blk_trace_init_sysfs", scope: !1, file: !1, line: 1872, type: !309, scopeLine: 1873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1228 = !DILocation(line: 1873, scope: !1227)
!1229 = !DILocation(line: 1874, column: 9, scope: !1227)
!1230 = !DILocation(line: 1874, column: 2, scope: !1227)
!1231 = distinct !DISubprogram(name: "blk_trace_remove_sysfs", scope: !1, file: !1, line: 1877, type: !309, scopeLine: 1878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1232 = !DILocation(line: 1878, scope: !1231)
!1233 = !DILocation(line: 1879, column: 2, scope: !1231)
!1234 = !DILocation(line: 1880, column: 1, scope: !1231)
!1235 = distinct !DISubprogram(name: "blk_fill_rwbs", scope: !1, file: !1, line: 1896, type: !309, scopeLine: 1897, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1236 = !DILocation(line: 1897, scope: !1235)
!1237 = !DILocation(line: 1900, column: 6, scope: !1235)
!1238 = !DILocation(line: 1900, column: 9, scope: !1235)
!1239 = !DILocation(line: 1901, column: 3, scope: !1235)
!1240 = !DILocation(line: 1901, column: 13, scope: !1235)
!1241 = !DILocation(line: 0, scope: !1235)
!1242 = !DILocation(line: 1903, column: 2, scope: !1235)
!1243 = !DILocation(line: 1906, column: 3, scope: !1235)
!1244 = !DILocation(line: 1907, column: 3, scope: !1235)
!1245 = !DILocation(line: 1909, column: 3, scope: !1235)
!1246 = !DILocation(line: 1910, column: 3, scope: !1235)
!1247 = !DILocation(line: 1912, column: 3, scope: !1235)
!1248 = !DILocation(line: 1912, column: 9, scope: !1235)
!1249 = !DILocation(line: 1912, column: 13, scope: !1235)
!1250 = !DILocation(line: 1914, column: 3, scope: !1235)
!1251 = !DILocation(line: 1916, column: 3, scope: !1235)
!1252 = !DILocation(line: 1917, column: 3, scope: !1235)
!1253 = !DILocation(line: 1919, column: 3, scope: !1235)
!1254 = !DILocation(line: 1920, column: 3, scope: !1235)
!1255 = !DILocation(line: 1922, column: 3, scope: !1235)
!1256 = !DILocation(line: 1923, column: 2, scope: !1235)
!1257 = !DILocation(line: 1925, column: 9, scope: !1235)
!1258 = !DILocation(line: 1925, column: 6, scope: !1235)
!1259 = !DILocation(line: 1926, column: 3, scope: !1235)
!1260 = !DILocation(line: 1926, column: 9, scope: !1235)
!1261 = !DILocation(line: 1926, column: 13, scope: !1235)
!1262 = !DILocation(line: 1927, column: 9, scope: !1235)
!1263 = !DILocation(line: 1927, column: 6, scope: !1235)
!1264 = !DILocation(line: 1928, column: 3, scope: !1235)
!1265 = !DILocation(line: 1928, column: 9, scope: !1235)
!1266 = !DILocation(line: 1928, column: 13, scope: !1235)
!1267 = !DILocation(line: 1929, column: 9, scope: !1235)
!1268 = !DILocation(line: 1929, column: 6, scope: !1235)
!1269 = !DILocation(line: 1930, column: 3, scope: !1235)
!1270 = !DILocation(line: 1930, column: 9, scope: !1235)
!1271 = !DILocation(line: 1930, column: 13, scope: !1235)
!1272 = !DILocation(line: 1931, column: 9, scope: !1235)
!1273 = !DILocation(line: 1931, column: 6, scope: !1235)
!1274 = !DILocation(line: 1932, column: 3, scope: !1235)
!1275 = !DILocation(line: 1932, column: 9, scope: !1235)
!1276 = !DILocation(line: 1932, column: 13, scope: !1235)
!1277 = !DILocation(line: 1934, column: 2, scope: !1235)
!1278 = !DILocation(line: 1934, column: 10, scope: !1235)
!1279 = !DILocation(line: 1935, column: 1, scope: !1235)
!1280 = distinct !DISubprogram(name: "blk_trace_free", scope: !1, file: !1, line: 313, type: !309, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1281 = !DILocation(line: 314, scope: !1280)
!1282 = !DILocation(line: 315, column: 18, scope: !1280)
!1283 = !DILocation(line: 315, column: 2, scope: !1280)
!1284 = !DILocation(line: 321, column: 11, scope: !1280)
!1285 = !DILocation(line: 321, column: 7, scope: !1280)
!1286 = !DILocation(line: 321, column: 6, scope: !1280)
!1287 = !DILocation(line: 322, column: 44, scope: !1280)
!1288 = !DILocation(line: 322, column: 47, scope: !1280)
!1289 = !DILocation(line: 322, column: 18, scope: !1280)
!1290 = !DILocation(line: 322, column: 3, scope: !1280)
!1291 = !DILocation(line: 323, column: 43, scope: !1280)
!1292 = !DILocation(line: 323, column: 18, scope: !1280)
!1293 = !DILocation(line: 323, column: 3, scope: !1280)
!1294 = !DILocation(line: 324, column: 2, scope: !1280)
!1295 = !DILocation(line: 325, column: 18, scope: !1280)
!1296 = !DILocation(line: 325, column: 3, scope: !1280)
!1297 = !DILocation(line: 327, column: 18, scope: !1280)
!1298 = !DILocation(line: 327, column: 2, scope: !1280)
!1299 = !DILocation(line: 328, column: 18, scope: !1280)
!1300 = !DILocation(line: 328, column: 2, scope: !1280)
!1301 = !DILocation(line: 329, column: 2, scope: !1280)
!1302 = !DILocation(line: 330, column: 1, scope: !1280)
!1303 = distinct !DISubprogram(name: "put_probe_ref", scope: !1, file: !1, line: 340, type: !309, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1304 = !DILocation(line: 341, scope: !1303)
!1305 = !DILocation(line: 342, column: 2, scope: !1303)
!1306 = !DILocation(line: 343, column: 7, scope: !1303)
!1307 = !DILocation(line: 343, column: 6, scope: !1303)
!1308 = !DILocation(line: 344, column: 3, scope: !1303)
!1309 = !DILocation(line: 1135, column: 2, scope: !1310, inlinedAt: !1311)
!1310 = distinct !DISubprogram(name: "blk_unregister_tracepoints", scope: !1, file: !1, line: 1133, type: !309, scopeLine: 1134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1311 = distinct !DILocation(line: 344, column: 3, scope: !1303)
!1312 = !DILocation(line: 498, column: 1, scope: !1313, inlinedAt: !1315)
!1313 = distinct !DISubprogram(name: "unregister_trace_block_rq_remap", scope: !1314, file: !1314, line: 498, type: !309, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1314 = !DIFile(filename: "../include/trace/events/block.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1315 = distinct !DILocation(line: 1135, column: 2, scope: !1310, inlinedAt: !1311)
!1316 = !DILocation(line: 456, column: 1, scope: !1317, inlinedAt: !1318)
!1317 = distinct !DISubprogram(name: "unregister_trace_block_bio_remap", scope: !1314, file: !1314, line: 456, type: !309, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1318 = distinct !DILocation(line: 1136, column: 2, scope: !1310, inlinedAt: !1311)
!1319 = !DILocation(line: 418, column: 1, scope: !1320, inlinedAt: !1321)
!1320 = distinct !DISubprogram(name: "unregister_trace_block_split", scope: !1314, file: !1314, line: 418, type: !309, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1321 = distinct !DILocation(line: 1137, column: 2, scope: !1310, inlinedAt: !1311)
!1322 = !DILocation(line: 401, column: 1, scope: !1323, inlinedAt: !1324)
!1323 = distinct !DISubprogram(name: "unregister_trace_block_unplug", scope: !1314, file: !1314, line: 401, type: !309, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1324 = distinct !DILocation(line: 1138, column: 2, scope: !1310, inlinedAt: !1311)
!1325 = !DILocation(line: 356, column: 1, scope: !1326, inlinedAt: !1327)
!1326 = distinct !DISubprogram(name: "unregister_trace_block_plug", scope: !1314, file: !1314, line: 356, type: !309, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1327 = distinct !DILocation(line: 1139, column: 2, scope: !1310, inlinedAt: !1311)
!1328 = !DILocation(line: 343, column: 1, scope: !1329, inlinedAt: !1330)
!1329 = distinct !DISubprogram(name: "unregister_trace_block_getrq", scope: !1314, file: !1314, line: 343, type: !309, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1330 = distinct !DILocation(line: 1140, column: 2, scope: !1310, inlinedAt: !1311)
!1331 = !DILocation(line: 332, column: 1, scope: !1332, inlinedAt: !1333)
!1332 = distinct !DISubprogram(name: "unregister_trace_block_bio_queue", scope: !1314, file: !1314, line: 332, type: !309, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1333 = distinct !DILocation(line: 1141, column: 2, scope: !1310, inlinedAt: !1311)
!1334 = !DILocation(line: 321, column: 1, scope: !1335, inlinedAt: !1336)
!1335 = distinct !DISubprogram(name: "unregister_trace_block_bio_frontmerge", scope: !1314, file: !1314, line: 321, type: !309, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1336 = distinct !DILocation(line: 1142, column: 2, scope: !1310, inlinedAt: !1311)
!1337 = !DILocation(line: 310, column: 1, scope: !1338, inlinedAt: !1339)
!1338 = distinct !DISubprogram(name: "unregister_trace_block_bio_backmerge", scope: !1314, file: !1314, line: 310, type: !309, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1339 = distinct !DILocation(line: 1143, column: 2, scope: !1310, inlinedAt: !1311)
!1340 = !DILocation(line: 233, column: 1, scope: !1341, inlinedAt: !1342)
!1341 = distinct !DISubprogram(name: "unregister_trace_block_bio_complete", scope: !1314, file: !1314, line: 233, type: !309, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1342 = distinct !DILocation(line: 1144, column: 2, scope: !1310, inlinedAt: !1311)
!1343 = !DILocation(line: 299, column: 1, scope: !1344, inlinedAt: !1345)
!1344 = distinct !DISubprogram(name: "unregister_trace_block_bio_bounce", scope: !1314, file: !1314, line: 299, type: !309, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1345 = distinct !DILocation(line: 1145, column: 2, scope: !1310, inlinedAt: !1311)
!1346 = !DILocation(line: 115, column: 1, scope: !1347, inlinedAt: !1348)
!1347 = distinct !DISubprogram(name: "unregister_trace_block_rq_complete", scope: !1314, file: !1314, line: 115, type: !309, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1348 = distinct !DILocation(line: 1146, column: 2, scope: !1310, inlinedAt: !1311)
!1349 = !DILocation(line: 73, column: 1, scope: !1350, inlinedAt: !1351)
!1350 = distinct !DISubprogram(name: "unregister_trace_block_rq_requeue", scope: !1314, file: !1314, line: 73, type: !309, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1351 = distinct !DILocation(line: 1147, column: 2, scope: !1310, inlinedAt: !1311)
!1352 = !DILocation(line: 218, column: 1, scope: !1353, inlinedAt: !1354)
!1353 = distinct !DISubprogram(name: "unregister_trace_block_rq_merge", scope: !1314, file: !1314, line: 218, type: !309, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1354 = distinct !DILocation(line: 1148, column: 2, scope: !1310, inlinedAt: !1311)
!1355 = !DILocation(line: 204, column: 1, scope: !1356, inlinedAt: !1357)
!1356 = distinct !DISubprogram(name: "unregister_trace_block_rq_issue", scope: !1314, file: !1314, line: 204, type: !309, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1357 = distinct !DILocation(line: 1149, column: 2, scope: !1310, inlinedAt: !1311)
!1358 = !DILocation(line: 190, column: 1, scope: !1359, inlinedAt: !1360)
!1359 = distinct !DISubprogram(name: "unregister_trace_block_rq_insert", scope: !1314, file: !1314, line: 190, type: !309, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1360 = distinct !DILocation(line: 1150, column: 2, scope: !1310, inlinedAt: !1311)
!1361 = !DILocation(line: 93, column: 2, scope: !1362, inlinedAt: !1364)
!1362 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !1363, file: !1363, line: 91, type: !309, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1363 = !DIFile(filename: "../include/linux/tracepoint.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1364 = distinct !DILocation(line: 1152, column: 2, scope: !1310, inlinedAt: !1311)
!1365 = !DILocation(line: 94, column: 2, scope: !1362, inlinedAt: !1364)
!1366 = !DILocation(line: 345, column: 2, scope: !1303)
!1367 = !DILocation(line: 346, column: 1, scope: !1303)
!1368 = distinct !DISubprogram(name: "blk_add_trace_rq_remap", scope: !1, file: !1, line: 1044, type: !309, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1369 = !DILocation(line: 1046, scope: !1368)
!1370 = !DILocation(line: 1048, column: 2, scope: !1368)
!1371 = !DILocation(line: 1048, column: 28, scope: !1368)
!1372 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 1050, column: 2, scope: !1368)
!1374 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1373)
!1376 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1375)
!1379 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1377)
!1381 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1380)
!1382 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1380)
!1383 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1377)
!1384 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1378)
!1385 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1373)
!1387 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1373)
!1388 = !DILocation(line: 1051, column: 7, scope: !1368)
!1389 = !DILocation(line: 1052, column: 6, scope: !1368)
!1390 = !DILocation(line: 1053, column: 3, scope: !1368)
!1391 = !DILocation(line: 1054, column: 3, scope: !1368)
!1392 = !DILocation(line: 1057, column: 18, scope: !1368)
!1393 = !DILocation(line: 1057, column: 16, scope: !1368)
!1394 = !DILocation(line: 1058, column: 18, scope: !1368)
!1395 = !DILocation(line: 159, column: 9, scope: !1396, inlinedAt: !1397)
!1396 = distinct !DISubprogram(name: "disk_devt", scope: !701, file: !701, line: 157, type: !309, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1397 = distinct !DILocation(line: 1058, column: 18, scope: !1368)
!1398 = !DILocation(line: 1058, column: 16, scope: !1368)
!1399 = !DILocation(line: 1059, column: 16, scope: !1368)
!1400 = !DILocation(line: 1010, column: 13, scope: !1170, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 1061, column: 22, scope: !1368)
!1402 = !DILocation(line: 1015, column: 13, scope: !937, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 1061, column: 38, scope: !1368)
!1404 = !DILocation(line: 1062, column: 4, scope: !1368)
!1405 = !DILocation(line: 466, column: 13, scope: !978, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 1062, column: 4, scope: !1368)
!1407 = !DILocation(line: 1063, column: 19, scope: !1368)
!1408 = !DILocation(line: 1061, column: 2, scope: !1368)
!1409 = !DILocation(line: 1065, column: 1, scope: !1368)
!1410 = !DILocation(line: 0, scope: !1368)
!1411 = distinct !DISubprogram(name: "blk_add_trace_bio_remap", scope: !1, file: !1, line: 1007, type: !309, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1412 = !DILocation(line: 1009, scope: !1411)
!1413 = !DILocation(line: 1010, column: 33, scope: !1411)
!1414 = !DILocation(line: 1010, column: 42, scope: !1411)
!1415 = !DILocation(line: 1010, column: 51, scope: !1411)
!1416 = !DILocation(line: 1012, column: 2, scope: !1411)
!1417 = !DILocation(line: 1012, column: 28, scope: !1411)
!1418 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 1014, column: 2, scope: !1411)
!1420 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1419)
!1422 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1421)
!1425 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1423)
!1427 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1426)
!1428 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1426)
!1429 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1423)
!1430 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1424)
!1431 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1419)
!1433 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1419)
!1434 = !DILocation(line: 1015, column: 7, scope: !1411)
!1435 = !DILocation(line: 1016, column: 6, scope: !1411)
!1436 = !DILocation(line: 1017, column: 3, scope: !1411)
!1437 = !DILocation(line: 1018, column: 3, scope: !1411)
!1438 = !DILocation(line: 1021, column: 18, scope: !1411)
!1439 = !DILocation(line: 1021, column: 16, scope: !1411)
!1440 = !DILocation(line: 1022, column: 18, scope: !1411)
!1441 = !DILocation(line: 159, column: 9, scope: !1396, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 1022, column: 18, scope: !1411)
!1443 = !DILocation(line: 1022, column: 16, scope: !1411)
!1444 = !DILocation(line: 1023, column: 16, scope: !1411)
!1445 = !DILocation(line: 1025, column: 27, scope: !1411)
!1446 = !DILocation(line: 1025, column: 35, scope: !1411)
!1447 = !DILocation(line: 1025, column: 59, scope: !1411)
!1448 = !DILocation(line: 1026, column: 4, scope: !1411)
!1449 = !DILocation(line: 1027, column: 29, scope: !1411)
!1450 = !DILocation(line: 1027, column: 4, scope: !1411)
!1451 = !DILocation(line: 1028, column: 19, scope: !1411)
!1452 = !DILocation(line: 1025, column: 2, scope: !1411)
!1453 = !DILocation(line: 1030, column: 1, scope: !1411)
!1454 = !DILocation(line: 0, scope: !1411)
!1455 = distinct !DISubprogram(name: "blk_add_trace_split", scope: !1, file: !1, line: 978, type: !309, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1456 = !DILocation(line: 979, scope: !1455)
!1457 = !DILocation(line: 980, column: 33, scope: !1455)
!1458 = !DILocation(line: 980, column: 42, scope: !1455)
!1459 = !DILocation(line: 980, column: 51, scope: !1455)
!1460 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 983, column: 2, scope: !1455)
!1462 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1461)
!1464 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1463)
!1467 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1465)
!1469 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1468)
!1470 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1468)
!1471 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1465)
!1472 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1466)
!1473 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1461)
!1475 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1461)
!1476 = !DILocation(line: 984, column: 7, scope: !1455)
!1477 = !DILocation(line: 985, column: 6, scope: !1455)
!1478 = !DILocation(line: 986, column: 3, scope: !1455)
!1479 = !DILocation(line: 986, column: 17, scope: !1455)
!1480 = !DILocation(line: 986, column: 10, scope: !1455)
!1481 = !DILocation(line: 988, column: 28, scope: !1455)
!1482 = !DILocation(line: 988, column: 36, scope: !1455)
!1483 = !DILocation(line: 989, column: 18, scope: !1455)
!1484 = !DILocation(line: 989, column: 27, scope: !1455)
!1485 = !DILocation(line: 991, column: 30, scope: !1455)
!1486 = !DILocation(line: 991, column: 5, scope: !1455)
!1487 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 993, column: 5, scope: !1455)
!1489 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1488)
!1490 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1488)
!1491 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1488)
!1492 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1488)
!1493 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1488)
!1494 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1488)
!1495 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1488)
!1496 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1488)
!1497 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1488)
!1498 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1488)
!1499 = !DILocation(line: 268, column: 6, scope: !1201, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1488)
!1501 = !DILocation(line: 268, column: 10, scope: !1201, inlinedAt: !1500)
!1502 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1500)
!1503 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1500)
!1504 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1500)
!1505 = !DILocation(line: 269, column: 3, scope: !1201, inlinedAt: !1500)
!1506 = !DILocation(line: 270, column: 2, scope: !1201, inlinedAt: !1500)
!1507 = !DILocation(line: 0, scope: !1201, inlinedAt: !1500)
!1508 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1488)
!1509 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1488)
!1511 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1510)
!1512 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1488)
!1513 = !DILocation(line: 0, scope: !1188, inlinedAt: !1488)
!1514 = !DILocation(line: 988, column: 3, scope: !1455)
!1515 = !DILocation(line: 994, column: 2, scope: !1455)
!1516 = !DILocation(line: 995, column: 2, scope: !1455)
!1517 = !DILocation(line: 996, column: 1, scope: !1455)
!1518 = distinct !DISubprogram(name: "blk_add_trace_unplug", scope: !1, file: !1, line: 957, type: !309, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1519 = !DILocation(line: 959, scope: !1518)
!1520 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 962, column: 2, scope: !1518)
!1522 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1521)
!1524 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1523)
!1527 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1525)
!1529 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1528)
!1530 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1528)
!1531 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1525)
!1532 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1526)
!1533 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1521)
!1535 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1521)
!1536 = !DILocation(line: 963, column: 7, scope: !1518)
!1537 = !DILocation(line: 964, column: 6, scope: !1518)
!1538 = !DILocation(line: 965, column: 3, scope: !1518)
!1539 = !DILocation(line: 965, column: 17, scope: !1518)
!1540 = !DILocation(line: 965, column: 10, scope: !1518)
!1541 = !DILocation(line: 968, column: 7, scope: !1518)
!1542 = !DILocation(line: 969, column: 9, scope: !1518)
!1543 = !DILocation(line: 969, column: 4, scope: !1518)
!1544 = !DILocation(line: 971, column: 9, scope: !1518)
!1545 = !DILocation(line: 0, scope: !1518)
!1546 = !DILocation(line: 973, column: 3, scope: !1518)
!1547 = !DILocation(line: 974, column: 2, scope: !1518)
!1548 = !DILocation(line: 975, column: 2, scope: !1518)
!1549 = !DILocation(line: 976, column: 1, scope: !1518)
!1550 = distinct !DISubprogram(name: "blk_add_trace_plug", scope: !1, file: !1, line: 946, type: !309, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1551 = !DILocation(line: 947, scope: !1550)
!1552 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 950, column: 2, scope: !1550)
!1554 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1553)
!1556 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1555)
!1559 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1557)
!1561 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1560)
!1562 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1560)
!1563 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1557)
!1564 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1558)
!1565 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1553)
!1567 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1553)
!1568 = !DILocation(line: 951, column: 7, scope: !1550)
!1569 = !DILocation(line: 952, column: 6, scope: !1550)
!1570 = !DILocation(line: 953, column: 19, scope: !1550)
!1571 = !DILocation(line: 953, column: 3, scope: !1550)
!1572 = !DILocation(line: 954, column: 2, scope: !1550)
!1573 = !DILocation(line: 955, column: 1, scope: !1550)
!1574 = distinct !DISubprogram(name: "blk_add_trace_getrq", scope: !1, file: !1, line: 941, type: !309, scopeLine: 942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1575 = !DILocation(line: 942, scope: !1574)
!1576 = !DILocation(line: 943, column: 25, scope: !1574)
!1577 = !DILocation(line: 943, column: 34, scope: !1574)
!1578 = !DILocation(line: 943, column: 43, scope: !1574)
!1579 = !DILocation(line: 943, column: 2, scope: !1574)
!1580 = !DILocation(line: 944, column: 1, scope: !1574)
!1581 = distinct !DISubprogram(name: "blk_add_trace_bio_queue", scope: !1, file: !1, line: 936, type: !309, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1582 = !DILocation(line: 937, scope: !1581)
!1583 = !DILocation(line: 938, column: 25, scope: !1581)
!1584 = !DILocation(line: 938, column: 34, scope: !1581)
!1585 = !DILocation(line: 938, column: 43, scope: !1581)
!1586 = !DILocation(line: 938, column: 2, scope: !1581)
!1587 = !DILocation(line: 939, column: 1, scope: !1581)
!1588 = distinct !DISubprogram(name: "blk_add_trace_bio_frontmerge", scope: !1, file: !1, line: 930, type: !309, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1589 = !DILocation(line: 931, scope: !1588)
!1590 = !DILocation(line: 932, column: 25, scope: !1588)
!1591 = !DILocation(line: 932, column: 34, scope: !1588)
!1592 = !DILocation(line: 932, column: 43, scope: !1588)
!1593 = !DILocation(line: 932, column: 2, scope: !1588)
!1594 = !DILocation(line: 934, column: 1, scope: !1588)
!1595 = distinct !DISubprogram(name: "blk_add_trace_bio_backmerge", scope: !1, file: !1, line: 924, type: !309, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1596 = !DILocation(line: 925, scope: !1595)
!1597 = !DILocation(line: 926, column: 25, scope: !1595)
!1598 = !DILocation(line: 926, column: 34, scope: !1595)
!1599 = !DILocation(line: 926, column: 43, scope: !1595)
!1600 = !DILocation(line: 926, column: 2, scope: !1595)
!1601 = !DILocation(line: 928, column: 1, scope: !1595)
!1602 = distinct !DISubprogram(name: "blk_add_trace_bio_complete", scope: !1, file: !1, line: 917, type: !309, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1603 = !DILocation(line: 919, scope: !1602)
!1604 = !DILocation(line: 921, column: 31, scope: !1602)
!1605 = !DILocation(line: 921, column: 6, scope: !1602)
!1606 = !DILocation(line: 920, column: 2, scope: !1602)
!1607 = !DILocation(line: 922, column: 1, scope: !1602)
!1608 = distinct !DISubprogram(name: "blk_add_trace_bio_bounce", scope: !1, file: !1, line: 912, type: !309, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1609 = !DILocation(line: 913, scope: !1608)
!1610 = !DILocation(line: 914, column: 25, scope: !1608)
!1611 = !DILocation(line: 914, column: 34, scope: !1608)
!1612 = !DILocation(line: 914, column: 43, scope: !1608)
!1613 = !DILocation(line: 914, column: 2, scope: !1608)
!1614 = !DILocation(line: 915, column: 1, scope: !1608)
!1615 = distinct !DISubprogram(name: "blk_add_trace_rq_complete", scope: !1, file: !1, line: 876, type: !309, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1616 = !DILocation(line: 878, scope: !1615)
!1617 = !DILocation(line: 807, column: 11, scope: !1179, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 880, column: 5, scope: !1615)
!1619 = !DILocation(line: 807, column: 7, scope: !1179, inlinedAt: !1618)
!1620 = !DILocation(line: 807, column: 6, scope: !1179, inlinedAt: !1618)
!1621 = !DILocation(line: 808, column: 3, scope: !1179, inlinedAt: !1618)
!1622 = !DILocation(line: 810, column: 32, scope: !1179, inlinedAt: !1618)
!1623 = !DILocation(line: 810, column: 36, scope: !1179, inlinedAt: !1618)
!1624 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 810, column: 9, scope: !1179, inlinedAt: !1618)
!1626 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1625)
!1627 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1625)
!1628 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1625)
!1629 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1625)
!1630 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1625)
!1631 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1625)
!1632 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1625)
!1633 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1625)
!1634 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1625)
!1635 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1625)
!1636 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1625)
!1638 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1637)
!1639 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1637)
!1640 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1625)
!1641 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1625)
!1643 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1642)
!1644 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1625)
!1645 = !DILocation(line: 0, scope: !1179, inlinedAt: !1618)
!1646 = !DILocation(line: 879, column: 2, scope: !1615)
!1647 = !DILocation(line: 881, column: 1, scope: !1615)
!1648 = distinct !DISubprogram(name: "blk_add_trace_rq_requeue", scope: !1, file: !1, line: 870, type: !309, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1649 = !DILocation(line: 871, scope: !1648)
!1650 = !DILocation(line: 1015, column: 13, scope: !937, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 872, column: 26, scope: !1648)
!1652 = !DILocation(line: 807, column: 11, scope: !1179, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 873, column: 5, scope: !1648)
!1654 = !DILocation(line: 807, column: 7, scope: !1179, inlinedAt: !1653)
!1655 = !DILocation(line: 807, column: 6, scope: !1179, inlinedAt: !1653)
!1656 = !DILocation(line: 808, column: 3, scope: !1179, inlinedAt: !1653)
!1657 = !DILocation(line: 810, column: 32, scope: !1179, inlinedAt: !1653)
!1658 = !DILocation(line: 810, column: 36, scope: !1179, inlinedAt: !1653)
!1659 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 810, column: 9, scope: !1179, inlinedAt: !1653)
!1661 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1660)
!1662 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1660)
!1663 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1660)
!1664 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1660)
!1665 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1660)
!1666 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1660)
!1667 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1660)
!1668 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1660)
!1669 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1660)
!1670 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1660)
!1671 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1660)
!1673 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1672)
!1674 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1672)
!1675 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1660)
!1676 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1660)
!1678 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1677)
!1679 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1660)
!1680 = !DILocation(line: 0, scope: !1179, inlinedAt: !1653)
!1681 = !DILocation(line: 872, column: 2, scope: !1648)
!1682 = !DILocation(line: 874, column: 1, scope: !1648)
!1683 = distinct !DISubprogram(name: "blk_add_trace_rq_merge", scope: !1, file: !1, line: 864, type: !309, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1684 = !DILocation(line: 865, scope: !1683)
!1685 = !DILocation(line: 1015, column: 13, scope: !937, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 866, column: 26, scope: !1683)
!1687 = !DILocation(line: 807, column: 11, scope: !1179, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 867, column: 5, scope: !1683)
!1689 = !DILocation(line: 807, column: 7, scope: !1179, inlinedAt: !1688)
!1690 = !DILocation(line: 807, column: 6, scope: !1179, inlinedAt: !1688)
!1691 = !DILocation(line: 808, column: 3, scope: !1179, inlinedAt: !1688)
!1692 = !DILocation(line: 810, column: 32, scope: !1179, inlinedAt: !1688)
!1693 = !DILocation(line: 810, column: 36, scope: !1179, inlinedAt: !1688)
!1694 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 810, column: 9, scope: !1179, inlinedAt: !1688)
!1696 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1695)
!1697 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1695)
!1698 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1695)
!1699 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1695)
!1700 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1695)
!1701 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1695)
!1702 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1695)
!1703 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1695)
!1704 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1695)
!1705 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1695)
!1706 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1695)
!1708 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1707)
!1709 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1707)
!1710 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1695)
!1711 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1695)
!1713 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1712)
!1714 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1695)
!1715 = !DILocation(line: 0, scope: !1179, inlinedAt: !1688)
!1716 = !DILocation(line: 866, column: 2, scope: !1683)
!1717 = !DILocation(line: 868, column: 1, scope: !1683)
!1718 = distinct !DISubprogram(name: "blk_add_trace_rq_issue", scope: !1, file: !1, line: 858, type: !309, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1719 = !DILocation(line: 859, scope: !1718)
!1720 = !DILocation(line: 1015, column: 13, scope: !937, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 860, column: 26, scope: !1718)
!1722 = !DILocation(line: 807, column: 11, scope: !1179, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 861, column: 5, scope: !1718)
!1724 = !DILocation(line: 807, column: 7, scope: !1179, inlinedAt: !1723)
!1725 = !DILocation(line: 807, column: 6, scope: !1179, inlinedAt: !1723)
!1726 = !DILocation(line: 808, column: 3, scope: !1179, inlinedAt: !1723)
!1727 = !DILocation(line: 810, column: 32, scope: !1179, inlinedAt: !1723)
!1728 = !DILocation(line: 810, column: 36, scope: !1179, inlinedAt: !1723)
!1729 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 810, column: 9, scope: !1179, inlinedAt: !1723)
!1731 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1730)
!1732 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1730)
!1733 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1730)
!1734 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1730)
!1735 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1730)
!1736 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1730)
!1737 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1730)
!1738 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1730)
!1739 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1730)
!1740 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1730)
!1741 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1730)
!1743 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1742)
!1744 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1742)
!1745 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1730)
!1746 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1730)
!1748 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1747)
!1749 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1730)
!1750 = !DILocation(line: 0, scope: !1179, inlinedAt: !1723)
!1751 = !DILocation(line: 860, column: 2, scope: !1718)
!1752 = !DILocation(line: 862, column: 1, scope: !1718)
!1753 = distinct !DISubprogram(name: "blk_add_trace_rq_insert", scope: !1, file: !1, line: 852, type: !309, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1754 = !DILocation(line: 853, scope: !1753)
!1755 = !DILocation(line: 1015, column: 13, scope: !937, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 854, column: 26, scope: !1753)
!1757 = !DILocation(line: 807, column: 11, scope: !1179, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 855, column: 5, scope: !1753)
!1759 = !DILocation(line: 807, column: 7, scope: !1179, inlinedAt: !1758)
!1760 = !DILocation(line: 807, column: 6, scope: !1179, inlinedAt: !1758)
!1761 = !DILocation(line: 808, column: 3, scope: !1179, inlinedAt: !1758)
!1762 = !DILocation(line: 810, column: 32, scope: !1179, inlinedAt: !1758)
!1763 = !DILocation(line: 810, column: 36, scope: !1179, inlinedAt: !1758)
!1764 = !DILocation(line: 789, column: 7, scope: !1188, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 810, column: 9, scope: !1179, inlinedAt: !1758)
!1766 = !DILocation(line: 790, column: 7, scope: !1188, inlinedAt: !1765)
!1767 = !DILocation(line: 790, column: 10, scope: !1188, inlinedAt: !1765)
!1768 = !DILocation(line: 790, column: 32, scope: !1188, inlinedAt: !1765)
!1769 = !DILocation(line: 790, column: 36, scope: !1188, inlinedAt: !1765)
!1770 = !DILocation(line: 790, column: 6, scope: !1188, inlinedAt: !1765)
!1771 = !DILocation(line: 793, column: 12, scope: !1188, inlinedAt: !1765)
!1772 = !DILocation(line: 793, column: 7, scope: !1188, inlinedAt: !1765)
!1773 = !DILocation(line: 793, column: 6, scope: !1188, inlinedAt: !1765)
!1774 = !DILocation(line: 794, column: 3, scope: !1188, inlinedAt: !1765)
!1775 = !DILocation(line: 795, column: 29, scope: !1188, inlinedAt: !1765)
!1776 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 795, column: 19, scope: !1188, inlinedAt: !1765)
!1778 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1777)
!1779 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1777)
!1780 = !DILocation(line: 795, column: 39, scope: !1188, inlinedAt: !1765)
!1781 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 795, column: 9, scope: !1188, inlinedAt: !1765)
!1783 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1782)
!1784 = !DILocation(line: 795, column: 2, scope: !1188, inlinedAt: !1765)
!1785 = !DILocation(line: 0, scope: !1179, inlinedAt: !1758)
!1786 = !DILocation(line: 854, column: 2, scope: !1753)
!1787 = !DILocation(line: 856, column: 1, scope: !1753)
!1788 = !DILocation(line: 785, scope: !1188)
!1789 = !DILocation(line: 789, column: 7, scope: !1188)
!1790 = !DILocation(line: 790, column: 7, scope: !1188)
!1791 = !DILocation(line: 790, column: 10, scope: !1188)
!1792 = !DILocation(line: 790, column: 32, scope: !1188)
!1793 = !DILocation(line: 790, column: 36, scope: !1188)
!1794 = !DILocation(line: 790, column: 6, scope: !1188)
!1795 = !DILocation(line: 793, column: 12, scope: !1188)
!1796 = !DILocation(line: 793, column: 7, scope: !1188)
!1797 = !DILocation(line: 793, column: 6, scope: !1188)
!1798 = !DILocation(line: 794, column: 3, scope: !1188)
!1799 = !DILocation(line: 795, column: 29, scope: !1188)
!1800 = !DILocation(line: 268, column: 6, scope: !1201, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 795, column: 19, scope: !1188)
!1802 = !DILocation(line: 268, column: 10, scope: !1201, inlinedAt: !1801)
!1803 = !DILocation(line: 268, column: 13, scope: !1201, inlinedAt: !1801)
!1804 = !DILocation(line: 269, column: 10, scope: !1201, inlinedAt: !1801)
!1805 = !DILocation(line: 269, column: 24, scope: !1201, inlinedAt: !1801)
!1806 = !DILocation(line: 269, column: 3, scope: !1201, inlinedAt: !1801)
!1807 = !DILocation(line: 270, column: 2, scope: !1201, inlinedAt: !1801)
!1808 = !DILocation(line: 0, scope: !1201, inlinedAt: !1801)
!1809 = !DILocation(line: 795, column: 39, scope: !1188)
!1810 = !DILocation(line: 312, column: 15, scope: !352, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 795, column: 9, scope: !1188)
!1812 = !DILocation(line: 312, column: 19, scope: !352, inlinedAt: !1811)
!1813 = !DILocation(line: 795, column: 2, scope: !1188)
!1814 = !DILocation(line: 0, scope: !1188)
!1815 = !DILocation(line: 796, column: 1, scope: !1188)
!1816 = distinct !DISubprogram(name: "blk_add_trace_bio", scope: !1, file: !1, line: 894, type: !309, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1817 = !DILocation(line: 896, scope: !1816)
!1818 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 899, column: 2, scope: !1816)
!1820 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1819)
!1822 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1821)
!1825 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1823)
!1827 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1826)
!1828 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1826)
!1829 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1823)
!1830 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1824)
!1831 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1819)
!1833 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1819)
!1834 = !DILocation(line: 900, column: 7, scope: !1816)
!1835 = !DILocation(line: 901, column: 6, scope: !1816)
!1836 = !DILocation(line: 902, column: 3, scope: !1816)
!1837 = !DILocation(line: 903, column: 3, scope: !1816)
!1838 = !DILocation(line: 906, column: 18, scope: !1816)
!1839 = !DILocation(line: 906, column: 27, scope: !1816)
!1840 = !DILocation(line: 906, column: 35, scope: !1816)
!1841 = !DILocation(line: 906, column: 59, scope: !1816)
!1842 = !DILocation(line: 907, column: 4, scope: !1816)
!1843 = !DILocation(line: 908, column: 4, scope: !1816)
!1844 = !DILocation(line: 906, column: 2, scope: !1816)
!1845 = !DILocation(line: 910, column: 1, scope: !1816)
!1846 = !DILocation(line: 0, scope: !1816)
!1847 = distinct !DISubprogram(name: "blk_add_trace_rq", scope: !1, file: !1, line: 829, type: !309, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1848 = !DILocation(line: 831, scope: !1847)
!1849 = !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 834, column: 2, scope: !1847)
!1851 = !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 692, column: 2, scope: !910, inlinedAt: !1850)
!1853 = !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 54, column: 3, scope: !412, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 68, column: 2, scope: !914, inlinedAt: !1852)
!1856 = !DILocation(line: 104, column: 4, scope: !334, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 16, column: 10, scope: !409, inlinedAt: !1854)
!1858 = !DILocation(line: 104, column: 26, scope: !334, inlinedAt: !1857)
!1859 = !DILocation(line: 103, column: 9, scope: !334, inlinedAt: !1857)
!1860 = !DILocation(line: 16, column: 33, scope: !409, inlinedAt: !1854)
!1861 = !DILocation(line: 54, column: 23, scope: !412, inlinedAt: !1855)
!1862 = !DILocation(line: 268, column: 2, scope: !927, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 694, column: 2, scope: !910, inlinedAt: !1850)
!1864 = !DILocation(line: 695, column: 2, scope: !910, inlinedAt: !1850)
!1865 = !DILocation(line: 835, column: 7, scope: !1847)
!1866 = !DILocation(line: 836, column: 6, scope: !1847)
!1867 = !DILocation(line: 837, column: 3, scope: !1847)
!1868 = !DILocation(line: 838, column: 3, scope: !1847)
!1869 = !DILocation(line: 206, column: 31, scope: !1159, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 841, column: 6, scope: !1847)
!1871 = !DILocation(line: 59, column: 12, scope: !1162, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 206, column: 9, scope: !1159, inlinedAt: !1870)
!1873 = !DILocation(line: 59, column: 29, scope: !1162, inlinedAt: !1872)
!1874 = !DILocation(line: 59, column: 32, scope: !1162, inlinedAt: !1872)
!1875 = !DILocation(line: 59, column: 35, scope: !1162, inlinedAt: !1872)
!1876 = !DILocation(line: 841, column: 6, scope: !1847)
!1877 = !DILocation(line: 842, column: 8, scope: !1847)
!1878 = !DILocation(line: 842, column: 3, scope: !1847)
!1879 = !DILocation(line: 844, column: 8, scope: !1847)
!1880 = !DILocation(line: 0, scope: !1847)
!1881 = !DILocation(line: 846, column: 22, scope: !1847)
!1882 = !DILocation(line: 846, column: 57, scope: !1847)
!1883 = !DILocation(line: 847, column: 25, scope: !1847)
!1884 = !DILocation(line: 846, column: 2, scope: !1847)
!1885 = !DILocation(line: 850, column: 1, scope: !1847)
!1886 = distinct !DISubprogram(name: "get_probe_ref", scope: !1, file: !1, line: 332, type: !309, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1887 = !DILocation(line: 333, scope: !1886)
!1888 = !DILocation(line: 334, column: 2, scope: !1886)
!1889 = !DILocation(line: 335, column: 6, scope: !1886)
!1890 = !DILocation(line: 335, column: 23, scope: !1886)
!1891 = !DILocation(line: 336, column: 3, scope: !1886)
!1892 = !DILocation(line: 190, column: 1, scope: !1893, inlinedAt: !1894)
!1893 = distinct !DISubprogram(name: "register_trace_block_rq_insert", scope: !1314, file: !1314, line: 190, type: !309, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1894 = distinct !DILocation(line: 1099, column: 8, scope: !1895, inlinedAt: !1896)
!1895 = distinct !DISubprogram(name: "blk_register_tracepoints", scope: !1, file: !1, line: 1095, type: !309, scopeLine: 1096, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1896 = distinct !DILocation(line: 336, column: 3, scope: !1886)
!1897 = !DILocation(line: 1100, column: 2, scope: !1895, inlinedAt: !1896)
!1898 = !DILocation(line: 204, column: 1, scope: !1899, inlinedAt: !1900)
!1899 = distinct !DISubprogram(name: "register_trace_block_rq_issue", scope: !1314, file: !1314, line: 204, type: !309, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1900 = distinct !DILocation(line: 1101, column: 8, scope: !1895, inlinedAt: !1896)
!1901 = !DILocation(line: 1102, column: 2, scope: !1895, inlinedAt: !1896)
!1902 = !DILocation(line: 218, column: 1, scope: !1903, inlinedAt: !1904)
!1903 = distinct !DISubprogram(name: "register_trace_block_rq_merge", scope: !1314, file: !1314, line: 218, type: !309, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1904 = distinct !DILocation(line: 1103, column: 8, scope: !1895, inlinedAt: !1896)
!1905 = !DILocation(line: 1104, column: 2, scope: !1895, inlinedAt: !1896)
!1906 = !DILocation(line: 73, column: 1, scope: !1907, inlinedAt: !1908)
!1907 = distinct !DISubprogram(name: "register_trace_block_rq_requeue", scope: !1314, file: !1314, line: 73, type: !309, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1908 = distinct !DILocation(line: 1105, column: 8, scope: !1895, inlinedAt: !1896)
!1909 = !DILocation(line: 1106, column: 2, scope: !1895, inlinedAt: !1896)
!1910 = !DILocation(line: 115, column: 1, scope: !1911, inlinedAt: !1912)
!1911 = distinct !DISubprogram(name: "register_trace_block_rq_complete", scope: !1314, file: !1314, line: 115, type: !309, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1912 = distinct !DILocation(line: 1107, column: 8, scope: !1895, inlinedAt: !1896)
!1913 = !DILocation(line: 1108, column: 2, scope: !1895, inlinedAt: !1896)
!1914 = !DILocation(line: 299, column: 1, scope: !1915, inlinedAt: !1916)
!1915 = distinct !DISubprogram(name: "register_trace_block_bio_bounce", scope: !1314, file: !1314, line: 299, type: !309, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1916 = distinct !DILocation(line: 1109, column: 8, scope: !1895, inlinedAt: !1896)
!1917 = !DILocation(line: 1110, column: 2, scope: !1895, inlinedAt: !1896)
!1918 = !DILocation(line: 233, column: 1, scope: !1919, inlinedAt: !1920)
!1919 = distinct !DISubprogram(name: "register_trace_block_bio_complete", scope: !1314, file: !1314, line: 233, type: !309, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1920 = distinct !DILocation(line: 1111, column: 8, scope: !1895, inlinedAt: !1896)
!1921 = !DILocation(line: 1112, column: 2, scope: !1895, inlinedAt: !1896)
!1922 = !DILocation(line: 310, column: 1, scope: !1923, inlinedAt: !1924)
!1923 = distinct !DISubprogram(name: "register_trace_block_bio_backmerge", scope: !1314, file: !1314, line: 310, type: !309, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1924 = distinct !DILocation(line: 1113, column: 8, scope: !1895, inlinedAt: !1896)
!1925 = !DILocation(line: 1114, column: 2, scope: !1895, inlinedAt: !1896)
!1926 = !DILocation(line: 321, column: 1, scope: !1927, inlinedAt: !1928)
!1927 = distinct !DISubprogram(name: "register_trace_block_bio_frontmerge", scope: !1314, file: !1314, line: 321, type: !309, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1928 = distinct !DILocation(line: 1115, column: 8, scope: !1895, inlinedAt: !1896)
!1929 = !DILocation(line: 1116, column: 2, scope: !1895, inlinedAt: !1896)
!1930 = !DILocation(line: 332, column: 1, scope: !1931, inlinedAt: !1932)
!1931 = distinct !DISubprogram(name: "register_trace_block_bio_queue", scope: !1314, file: !1314, line: 332, type: !309, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1932 = distinct !DILocation(line: 1117, column: 8, scope: !1895, inlinedAt: !1896)
!1933 = !DILocation(line: 1118, column: 2, scope: !1895, inlinedAt: !1896)
!1934 = !DILocation(line: 343, column: 1, scope: !1935, inlinedAt: !1936)
!1935 = distinct !DISubprogram(name: "register_trace_block_getrq", scope: !1314, file: !1314, line: 343, type: !309, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1936 = distinct !DILocation(line: 1119, column: 8, scope: !1895, inlinedAt: !1896)
!1937 = !DILocation(line: 1120, column: 2, scope: !1895, inlinedAt: !1896)
!1938 = !DILocation(line: 356, column: 1, scope: !1939, inlinedAt: !1940)
!1939 = distinct !DISubprogram(name: "register_trace_block_plug", scope: !1314, file: !1314, line: 356, type: !309, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1940 = distinct !DILocation(line: 1121, column: 8, scope: !1895, inlinedAt: !1896)
!1941 = !DILocation(line: 1122, column: 2, scope: !1895, inlinedAt: !1896)
!1942 = !DILocation(line: 401, column: 1, scope: !1943, inlinedAt: !1944)
!1943 = distinct !DISubprogram(name: "register_trace_block_unplug", scope: !1314, file: !1314, line: 401, type: !309, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1944 = distinct !DILocation(line: 1123, column: 8, scope: !1895, inlinedAt: !1896)
!1945 = !DILocation(line: 1124, column: 2, scope: !1895, inlinedAt: !1896)
!1946 = !DILocation(line: 418, column: 1, scope: !1947, inlinedAt: !1948)
!1947 = distinct !DISubprogram(name: "register_trace_block_split", scope: !1314, file: !1314, line: 418, type: !309, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1948 = distinct !DILocation(line: 1125, column: 8, scope: !1895, inlinedAt: !1896)
!1949 = !DILocation(line: 1126, column: 2, scope: !1895, inlinedAt: !1896)
!1950 = !DILocation(line: 456, column: 1, scope: !1951, inlinedAt: !1952)
!1951 = distinct !DISubprogram(name: "register_trace_block_bio_remap", scope: !1314, file: !1314, line: 456, type: !309, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1952 = distinct !DILocation(line: 1127, column: 8, scope: !1895, inlinedAt: !1896)
!1953 = !DILocation(line: 1128, column: 2, scope: !1895, inlinedAt: !1896)
!1954 = !DILocation(line: 498, column: 1, scope: !1955, inlinedAt: !1956)
!1955 = distinct !DISubprogram(name: "register_trace_block_rq_remap", scope: !1314, file: !1314, line: 498, type: !309, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1956 = distinct !DILocation(line: 1129, column: 8, scope: !1895, inlinedAt: !1896)
!1957 = !DILocation(line: 1130, column: 2, scope: !1895, inlinedAt: !1896)
!1958 = !DILocation(line: 337, column: 2, scope: !1886)
!1959 = !DILocation(line: 338, column: 1, scope: !1886)
!1960 = distinct !DISubprogram(name: "blk_dropped_read", scope: !1, file: !1, line: 382, type: !309, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1961 = !DILocation(line: 384, scope: !1960)
!1962 = !DILocation(line: 385, column: 31, scope: !1960)
!1963 = !DILocation(line: 386, column: 2, scope: !1960)
!1964 = !DILocation(line: 388, column: 54, scope: !1960)
!1965 = !DILocation(line: 386, column: 7, scope: !1960)
!1966 = !DILocation(line: 71, column: 2, scope: !1967, inlinedAt: !1968)
!1967 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !548, file: !548, line: 69, type: !309, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1968 = distinct !DILocation(line: 27, column: 2, scope: !1969, inlinedAt: !1970)
!1969 = distinct !DISubprogram(name: "atomic_read", scope: !667, file: !667, line: 25, type: !309, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1970 = distinct !DILocation(line: 388, column: 37, scope: !1960)
!1971 = !DILocation(line: 28, column: 9, scope: !1969, inlinedAt: !1970)
!1972 = !DILocation(line: 388, column: 2, scope: !1960)
!1973 = !DILocation(line: 390, column: 59, scope: !1960)
!1974 = !DILocation(line: 390, column: 9, scope: !1960)
!1975 = !DILocation(line: 391, column: 1, scope: !1960)
!1976 = !DILocation(line: 390, column: 2, scope: !1960)
!1977 = distinct !DISubprogram(name: "blk_msg_write", scope: !1, file: !1, line: 400, type: !309, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1978 = !DILocation(line: 402, scope: !1977)
!1979 = !DILocation(line: 406, column: 12, scope: !1977)
!1980 = !DILocation(line: 406, column: 6, scope: !1977)
!1981 = !DILocation(line: 407, column: 3, scope: !1977)
!1982 = !DILocation(line: 409, column: 8, scope: !1977)
!1983 = !DILocation(line: 36, column: 9, scope: !1984, inlinedAt: !1985)
!1984 = distinct !DISubprogram(name: "IS_ERR", scope: !653, file: !653, line: 34, type: !309, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1985 = distinct !DILocation(line: 410, column: 6, scope: !1977)
!1986 = !DILocation(line: 410, column: 6, scope: !1977)
!1987 = !DILocation(line: 411, column: 18, scope: !1977)
!1988 = !DILocation(line: 31, column: 9, scope: !1989, inlinedAt: !1990)
!1989 = distinct !DISubprogram(name: "PTR_ERR", scope: !653, file: !653, line: 29, type: !309, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!1990 = distinct !DILocation(line: 411, column: 10, scope: !1977)
!1991 = !DILocation(line: 411, column: 3, scope: !1977)
!1992 = !DILocation(line: 413, column: 7, scope: !1977)
!1993 = !DILocation(line: 413, column: 13, scope: !1977)
!1994 = !DILocation(line: 414, column: 2, scope: !1977)
!1995 = !DILocation(line: 415, column: 2, scope: !1977)
!1996 = !DILocation(line: 417, column: 2, scope: !1977)
!1997 = !DILocation(line: 0, scope: !1977)
!1998 = !DILocation(line: 418, column: 1, scope: !1977)
!1999 = distinct !DISubprogram(name: "blk_subbuf_start_callback", scope: !1, file: !1, line: 431, type: !309, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2000 = !DILocation(line: 433, scope: !1999)
!2001 = !DILocation(line: 436, column: 7, scope: !1999)
!2002 = !DILocation(line: 436, column: 6, scope: !1999)
!2003 = !DILocation(line: 437, column: 3, scope: !1999)
!2004 = !DILocation(line: 439, column: 7, scope: !1999)
!2005 = !DILocation(line: 439, column: 12, scope: !1999)
!2006 = !DILocation(line: 439, column: 18, scope: !1999)
!2007 = !DILocation(line: 440, column: 18, scope: !1999)
!2008 = !DILocation(line: 101, column: 2, scope: !2009, inlinedAt: !2010)
!2009 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !548, file: !548, line: 99, type: !309, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2010 = distinct !DILocation(line: 190, column: 2, scope: !2011, inlinedAt: !2012)
!2011 = distinct !DISubprogram(name: "atomic_inc", scope: !667, file: !667, line: 188, type: !309, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2012 = distinct !DILocation(line: 440, column: 2, scope: !1999)
!2013 = !DILocation(line: 223, column: 1, scope: !2014, inlinedAt: !2016)
!2014 = distinct !DISubprogram(name: "arch_atomic_add", scope: !2015, file: !2015, line: 223, type: !309, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2015 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!2016 = distinct !DILocation(line: 340, column: 2, scope: !2017, inlinedAt: !2019)
!2017 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !2018, file: !2018, line: 338, type: !309, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2018 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!2019 = distinct !DILocation(line: 191, column: 2, scope: !2011, inlinedAt: !2012)
!2020 = !{i64 2148255763, i64 2148255789, i64 2148255818, i64 2148255852, i64 2148255883, i64 2148255906}
!2021 = !DILocation(line: 441, column: 2, scope: !1999)
!2022 = !DILocation(line: 0, scope: !1999)
!2023 = !DILocation(line: 442, column: 1, scope: !1999)
!2024 = distinct !DISubprogram(name: "blk_create_buf_file_callback", scope: !1, file: !1, line: 451, type: !309, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2025 = !DILocation(line: 456, scope: !2024)
!2026 = !DILocation(line: 457, column: 9, scope: !2024)
!2027 = !DILocation(line: 457, column: 2, scope: !2024)
!2028 = distinct !DISubprogram(name: "blk_remove_buf_file_callback", scope: !1, file: !1, line: 444, type: !309, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2029 = !DILocation(line: 445, scope: !2028)
!2030 = !DILocation(line: 446, column: 2, scope: !2028)
!2031 = !DILocation(line: 448, column: 2, scope: !2028)
!2032 = distinct !DISubprogram(name: "trace_note_tsk", scope: !1, file: !1, line: 118, type: !309, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2033 = !DILocation(line: 119, scope: !2032)
!2034 = !DILocation(line: 123, column: 20, scope: !2032)
!2035 = !DILocation(line: 123, column: 7, scope: !2032)
!2036 = !DILocation(line: 123, column: 18, scope: !2032)
!2037 = !DILocation(line: 124, column: 2, scope: !2032)
!2038 = !DILocation(line: 125, column: 2, scope: !2032)
!2039 = !DILocation(line: 126, column: 23, scope: !2032)
!2040 = !DILocation(line: 126, column: 3, scope: !2032)
!2041 = distinct !{!2041, !2038, !2042}
!2042 = !DILocation(line: 128, column: 2, scope: !2032)
!2043 = !DILocation(line: 129, column: 2, scope: !2032)
!2044 = !DILocation(line: 130, column: 1, scope: !2032)
!2045 = distinct !DISubprogram(name: "blk_trace_event_print", scope: !1, file: !1, line: 1519, type: !309, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2046 = !DILocation(line: 1521, scope: !2045)
!2047 = !DILocation(line: 1522, column: 9, scope: !2045)
!2048 = !DILocation(line: 1522, column: 2, scope: !2045)
!2049 = distinct !DISubprogram(name: "blk_trace_event_print_binary", scope: !1, file: !1, line: 1541, type: !309, scopeLine: 1543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2050 = !DILocation(line: 1543, scope: !2049)
!2051 = !DILocation(line: 1527, column: 31, scope: !2052, inlinedAt: !2053)
!2052 = distinct !DISubprogram(name: "blk_trace_synthesize_old_trace", scope: !1, file: !1, line: 1525, type: !309, scopeLine: 1526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2053 = distinct !DILocation(line: 1544, column: 2, scope: !2049)
!2054 = !DILocation(line: 1528, column: 56, scope: !2052, inlinedAt: !2053)
!2055 = !DILocation(line: 1530, column: 2, scope: !2052, inlinedAt: !2053)
!2056 = !DILocation(line: 1530, column: 22, scope: !2052, inlinedAt: !2053)
!2057 = !DILocation(line: 1530, column: 28, scope: !2052, inlinedAt: !2053)
!2058 = !DILocation(line: 1532, column: 21, scope: !2052, inlinedAt: !2053)
!2059 = !DILocation(line: 1535, column: 2, scope: !2052, inlinedAt: !2053)
!2060 = !DILocation(line: 1536, column: 26, scope: !2052, inlinedAt: !2053)
!2061 = !DILocation(line: 1537, column: 31, scope: !2052, inlinedAt: !2053)
!2062 = !DILocation(line: 1537, column: 28, scope: !2052, inlinedAt: !2053)
!2063 = !DILocation(line: 1537, column: 26, scope: !2052, inlinedAt: !2053)
!2064 = !DILocation(line: 1536, column: 2, scope: !2052, inlinedAt: !2053)
!2065 = !DILocation(line: 1538, column: 1, scope: !2052, inlinedAt: !2053)
!2066 = !DILocation(line: 1546, column: 9, scope: !2049)
!2067 = !DILocation(line: 1546, column: 2, scope: !2049)
!2068 = distinct !DISubprogram(name: "print_one_line", scope: !1, file: !1, line: 1486, type: !309, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2069 = !DILocation(line: 1488, scope: !2068)
!2070 = !DILocation(line: 1489, column: 33, scope: !2068)
!2071 = !DILocation(line: 1490, column: 31, scope: !2068)
!2072 = !DILocation(line: 1497, column: 31, scope: !2068)
!2073 = !DILocation(line: 1498, column: 16, scope: !2068)
!2074 = !DILocation(line: 1499, column: 22, scope: !2068)
!2075 = !DILocation(line: 1499, column: 34, scope: !2068)
!2076 = !DILocation(line: 1500, column: 15, scope: !2068)
!2077 = !DILocation(line: 1501, column: 24, scope: !2068)
!2078 = !DILocation(line: 1501, column: 14, scope: !2068)
!2079 = !DILocation(line: 1503, column: 17, scope: !2068)
!2080 = !DILocation(line: 1503, column: 37, scope: !2068)
!2081 = !DILocation(line: 1503, column: 6, scope: !2068)
!2082 = !DILocation(line: 1499, column: 16, scope: !2068)
!2083 = !DILocation(line: 1504, column: 3, scope: !2068)
!2084 = !DILocation(line: 1504, column: 20, scope: !2068)
!2085 = !{ptr @blk_log_action, ptr @blk_log_action_classic}
!2086 = !DILocation(line: 1505, column: 24, scope: !2068)
!2087 = !DILocation(line: 1201, column: 39, scope: !2088, inlinedAt: !2089)
!2088 = distinct !DISubprogram(name: "pdu_start", scope: !1, file: !1, line: 1199, type: !309, scopeLine: 1200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2089 = distinct !DILocation(line: 1425, column: 22, scope: !2090, inlinedAt: !2091)
!2090 = distinct !DISubprogram(name: "blk_log_msg", scope: !1, file: !1, line: 1421, type: !309, scopeLine: 1423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2091 = distinct !DILocation(line: 1505, column: 3, scope: !2068)
!2092 = !DILocation(line: 1201, column: 47, scope: !2088, inlinedAt: !2089)
!2093 = !DILocation(line: 1201, column: 44, scope: !2088, inlinedAt: !2089)
!2094 = !DILocation(line: 1211, column: 31, scope: !2095, inlinedAt: !2096)
!2095 = distinct !DISubprogram(name: "pdu_real_len", scope: !1, file: !1, line: 1209, type: !309, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2096 = distinct !DILocation(line: 1426, column: 3, scope: !2090, inlinedAt: !2091)
!2097 = !DILocation(line: 1211, column: 9, scope: !2095, inlinedAt: !2096)
!2098 = !DILocation(line: 1211, column: 42, scope: !2095, inlinedAt: !2096)
!2099 = !DILocation(line: 1211, column: 39, scope: !2095, inlinedAt: !2096)
!2100 = !DILocation(line: 1425, column: 2, scope: !2090, inlinedAt: !2091)
!2101 = !DILocation(line: 1427, column: 2, scope: !2090, inlinedAt: !2091)
!2102 = !DILocation(line: 1506, column: 3, scope: !2068)
!2103 = !DILocation(line: 1498, column: 12, scope: !2068)
!2104 = !DILocation(line: 1509, column: 6, scope: !2068)
!2105 = !DILocation(line: 1510, column: 20, scope: !2068)
!2106 = !DILocation(line: 1510, column: 3, scope: !2068)
!2107 = !DILocation(line: 1512, column: 3, scope: !2068)
!2108 = !DILocation(line: 1512, column: 20, scope: !2068)
!2109 = !DILocation(line: 1513, column: 18, scope: !2068)
!2110 = !DILocation(line: 1513, column: 33, scope: !2068)
!2111 = !DILocation(line: 1513, column: 3, scope: !2068)
!2112 = !DILocation(line: 0, scope: !2068)
!2113 = !DILocation(line: 1517, column: 1, scope: !2068)
!2114 = distinct !DISubprogram(name: "blk_log_action_classic", scope: !1, file: !1, line: 1248, type: !309, scopeLine: 1250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2115 = !DILocation(line: 1250, scope: !2114)
!2116 = !DILocation(line: 1251, column: 2, scope: !2114)
!2117 = !DILocation(line: 1252, column: 33, scope: !2114)
!2118 = !DILocation(line: 1251, column: 7, scope: !2114)
!2119 = !DILocation(line: 1253, column: 27, scope: !2114)
!2120 = !DILocation(line: 74, column: 3, scope: !2121, inlinedAt: !2123)
!2121 = distinct !DISubprogram(name: "__arch_xprod_64", scope: !2122, file: !2122, line: 55, type: !309, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2122 = !DIFile(filename: "../arch/arm/include/asm/div64.h", directory: "/llk/linux-5.17/build_arm_allyes")
!2123 = distinct !DILocation(line: 1253, column: 27, scope: !2114)
!2124 = !{i64 1160753, i64 1160780, i64 1160802, i64 1160830}
!2125 = !DILocation(line: 92, column: 3, scope: !2121, inlinedAt: !2123)
!2126 = !{i64 1161161, i64 1161188, i64 1161221, i64 1161242, i64 1161269, i64 1161295}
!2127 = !DILocation(line: 1255, column: 55, scope: !2114)
!2128 = !DILocation(line: 1257, column: 2, scope: !2114)
!2129 = !DILocation(line: 1259, column: 26, scope: !2114)
!2130 = !DILocation(line: 1261, column: 5, scope: !2114)
!2131 = !DILocation(line: 1261, column: 23, scope: !2114)
!2132 = !DILocation(line: 1261, column: 47, scope: !2114)
!2133 = !DILocation(line: 1262, column: 27, scope: !2114)
!2134 = !DILocation(line: 1262, column: 32, scope: !2114)
!2135 = !DILocation(line: 1259, column: 2, scope: !2114)
!2136 = !DILocation(line: 1263, column: 1, scope: !2114)
!2137 = distinct !DISubprogram(name: "blk_log_action", scope: !1, file: !1, line: 1265, type: !309, scopeLine: 1267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2138 = !DILocation(line: 1267, scope: !2137)
!2139 = !DILocation(line: 1268, column: 2, scope: !2137)
!2140 = !DILocation(line: 1269, column: 55, scope: !2137)
!2141 = !DILocation(line: 1268, column: 7, scope: !2137)
!2142 = !DILocation(line: 1271, column: 2, scope: !2137)
!2143 = !DILocation(line: 1272, column: 6, scope: !2137)
!2144 = !DILocation(line: 1273, column: 25, scope: !2137)
!2145 = !DILocation(line: 1206, column: 39, scope: !2146, inlinedAt: !2147)
!2146 = distinct !DISubprogram(name: "t_cgid", scope: !1, file: !1, line: 1204, type: !309, scopeLine: 1205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2147 = distinct !DILocation(line: 1273, column: 12, scope: !2137)
!2148 = !DILocation(line: 1206, column: 9, scope: !2146, inlinedAt: !2147)
!2149 = !DILocation(line: 1275, column: 24, scope: !2137)
!2150 = !DILocation(line: 1275, column: 28, scope: !2137)
!2151 = !DILocation(line: 1275, column: 7, scope: !2137)
!2152 = !DILocation(line: 1276, column: 4, scope: !2137)
!2153 = !DILocation(line: 1276, column: 9, scope: !2137)
!2154 = !DILocation(line: 1278, column: 4, scope: !2137)
!2155 = !DILocation(line: 1280, column: 28, scope: !2137)
!2156 = !DILocation(line: 1281, column: 6, scope: !2137)
!2157 = !DILocation(line: 1281, column: 24, scope: !2137)
!2158 = !DILocation(line: 1280, column: 4, scope: !2137)
!2159 = !DILocation(line: 1283, column: 3, scope: !2137)
!2160 = !DILocation(line: 1297, column: 22, scope: !2137)
!2161 = !DILocation(line: 1297, column: 28, scope: !2137)
!2162 = !DILocation(line: 1299, column: 6, scope: !2137)
!2163 = !DILocation(line: 1299, column: 24, scope: !2137)
!2164 = !DILocation(line: 1300, column: 9, scope: !2137)
!2165 = !DILocation(line: 1300, column: 23, scope: !2137)
!2166 = !DILocation(line: 1297, column: 4, scope: !2137)
!2167 = !DILocation(line: 1303, column: 21, scope: !2137)
!2168 = !DILocation(line: 1303, column: 27, scope: !2137)
!2169 = !DILocation(line: 1304, column: 6, scope: !2137)
!2170 = !DILocation(line: 1304, column: 24, scope: !2137)
!2171 = !DILocation(line: 1303, column: 3, scope: !2137)
!2172 = !DILocation(line: 1305, column: 1, scope: !2137)
!2173 = distinct !DISubprogram(name: "fill_rwbs", scope: !1, file: !1, line: 1159, type: !309, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2174 = !DILocation(line: 1160, scope: !2173)
!2175 = !DILocation(line: 1162, column: 14, scope: !2173)
!2176 = !DILocation(line: 1164, column: 17, scope: !2173)
!2177 = !DILocation(line: 1164, column: 37, scope: !2173)
!2178 = !DILocation(line: 1164, column: 6, scope: !2173)
!2179 = !DILocation(line: 1165, column: 3, scope: !2173)
!2180 = !DILocation(line: 1165, column: 13, scope: !2173)
!2181 = !DILocation(line: 1166, column: 3, scope: !2173)
!2182 = !DILocation(line: 1169, column: 9, scope: !2173)
!2183 = !DILocation(line: 1169, column: 6, scope: !2173)
!2184 = !DILocation(line: 1170, column: 3, scope: !2173)
!2185 = !DILocation(line: 1170, column: 13, scope: !2173)
!2186 = !DILocation(line: 0, scope: !2173)
!2187 = !DILocation(line: 1172, column: 9, scope: !2173)
!2188 = !DILocation(line: 1172, column: 6, scope: !2173)
!2189 = !DILocation(line: 1173, column: 3, scope: !2173)
!2190 = !DILocation(line: 1174, column: 14, scope: !2173)
!2191 = !DILocation(line: 1174, column: 11, scope: !2173)
!2192 = !DILocation(line: 1175, column: 3, scope: !2173)
!2193 = !DILocation(line: 1176, column: 14, scope: !2173)
!2194 = !DILocation(line: 1176, column: 11, scope: !2173)
!2195 = !DILocation(line: 1177, column: 3, scope: !2173)
!2196 = !DILocation(line: 1179, column: 3, scope: !2173)
!2197 = !DILocation(line: 1181, column: 9, scope: !2173)
!2198 = !DILocation(line: 1181, column: 6, scope: !2173)
!2199 = !DILocation(line: 1182, column: 3, scope: !2173)
!2200 = !DILocation(line: 1182, column: 9, scope: !2173)
!2201 = !DILocation(line: 1182, column: 13, scope: !2173)
!2202 = !DILocation(line: 1183, column: 9, scope: !2173)
!2203 = !DILocation(line: 1183, column: 6, scope: !2173)
!2204 = !DILocation(line: 1184, column: 3, scope: !2173)
!2205 = !DILocation(line: 1184, column: 9, scope: !2173)
!2206 = !DILocation(line: 1184, column: 13, scope: !2173)
!2207 = !DILocation(line: 1185, column: 9, scope: !2173)
!2208 = !DILocation(line: 1185, column: 6, scope: !2173)
!2209 = !DILocation(line: 1186, column: 3, scope: !2173)
!2210 = !DILocation(line: 1186, column: 9, scope: !2173)
!2211 = !DILocation(line: 1186, column: 13, scope: !2173)
!2212 = !DILocation(line: 1187, column: 9, scope: !2173)
!2213 = !DILocation(line: 1187, column: 6, scope: !2173)
!2214 = !DILocation(line: 1188, column: 3, scope: !2173)
!2215 = !DILocation(line: 1188, column: 9, scope: !2173)
!2216 = !DILocation(line: 1188, column: 13, scope: !2173)
!2217 = !DILocation(line: 1190, column: 2, scope: !2173)
!2218 = !DILocation(line: 1190, column: 10, scope: !2173)
!2219 = !DILocation(line: 1191, column: 1, scope: !2173)
!2220 = distinct !DISubprogram(name: "blk_log_generic", scope: !1, file: !1, line: 1346, type: !309, scopeLine: 1347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2221 = !DILocation(line: 1347, scope: !2220)
!2222 = !DILocation(line: 1348, column: 2, scope: !2220)
!2223 = !DILocation(line: 1350, column: 26, scope: !2220)
!2224 = !DILocation(line: 1348, column: 7, scope: !2220)
!2225 = !DILocation(line: 1350, column: 2, scope: !2220)
!2226 = !DILocation(line: 1216, column: 31, scope: !2227, inlinedAt: !2228)
!2227 = distinct !DISubprogram(name: "t_action", scope: !1, file: !1, line: 1214, type: !309, scopeLine: 1215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2228 = distinct !DILocation(line: 1352, column: 6, scope: !2220)
!2229 = !DILocation(line: 1352, column: 20, scope: !2220)
!2230 = !DILocation(line: 1352, column: 6, scope: !2220)
!2231 = !DILocation(line: 1353, column: 20, scope: !2220)
!2232 = !DILocation(line: 1221, column: 31, scope: !2233, inlinedAt: !2234)
!2233 = distinct !DISubprogram(name: "t_bytes", scope: !1, file: !1, line: 1219, type: !309, scopeLine: 1220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2234 = distinct !DILocation(line: 1353, column: 30, scope: !2220)
!2235 = !DILocation(line: 1353, column: 3, scope: !2220)
!2236 = !DILocation(line: 1354, column: 3, scope: !2220)
!2237 = !DILocation(line: 1355, column: 3, scope: !2220)
!2238 = !DILocation(line: 1356, column: 2, scope: !2220)
!2239 = !DILocation(line: 1226, column: 31, scope: !2240, inlinedAt: !2241)
!2240 = distinct !DISubprogram(name: "t_sec", scope: !1, file: !1, line: 1224, type: !309, scopeLine: 1225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2241 = distinct !DILocation(line: 1357, column: 7, scope: !2220)
!2242 = !DILocation(line: 1357, column: 7, scope: !2220)
!2243 = !DILocation(line: 1226, column: 37, scope: !2240, inlinedAt: !2241)
!2244 = !DILocation(line: 1358, column: 21, scope: !2220)
!2245 = !DILocation(line: 1231, column: 31, scope: !2246, inlinedAt: !2247)
!2246 = distinct !DISubprogram(name: "t_sector", scope: !1, file: !1, line: 1229, type: !309, scopeLine: 1230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2247 = distinct !DILocation(line: 1359, column: 7, scope: !2220)
!2248 = !DILocation(line: 1358, column: 4, scope: !2220)
!2249 = !DILocation(line: 1361, column: 21, scope: !2220)
!2250 = !DILocation(line: 1361, column: 4, scope: !2220)
!2251 = !DILocation(line: 1363, column: 1, scope: !2220)
!2252 = distinct !DISubprogram(name: "blk_log_with_error", scope: !1, file: !1, line: 1365, type: !309, scopeLine: 1367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2253 = !DILocation(line: 1367, scope: !2252)
!2254 = !DILocation(line: 1216, column: 31, scope: !2227, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1368, column: 6, scope: !2252)
!2256 = !DILocation(line: 1368, column: 20, scope: !2252)
!2257 = !DILocation(line: 1368, column: 6, scope: !2252)
!2258 = !DILocation(line: 1369, column: 20, scope: !2252)
!2259 = !DILocation(line: 1369, column: 3, scope: !2252)
!2260 = !DILocation(line: 1236, column: 31, scope: !2261, inlinedAt: !2262)
!2261 = distinct !DISubprogram(name: "t_error", scope: !1, file: !1, line: 1234, type: !309, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2262 = distinct !DILocation(line: 1370, column: 33, scope: !2252)
!2263 = !DILocation(line: 1370, column: 33, scope: !2252)
!2264 = !DILocation(line: 1370, column: 3, scope: !2252)
!2265 = !DILocation(line: 1371, column: 2, scope: !2252)
!2266 = !DILocation(line: 1226, column: 31, scope: !2240, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 1372, column: 7, scope: !2252)
!2268 = !DILocation(line: 1372, column: 7, scope: !2252)
!2269 = !DILocation(line: 1226, column: 37, scope: !2240, inlinedAt: !2267)
!2270 = !DILocation(line: 1373, column: 21, scope: !2252)
!2271 = !DILocation(line: 1231, column: 31, scope: !2246, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1374, column: 7, scope: !2252)
!2273 = !DILocation(line: 1236, column: 31, scope: !2261, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 1375, column: 19, scope: !2252)
!2275 = !DILocation(line: 1375, column: 19, scope: !2252)
!2276 = !DILocation(line: 1373, column: 4, scope: !2252)
!2277 = !DILocation(line: 1377, column: 21, scope: !2252)
!2278 = !DILocation(line: 1231, column: 31, scope: !2246, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1378, column: 7, scope: !2252)
!2280 = !DILocation(line: 1236, column: 31, scope: !2261, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 1378, column: 22, scope: !2252)
!2282 = !DILocation(line: 1378, column: 22, scope: !2252)
!2283 = !DILocation(line: 1377, column: 4, scope: !2252)
!2284 = !DILocation(line: 1380, column: 1, scope: !2252)
!2285 = distinct !DISubprogram(name: "blk_log_plug", scope: !1, file: !1, line: 1393, type: !309, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2286 = !DILocation(line: 1394, scope: !2285)
!2287 = !DILocation(line: 1395, column: 2, scope: !2285)
!2288 = !DILocation(line: 1397, column: 26, scope: !2285)
!2289 = !DILocation(line: 1395, column: 7, scope: !2285)
!2290 = !DILocation(line: 1397, column: 2, scope: !2285)
!2291 = !DILocation(line: 1399, column: 2, scope: !2285)
!2292 = !DILocation(line: 1400, column: 1, scope: !2285)
!2293 = distinct !DISubprogram(name: "blk_log_unplug", scope: !1, file: !1, line: 1402, type: !309, scopeLine: 1403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2294 = !DILocation(line: 1403, scope: !2293)
!2295 = !DILocation(line: 1404, column: 2, scope: !2293)
!2296 = !DILocation(line: 1406, column: 26, scope: !2293)
!2297 = !DILocation(line: 1404, column: 7, scope: !2293)
!2298 = !DILocation(line: 1406, column: 2, scope: !2293)
!2299 = !DILocation(line: 1201, column: 39, scope: !2088, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 1241, column: 22, scope: !2301, inlinedAt: !2302)
!2301 = distinct !DISubprogram(name: "get_pdu_int", scope: !1, file: !1, line: 1239, type: !309, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2302 = distinct !DILocation(line: 1408, column: 42, scope: !2293)
!2303 = !DILocation(line: 1201, column: 47, scope: !2088, inlinedAt: !2300)
!2304 = !DILocation(line: 1201, column: 44, scope: !2088, inlinedAt: !2300)
!2305 = !DILocation(line: 1242, column: 9, scope: !2301, inlinedAt: !2302)
!2306 = !DILocation(line: 1408, column: 2, scope: !2293)
!2307 = !DILocation(line: 1409, column: 1, scope: !2293)
!2308 = distinct !DISubprogram(name: "blk_log_split", scope: !1, file: !1, line: 1411, type: !309, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2309 = !DILocation(line: 1412, scope: !2308)
!2310 = !DILocation(line: 1413, column: 2, scope: !2308)
!2311 = !DILocation(line: 1415, column: 26, scope: !2308)
!2312 = !DILocation(line: 1413, column: 7, scope: !2308)
!2313 = !DILocation(line: 1415, column: 2, scope: !2308)
!2314 = !DILocation(line: 1231, column: 31, scope: !2246, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 1417, column: 44, scope: !2308)
!2316 = !DILocation(line: 1201, column: 39, scope: !2088, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 1241, column: 22, scope: !2301, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 1418, column: 5, scope: !2308)
!2319 = !DILocation(line: 1201, column: 47, scope: !2088, inlinedAt: !2317)
!2320 = !DILocation(line: 1201, column: 44, scope: !2088, inlinedAt: !2317)
!2321 = !DILocation(line: 1242, column: 9, scope: !2301, inlinedAt: !2318)
!2322 = !DILocation(line: 1417, column: 2, scope: !2308)
!2323 = !DILocation(line: 1419, column: 1, scope: !2308)
!2324 = distinct !DISubprogram(name: "blk_log_remap", scope: !1, file: !1, line: 1382, type: !309, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2325 = !DILocation(line: 1383, scope: !2324)
!2326 = !DILocation(line: 1201, column: 39, scope: !2088, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1384, column: 41, scope: !2324)
!2328 = !DILocation(line: 1201, column: 47, scope: !2088, inlinedAt: !2327)
!2329 = !DILocation(line: 1201, column: 44, scope: !2088, inlinedAt: !2327)
!2330 = !DILocation(line: 1231, column: 31, scope: !2246, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 1387, column: 5, scope: !2324)
!2332 = !DILocation(line: 1226, column: 31, scope: !2240, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 1387, column: 20, scope: !2324)
!2334 = !DILocation(line: 1226, column: 37, scope: !2240, inlinedAt: !2333)
!2335 = !DILocation(line: 1388, column: 5, scope: !2324)
!2336 = !DILocation(line: 1389, column: 5, scope: !2324)
!2337 = !DILocation(line: 1390, column: 5, scope: !2324)
!2338 = !DILocation(line: 1386, column: 2, scope: !2324)
!2339 = !DILocation(line: 1391, column: 1, scope: !2324)
!2340 = distinct !DISubprogram(name: "blk_log_dump_pdu", scope: !1, file: !1, line: 1307, type: !309, scopeLine: 1309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2341 = !DILocation(line: 1309, scope: !2340)
!2342 = !DILocation(line: 1201, column: 39, scope: !2088, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 1314, column: 12, scope: !2340)
!2344 = !DILocation(line: 1201, column: 47, scope: !2088, inlinedAt: !2343)
!2345 = !DILocation(line: 1201, column: 44, scope: !2088, inlinedAt: !2343)
!2346 = !DILocation(line: 1211, column: 31, scope: !2095, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 1315, column: 12, scope: !2340)
!2348 = !DILocation(line: 1211, column: 9, scope: !2095, inlinedAt: !2347)
!2349 = !DILocation(line: 1211, column: 42, scope: !2095, inlinedAt: !2347)
!2350 = !DILocation(line: 1211, column: 39, scope: !2095, inlinedAt: !2347)
!2351 = !DILocation(line: 1317, column: 7, scope: !2340)
!2352 = !DILocation(line: 1317, column: 6, scope: !2340)
!2353 = !DILocation(line: 0, scope: !2340)
!2354 = !DILocation(line: 1318, column: 3, scope: !2340)
!2355 = !DILocation(line: 1321, column: 21, scope: !2340)
!2356 = !DILocation(line: 1321, column: 30, scope: !2340)
!2357 = !DILocation(line: 1321, column: 2, scope: !2340)
!2358 = !DILocation(line: 1326, column: 2, scope: !2340)
!2359 = !DILocation(line: 1328, column: 2, scope: !2340)
!2360 = !DILocation(line: 1322, column: 7, scope: !2340)
!2361 = !DILocation(line: 1323, column: 4, scope: !2340)
!2362 = !DILocation(line: 1322, column: 18, scope: !2340)
!2363 = !DILocation(line: 1321, column: 39, scope: !2340)
!2364 = distinct !{!2364, !2357, !2361}
!2365 = !DILocation(line: 1324, column: 5, scope: !2340)
!2366 = !DILocation(line: 1331, column: 8, scope: !2340)
!2367 = !DILocation(line: 1331, column: 6, scope: !2340)
!2368 = !DILocation(line: 1331, column: 25, scope: !2340)
!2369 = !DILocation(line: 1330, column: 3, scope: !2340)
!2370 = !DILocation(line: 1337, column: 9, scope: !2340)
!2371 = !DILocation(line: 1337, column: 16, scope: !2340)
!2372 = !DILocation(line: 1337, column: 19, scope: !2340)
!2373 = !DILocation(line: 1337, column: 7, scope: !2340)
!2374 = !DILocation(line: 1338, column: 19, scope: !2340)
!2375 = !DILocation(line: 1338, column: 4, scope: !2340)
!2376 = !DILocation(line: 1339, column: 4, scope: !2340)
!2377 = !DILocation(line: 1328, column: 28, scope: !2340)
!2378 = !DILocation(line: 1328, column: 16, scope: !2340)
!2379 = distinct !{!2379, !2359, !2380}
!2380 = !DILocation(line: 1341, column: 2, scope: !2340)
!2381 = !DILocation(line: 1343, column: 17, scope: !2340)
!2382 = !DILocation(line: 1343, column: 2, scope: !2340)
!2383 = !DILocation(line: 1344, column: 1, scope: !2340)
!2384 = distinct !DISubprogram(name: "blk_tracer_init", scope: !1, file: !1, line: 1447, type: !309, scopeLine: 1448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2385 = !DILocation(line: 1448, scope: !2384)
!2386 = !DILocation(line: 1449, column: 9, scope: !2384)
!2387 = !DILocation(line: 1444, column: 21, scope: !2388, inlinedAt: !2389)
!2388 = distinct !DISubprogram(name: "blk_tracer_start", scope: !1, file: !1, line: 1442, type: !309, scopeLine: 1443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2389 = distinct !DILocation(line: 1450, column: 2, scope: !2384)
!2390 = !DILocation(line: 1451, column: 2, scope: !2384)
!2391 = distinct !DISubprogram(name: "blk_tracer_reset", scope: !1, file: !1, line: 1459, type: !309, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2392 = !DILocation(line: 1460, scope: !2391)
!2393 = !DILocation(line: 1456, column: 21, scope: !2394, inlinedAt: !2395)
!2394 = distinct !DISubprogram(name: "blk_tracer_stop", scope: !1, file: !1, line: 1454, type: !309, scopeLine: 1455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2395 = distinct !DILocation(line: 1461, column: 2, scope: !2391)
!2396 = !DILocation(line: 1462, column: 1, scope: !2391)
!2397 = !DILocation(line: 1443, scope: !2388)
!2398 = !DILocation(line: 1444, column: 21, scope: !2388)
!2399 = !DILocation(line: 1445, column: 1, scope: !2388)
!2400 = !DILocation(line: 1455, scope: !2394)
!2401 = !DILocation(line: 1456, column: 21, scope: !2394)
!2402 = !DILocation(line: 1457, column: 1, scope: !2394)
!2403 = distinct !DISubprogram(name: "blk_tracer_print_header", scope: !1, file: !1, line: 1434, type: !309, scopeLine: 1435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2404 = !DILocation(line: 1435, scope: !2403)
!2405 = !DILocation(line: 1436, column: 25, scope: !2403)
!2406 = !DILocation(line: 1436, column: 29, scope: !2403)
!2407 = !DILocation(line: 1436, column: 6, scope: !2403)
!2408 = !DILocation(line: 1437, column: 3, scope: !2403)
!2409 = !DILocation(line: 1438, column: 11, scope: !2403)
!2410 = !DILocation(line: 1438, column: 2, scope: !2403)
!2411 = !DILocation(line: 1440, column: 1, scope: !2403)
!2412 = distinct !DISubprogram(name: "blk_tracer_print_line", scope: !1, file: !1, line: 1549, type: !309, scopeLine: 1550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2413 = !DILocation(line: 1550, scope: !2412)
!2414 = !DILocation(line: 1551, column: 25, scope: !2412)
!2415 = !DILocation(line: 1551, column: 29, scope: !2412)
!2416 = !DILocation(line: 1551, column: 6, scope: !2412)
!2417 = !DILocation(line: 1552, column: 3, scope: !2412)
!2418 = !DILocation(line: 1554, column: 24, scope: !2412)
!2419 = !DILocation(line: 1554, column: 9, scope: !2412)
!2420 = !DILocation(line: 1554, column: 2, scope: !2412)
!2421 = !DILocation(line: 0, scope: !2412)
!2422 = !DILocation(line: 1555, column: 1, scope: !2412)
!2423 = distinct !DISubprogram(name: "blk_tracer_set_flag", scope: !1, file: !1, line: 1558, type: !309, scopeLine: 1559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2424 = !DILocation(line: 1559, scope: !2423)
!2425 = !DILocation(line: 1561, column: 10, scope: !2423)
!2426 = !DILocation(line: 1561, column: 6, scope: !2423)
!2427 = !DILocation(line: 1562, column: 7, scope: !2423)
!2428 = !DILocation(line: 1563, column: 4, scope: !2423)
!2429 = !DILocation(line: 1563, column: 8, scope: !2423)
!2430 = !DILocation(line: 1563, column: 20, scope: !2423)
!2431 = !DILocation(line: 1565, column: 4, scope: !2423)
!2432 = !DILocation(line: 1565, column: 8, scope: !2423)
!2433 = !DILocation(line: 1565, column: 20, scope: !2423)
!2434 = !DILocation(line: 1567, column: 2, scope: !2423)
!2435 = distinct !DISubprogram(name: "sysfs_blk_trace_attr_show", scope: !1, file: !1, line: 1772, type: !309, scopeLine: 1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2436 = !DILocation(line: 1775, scope: !2435)
!2437 = !DILocation(line: 626, column: 15, scope: !869, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 1777, column: 28, scope: !2435)
!2439 = !DILocation(line: 1781, column: 2, scope: !2435)
!2440 = !DILocation(line: 1783, column: 7, scope: !2435)
!2441 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 1783, column: 7, scope: !2435)
!2443 = !DILocation(line: 1785, column: 11, scope: !2435)
!2444 = !DILocation(line: 1785, column: 6, scope: !2435)
!2445 = !DILocation(line: 1786, column: 17, scope: !2435)
!2446 = !DILocation(line: 1786, column: 31, scope: !2435)
!2447 = !DILocation(line: 1786, column: 30, scope: !2435)
!2448 = !DILocation(line: 1786, column: 9, scope: !2435)
!2449 = !DILocation(line: 1787, column: 3, scope: !2435)
!2450 = !DILocation(line: 1790, column: 9, scope: !2435)
!2451 = !DILocation(line: 1790, column: 6, scope: !2435)
!2452 = !DILocation(line: 1791, column: 17, scope: !2435)
!2453 = !DILocation(line: 1791, column: 9, scope: !2435)
!2454 = !DILocation(line: 1791, column: 3, scope: !2435)
!2455 = !DILocation(line: 1792, column: 16, scope: !2435)
!2456 = !DILocation(line: 1792, column: 11, scope: !2435)
!2457 = !DILocation(line: 1793, column: 28, scope: !2435)
!2458 = !DILocation(line: 1793, column: 37, scope: !2435)
!2459 = !DILocation(line: 1793, column: 33, scope: !2435)
!2460 = !DILocation(line: 1761, column: 2, scope: !2461, inlinedAt: !2462)
!2461 = distinct !DISubprogram(name: "blk_trace_mask2str", scope: !1, file: !1, line: 1756, type: !309, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2462 = distinct !DILocation(line: 1793, column: 9, scope: !2435)
!2463 = !DILocation(line: 1762, column: 14, scope: !2461, inlinedAt: !2462)
!2464 = !DILocation(line: 1762, column: 27, scope: !2461, inlinedAt: !2462)
!2465 = !DILocation(line: 1762, column: 12, scope: !2461, inlinedAt: !2462)
!2466 = !DILocation(line: 1762, column: 7, scope: !2461, inlinedAt: !2462)
!2467 = !DILocation(line: 1763, column: 17, scope: !2461, inlinedAt: !2462)
!2468 = !DILocation(line: 1764, column: 12, scope: !2461, inlinedAt: !2462)
!2469 = !DILocation(line: 1764, column: 9, scope: !2461, inlinedAt: !2462)
!2470 = !DILocation(line: 1764, column: 45, scope: !2461, inlinedAt: !2462)
!2471 = !DILocation(line: 1763, column: 9, scope: !2461, inlinedAt: !2462)
!2472 = !DILocation(line: 1763, column: 6, scope: !2461, inlinedAt: !2462)
!2473 = !DILocation(line: 1765, column: 3, scope: !2461, inlinedAt: !2462)
!2474 = !DILocation(line: 0, scope: !2461, inlinedAt: !2462)
!2475 = !DILocation(line: 1761, column: 42, scope: !2461, inlinedAt: !2462)
!2476 = !DILocation(line: 1761, column: 16, scope: !2461, inlinedAt: !2462)
!2477 = distinct !{!2477, !2460, !2478}
!2478 = !DILocation(line: 1766, column: 2, scope: !2461, inlinedAt: !2462)
!2479 = !DILocation(line: 1767, column: 4, scope: !2461, inlinedAt: !2462)
!2480 = !DILocation(line: 1767, column: 7, scope: !2461, inlinedAt: !2462)
!2481 = !DILocation(line: 1769, column: 11, scope: !2461, inlinedAt: !2462)
!2482 = !DILocation(line: 1793, column: 3, scope: !2435)
!2483 = !DILocation(line: 1794, column: 16, scope: !2435)
!2484 = !DILocation(line: 1794, column: 11, scope: !2435)
!2485 = !DILocation(line: 1795, column: 17, scope: !2435)
!2486 = !DILocation(line: 1795, column: 34, scope: !2435)
!2487 = !DILocation(line: 1795, column: 9, scope: !2435)
!2488 = !DILocation(line: 1795, column: 3, scope: !2435)
!2489 = !DILocation(line: 1796, column: 16, scope: !2435)
!2490 = !DILocation(line: 1796, column: 11, scope: !2435)
!2491 = !DILocation(line: 1797, column: 17, scope: !2435)
!2492 = !DILocation(line: 1797, column: 36, scope: !2435)
!2493 = !DILocation(line: 1797, column: 9, scope: !2435)
!2494 = !DILocation(line: 1797, column: 3, scope: !2435)
!2495 = !DILocation(line: 1798, column: 16, scope: !2435)
!2496 = !DILocation(line: 1798, column: 11, scope: !2435)
!2497 = !DILocation(line: 1799, column: 17, scope: !2435)
!2498 = !DILocation(line: 1799, column: 36, scope: !2435)
!2499 = !DILocation(line: 1799, column: 9, scope: !2435)
!2500 = !DILocation(line: 1799, column: 3, scope: !2435)
!2501 = !DILocation(line: 0, scope: !2435)
!2502 = !DILocation(line: 1802, column: 2, scope: !2435)
!2503 = !DILocation(line: 1803, column: 2, scope: !2435)
!2504 = distinct !DISubprogram(name: "sysfs_blk_trace_attr_store", scope: !1, file: !1, line: 1806, type: !309, scopeLine: 1809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2505 = !DILocation(line: 1809, scope: !2504)
!2506 = !DILocation(line: 1810, column: 30, scope: !2504)
!2507 = !DILocation(line: 626, column: 15, scope: !869, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 1811, column: 28, scope: !2504)
!2509 = !DILocation(line: 1813, column: 2, scope: !2504)
!2510 = !DILocation(line: 1813, column: 6, scope: !2504)
!2511 = !DILocation(line: 1816, column: 12, scope: !2504)
!2512 = !DILocation(line: 1816, column: 6, scope: !2504)
!2513 = !DILocation(line: 1817, column: 3, scope: !2504)
!2514 = !DILocation(line: 1819, column: 11, scope: !2504)
!2515 = !DILocation(line: 0, scope: !2504)
!2516 = !DILocation(line: 1819, column: 6, scope: !2504)
!2517 = !DILocation(line: 1820, column: 7, scope: !2504)
!2518 = !DILocation(line: 1725, column: 2, scope: !2519, inlinedAt: !2520)
!2519 = distinct !DISubprogram(name: "blk_trace_str2mask", scope: !1, file: !1, line: 1721, type: !309, scopeLine: 1722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2520 = distinct !DILocation(line: 1822, column: 10, scope: !2504)
!2521 = !DILocation(line: 1727, column: 8, scope: !2519, inlinedAt: !2520)
!2522 = !DILocation(line: 1728, column: 10, scope: !2519, inlinedAt: !2520)
!2523 = !DILocation(line: 1728, column: 6, scope: !2519, inlinedAt: !2520)
!2524 = !DILocation(line: 1729, column: 3, scope: !2519, inlinedAt: !2520)
!2525 = !DILocation(line: 1754, column: 1, scope: !2519, inlinedAt: !2520)
!2526 = !DILocation(line: 1823, column: 8, scope: !2504)
!2527 = !DILocation(line: 78, column: 9, scope: !2528, inlinedAt: !2530)
!2528 = distinct !DISubprogram(name: "strstrip", scope: !2529, file: !2529, line: 76, type: !309, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2529 = !DIFile(filename: "../include/linux/string.h", directory: "/llk/linux-5.17/build_arm_allyes")
!2530 = distinct !DILocation(line: 1730, column: 6, scope: !2519, inlinedAt: !2520)
!2531 = !DILocation(line: 1730, column: 4, scope: !2519, inlinedAt: !2520)
!2532 = !DILocation(line: 1733, column: 11, scope: !2519, inlinedAt: !2520)
!2533 = !DILocation(line: 1734, column: 13, scope: !2519, inlinedAt: !2520)
!2534 = !DILocation(line: 1734, column: 7, scope: !2519, inlinedAt: !2520)
!2535 = !DILocation(line: 1737, column: 7, scope: !2519, inlinedAt: !2520)
!2536 = !DILocation(line: 1737, column: 14, scope: !2519, inlinedAt: !2520)
!2537 = !DILocation(line: 1738, column: 4, scope: !2519, inlinedAt: !2520)
!2538 = distinct !{!2538, !2539, !2540}
!2539 = !DILocation(line: 1732, column: 2, scope: !2519, inlinedAt: !2520)
!2540 = !DILocation(line: 1750, column: 2, scope: !2519, inlinedAt: !2520)
!2541 = !DILocation(line: 1741, column: 39, scope: !2519, inlinedAt: !2520)
!2542 = !DILocation(line: 1741, column: 8, scope: !2519, inlinedAt: !2520)
!2543 = !DILocation(line: 1741, column: 44, scope: !2519, inlinedAt: !2520)
!2544 = !DILocation(line: 1745, column: 3, scope: !2519, inlinedAt: !2520)
!2545 = !DILocation(line: 1740, column: 43, scope: !2519, inlinedAt: !2520)
!2546 = !DILocation(line: 1740, column: 17, scope: !2519, inlinedAt: !2520)
!2547 = !DILocation(line: 1740, column: 3, scope: !2519, inlinedAt: !2520)
!2548 = distinct !{!2548, !2547, !2544}
!2549 = !DILocation(line: 1741, column: 26, scope: !2519, inlinedAt: !2520)
!2550 = !DILocation(line: 1742, column: 23, scope: !2519, inlinedAt: !2520)
!2551 = !DILocation(line: 1742, column: 26, scope: !2519, inlinedAt: !2520)
!2552 = !DILocation(line: 1742, column: 10, scope: !2519, inlinedAt: !2520)
!2553 = distinct !{!2553, !2539, !2540}
!2554 = !DILocation(line: 0, scope: !2519, inlinedAt: !2520)
!2555 = !DILocation(line: 1751, column: 2, scope: !2519, inlinedAt: !2520)
!2556 = !DILocation(line: 1823, column: 12, scope: !2504)
!2557 = !DILocation(line: 1824, column: 5, scope: !2504)
!2558 = !DILocation(line: 1825, column: 12, scope: !2504)
!2559 = !DILocation(line: 1825, column: 10, scope: !2504)
!2560 = !DILocation(line: 1826, column: 3, scope: !2504)
!2561 = !DILocation(line: 1828, column: 7, scope: !2504)
!2562 = !DILocation(line: 1829, column: 4, scope: !2504)
!2563 = !DILocation(line: 1832, column: 2, scope: !2504)
!2564 = !DILocation(line: 1834, column: 7, scope: !2504)
!2565 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1834, column: 7, scope: !2504)
!2567 = !DILocation(line: 1836, column: 11, scope: !2504)
!2568 = !DILocation(line: 1836, column: 6, scope: !2504)
!2569 = !DILocation(line: 1837, column: 9, scope: !2504)
!2570 = !DILocation(line: 1837, column: 8, scope: !2504)
!2571 = !DILocation(line: 1837, column: 19, scope: !2504)
!2572 = !DILocation(line: 1837, column: 15, scope: !2504)
!2573 = !DILocation(line: 1837, column: 7, scope: !2504)
!2574 = !DILocation(line: 1838, column: 8, scope: !2504)
!2575 = !DILocation(line: 1839, column: 4, scope: !2504)
!2576 = !DILocation(line: 1841, column: 7, scope: !2504)
!2577 = !DILocation(line: 1844, column: 33, scope: !2504)
!2578 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1614, column: 7, scope: !2580, inlinedAt: !2581)
!2580 = distinct !DISubprogram(name: "blk_trace_remove_queue", scope: !1, file: !1, line: 1610, type: !309, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2581 = distinct !DILocation(line: 1844, column: 10, scope: !2504)
!2582 = !DILocation(line: 1614, column: 7, scope: !2580, inlinedAt: !2581)
!2583 = !DILocation(line: 1616, column: 9, scope: !2580, inlinedAt: !2581)
!2584 = !DILocation(line: 1616, column: 6, scope: !2580, inlinedAt: !2581)
!2585 = !DILocation(line: 1617, column: 3, scope: !2580, inlinedAt: !2581)
!2586 = !DILocation(line: 1619, column: 10, scope: !2580, inlinedAt: !2581)
!2587 = !DILocation(line: 1619, column: 22, scope: !2580, inlinedAt: !2581)
!2588 = !DILocation(line: 1619, column: 6, scope: !2580, inlinedAt: !2581)
!2589 = !DILocation(line: 1620, column: 3, scope: !2580, inlinedAt: !2581)
!2590 = !DILocation(line: 1620, column: 19, scope: !2580, inlinedAt: !2581)
!2591 = !DILocation(line: 1621, column: 3, scope: !2580, inlinedAt: !2581)
!2592 = !DILocation(line: 1622, column: 22, scope: !2580, inlinedAt: !2581)
!2593 = !DILocation(line: 134, column: 7, scope: !840, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 206, column: 2, scope: !842, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1622, column: 3, scope: !2580, inlinedAt: !2581)
!2596 = !DILocation(line: 134, column: 6, scope: !840, inlinedAt: !2594)
!2597 = !DILocation(line: 135, column: 3, scope: !840, inlinedAt: !2594)
!2598 = !DILocation(line: 137, column: 13, scope: !840, inlinedAt: !2594)
!2599 = !DILocation(line: 137, column: 20, scope: !840, inlinedAt: !2594)
!2600 = !DILocation(line: 137, column: 33, scope: !840, inlinedAt: !2594)
!2601 = !DILocation(line: 114, column: 8, scope: !850, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 137, column: 2, scope: !840, inlinedAt: !2594)
!2603 = !DILocation(line: 114, column: 13, scope: !850, inlinedAt: !2602)
!2604 = !DILocation(line: 115, column: 2, scope: !850, inlinedAt: !2602)
!2605 = !DILocation(line: 138, column: 1, scope: !840, inlinedAt: !2594)
!2606 = !DILocation(line: 37, column: 2, scope: !672, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 207, column: 2, scope: !842, inlinedAt: !2595)
!2608 = !DILocation(line: 38, column: 8, scope: !672, inlinedAt: !2607)
!2609 = !DILocation(line: 38, column: 13, scope: !672, inlinedAt: !2607)
!2610 = !DILocation(line: 1623, column: 3, scope: !2580, inlinedAt: !2581)
!2611 = !DILocation(line: 1624, column: 19, scope: !2580, inlinedAt: !2581)
!2612 = !DILocation(line: 1624, column: 3, scope: !2580, inlinedAt: !2581)
!2613 = !DILocation(line: 1625, column: 2, scope: !2580, inlinedAt: !2581)
!2614 = !DILocation(line: 1627, column: 2, scope: !2580, inlinedAt: !2581)
!2615 = !DILocation(line: 1628, column: 2, scope: !2580, inlinedAt: !2581)
!2616 = !DILocation(line: 1629, column: 2, scope: !2580, inlinedAt: !2581)
!2617 = !DILocation(line: 1630, column: 2, scope: !2580, inlinedAt: !2581)
!2618 = !DILocation(line: 1849, column: 9, scope: !2504)
!2619 = !DILocation(line: 1849, column: 6, scope: !2504)
!2620 = !DILocation(line: 1850, column: 9, scope: !2504)
!2621 = !DILocation(line: 283, column: 9, scope: !502, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1851, column: 8, scope: !2504)
!2623 = !DILocation(line: 1851, column: 8, scope: !2504)
!2624 = !DILocation(line: 1855, column: 10, scope: !2504)
!2625 = !DILocation(line: 1855, column: 6, scope: !2504)
!2626 = !DILocation(line: 1856, column: 7, scope: !2504)
!2627 = !DILocation(line: 1857, column: 19, scope: !2504)
!2628 = !DILocation(line: 1857, column: 8, scope: !2504)
!2629 = !DILocation(line: 1857, column: 17, scope: !2504)
!2630 = !DILocation(line: 1857, column: 4, scope: !2504)
!2631 = !DILocation(line: 1858, column: 17, scope: !2504)
!2632 = !DILocation(line: 1858, column: 12, scope: !2504)
!2633 = !DILocation(line: 1859, column: 14, scope: !2504)
!2634 = !DILocation(line: 1859, column: 8, scope: !2504)
!2635 = !DILocation(line: 1859, column: 12, scope: !2504)
!2636 = !DILocation(line: 1859, column: 4, scope: !2504)
!2637 = !DILocation(line: 1860, column: 17, scope: !2504)
!2638 = !DILocation(line: 1860, column: 12, scope: !2504)
!2639 = !DILocation(line: 1861, column: 20, scope: !2504)
!2640 = !DILocation(line: 1861, column: 8, scope: !2504)
!2641 = !DILocation(line: 1861, column: 18, scope: !2504)
!2642 = !DILocation(line: 1861, column: 4, scope: !2504)
!2643 = !DILocation(line: 1862, column: 17, scope: !2504)
!2644 = !DILocation(line: 1862, column: 12, scope: !2504)
!2645 = !DILocation(line: 1863, column: 18, scope: !2504)
!2646 = !DILocation(line: 1863, column: 8, scope: !2504)
!2647 = !DILocation(line: 1863, column: 16, scope: !2504)
!2648 = !DILocation(line: 1863, column: 4, scope: !2504)
!2649 = !DILocation(line: 1867, column: 2, scope: !2504)
!2650 = !DILocation(line: 1869, column: 9, scope: !2504)
!2651 = !DILocation(line: 1842, column: 32, scope: !2504)
!2652 = !DILocation(line: 1842, column: 10, scope: !2504)
!2653 = !DILocation(line: 1869, column: 21, scope: !2504)
!2654 = !DILocation(line: 1870, column: 1, scope: !2504)
!2655 = !DILocation(line: 1869, column: 2, scope: !2504)
!2656 = distinct !DISubprogram(name: "blk_trace_setup_queue", scope: !1, file: !1, line: 1636, type: !309, scopeLine: 1638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!2657 = !DILocation(line: 1638, scope: !2656)
!2658 = !DILocation(line: 376, column: 3, scope: !607, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 576, column: 11, scope: !610, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 714, column: 9, scope: !612, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1642, column: 7, scope: !2656)
!2662 = !DILocation(line: 582, column: 33, scope: !610, inlinedAt: !2660)
!2663 = !DILocation(line: 339, column: 3, scope: !616, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 582, column: 20, scope: !610, inlinedAt: !2660)
!2665 = !DILocation(line: 582, column: 5, scope: !610, inlinedAt: !2660)
!2666 = !DILocation(line: 581, column: 10, scope: !610, inlinedAt: !2660)
!2667 = !DILocation(line: 1643, column: 7, scope: !2656)
!2668 = !DILocation(line: 1643, column: 6, scope: !2656)
!2669 = !DILocation(line: 1644, column: 3, scope: !2656)
!2670 = !DILocation(line: 1646, column: 17, scope: !2656)
!2671 = !DILocation(line: 1646, column: 6, scope: !2656)
!2672 = !DILocation(line: 1646, column: 15, scope: !2656)
!2673 = !DILocation(line: 1647, column: 7, scope: !2656)
!2674 = !DILocation(line: 1647, column: 6, scope: !2656)
!2675 = !DILocation(line: 1650, column: 18, scope: !2656)
!2676 = !DILocation(line: 1650, column: 6, scope: !2656)
!2677 = !DILocation(line: 1650, column: 10, scope: !2656)
!2678 = !DILocation(line: 1651, column: 6, scope: !2656)
!2679 = !DILocation(line: 1651, column: 15, scope: !2656)
!2680 = !DILocation(line: 470, column: 6, scope: !695, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1653, column: 2, scope: !2656)
!2682 = !DILocation(line: 471, column: 19, scope: !695, inlinedAt: !2681)
!2683 = !DILocation(line: 471, column: 25, scope: !695, inlinedAt: !2681)
!2684 = !DILocation(line: 205, column: 15, scope: !700, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 472, column: 39, scope: !695, inlinedAt: !2681)
!2686 = !DILocation(line: 472, column: 37, scope: !695, inlinedAt: !2681)
!2687 = !DILocation(line: 473, column: 2, scope: !695, inlinedAt: !2681)
!2688 = !DILocation(line: 474, column: 3, scope: !695, inlinedAt: !2681)
!2689 = !DILocation(line: 0, scope: !695, inlinedAt: !2681)
!2690 = !DILocation(line: 474, column: 7, scope: !695, inlinedAt: !2681)
!2691 = !DILocation(line: 474, column: 17, scope: !695, inlinedAt: !2681)
!2692 = !DILocation(line: 475, column: 7, scope: !695, inlinedAt: !2681)
!2693 = !DILocation(line: 475, column: 15, scope: !695, inlinedAt: !2681)
!2694 = !DILocation(line: 1655, column: 2, scope: !2656)
!2695 = !{i64 2156623599}
!2696 = !DILocation(line: 1656, column: 2, scope: !2656)
!2697 = !DILocation(line: 1657, column: 2, scope: !2656)
!2698 = !DILocation(line: 1660, column: 17, scope: !2656)
!2699 = !DILocation(line: 1660, column: 2, scope: !2656)
!2700 = !DILocation(line: 1661, column: 2, scope: !2656)
!2701 = !DILocation(line: 0, scope: !2656)
!2702 = !DILocation(line: 1662, column: 1, scope: !2656)
