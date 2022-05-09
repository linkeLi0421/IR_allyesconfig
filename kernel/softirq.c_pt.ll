; ModuleID = '/llk/IR_all_yes/kernel/softirq.c_pt.bc'
source_filename = "../kernel/softirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+irq_stat\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_stat\09\09\09\09"
module asm "\09.long\09__crc_irq_stat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_stat\22\09\09\09\09\09"
module asm "__kstrtabns_irq_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hardirqs_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_hardirqs_enabled\09\09\09\09"
module asm "\09.long\09__crc_hardirqs_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hardirqs_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22hardirqs_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_hardirqs_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hardirq_context\22, \22a\22\09"
module asm "\09.weak\09__crc_hardirq_context\09\09\09\09"
module asm "\09.long\09__crc_hardirq_context\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hardirq_context:\09\09\09\09\09"
module asm "\09.asciz \09\22hardirq_context\22\09\09\09\09\09"
module asm "__kstrtabns_hardirq_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__local_bh_disable_ip\22, \22a\22\09"
module asm "\09.weak\09__crc___local_bh_disable_ip\09\09\09\09"
module asm "\09.long\09__crc___local_bh_disable_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___local_bh_disable_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22__local_bh_disable_ip\22\09\09\09\09\09"
module asm "__kstrtabns___local_bh_disable_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_local_bh_enable\22, \22a\22\09"
module asm "\09.weak\09__crc__local_bh_enable\09\09\09\09"
module asm "\09.long\09__crc__local_bh_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__local_bh_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22_local_bh_enable\22\09\09\09\09\09"
module asm "__kstrtabns__local_bh_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__local_bh_enable_ip\22, \22a\22\09"
module asm "\09.weak\09__crc___local_bh_enable_ip\09\09\09\09"
module asm "\09.long\09__crc___local_bh_enable_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___local_bh_enable_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22__local_bh_enable_ip\22\09\09\09\09\09"
module asm "__kstrtabns___local_bh_enable_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tasklet_schedule\22, \22a\22\09"
module asm "\09.weak\09__crc___tasklet_schedule\09\09\09\09"
module asm "\09.long\09__crc___tasklet_schedule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tasklet_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__tasklet_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___tasklet_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tasklet_hi_schedule\22, \22a\22\09"
module asm "\09.weak\09__crc___tasklet_hi_schedule\09\09\09\09"
module asm "\09.long\09__crc___tasklet_hi_schedule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tasklet_hi_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__tasklet_hi_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___tasklet_hi_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tasklet_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_tasklet_setup\09\09\09\09"
module asm "\09.long\09__crc_tasklet_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_setup\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tasklet_init\22, \22a\22\09"
module asm "\09.weak\09__crc_tasklet_init\09\09\09\09"
module asm "\09.long\09__crc_tasklet_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_init\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tasklet_unlock_spin_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_tasklet_unlock_spin_wait\09\09\09\09"
module asm "\09.long\09__crc_tasklet_unlock_spin_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_unlock_spin_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_unlock_spin_wait\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_unlock_spin_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tasklet_kill\22, \22a\22\09"
module asm "\09.weak\09__crc_tasklet_kill\09\09\09\09"
module asm "\09.long\09__crc_tasklet_kill\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_kill\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tasklet_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_tasklet_unlock\09\09\09\09"
module asm "\09.long\09__crc_tasklet_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tasklet_unlock_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_tasklet_unlock_wait\09\09\09\09"
module asm "\09.long\09__crc_tasklet_unlock_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_unlock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_unlock_wait\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_unlock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.irq_cpustat_t = type { i32, [124 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.softirq_action = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tasklet_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.trace_print_flags = type { i32, ptr }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }
%struct.trace_event_raw_irq_handler_entry = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_irq_handler_exit = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_softirq = type { %struct.trace_entry, i32, [0 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%union.anon.104 = type { ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_irq_handler_entry = internal constant [18 x i8] c"irq_handler_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irq_handler_entry = dso_local global %struct.static_call_key { ptr @__traceiter_irq_handler_entry }, align 4
@__tracepoint_irq_handler_entry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irq_handler_entry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irq_handler_entry, ptr null, ptr @__traceiter_irq_handler_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irq_handler_entry = internal constant ptr @__tracepoint_irq_handler_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_irq_handler_exit = internal constant [17 x i8] c"irq_handler_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irq_handler_exit = dso_local global %struct.static_call_key { ptr @__traceiter_irq_handler_exit }, align 4
@__tracepoint_irq_handler_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_irq_handler_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_irq_handler_exit, ptr null, ptr @__traceiter_irq_handler_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irq_handler_exit = internal constant ptr @__tracepoint_irq_handler_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_softirq_entry = internal constant [14 x i8] c"softirq_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_softirq_entry = dso_local global %struct.static_call_key { ptr @__traceiter_softirq_entry }, align 4
@__tracepoint_softirq_entry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_softirq_entry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_softirq_entry, ptr null, ptr @__traceiter_softirq_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_softirq_entry = internal constant ptr @__tracepoint_softirq_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_softirq_exit = internal constant [13 x i8] c"softirq_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_softirq_exit = dso_local global %struct.static_call_key { ptr @__traceiter_softirq_exit }, align 4
@__tracepoint_softirq_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_softirq_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_softirq_exit, ptr null, ptr @__traceiter_softirq_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_softirq_exit = internal constant ptr @__tracepoint_softirq_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_softirq_raise = internal constant [14 x i8] c"softirq_raise\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_softirq_raise = dso_local global %struct.static_call_key { ptr @__traceiter_softirq_raise }, align 4
@__tracepoint_softirq_raise = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_softirq_raise, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_softirq_raise, ptr null, ptr @__traceiter_softirq_raise, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_softirq_raise = internal constant ptr @__tracepoint_softirq_raise, section "__tracepoints_ptrs", align 4
@str__irq__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HI_SOFTIRQ\00", [21 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HI_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_HI_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_HI_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TIMER_SOFTIRQ\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TIMER_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_TIMER_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_TIMER_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NET_TX_SOFTIRQ\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_NET_TX_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_NET_TX_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_NET_TX_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NET_RX_SOFTIRQ\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_NET_RX_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_NET_RX_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_NET_RX_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BLOCK_SOFTIRQ\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_BLOCK_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.4, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_BLOCK_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_BLOCK_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ_POLL_SOFTIRQ\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IRQ_POLL_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TASKLET_SOFTIRQ\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TASKLET_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.6, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_TASKLET_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_TASKLET_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCHED_SOFTIRQ\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_SCHED_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.7, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_SCHED_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_SCHED_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HRTIMER_SOFTIRQ\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_HRTIMER_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.8, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_HRTIMER_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_HRTIMER_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RCU_SOFTIRQ\00", [20 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_RCU_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__irq__trace_system_name, ptr @.str.9, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_RCU_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_RCU_SOFTIRQ, section "_ftrace_eval_map", align 4
@trace_event_fields_irq_handler_entry = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.95 { %struct.anon.96 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_irq_handler_entry = internal global %struct.trace_event_class { ptr @str__irq__trace_system_name, ptr @trace_event_raw_event_irq_handler_entry, ptr @perf_trace_irq_handler_entry, ptr @trace_event_reg, ptr @trace_event_fields_irq_handler_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irq_handler_entry, i64 24), ptr getelementptr (i8, ptr @event_class_irq_handler_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irq_handler_entry = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irq_handler_entry, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irq_handler_entry = internal global { [44 x i8], [52 x i8] } { [44 x i8] c"\22irq=%d name=%s\22, REC->irq, __get_str(name)\00", [52 x i8] zeroinitializer }, align 32
@event_irq_handler_entry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irq_handler_entry, %union.anon.97 { ptr @__tracepoint_irq_handler_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irq_handler_entry }, ptr @print_fmt_irq_handler_entry, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irq_handler_entry = internal global ptr @event_irq_handler_entry, section "_ftrace_events", align 4
@trace_event_fields_irq_handler_exit = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.95 { %struct.anon.96 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_irq_handler_exit = internal global %struct.trace_event_class { ptr @str__irq__trace_system_name, ptr @trace_event_raw_event_irq_handler_exit, ptr @perf_trace_irq_handler_exit, ptr @trace_event_reg, ptr @trace_event_fields_irq_handler_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irq_handler_exit, i64 24), ptr getelementptr (i8, ptr @event_class_irq_handler_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irq_handler_exit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_irq_handler_exit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_irq_handler_exit = internal global { [62 x i8], [34 x i8] } { [62 x i8] c"\22irq=%d ret=%s\22, REC->irq, REC->ret ? \22handled\22 : \22unhandled\22\00", [34 x i8] zeroinitializer }, align 32
@event_irq_handler_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irq_handler_exit, %union.anon.97 { ptr @__tracepoint_irq_handler_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irq_handler_exit }, ptr @print_fmt_irq_handler_exit, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_irq_handler_exit = internal global ptr @event_irq_handler_exit, section "_ftrace_events", align 4
@trace_event_fields_softirq = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.41, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_softirq = internal global %struct.trace_event_class { ptr @str__irq__trace_system_name, ptr @trace_event_raw_event_softirq, ptr @perf_trace_softirq, ptr @trace_event_reg, ptr @trace_event_fields_softirq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_softirq, i64 24), ptr getelementptr (i8, ptr @event_class_softirq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_softirq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_softirq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_softirq = internal global { [347 x i8], [69 x i8] } { [347 x i8] c"\22vec=%u [action=%s]\22, REC->vec, __print_symbolic(REC->vec, { HI_SOFTIRQ, \22HI\22 }, { TIMER_SOFTIRQ, \22TIMER\22 }, { NET_TX_SOFTIRQ, \22NET_TX\22 }, { NET_RX_SOFTIRQ, \22NET_RX\22 }, { BLOCK_SOFTIRQ, \22BLOCK\22 }, { IRQ_POLL_SOFTIRQ, \22IRQ_POLL\22 }, { TASKLET_SOFTIRQ, \22TASKLET\22 }, { SCHED_SOFTIRQ, \22SCHED\22 }, { HRTIMER_SOFTIRQ, \22HRTIMER\22 }, { RCU_SOFTIRQ, \22RCU\22 })\00", [69 x i8] zeroinitializer }, align 32
@event_softirq_entry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_softirq, %union.anon.97 { ptr @__tracepoint_softirq_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_softirq }, ptr @print_fmt_softirq, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_softirq_entry = internal global ptr @event_softirq_entry, section "_ftrace_events", align 4
@event_softirq_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_softirq, %union.anon.97 { ptr @__tracepoint_softirq_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_softirq }, ptr @print_fmt_softirq, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_softirq_exit = internal global ptr @event_softirq_exit, section "_ftrace_events", align 4
@event_softirq_raise = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_softirq, %union.anon.97 { ptr @__tracepoint_softirq_raise }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_softirq }, ptr @print_fmt_softirq, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_softirq_raise = internal global ptr @event_softirq_raise, section "_ftrace_events", align 4
@__bpf_trace_tp_map_irq_handler_entry = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_irq_handler_entry, ptr @__bpf_trace_irq_handler_entry, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_irq_handler_exit = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_irq_handler_exit, ptr @__bpf_trace_irq_handler_exit, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_softirq_entry = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_softirq_entry, ptr @__bpf_trace_softirq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_softirq_exit = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_softirq_exit, ptr @__bpf_trace_softirq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_softirq_raise = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_softirq_raise, ptr @__bpf_trace_softirq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@irq_stat = weak dso_local global %struct.irq_cpustat_t zeroinitializer, section ".data..percpu..shared_aligned", align 128
@__kstrtab_irq_stat = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_stat = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_stat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_stat to i32), ptr @__kstrtab_irq_stat, ptr @__kstrtabns_irq_stat }, section "___ksymtab+irq_stat", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HI\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TIMER\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NET_TX\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NET_RX\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BLOCK\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ_POLL\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TASKLET\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SCHED\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HRTIMER\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCU\00", [28 x i8] zeroinitializer }, align 32
@softirq_to_name = dso_local constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [56 x i8] zeroinitializer }, align 32
@hardirqs_enabled = weak dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_hardirqs_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_hardirqs_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_hardirqs_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hardirqs_enabled to i32), ptr @__kstrtab_hardirqs_enabled, ptr @__kstrtabns_hardirqs_enabled }, section "___ksymtab_gpl+hardirqs_enabled", align 4
@hardirq_context = weak dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_hardirq_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_hardirq_context = external dso_local constant [0 x i8], align 1
@__ksymtab_hardirq_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hardirq_context to i32), ptr @__kstrtab_hardirq_context, ptr @__kstrtabns_hardirq_context }, section "___ksymtab_gpl+hardirq_context", align 4
@__local_bh_disable_ip.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/softirq.c\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab___local_bh_disable_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns___local_bh_disable_ip = external dso_local constant [0 x i8], align 1
@__ksymtab___local_bh_disable_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__local_bh_disable_ip to i32), ptr @__kstrtab___local_bh_disable_ip, ptr @__kstrtabns___local_bh_disable_ip }, section "___ksymtab+__local_bh_disable_ip", align 4
@_local_bh_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab__local_bh_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns__local_bh_enable = external dso_local constant [0 x i8], align 1
@__ksymtab__local_bh_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_local_bh_enable to i32), ptr @__kstrtab__local_bh_enable, ptr @__kstrtabns__local_bh_enable }, section "___ksymtab+_local_bh_enable", align 4
@__local_bh_enable_ip.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__local_bh_enable_ip.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab___local_bh_enable_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns___local_bh_enable_ip = external dso_local constant [0 x i8], align 1
@__ksymtab___local_bh_enable_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__local_bh_enable_ip to i32), ptr @__kstrtab___local_bh_enable_ip, ptr @__kstrtabns___local_bh_enable_ip }, section "___ksymtab+__local_bh_enable_ip", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@softirq_vec = internal global [10 x %struct.softirq_action] zeroinitializer, section ".data..cacheline_aligned", align 128
@__do_softirq._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.20, i32 563, ptr null, ptr null }, align 1
@.str.24 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013softirq: huh, entered softirq %u %s %p with preempt_count %08x, exited with %08x?\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__do_softirq\00", [19 x i8] zeroinitializer }, align 32
@__do_softirq._entry_ptr = internal global ptr @__do_softirq._entry, section ".printk_index", align 4
@ksoftirqd = weak dso_local global ptr null, section ".data..percpu", align 4
@__raise_softirq_irqoff.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tasklet_vec = weak dso_local global %struct.tasklet_head zeroinitializer, section ".data..percpu", align 4
@__kstrtab___tasklet_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___tasklet_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___tasklet_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tasklet_schedule to i32), ptr @__kstrtab___tasklet_schedule, ptr @__kstrtabns___tasklet_schedule }, section "___ksymtab+__tasklet_schedule", align 4
@tasklet_hi_vec = weak dso_local global %struct.tasklet_head zeroinitializer, section ".data..percpu", align 4
@__kstrtab___tasklet_hi_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___tasklet_hi_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___tasklet_hi_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tasklet_hi_schedule to i32), ptr @__kstrtab___tasklet_hi_schedule, ptr @__kstrtabns___tasklet_hi_schedule }, section "___ksymtab+__tasklet_hi_schedule", align 4
@__kstrtab_tasklet_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_setup to i32), ptr @__kstrtab_tasklet_setup, ptr @__kstrtabns_tasklet_setup }, section "___ksymtab+tasklet_setup", align 4
@__kstrtab_tasklet_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_init to i32), ptr @__kstrtab_tasklet_init, ptr @__kstrtabns_tasklet_init }, section "___ksymtab+tasklet_init", align 4
@__kstrtab_tasklet_unlock_spin_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_unlock_spin_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_unlock_spin_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_unlock_spin_wait to i32), ptr @__kstrtab_tasklet_unlock_spin_wait, ptr @__kstrtabns_tasklet_unlock_spin_wait }, section "___ksymtab+tasklet_unlock_spin_wait", align 4
@tasklet_kill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.20, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015softirq: Attempt to kill tasklet from interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tasklet_kill\00", [19 x i8] zeroinitializer }, align 32
@tasklet_kill._entry_ptr = internal global ptr @tasklet_kill._entry, section ".printk_index", align 4
@__kstrtab_tasklet_kill = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_kill = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_kill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_kill to i32), ptr @__kstrtab_tasklet_kill, ptr @__kstrtabns_tasklet_kill }, section "___ksymtab+tasklet_kill", align 4
@__kstrtab_tasklet_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_unlock to i32), ptr @__kstrtab_tasklet_unlock, ptr @__kstrtabns_tasklet_unlock }, section "___ksymtab_gpl+tasklet_unlock", align 4
@__kstrtab_tasklet_unlock_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_unlock_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_unlock_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_unlock_wait to i32), ptr @__kstrtab_tasklet_unlock_wait, ptr @__kstrtabns_tasklet_unlock_wait }, section "___ksymtab_gpl+tasklet_unlock_wait", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_softirq__311_974_spawn_ksoftirqdearly = internal global ptr @spawn_ksoftirqd, section ".initcallearly.init", align 4
@__pcpu_scope_irq_stat = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_irq_stat = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_ksoftirqd = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_ksoftirqd = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_hardirqs_enabled = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_hardirqs_enabled = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_hardirq_context = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_hardirq_context = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_tasklet_vec = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_tasklet_hi_vec = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq=%d name=%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq=%d ret=%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"handled\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unhandled\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vec\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vec=%u [action=%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@trace_raw_output_softirq.symbols = internal constant { [11 x %struct.trace_print_flags], [40 x i8] } { [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.10 }, %struct.trace_print_flags { i32 1, ptr @.str.11 }, %struct.trace_print_flags { i32 2, ptr @.str.12 }, %struct.trace_print_flags { i32 3, ptr @.str.13 }, %struct.trace_print_flags { i32 4, ptr @.str.14 }, %struct.trace_print_flags { i32 5, ptr @.str.15 }, %struct.trace_print_flags { i32 6, ptr @.str.16 }, %struct.trace_print_flags { i32 7, ptr @.str.17 }, %struct.trace_print_flags { i32 8, ptr @.str.18 }, %struct.trace_print_flags { i32 9, ptr @.str.19 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@__local_bh_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/irq.h\00", [37 x i8] zeroinitializer }, align 32
@trace_softirq_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_softirq_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@softirq_handle_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__irq_exit_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@force_irqthreads_key = external dso_local global %struct.static_key_false, align 4
@trace_softirq_raise.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tasklet_clear_sched.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tasklet SCHED state not set: %s %pS\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"callback\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"softirq:dead\00", [19 x i8] zeroinitializer }, align 32
@softirq_threads = internal global { %struct.smp_hotplug_thread, [48 x i8] } { %struct.smp_hotplug_thread { ptr @ksoftirqd, %struct.list_head zeroinitializer, ptr @ksoftirqd_should_run, ptr @run_ksoftirqd, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @.str.51 }, [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ksoftirqd/%u\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"str__irq__trace_system_name\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 31, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [37 x i8] c"trace_event_fields_irq_handler_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_irq_handler_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"print_fmt_irq_handler_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"event_irq_handler_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [36 x i8] c"trace_event_fields_irq_handler_exit\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_irq_handler_exit\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"print_fmt_irq_handler_exit\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"event_irq_handler_exit\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"trace_event_fields_softirq\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_softirq\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"print_fmt_softirq\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"event_softirq_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"event_softirq_exit\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 142, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"event_softirq_raise\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 156, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 46 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 65, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 65, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 65, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 65, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"softirq_to_name\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 63, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 308, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 561, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 866, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 53, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 83, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 103, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [30 x i8] c"../include/trace/events/irq.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 128, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 108, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 756, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 968, i32 48 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"softirq_threads\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 959, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [20 x i8] c"../kernel/softirq.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 963, i32 18 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @TRACE_SYSTEM_BLOCK_SOFTIRQ, ptr @TRACE_SYSTEM_HI_SOFTIRQ, ptr @TRACE_SYSTEM_HRTIMER_SOFTIRQ, ptr @TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, ptr @TRACE_SYSTEM_NET_RX_SOFTIRQ, ptr @TRACE_SYSTEM_NET_TX_SOFTIRQ, ptr @TRACE_SYSTEM_RCU_SOFTIRQ, ptr @TRACE_SYSTEM_SCHED_SOFTIRQ, ptr @TRACE_SYSTEM_TASKLET_SOFTIRQ, ptr @TRACE_SYSTEM_TIMER_SOFTIRQ, ptr @__TRACE_SYSTEM_BLOCK_SOFTIRQ, ptr @__TRACE_SYSTEM_HI_SOFTIRQ, ptr @__TRACE_SYSTEM_HRTIMER_SOFTIRQ, ptr @__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, ptr @__TRACE_SYSTEM_NET_RX_SOFTIRQ, ptr @__TRACE_SYSTEM_NET_TX_SOFTIRQ, ptr @__TRACE_SYSTEM_RCU_SOFTIRQ, ptr @__TRACE_SYSTEM_SCHED_SOFTIRQ, ptr @__TRACE_SYSTEM_TASKLET_SOFTIRQ, ptr @__TRACE_SYSTEM_TIMER_SOFTIRQ, ptr @__bpf_trace_tp_map_irq_handler_entry, ptr @__bpf_trace_tp_map_irq_handler_exit, ptr @__bpf_trace_tp_map_softirq_entry, ptr @__bpf_trace_tp_map_softirq_exit, ptr @__bpf_trace_tp_map_softirq_raise, ptr @__do_softirq._entry, ptr @__do_softirq._entry_ptr, ptr @__event_irq_handler_entry, ptr @__event_irq_handler_exit, ptr @__event_softirq_entry, ptr @__event_softirq_exit, ptr @__event_softirq_raise, ptr @__initcall__kmod_softirq__311_974_spawn_ksoftirqdearly, ptr @__ksymtab___local_bh_disable_ip, ptr @__ksymtab___local_bh_enable_ip, ptr @__ksymtab___tasklet_hi_schedule, ptr @__ksymtab___tasklet_schedule, ptr @__ksymtab__local_bh_enable, ptr @__ksymtab_hardirq_context, ptr @__ksymtab_hardirqs_enabled, ptr @__ksymtab_irq_stat, ptr @__ksymtab_tasklet_init, ptr @__ksymtab_tasklet_kill, ptr @__ksymtab_tasklet_setup, ptr @__ksymtab_tasklet_unlock, ptr @__ksymtab_tasklet_unlock_spin_wait, ptr @__ksymtab_tasklet_unlock_wait, ptr @__tracepoint_irq_handler_entry, ptr @__tracepoint_irq_handler_exit, ptr @__tracepoint_ptr_irq_handler_entry, ptr @__tracepoint_ptr_irq_handler_exit, ptr @__tracepoint_ptr_softirq_entry, ptr @__tracepoint_ptr_softirq_exit, ptr @__tracepoint_ptr_softirq_raise, ptr @__tracepoint_softirq_entry, ptr @__tracepoint_softirq_exit, ptr @__tracepoint_softirq_raise, ptr @event_class_irq_handler_entry, ptr @event_class_irq_handler_exit, ptr @event_class_softirq, ptr @event_irq_handler_entry, ptr @event_irq_handler_exit, ptr @event_softirq_entry, ptr @event_softirq_exit, ptr @event_softirq_raise, ptr @tasklet_kill._entry, ptr @tasklet_kill._entry_ptr, ptr @str__irq__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @trace_event_fields_irq_handler_entry, ptr @trace_event_type_funcs_irq_handler_entry, ptr @print_fmt_irq_handler_entry, ptr @trace_event_fields_irq_handler_exit, ptr @trace_event_type_funcs_irq_handler_exit, ptr @print_fmt_irq_handler_exit, ptr @trace_event_fields_softirq, ptr @trace_event_type_funcs_softirq, ptr @print_fmt_softirq, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @softirq_to_name, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @trace_raw_output_softirq.symbols, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @softirq_threads, ptr @.str.51], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__irq__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irq_handler_entry to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irq_handler_entry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irq_handler_entry to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irq_handler_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_irq_handler_exit to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_irq_handler_exit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_irq_handler_exit to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_irq_handler_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_softirq to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_softirq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_softirq to i32), i32 347, i32 416, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_softirq_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_softirq_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_softirq_raise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softirq_to_name to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasklet_kill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_softirq.symbols to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softirq_threads to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irq_handler_entry(ptr nocapture readnone %__data, i32 noundef %irq, ptr noundef %action) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_handler_entry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %irq, ptr noundef %action) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irq_handler_exit(ptr nocapture readnone %__data, i32 noundef %irq, ptr noundef %action, i32 noundef %ret) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_irq_handler_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %irq, ptr noundef %action, i32 noundef %ret) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_softirq_entry(ptr nocapture readnone %__data, i32 noundef %vec_nr) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_entry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %vec_nr) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_softirq_exit(ptr nocapture readnone %__data, i32 noundef %vec_nr) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %vec_nr) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_softirq_raise(ptr nocapture readnone %__data, i32 noundef %vec_nr) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %vec_nr) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irq_handler_entry(ptr noundef %__data, i32 noundef %irq, ptr nocapture noundef readonly %action) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !245

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !246

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %name.i = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 11
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %tobool.not.i24 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i24, ptr @.str.31, ptr %4
  %call.i25 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add = add i32 %call.i25, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %add.i = shl i32 %call.i25, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %irq6 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %irq, ptr %irq6, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %tobool9.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool9.not, ptr @.str.31, ptr %8
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #18
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irq_handler_entry(ptr noundef %__data, i32 noundef %irq, ptr nocapture noundef readonly %action) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !247
  %name.i = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 11
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.31, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65552
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i48.not = icmp eq ptr %17, null
  br i1 %tobool.not.i48.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %add12 = add i32 %call.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #15
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !235) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %irq17 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %irq, ptr %irq17, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %31 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name.i, align 4
  %tobool21.not = icmp eq ptr %32, null
  %spec.select = select i1 %tobool21.not, ptr @.str.31, ptr %32
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #18
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %13, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irq_handler_exit(ptr noundef %__data, i32 noundef %irq, ptr nocapture noundef readnone %action, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !245

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !246

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %irq6 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq6, align 4
  %ret7 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ret7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ret, ptr %ret7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_irq_handler_exit(ptr noundef %__data, i32 noundef %irq, ptr nocapture noundef readnone %action, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !247
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !235) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %irq17 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %irq, ptr %irq17, align 4
  %ret18 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ret18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret, ptr %ret18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_softirq(ptr noundef %__data, i32 noundef %vec_nr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !245

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !246

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %vec = getelementptr inbounds %struct.trace_event_raw_softirq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vec_nr, ptr %vec, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_softirq(ptr noundef %__data, i32 noundef %vec_nr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !247
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !235) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vec = getelementptr inbounds %struct.trace_event_raw_softirq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %vec_nr, ptr %vec, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irq_handler_entry(ptr noundef %__data, i32 noundef %irq, ptr noundef %action) #0 align 64 {
entry:
  %conv = zext i32 %irq to i64
  %0 = ptrtoint ptr %action to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_irq_handler_exit(ptr noundef %__data, i32 noundef %irq, ptr noundef %action, i32 noundef %ret) #0 align 64 {
entry:
  %conv = zext i32 %irq to i64
  %0 = ptrtoint ptr %action to i32
  %conv4 = zext i32 %0 to i64
  %conv8 = zext i32 %ret to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_softirq(ptr noundef %__data, i32 noundef %vec_nr) #0 align 64 {
entry:
  %conv = zext i32 %vec_nr to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__local_bh_disable_ip(i32 noundef %ip, i32 noundef %cnt) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b83 = load i1, ptr @__local_bh_disable_ip.__already_done, align 1
  br i1 %.b83, label %if.end28, label %if.then, !prof !245

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__local_bh_disable_ip.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 308, i32 noundef 9, ptr noundef null) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !248
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, %cnt
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i84 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i84 to ptr
  %preempt_count.i85 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i85 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i85, align 4
  %13 = xor i32 %12, %cnt
  %14 = and i32 %13, 65280
  %cmp44 = icmp eq i32 %14, 0
  br i1 %cmp44, label %if.then46, label %do.body48

if.then46:                                        ; preds = %if.end28
  tail call void @lockdep_softirqs_off(i32 noundef %ip) #15
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %if.end28
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i88 = and i32 %15, 128
  %tobool56.not = icmp eq i32 %and.i.i88, 0
  br i1 %tobool56.not, label %if.then65, label %do.end68, !prof !246

if.then65:                                        ; preds = %do.body48
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body48
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #15, !srcloc !250
  %16 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i86 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i86 to ptr
  %preempt_count.i87 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i87 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i87, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_softirqs_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_local_bh_enable() #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @_local_bh_enable.__already_done, align 1
  br i1 %.b38, label %if.end28, label %if.then, !prof !245

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @_local_bh_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 355, i32 noundef 9, ptr noundef null) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  tail call fastcc void @__local_bh_enable(i32 noundef 512)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__local_bh_enable(i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !251
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !252
  %14 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i115 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i115 to ptr
  %preempt_count.i.i116 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i116, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i116, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i117 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i117 to ptr
  %preempt_count.i.i118 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i118 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i118, align 4
  %add.i119 = add i32 %21, 1
  store volatile i32 %add.i119, ptr %preempt_count.i.i118, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !253
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !254
  %29 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i120 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i120 to ptr
  %preempt_count.i.i121 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i121 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i121, align 4
  %sub.i122 = add i32 %32, -1
  store volatile i32 %sub.i122, ptr %preempt_count.i.i121, align 4
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %if.end86, label %land.rhs55

land.rhs55:                                       ; preds = %land.rhs
  %.b111 = load i1, ptr @__local_bh_enable.__already_done, align 1
  br i1 %.b111, label %if.end86, label %if.then, !prof !245

if.then:                                          ; preds = %land.rhs55
  store i1 true, ptr @__local_bh_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 338, i32 noundef 9, ptr noundef null) #15
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55, %land.rhs, %land.lhs.true, %entry
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i123 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i123 to ptr
  %preempt_count.i124 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i124 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i124, align 4
  %41 = xor i32 %40, %cnt
  %42 = and i32 %41, 65280
  %cmp104 = icmp eq i32 %42, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end86
  %43 = tail call ptr @llvm.returnaddress(i32 0)
  %44 = ptrtoint ptr %43 to i32
  tail call void @lockdep_softirqs_on(i32 noundef %44) #15
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end86
  %45 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i125 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i125 to ptr
  %preempt_count.i.i126 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i126, align 4
  %sub.i127 = sub i32 %48, %cnt
  store volatile i32 %sub.i127, ptr %preempt_count.i.i126, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__local_bh_enable_ip(i32 noundef %ip, i32 noundef %cnt) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b216 = load i1, ptr @__local_bh_enable_ip.__already_done, align 1
  br i1 %.b216, label %if.end28, label %if.then, !prof !245

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__local_bh_enable_ip.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 362, i32 noundef 9, ptr noundef null) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  %tobool38.not = icmp eq i32 %4, 0
  br i1 %tobool38.not, label %if.end143, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !255
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !256
  %18 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i220 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i220 to ptr
  %preempt_count.i.i221 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i221 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i221, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i221, align 4
  %tobool62.not = icmp eq i32 %17, 0
  br i1 %tobool62.not, label %land.rhs63, label %if.end143

land.rhs63:                                       ; preds = %land.lhs.true
  %22 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i222 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i222 to ptr
  %preempt_count.i.i223 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i223 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i223, align 4
  %add.i224 = add i32 %25, 1
  store volatile i32 %add.i224, ptr %preempt_count.i.i223, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !257
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx87 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add88 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !258
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i225 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i225 to ptr
  %preempt_count.i.i226 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i226 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i226, align 4
  %sub.i227 = add i32 %36, -1
  store volatile i32 %sub.i227, ptr %preempt_count.i.i226, align 4
  %tobool95.not = icmp eq i32 %32, 0
  br i1 %tobool95.not, label %land.rhs105, label %if.end143

land.rhs105:                                      ; preds = %land.rhs63
  %.b214215 = load i1, ptr @__local_bh_enable_ip.__already_done.21, align 1
  br i1 %.b214215, label %if.end143, label %if.then116, !prof !245

if.then116:                                       ; preds = %land.rhs105
  store i1 true, ptr @__local_bh_enable_ip.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 363, i32 noundef 9, ptr noundef null) #15
  br label %if.end143

if.end143:                                        ; preds = %if.then116, %land.rhs105, %land.rhs63, %land.lhs.true, %if.end28
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i242 = and i32 %37, 128
  %tobool155.not = icmp eq i32 %and.i.i242, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !259
  br i1 %tobool155.not, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end143
  tail call void @trace_hardirqs_off() #15
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end143
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i228 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i228 to ptr
  %preempt_count.i229 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i229 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i229, align 4
  %and163 = and i32 %41, 65280
  %cmp = icmp eq i32 %and163, 512
  br i1 %cmp, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.end159
  tail call void @lockdep_softirqs_on(i32 noundef %ip) #15
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.end159
  %42 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i230 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i230 to ptr
  %preempt_count.i.i231 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i231 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i231, align 4
  %sub.neg = sub i32 1, %cnt
  %sub.i232 = add i32 %sub.neg, %45
  store volatile i32 %sub.i232, ptr %preempt_count.i.i231, align 4
  %46 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i233 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i233 to ptr
  %preempt_count.i234 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i234 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i234, align 4
  %and167 = and i32 %49, 15728640
  %50 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i235 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i235 to ptr
  %preempt_count.i236 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i236 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i236, align 4
  %and169 = and i32 %53, 983040
  %or = or i32 %and169, %and167
  %54 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i237 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i237 to ptr
  %preempt_count.i238 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i238 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i238, align 4
  %and171 = and i32 %57, 65280
  %or172 = or i32 %or, %and171
  %tobool173.not = icmp eq i32 %or172, 0
  br i1 %tobool173.not, label %land.rhs174, label %if.end203

land.rhs174:                                      ; preds = %if.end165
  %58 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i243 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i243 to ptr
  %cpu190 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu190 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu190, align 4
  %arrayidx191 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx191, align 4
  %add192 = add i32 %63, ptrtoint (ptr @irq_stat to i32)
  %64 = inttoptr i32 %add192 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %tobool194.not = icmp eq i32 %66, 0
  br i1 %tobool194.not, label %if.end203, label %if.then202, !prof !245

if.then202:                                       ; preds = %land.rhs174
  tail call void @do_softirq()
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %land.rhs174, %if.end165
  %67 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i239 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i239 to ptr
  %preempt_count.i.i240 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i240 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i240, align 4
  %sub.i241 = add i32 %70, -1
  store volatile i32 %sub.i241, ptr %preempt_count.i.i240, align 4
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_softirqs_on(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_softirq() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i72 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i72 to ptr
  %preempt_count.i73 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i73, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i74 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i74 to ptr
  %preempt_count.i75 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i75, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %do.body6, label %cleanup

do.body6:                                         ; preds = %entry
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !248
  %and.i = and i32 %12, 128
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %if.then16, label %do.end19

if.then16:                                        ; preds = %do.body6
  tail call void @trace_hardirqs_off() #15
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body6
  %13 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i76 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i76 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, ptrtoint (ptr @irq_stat to i32)
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %do.body37, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end19
  %add.i = add i32 %18, ptrtoint (ptr @ksoftirqd to i32)
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %and.i78 = and i32 %21, 65
  %tobool.not.i = icmp ne i32 %and.i78, 0
  %tobool9.not.i = icmp eq ptr %24, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %if.then35, label %do.end12.i

do.end12.i:                                       ; preds = %land.lhs.true
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 128
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %ksoftirqd_running.exit, label %if.then35

ksoftirqd_running.exit:                           ; preds = %do.end12.i
  %call14.i = tail call zeroext i1 @__kthread_should_park(ptr noundef nonnull %24) #15
  br i1 %call14.i, label %if.then35, label %do.body37

if.then35:                                        ; preds = %ksoftirqd_running.exit, %do.end12.i, %land.lhs.true
  tail call void @__do_softirq() #15
  br label %do.body37

do.body37:                                        ; preds = %if.then35, %ksoftirqd_running.exit, %do.end19
  br i1 %tobool15.not, label %if.then46, label %do.body48

if.then46:                                        ; preds = %do.body37
  tail call void @trace_hardirqs_on() #15
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %do.body37
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i80 = and i32 %27, 128
  %tobool56.not = icmp eq i32 %and.i.i80, 0
  br i1 %tobool56.not, label %if.then60, label %do.end63, !prof !246

if.then60:                                        ; preds = %do.body48
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body48
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #15, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__do_softirq() local_unnamed_addr #0 section ".softirqentry.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = xor i32 %0, -1
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, -2049
  store i32 %and, ptr %flags, align 4
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add13 = add i32 %10, ptrtoint (ptr @irq_stat to i32)
  %11 = inttoptr i32 %add13 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call ptr @llvm.returnaddress(i32 0) #15
  %15 = ptrtoint ptr %14 to i32
  tail call void @__local_bh_disable_ip(i32 noundef %15, i32 noundef 256) #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i138 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i138 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, ptrtoint (ptr @hardirq_context to i32)
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %lockdep_softirq_start.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %add26.i = add i32 %24, -1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add26.i, ptr %22, align 4
  br label %lockdep_softirq_start.exit

lockdep_softirq_start.exit:                       ; preds = %if.then.i, %entry
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %softirq_context.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 139
  %28 = ptrtoint ptr %softirq_context.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %softirq_context.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %softirq_context.i, align 4
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  tail call void @irqtime_account_irq(ptr noundef %31, i32 noundef 256) #15
  br label %restart

restart:                                          ; preds = %land.lhs.true, %lockdep_softirq_start.exit
  %pending.0 = phi i32 [ %13, %lockdep_softirq_start.exit ], [ %87, %land.lhs.true ]
  %max_restart.0 = phi i32 [ 10, %lockdep_softirq_start.exit ], [ %dec, %land.lhs.true ]
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %35, ptrtoint (ptr @irq_stat to i32)
  %36 = inttoptr i32 %add34 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %36, align 4
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  %iszero166 = icmp eq i32 %pending.0, 0
  br i1 %iszero166, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %restart
  %38 = tail call i32 @llvm.cttz.i32(i32 %pending.0, i1 true), !range !261
  br label %while.body

while.body:                                       ; preds = %if.end, %while.body.preheader
  %ffs170.in = phi i32 [ %70, %if.end ], [ %38, %while.body.preheader ]
  %h.0169 = phi ptr [ %incdec.ptr, %if.end ], [ @softirq_vec, %while.body.preheader ]
  %pending.1168 = phi i32 [ %shr, %if.end ], [ %pending.0, %while.body.preheader ]
  %ffs170 = add nuw nsw i32 %ffs170.in, 1
  %add.ptr = getelementptr %struct.softirq_action, ptr %h.0169, i32 %ffs170.in
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @softirq_vec to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %39 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i, align 4
  %arrayidx.i139 = getelementptr %struct.kernel_stat, ptr @kstat, i32 0, i32 1, i32 %sub.ptr.div
  %43 = ptrtoint ptr %arrayidx.i139 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i140 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i140 to ptr
  %cpu.i141 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i141 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i141, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7.i, align 4
  %add.i142 = add i32 %49, %43
  %50 = inttoptr i32 %add.i142 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add8.i = add i32 %52, 1
  store i32 %add8.i, ptr %50, align 4
  tail call fastcc void @trace_softirq_entry(i32 noundef %sub.ptr.div)
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  tail call void %54(ptr noundef %add.ptr) #15
  tail call fastcc void @trace_softirq_exit(i32 noundef %sub.ptr.div)
  %55 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i133 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i133 to ptr
  %preempt_count.i134 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i134 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i134, align 4
  %cmp.not = icmp eq i32 %42, %58
  br i1 %cmp.not, label %if.end, label %do.end48, !prof !245

do.end48:                                         ; preds = %while.body
  %arrayidx50 = getelementptr [10 x ptr], ptr @softirq_to_name, i32 0, i32 %sub.ptr.div
  %59 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx50, align 4
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 4
  %63 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i135 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i135 to ptr
  %preempt_count.i136 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i136 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i136, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %sub.ptr.div, ptr noundef %60, ptr noundef %62, i32 noundef %42, i32 noundef %66) #19
  %67 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %42, ptr %preempt_count.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.end48, %while.body
  %incdec.ptr = getelementptr %struct.softirq_action, ptr %h.0169, i32 %ffs170
  %shr = lshr i32 %pending.1168, %ffs170
  %70 = tail call i32 @llvm.cttz.i32(i32 %shr, i1 true), !range !261
  %iszero = icmp eq i32 %shr, 0
  br i1 %iszero, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %restart
  %71 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu, align 4
  %arrayidx70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %74, ptrtoint (ptr @ksoftirqd to i32)
  %75 = inttoptr i32 %add71 to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task, align 8
  %cmp75 = icmp eq ptr %77, %79
  br i1 %cmp75, label %if.then76, label %do.body78

if.then76:                                        ; preds = %while.end
  tail call void @rcu_softirq_qs() #15
  br label %do.body78

do.body78:                                        ; preds = %if.then76, %while.end
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i143 = and i32 %80, 128
  %tobool80.not = icmp eq i32 %and.i.i143, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !259
  br i1 %tobool80.not, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body78
  tail call void @trace_hardirqs_off() #15
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %do.body78
  %81 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu, align 4
  %arrayidx103 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx103, align 4
  %add104 = add i32 %84, ptrtoint (ptr @irq_stat to i32)
  %85 = inttoptr i32 %add104 to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %tobool106.not = icmp eq i32 %87, 0
  br i1 %tobool106.not, label %if.end115, label %if.then107

if.then107:                                       ; preds = %if.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub108 = add i32 %88, %add.neg
  %cmp109 = icmp slt i32 %sub108, 0
  br i1 %cmp109, label %land.lhs.true, label %if.end114

land.lhs.true:                                    ; preds = %if.then107
  %89 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i137 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i137 to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 16384
  %93 = and i32 %92, 2
  %tobool.i = icmp ne i32 %93, 0
  %dec = add nsw i32 %max_restart.0, -1
  %tobool112.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.i, i1 true, i1 %tobool112.not
  br i1 %or.cond, label %if.end114, label %restart

if.end114:                                        ; preds = %land.lhs.true, %if.then107
  %94 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i144 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i144 to ptr
  %cpu.i145 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %cpu.i145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu.i145, align 4
  %arrayidx.i146 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i146, align 4
  %add.i147 = add i32 %99, ptrtoint (ptr @ksoftirqd to i32)
  %100 = inttoptr i32 %add.i147 to ptr
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %tobool.not.i148 = icmp eq ptr %102, null
  br i1 %tobool.not.i148, label %if.end115, label %if.then.i149

if.then.i149:                                     ; preds = %if.end114
  %call9.i = tail call i32 @wake_up_process(ptr noundef nonnull %102) #15
  br label %if.end115

if.end115:                                        ; preds = %if.then.i149, %if.end114, %if.end84
  %103 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task, align 8
  tail call void @irqtime_account_irq(ptr noundef %104, i32 noundef 0) #15
  %105 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i150 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i150 to ptr
  %task.i151 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i151 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i151, align 8
  %softirq_context.i152 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 139
  %109 = ptrtoint ptr %softirq_context.i152 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %softirq_context.i152, align 4
  %dec.i = add i32 %110, -1
  store i32 %dec.i, ptr %softirq_context.i152, align 4
  br i1 %tobool.not.i, label %lockdep_softirq_end.exit, label %do.body1.i

do.body1.i:                                       ; preds = %if.end115
  %cpu.i153 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %111 = ptrtoint ptr %cpu.i153 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu.i153, align 4
  %arrayidx.i154 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i154, align 4
  %add.i155 = add i32 %114, ptrtoint (ptr @hardirq_context to i32)
  %115 = inttoptr i32 %add.i155 to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add11.i = add i32 %117, 1
  store i32 %add11.i, ptr %115, align 4
  %cmp.i = icmp eq i32 %117, 0
  br i1 %cmp.i, label %if.then14.i, label %lockdep_softirq_end.exit

if.then14.i:                                      ; preds = %do.body1.i
  %118 = ptrtoint ptr %task.i151 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i151, align 8
  %hardirq_threaded.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 136
  %120 = ptrtoint ptr %hardirq_threaded.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %hardirq_threaded.i, align 16
  br label %lockdep_softirq_end.exit

lockdep_softirq_end.exit:                         ; preds = %if.then14.i, %do.body1.i, %if.end115
  tail call fastcc void @__local_bh_enable(i32 noundef 256) #15
  %121 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i156 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i156 to ptr
  %preempt_count.i.i157 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i157 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i157, align 4
  %and.i158 = and i32 %124, 15728640
  %125 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i44.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i44.i to ptr
  %preempt_count.i45.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i45.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i45.i, align 4
  %and2.i = and i32 %128, 983040
  %or.i = or i32 %and2.i, %and.i158
  %129 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i46.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i46.i to ptr
  %preempt_count.i47.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %preempt_count.i47.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %preempt_count.i47.i, align 4
  %and4.i = and i32 %132, 65280
  %or5.i = or i32 %or.i, %and4.i
  %tobool.not.i159 = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i159, label %softirq_handle_end.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %lockdep_softirq_end.exit
  %.b43.i = load i1, ptr @softirq_handle_end.__already_done, align 1
  br i1 %.b43.i, label %softirq_handle_end.exit, label %if.then.i160, !prof !245

if.then.i160:                                     ; preds = %land.rhs.i
  store i1 true, ptr @softirq_handle_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 402, i32 noundef 9, ptr noundef null) #15
  br label %softirq_handle_end.exit

softirq_handle_end.exit:                          ; preds = %if.then.i160, %land.rhs.i, %lockdep_softirq_end.exit
  %133 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i161 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i161 to ptr
  %task.i162 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task.i162 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task.i162, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags1.i, align 4
  %and.i163 = and i32 %138, -2049
  store i32 %and.i163, ptr %flags1.i, align 4
  %and2.i164 = and i32 %6, 2048
  %139 = load ptr, ptr %task.i162, align 8
  %flags5.i = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags5.i, align 4
  %or.i165 = or i32 %141, %and2.i164
  store i32 %or.i165, ptr %flags5.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_softirq_entry(i32 noundef %vec_nr) unnamed_addr #4 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_entry, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_softirq_entry, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %if.end31

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !263
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_entry, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i, %if.end31
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i ], [ %13, %if.end31 ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %vec_nr) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !264
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !264
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !245

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !265
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_softirq_entry.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_softirq_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 133, ptr noundef nonnull @.str.45) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !266
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_softirq_exit(i32 noundef %vec_nr) unnamed_addr #4 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_exit, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_softirq_exit, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %if.end31

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !267
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_exit, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i, %if.end31
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i ], [ %13, %if.end31 ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %vec_nr) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !268
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !268
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !245

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !265
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_softirq_exit.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_softirq_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 147, ptr noundef nonnull @.str.45) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !266
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_softirq_qs() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_enter_rcu() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 65536
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i39 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i39 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @hardirq_context to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add9 = add i32 %12, 1
  store i32 %add9, ptr %10, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %do.end16

if.then:                                          ; preds = %entry
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %hardirq_threaded = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 136
  %15 = ptrtoint ptr %hardirq_threaded to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hardirq_threaded, align 16
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry
  %task21 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task21, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end16
  %20 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %23, 15728640
  %24 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i35 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i35 to ptr
  %preempt_count.i36 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i36, align 4
  %and25 = and i32 %27, 983040
  %or = or i32 %and25, %and
  %28 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i37 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i37 to ptr
  %preempt_count.i38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i38, align 4
  %and27 = and i32 %31, 65280
  %or28 = or i32 %or, %and27
  %cmp29 = icmp eq i32 %or28, 65536
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  tail call void @tick_irq_enter() #15
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true, %do.end16
  %32 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task21, align 8
  tail call void @irqtime_account_irq(ptr noundef %33, i32 noundef 65536) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_irq_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_enter() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_irq_enter() #15
  tail call void @irq_enter_rcu()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_exit_rcu() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__irq_exit_rcu()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @hardirq_context to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add8 = add i32 %8, -1
  store i32 %add8, ptr %6, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__irq_exit_rcu() unnamed_addr #4 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !269
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !270
  %14 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i133 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i133 to ptr
  %preempt_count.i.i134 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i134 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i134, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i134, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i135 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i135 to ptr
  %preempt_count.i.i136 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i136 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i136, align 4
  %add.i137 = add i32 %21, 1
  store volatile i32 %add.i137, ptr %preempt_count.i.i136, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !271
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !272
  %29 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i138 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i138 to ptr
  %preempt_count.i.i139 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i139 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i139, align 4
  %sub.i140 = add i32 %32, -1
  store volatile i32 %sub.i140, ptr %preempt_count.i.i139, align 4
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %if.end86, label %land.rhs55

land.rhs55:                                       ; preds = %land.rhs
  %.b129 = load i1, ptr @__irq_exit_rcu.__already_done, align 1
  br i1 %.b129, label %if.end86, label %if.then, !prof !245

if.then:                                          ; preds = %land.rhs55
  store i1 true, ptr @__irq_exit_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 632, i32 noundef 9, ptr noundef null) #15
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55, %land.rhs, %land.lhs.true, %entry
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i148 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i148 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  tail call void @irqtime_account_irq(ptr noundef %36, i32 noundef 0) #15
  %37 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i141 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i141 to ptr
  %preempt_count.i.i142 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i142 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i142, align 4
  %sub.i143 = add i32 %40, -65536
  store volatile i32 %sub.i143, ptr %preempt_count.i.i142, align 4
  %41 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %44, 15728640
  %45 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i144 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i144 to ptr
  %preempt_count.i145 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i145 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i145, align 4
  %and99 = and i32 %48, 983040
  %or = or i32 %and99, %and
  %49 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i146 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i146 to ptr
  %preempt_count.i147 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i147 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i147, align 4
  %and101 = and i32 %52, 65280
  %or102 = or i32 %or, %and101
  %tobool103.not = icmp eq i32 %or102, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %if.end126

land.lhs.true104:                                 ; preds = %if.end86
  %cpu120 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %53 = ptrtoint ptr %cpu120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu120, align 4
  %arrayidx121 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %56, ptrtoint (ptr @irq_stat to i32)
  %57 = inttoptr i32 %add122 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %tobool124.not = icmp eq i32 %59, 0
  br i1 %tobool124.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %land.lhs.true104
  %60 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i149 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i149 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %add.i150 = add i32 %65, ptrtoint (ptr @irq_stat to i32)
  %66 = inttoptr i32 %add.i150 to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add.i.i = add i32 %65, ptrtoint (ptr @ksoftirqd to i32)
  %69 = inttoptr i32 %add.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %and.i36.i = and i32 %68, 65
  %tobool.not.i.i = icmp ne i32 %and.i36.i, 0
  %tobool9.not.i.i = icmp eq ptr %71, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool9.not.i.i
  br i1 %or.cond.i.i, label %if.end.i, label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then125
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 128
  %cmp.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i, label %ksoftirqd_running.exit.i, label %if.end.i

ksoftirqd_running.exit.i:                         ; preds = %do.end12.i.i
  %call14.i.i = tail call zeroext i1 @__kthread_should_park(ptr noundef nonnull %71) #15
  br i1 %call14.i.i, label %if.end.i, label %if.end126

if.end.i:                                         ; preds = %ksoftirqd_running.exit.i, %do.end12.i.i, %if.then125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @force_irqthreads_key, ptr blockaddress(@__irq_exit_rcu, %lor.lhs.false.i)) #15
          to label %if.then34.i [label %lor.lhs.false.i], !srcloc !262

lor.lhs.false.i:                                  ; preds = %if.end.i
  %74 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu.i, align 4
  %arrayidx30.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx30.i, align 4
  %add31.i = add i32 %77, ptrtoint (ptr @ksoftirqd to i32)
  %78 = inttoptr i32 %add31.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tobool33.not.i = icmp eq ptr %80, null
  br i1 %tobool33.not.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %lor.lhs.false.i, %if.end.i
  tail call void @__do_softirq() #15
  br label %if.end126

if.else.i:                                        ; preds = %lor.lhs.false.i
  %81 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i38.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i38.i to ptr
  %cpu.i39.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i39.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i39.i, align 4
  %arrayidx.i40.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i40.i, align 4
  %add.i41.i = add i32 %86, ptrtoint (ptr @ksoftirqd to i32)
  %87 = inttoptr i32 %add.i41.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool.not.i42.i = icmp eq ptr %89, null
  br i1 %tobool.not.i42.i, label %if.end126, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  %call9.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %89) #15
  br label %if.end126

if.end126:                                        ; preds = %if.then.i.i, %if.else.i, %if.then34.i, %ksoftirqd_running.exit.i, %land.lhs.true104, %if.end86
  %90 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i151 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i151 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu1.i, align 4
  %call2.i = tail call i32 @idle_cpu(i32 noundef %93) #15
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %tick_irq_exit.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end126
  %94 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i152 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i152 to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 16384
  %98 = and i32 %97, 2
  %tobool.i.not.i = icmp eq i32 %98, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %tick_irq_exit.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %99 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i10.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i10.i to ptr
  %preempt_count.i.i153 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i153 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i153, align 4
  %and.i154 = and i32 %102, 983040
  %tobool6.not.i = icmp eq i32 %and.i154, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %tick_irq_exit.exit

if.then7.i:                                       ; preds = %if.then.i
  tail call void @tick_nohz_irq_exit() #15
  br label %tick_irq_exit.exit

tick_irq_exit.exit:                               ; preds = %if.then7.i, %if.then.i, %land.lhs.true.i, %if.end126
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__irq_exit_rcu()
  tail call void @rcu_irq_exit() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @hardirq_context to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add8 = add i32 %8, -1
  store i32 %add8, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raise_softirq_irqoff(i32 noundef %nr) local_unnamed_addr #4 align 64 {
entry:
  tail call void @__raise_softirq_irqoff(i32 noundef %nr)
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i7 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i7 to ptr
  %preempt_count.i8 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i8, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i9 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i9 to ptr
  %preempt_count.i10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i10, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i11 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i11 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @ksoftirqd to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %call9.i = tail call i32 @wake_up_process(ptr noundef nonnull %20) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__raise_softirq_irqoff(i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !273
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !274
  %14 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i124 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i124 to ptr
  %preempt_count.i.i125 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i125 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i125, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i125, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i126 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i126 to ptr
  %preempt_count.i.i127 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i127 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i127, align 4
  %add.i128 = add i32 %21, 1
  store volatile i32 %add.i128, ptr %preempt_count.i.i127, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !275
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !276
  %29 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i129 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i129 to ptr
  %preempt_count.i.i130 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i130 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i130, align 4
  %sub.i131 = add i32 %32, -1
  store volatile i32 %sub.i131, ptr %preempt_count.i.i130, align 4
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %if.end86, label %land.rhs55

land.rhs55:                                       ; preds = %land.rhs
  %.b120 = load i1, ptr @__raise_softirq_irqoff.__already_done, align 1
  br i1 %.b120, label %if.end86, label %if.then, !prof !245

if.then:                                          ; preds = %land.rhs55
  store i1 true, ptr @__raise_softirq_irqoff.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 698, i32 noundef 9, ptr noundef null) #15
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55, %land.rhs, %land.lhs.true, %entry
  tail call fastcc void @trace_softirq_raise(i32 noundef %nr)
  %shl = shl nuw i32 1, %nr
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i132 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i132 to ptr
  %cpu110 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu110, align 4
  %arrayidx111 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %38, ptrtoint (ptr @irq_stat to i32)
  %39 = inttoptr i32 %add112 to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or = or i32 %41, %shl
  store i32 %or, ptr %39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raise_softirq(i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !248
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #15
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  tail call void @__raise_softirq_irqoff(i32 noundef %nr) #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i46 = and i32 %4, 15728640
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i7.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i7.i to ptr
  %preempt_count.i8.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i8.i, align 4
  %and2.i = and i32 %8, 983040
  %or.i = or i32 %and2.i, %and.i46
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i9.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i9.i to ptr
  %preempt_count.i10.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i10.i, align 4
  %and4.i = and i32 %12, 65280
  %or5.i = or i32 %or.i, %and4.i
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %raise_softirq_irqoff.exit

land.lhs.true.i:                                  ; preds = %do.end11
  %13 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i11.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i11.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, ptrtoint (ptr @ksoftirqd to i32)
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %raise_softirq_irqoff.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %call9.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %21) #15
  br label %raise_softirq_irqoff.exit

raise_softirq_irqoff.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i, %do.end11
  br i1 %tobool.not, label %if.then21, label %do.body23

if.then21:                                        ; preds = %raise_softirq_irqoff.exit
  tail call void @trace_hardirqs_on() #15
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %raise_softirq_irqoff.exit
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i = and i32 %22, 128
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.end39, !prof !246

if.then36:                                        ; preds = %do.body23
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !250
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_softirq_raise(i32 noundef %vec_nr) unnamed_addr #4 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_raise, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_softirq_raise, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !262

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !245

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %if.end31

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !277
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i, %if.end31
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i ], [ %13, %if.end31 ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %vec_nr) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !278
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !278
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !235) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !245

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !265
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_softirq_raise.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_softirq_raise.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 161, ptr noundef nonnull @.str.45) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !266
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @open_softirq(i32 noundef %nr, ptr noundef %action) local_unnamed_addr #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x %struct.softirq_action], ptr @softirq_vec, i32 0, i32 %nr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %action, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__tasklet_schedule(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__tasklet_schedule_common(ptr noundef %t, ptr noundef nonnull @tasklet_vec, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tasklet_schedule_common(ptr noundef %t, ptr noundef %headp, i32 noundef %softirq_nr) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !248
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body12

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #15
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry
  %1 = ptrtoint ptr %headp to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i56 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i56 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %t, align 4
  %tail = getelementptr inbounds %struct.tasklet_head, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %t, ptr %11, align 4
  store ptr %t, ptr %tail, align 4
  tail call void @__raise_softirq_irqoff(i32 noundef %softirq_nr) #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i57 = and i32 %16, 15728640
  %17 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i7.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i7.i to ptr
  %preempt_count.i8.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i8.i, align 4
  %and2.i = and i32 %20, 983040
  %or.i = or i32 %and2.i, %and.i57
  %21 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i9.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i9.i to ptr
  %preempt_count.i10.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i10.i, align 4
  %and4.i = and i32 %24, 65280
  %or5.i = or i32 %or.i, %and4.i
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %raise_softirq_irqoff.exit

land.lhs.true.i:                                  ; preds = %do.body12
  %25 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i11.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i11.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %30, ptrtoint (ptr @ksoftirqd to i32)
  %31 = inttoptr i32 %add.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %raise_softirq_irqoff.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %call9.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %33) #15
  br label %raise_softirq_irqoff.exit

raise_softirq_irqoff.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i, %do.body12
  br i1 %tobool.not, label %if.then29, label %do.body31

if.then29:                                        ; preds = %raise_softirq_irqoff.exit
  tail call void @trace_hardirqs_on() #15
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %raise_softirq_irqoff.exit
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i = and i32 %34, 128
  %tobool39.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not, label %if.then43, label %do.end46, !prof !246

if.then43:                                        ; preds = %do.body31
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !250
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__tasklet_hi_schedule(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__tasklet_schedule_common(ptr noundef %t, ptr noundef nonnull @tasklet_hi_vec, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tasklet_setup(ptr noundef %t, ptr noundef %callback) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %t, align 4
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %count = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %count, align 4
  %3 = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %callback, ptr %3, align 4
  %use_callback = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 3
  %5 = ptrtoint ptr %use_callback to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %use_callback, align 4
  %data = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 5
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tasklet_init(ptr noundef %t, ptr noundef %func, i32 noundef %data) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %t, align 4
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %count = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %count, align 4
  %3 = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %3, align 4
  %use_callback = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 3
  %5 = ptrtoint ptr %use_callback to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %use_callback, align 4
  %data1 = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 5
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %data, ptr %data1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tasklet_unlock_spin_wait(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  %tobool.not5 = icmp eq i32 %2, 0
  br i1 %tobool.not5, label %while.end, label %do.end

do.end:                                           ; preds = %do.end, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !280
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.end, label %do.end

while.end:                                        ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tasklet_kill(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i39 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i39 to ptr
  %preempt_count.i40 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i40, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i41 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i41 to ptr
  %preempt_count.i42 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i42, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call749 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #15
  %tobool8.not50 = icmp eq i32 %call749, 0
  br i1 %tobool8.not50, label %while.end, label %do.body10.lr.ph

do.body10.lr.ph:                                  ; preds = %if.end
  %12 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  br label %do.body10

do.body10:                                        ; preds = %do.end30, %do.body10.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 869) #15
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %14, 1
  %tobool16.not = icmp eq i32 %and1.i, 0
  br i1 %tobool16.not, label %do.end30, label %if.end18

if.end18:                                         ; preds = %do.body10
  %call20 = call ptr @__var_waitqueue(ptr noundef %state) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #15
  %15 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %state, i32 noundef 0) #15
  %call2246 = call i32 @prepare_to_wait_event(ptr noundef %call20, ptr noundef %12, i32 noundef 2) #15
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state, align 4
  %and1.i4347 = and i32 %17, 1
  %tobool25.not48 = icmp eq i32 %and1.i4347, 0
  br i1 %tobool25.not48, label %for.end, label %cleanup

cleanup:                                          ; preds = %cleanup, %if.end18
  call void @schedule() #15
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %call20, ptr noundef %12, i32 noundef 2) #15
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state, align 4
  %and1.i43 = and i32 %19, 1
  %tobool25.not = icmp eq i32 %and1.i43, 0
  br i1 %tobool25.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end18
  call void @finish_wait(ptr noundef %call20, ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #15
  br label %do.end30

do.end30:                                         ; preds = %for.end, %do.body10
  %call7 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.end, label %do.body10

while.end:                                        ; preds = %do.end30, %if.end
  call void @tasklet_unlock_wait(ptr noundef %t)
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.end
  call void @wake_up_var(ptr noundef %state) #15
  br label %tasklet_clear_sched.exit

land.end.i:                                       ; preds = %while.end
  %.b48.i = load i1, ptr @tasklet_clear_sched.__already_done, align 1
  br i1 %.b48.i, label %tasklet_clear_sched.exit, label %if.then7.i, !prof !245

if.then7.i:                                       ; preds = %land.end.i
  store i1 true, ptr @tasklet_clear_sched.__already_done, align 1
  %use_callback.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 3
  %20 = ptrtoint ptr %use_callback.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_callback.i, align 4, !range !281
  %tobool17.not.i = icmp eq i8 %21, 0
  %cond.i = select i1 %tobool17.not.i, ptr @.str.49, ptr @.str.48
  %cond20.in.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 4
  %22 = ptrtoint ptr %cond20.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond20.i = load ptr, ptr %cond20.in.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 758, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond.i, ptr noundef %cond20.i) #15
  br label %tasklet_clear_sched.exit

tasklet_clear_sched.exit:                         ; preds = %if.then7.i, %land.end.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tasklet_unlock_wait(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 888) #15
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end14, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @__var_waitqueue(ptr noundef %state) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #15
  %3 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %4 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %state, i32 noundef 0) #15
  %call723 = call i32 @prepare_to_wait_event(ptr noundef %call5, ptr noundef %3, i32 noundef 2) #15
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 2
  %tobool10.not24 = icmp eq i32 %7, 0
  br i1 %tobool10.not24, label %for.end, label %cleanup

cleanup:                                          ; preds = %cleanup, %if.end
  call void @schedule() #15
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %call5, ptr noundef %3, i32 noundef 2) #15
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 2
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(ptr noundef %call5, ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #15
  br label %do.end14

do.end14:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tasklet_unlock(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !282
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !283
  tail call void @wake_up_var(ptr noundef %state) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @softirq_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %cmp37 = icmp ult i32 %call36, %0
  br i1 %cmp37, label %do.body, label %for.end

do.body:                                          ; preds = %do.body, %entry
  %call38 = phi i32 [ %call, %do.body ], [ %call36, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call38
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @tasklet_vec to i32)
  %3 = inttoptr i32 %add to ptr
  %tail = getelementptr inbounds %struct.tasklet_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tail, align 4
  %5 = load i32, ptr %arrayidx, align 4
  %add19 = add i32 %5, ptrtoint (ptr @tasklet_hi_vec to i32)
  %6 = inttoptr i32 %add19 to ptr
  %tail30 = getelementptr inbounds %struct.tasklet_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tail30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %tail30, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call38, ptr noundef nonnull @__cpu_possible_mask) #20
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  store ptr @tasklet_action, ptr getelementptr inbounds ([10 x %struct.softirq_action], ptr @softirq_vec, i32 0, i32 6), align 8
  store ptr @tasklet_hi_action, ptr @softirq_vec, align 128
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tasklet_action(ptr nocapture noundef readnone %a) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tasklet_vec to i32)
  %6 = inttoptr i32 %add to ptr
  tail call fastcc void @tasklet_action_common(ptr noundef %6, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tasklet_hi_action(ptr nocapture noundef readnone %a) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tasklet_hi_vec to i32)
  %6 = inttoptr i32 %add to ptr
  tail call fastcc void @tasklet_action_common(ptr noundef %6, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spawn_ksoftirqd() #9 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 16, ptr noundef nonnull @.str.50, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @takeover_tasklets, i1 noundef zeroext false) #15
  %call1 = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @softirq_threads) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end7, label %do.body4, !prof !245

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/softirq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 970, 0\0A.popsection", ""() #15, !srcloc !284
  unreachable

do.end7:                                          ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @early_irq_init() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_early_irq_init() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_dynirq_lower_bound(i32 noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %from
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irq_handler_entry(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %irq = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %3, ptr noundef %add.ptr) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irq_handler_exit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %irq = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret1, align 4
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, i32 noundef %3, ptr noundef nonnull %cond) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_softirq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vec = getelementptr inbounds %struct.trace_event_raw_softirq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vec, align 4
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_softirq.symbols) #15
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, i32 noundef %3, ptr noundef %call2) #15
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kthread_should_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqtime_account_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idle_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_irq_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_action_common(ptr noundef %tl_head, i32 noundef %softirq_nr) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !259
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = ptrtoint ptr %tl_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tl_head, align 4
  store ptr null, ptr %tl_head, align 4
  %tail = getelementptr inbounds %struct.tasklet_head, ptr %tl_head, i32 0, i32 1
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tl_head, ptr %tail, align 4
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  %tobool7.not7 = icmp eq ptr %2, null
  br i1 %tobool7.not7, label %while.end, label %while.body

while.body:                                       ; preds = %cleanup, %if.end
  %list.08 = phi ptr [ %5, %cleanup ], [ %2, %if.end ]
  %4 = ptrtoint ptr %list.08 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.08, align 4
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state.i) #15
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.then10, label %do.body22

if.then10:                                        ; preds = %while.body
  %count = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #15
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %count, align 4
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.then10
  %call.i2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state.i) #15
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.end.i, label %if.then15

land.end.i:                                       ; preds = %if.then13
  %.b48.i = load i1, ptr @tasklet_clear_sched.__already_done, align 1
  br i1 %.b48.i, label %if.end19, label %if.then7.i, !prof !245

if.then7.i:                                       ; preds = %land.end.i
  store i1 true, ptr @tasklet_clear_sched.__already_done, align 1
  %use_callback.i = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 3
  %8 = ptrtoint ptr %use_callback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_callback.i, align 4, !range !281
  %tobool17.not.i = icmp eq i8 %9, 0
  %cond.i = select i1 %tobool17.not.i, ptr @.str.49, ptr @.str.48
  %cond20.in.i = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 4
  %10 = ptrtoint ptr %cond20.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond20.i = load ptr, ptr %cond20.in.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 758, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond.i, ptr noundef %cond20.i) #15
  br label %if.end19

if.then15:                                        ; preds = %if.then13
  tail call void @wake_up_var(ptr noundef %state.i) #15
  %use_callback = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 3
  %11 = ptrtoint ptr %use_callback to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_callback, align 4, !range !281
  %tobool16.not = icmp eq i8 %12, 0
  %13 = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  tail call void %15(ptr noundef nonnull %list.08) #15
  br label %if.end19

if.else:                                          ; preds = %if.then15
  %data = getelementptr inbounds %struct.tasklet_struct, ptr %list.08, i32 0, i32 5
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  tail call void %15(i32 noundef %17) #15
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17, %if.then7.i, %land.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !282
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !283
  tail call void @wake_up_var(ptr noundef %state.i) #15
  br label %cleanup

if.end20:                                         ; preds = %if.then10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !282
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !283
  tail call void @wake_up_var(ptr noundef %state.i) #15
  br label %do.body22

do.body22:                                        ; preds = %if.end20, %while.body
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i6 = and i32 %18, 128
  %tobool25.not = icmp eq i32 %and.i.i6, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !259
  br i1 %tobool25.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body22
  tail call void @trace_hardirqs_off() #15
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.body22
  %19 = ptrtoint ptr %list.08 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %list.08, align 4
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list.08, ptr %21, align 4
  store ptr %list.08, ptr %tail, align 4
  tail call void @__raise_softirq_irqoff(i32 noundef %softirq_nr)
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end19
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @takeover_tasklets(i32 noundef %cpu) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !259
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @tasklet_vec to i32)
  %3 = inttoptr i32 %add to ptr
  %tail = getelementptr inbounds %struct.tasklet_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail, align 4
  %cmp.not = icmp eq ptr %5, %3
  br i1 %cmp.not, label %if.end101, label %do.body14

do.body14:                                        ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu36 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu36, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %13, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_vec, i32 0, i32 1) to i32)
  %14 = inttoptr i32 %add38 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %16, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add54 = add i32 %19, ptrtoint (ptr @tasklet_vec to i32)
  %20 = inttoptr i32 %add54 to ptr
  %tail55 = getelementptr inbounds %struct.tasklet_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %tail55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail55, align 4
  %23 = load i32, ptr %cpu36, align 4
  %arrayidx65 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx65, align 4
  %add66 = add i32 %25, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_vec, i32 0, i32 1) to i32)
  %26 = inttoptr i32 %add66 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %26, align 4
  %28 = load i32, ptr %arrayidx, align 4
  %add79 = add i32 %28, ptrtoint (ptr @tasklet_vec to i32)
  %29 = inttoptr i32 %add79 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  %31 = load i32, ptr %arrayidx, align 4
  %add89 = add i32 %31, ptrtoint (ptr @tasklet_vec to i32)
  %32 = inttoptr i32 %add89 to ptr
  %tail100 = getelementptr inbounds %struct.tasklet_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %tail100 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %tail100, align 4
  br label %if.end101

if.end101:                                        ; preds = %do.body14, %if.end
  tail call void @__raise_softirq_irqoff(i32 noundef 6) #15
  %34 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i232 = and i32 %37, 15728640
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i7.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i7.i to ptr
  %preempt_count.i8.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i8.i, align 4
  %and2.i = and i32 %41, 983040
  %or.i = or i32 %and2.i, %and.i232
  %42 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i9.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i9.i to ptr
  %preempt_count.i10.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i10.i, align 4
  %and4.i = and i32 %45, 65280
  %or5.i = or i32 %or.i, %and4.i
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %raise_softirq_irqoff.exit

land.lhs.true.i:                                  ; preds = %if.end101
  %46 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i11.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %51, ptrtoint (ptr @ksoftirqd to i32)
  %52 = inttoptr i32 %add.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %raise_softirq_irqoff.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %call9.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %54) #15
  br label %raise_softirq_irqoff.exit

raise_softirq_irqoff.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i, %if.end101
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %add110 = add i32 %56, ptrtoint (ptr @tasklet_hi_vec to i32)
  %57 = inttoptr i32 %add110 to ptr
  %tail121 = getelementptr inbounds %struct.tasklet_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %tail121 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail121, align 4
  %cmp122.not = icmp eq ptr %59, %57
  br i1 %cmp122.not, label %if.end214, label %do.body124

do.body124:                                       ; preds = %raise_softirq_irqoff.exit
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %62 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i233 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i233 to ptr
  %cpu149 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu149 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu149, align 4
  %arrayidx150 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx150, align 4
  %add151 = add i32 %67, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_hi_vec, i32 0, i32 1) to i32)
  %68 = inttoptr i32 %add151 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %61, ptr %70, align 4
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %add167 = add i32 %73, ptrtoint (ptr @tasklet_hi_vec to i32)
  %74 = inttoptr i32 %add167 to ptr
  %tail168 = getelementptr inbounds %struct.tasklet_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %tail168 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail168, align 4
  %77 = load i32, ptr %cpu149, align 4
  %arrayidx178 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx178, align 4
  %add179 = add i32 %79, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_hi_vec, i32 0, i32 1) to i32)
  %80 = inttoptr i32 %add179 to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %76, ptr %80, align 4
  %82 = load i32, ptr %arrayidx, align 4
  %add192 = add i32 %82, ptrtoint (ptr @tasklet_hi_vec to i32)
  %83 = inttoptr i32 %add192 to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %83, align 4
  %85 = load i32, ptr %arrayidx, align 4
  %add202 = add i32 %85, ptrtoint (ptr @tasklet_hi_vec to i32)
  %86 = inttoptr i32 %add202 to ptr
  %tail213 = getelementptr inbounds %struct.tasklet_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %tail213 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %tail213, align 4
  br label %if.end214

if.end214:                                        ; preds = %do.body124, %raise_softirq_irqoff.exit
  tail call void @__raise_softirq_irqoff(i32 noundef 0) #15
  %88 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i.i234 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i234 to ptr
  %preempt_count.i.i235 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i235 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i235, align 4
  %and.i236 = and i32 %91, 15728640
  %92 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i7.i237 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i7.i237 to ptr
  %preempt_count.i8.i238 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i8.i238 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i8.i238, align 4
  %and2.i239 = and i32 %95, 983040
  %or.i240 = or i32 %and2.i239, %and.i236
  %96 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i9.i241 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i9.i241 to ptr
  %preempt_count.i10.i242 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i10.i242 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i10.i242, align 4
  %and4.i243 = and i32 %99, 65280
  %or5.i244 = or i32 %or.i240, %and4.i243
  %tobool.not.i245 = icmp eq i32 %or5.i244, 0
  br i1 %tobool.not.i245, label %land.lhs.true.i251, label %raise_softirq_irqoff.exit254

land.lhs.true.i251:                               ; preds = %if.end214
  %100 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i.i11.i246 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i11.i246 to ptr
  %cpu.i.i247 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu.i.i247 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu.i.i247, align 4
  %arrayidx.i.i248 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i248 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i248, align 4
  %add.i.i249 = add i32 %105, ptrtoint (ptr @ksoftirqd to i32)
  %106 = inttoptr i32 %add.i.i249 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %tobool.not.i.i250 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i250, label %raise_softirq_irqoff.exit254, label %if.then.i.i253

if.then.i.i253:                                   ; preds = %land.lhs.true.i251
  %call9.i.i252 = tail call i32 @wake_up_process(ptr noundef nonnull %108) #15
  br label %raise_softirq_irqoff.exit254

raise_softirq_irqoff.exit254:                     ; preds = %if.then.i.i253, %land.lhs.true.i251, %if.end214
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksoftirqd_should_run(i32 noundef %cpu) #14 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu8, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @irq_stat to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @run_ksoftirqd(i32 noundef %cpu) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !249
  %and.i.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !259
  br i1 %tobool.not.i, label %if.then.i, label %ksoftirqd_run_begin.exit

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #15
  br label %ksoftirqd_run_begin.exit

ksoftirqd_run_begin.exit:                         ; preds = %if.then.i, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu8, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @irq_stat to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ksoftirqd_run_begin.exit
  tail call void @__do_softirq()
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  tail call void @__might_resched(ptr noundef nonnull @.str.20, i32 noundef 923, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  br label %return

if.end:                                           ; preds = %ksoftirqd_run_begin.exit
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !260
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !156, !157, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !179, !180, !181, !182, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !209, !210, !211, !212, !213, !215, !216, !217, !218, !220, !222, !223, !224, !226, !227, !228, !229, !231, !233}
!llvm.named.register.sp = !{!235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @__tracepoint_irq_handler_entry, !1, !"__tracepoint_irq_handler_entry", i1 false, i1 false}
!1 = !{!"../include/trace/events/irq.h", i32 53, i32 1}
!2 = !{ptr @__tracepoint_ptr_irq_handler_entry, !1, !"__tracepoint_ptr_irq_handler_entry", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_irq_handler_entry, !1, !"__SCK__tp_func_irq_handler_entry", i1 false, i1 false}
!4 = !{ptr @__tracepoint_irq_handler_exit, !5, !"__tracepoint_irq_handler_exit", i1 false, i1 false}
!5 = !{!"../include/trace/events/irq.h", i32 83, i32 1}
!6 = !{ptr @__tracepoint_ptr_irq_handler_exit, !5, !"__tracepoint_ptr_irq_handler_exit", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_irq_handler_exit, !5, !"__SCK__tp_func_irq_handler_exit", i1 false, i1 false}
!8 = !{ptr @__tracepoint_softirq_entry, !9, !"__tracepoint_softirq_entry", i1 false, i1 false}
!9 = !{!"../include/trace/events/irq.h", i32 128, i32 1}
!10 = !{ptr @__tracepoint_ptr_softirq_entry, !9, !"__tracepoint_ptr_softirq_entry", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_softirq_entry, !9, !"__SCK__tp_func_softirq_entry", i1 false, i1 false}
!12 = !{ptr @__tracepoint_softirq_exit, !13, !"__tracepoint_softirq_exit", i1 false, i1 false}
!13 = !{!"../include/trace/events/irq.h", i32 142, i32 1}
!14 = !{ptr @__tracepoint_ptr_softirq_exit, !13, !"__tracepoint_ptr_softirq_exit", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_softirq_exit, !13, !"__SCK__tp_func_softirq_exit", i1 false, i1 false}
!16 = !{ptr @__tracepoint_softirq_raise, !17, !"__tracepoint_softirq_raise", i1 false, i1 false}
!17 = !{!"../include/trace/events/irq.h", i32 156, i32 1}
!18 = !{ptr @__tracepoint_ptr_softirq_raise, !17, !"__tracepoint_ptr_softirq_raise", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_softirq_raise, !17, !"__SCK__tp_func_softirq_raise", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/trace/events/irq.h", i32 31, i32 1}
!22 = !{ptr @__TRACE_SYSTEM_HI_SOFTIRQ, !21, !"__TRACE_SYSTEM_HI_SOFTIRQ", i1 false, i1 false}
!23 = !{ptr @TRACE_SYSTEM_HI_SOFTIRQ, !21, !"TRACE_SYSTEM_HI_SOFTIRQ", i1 false, i1 false}
!24 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__TRACE_SYSTEM_TIMER_SOFTIRQ, !21, !"__TRACE_SYSTEM_TIMER_SOFTIRQ", i1 false, i1 false}
!26 = !{ptr @TRACE_SYSTEM_TIMER_SOFTIRQ, !21, !"TRACE_SYSTEM_TIMER_SOFTIRQ", i1 false, i1 false}
!27 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__TRACE_SYSTEM_NET_TX_SOFTIRQ, !21, !"__TRACE_SYSTEM_NET_TX_SOFTIRQ", i1 false, i1 false}
!29 = !{ptr @TRACE_SYSTEM_NET_TX_SOFTIRQ, !21, !"TRACE_SYSTEM_NET_TX_SOFTIRQ", i1 false, i1 false}
!30 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__TRACE_SYSTEM_NET_RX_SOFTIRQ, !21, !"__TRACE_SYSTEM_NET_RX_SOFTIRQ", i1 false, i1 false}
!32 = !{ptr @TRACE_SYSTEM_NET_RX_SOFTIRQ, !21, !"TRACE_SYSTEM_NET_RX_SOFTIRQ", i1 false, i1 false}
!33 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__TRACE_SYSTEM_BLOCK_SOFTIRQ, !21, !"__TRACE_SYSTEM_BLOCK_SOFTIRQ", i1 false, i1 false}
!35 = !{ptr @TRACE_SYSTEM_BLOCK_SOFTIRQ, !21, !"TRACE_SYSTEM_BLOCK_SOFTIRQ", i1 false, i1 false}
!36 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, !21, !"__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ", i1 false, i1 false}
!38 = !{ptr @TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, !21, !"TRACE_SYSTEM_IRQ_POLL_SOFTIRQ", i1 false, i1 false}
!39 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__TRACE_SYSTEM_TASKLET_SOFTIRQ, !21, !"__TRACE_SYSTEM_TASKLET_SOFTIRQ", i1 false, i1 false}
!41 = !{ptr @TRACE_SYSTEM_TASKLET_SOFTIRQ, !21, !"TRACE_SYSTEM_TASKLET_SOFTIRQ", i1 false, i1 false}
!42 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__TRACE_SYSTEM_SCHED_SOFTIRQ, !21, !"__TRACE_SYSTEM_SCHED_SOFTIRQ", i1 false, i1 false}
!44 = !{ptr @TRACE_SYSTEM_SCHED_SOFTIRQ, !21, !"TRACE_SYSTEM_SCHED_SOFTIRQ", i1 false, i1 false}
!45 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__TRACE_SYSTEM_HRTIMER_SOFTIRQ, !21, !"__TRACE_SYSTEM_HRTIMER_SOFTIRQ", i1 false, i1 false}
!47 = !{ptr @TRACE_SYSTEM_HRTIMER_SOFTIRQ, !21, !"TRACE_SYSTEM_HRTIMER_SOFTIRQ", i1 false, i1 false}
!48 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__TRACE_SYSTEM_RCU_SOFTIRQ, !21, !"__TRACE_SYSTEM_RCU_SOFTIRQ", i1 false, i1 false}
!50 = !{ptr @TRACE_SYSTEM_RCU_SOFTIRQ, !21, !"TRACE_SYSTEM_RCU_SOFTIRQ", i1 false, i1 false}
!51 = !{ptr @event_class_irq_handler_entry, !1, !"event_class_irq_handler_entry", i1 false, i1 false}
!52 = !{ptr @event_irq_handler_entry, !1, !"event_irq_handler_entry", i1 false, i1 false}
!53 = !{ptr @__event_irq_handler_entry, !1, !"__event_irq_handler_entry", i1 false, i1 false}
!54 = !{ptr @event_class_irq_handler_exit, !5, !"event_class_irq_handler_exit", i1 false, i1 false}
!55 = !{ptr @event_irq_handler_exit, !5, !"event_irq_handler_exit", i1 false, i1 false}
!56 = !{ptr @__event_irq_handler_exit, !5, !"__event_irq_handler_exit", i1 false, i1 false}
!57 = !{ptr @event_class_softirq, !58, !"event_class_softirq", i1 false, i1 false}
!58 = !{!"../include/trace/events/irq.h", i32 103, i32 1}
!59 = !{ptr @event_softirq_entry, !9, !"event_softirq_entry", i1 false, i1 false}
!60 = !{ptr @__event_softirq_entry, !9, !"__event_softirq_entry", i1 false, i1 false}
!61 = !{ptr @event_softirq_exit, !13, !"event_softirq_exit", i1 false, i1 false}
!62 = !{ptr @__event_softirq_exit, !13, !"__event_softirq_exit", i1 false, i1 false}
!63 = !{ptr @event_softirq_raise, !17, !"event_softirq_raise", i1 false, i1 false}
!64 = !{ptr @__event_softirq_raise, !17, !"__event_softirq_raise", i1 false, i1 false}
!65 = !{ptr @__bpf_trace_tp_map_irq_handler_entry, !1, !"__bpf_trace_tp_map_irq_handler_entry", i1 false, i1 false}
!66 = !{ptr @__bpf_trace_tp_map_irq_handler_exit, !5, !"__bpf_trace_tp_map_irq_handler_exit", i1 false, i1 false}
!67 = !{ptr @__bpf_trace_tp_map_softirq_entry, !9, !"__bpf_trace_tp_map_softirq_entry", i1 false, i1 false}
!68 = !{ptr @__bpf_trace_tp_map_softirq_exit, !13, !"__bpf_trace_tp_map_softirq_exit", i1 false, i1 false}
!69 = !{ptr @__bpf_trace_tp_map_softirq_raise, !17, !"__bpf_trace_tp_map_softirq_raise", i1 false, i1 false}
!70 = !{ptr @__ksymtab_irq_stat, !71, !"__ksymtab_irq_stat", i1 false, i1 false}
!71 = !{!"../kernel/softirq.c", i32 56, i32 1}
!72 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/softirq.c", i32 64, i32 2}
!74 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/softirq.c", i32 64, i32 8}
!76 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/softirq.c", i32 64, i32 17}
!78 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/softirq.c", i32 64, i32 27}
!80 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/softirq.c", i32 64, i32 37}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/softirq.c", i32 64, i32 46}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/softirq.c", i32 65, i32 2}
!86 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/softirq.c", i32 65, i32 13}
!88 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/softirq.c", i32 65, i32 22}
!90 = !{ptr @.str.19, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/softirq.c", i32 65, i32 33}
!92 = !{ptr @softirq_to_name, !93, !"softirq_to_name", i1 false, i1 false}
!93 = !{!"../kernel/softirq.c", i32 63, i32 20}
!94 = !{ptr @__ksymtab_hardirqs_enabled, !95, !"__ksymtab_hardirqs_enabled", i1 false, i1 false}
!95 = !{!"../kernel/softirq.c", i32 101, i32 1}
!96 = !{ptr @__ksymtab_hardirq_context, !97, !"__ksymtab_hardirq_context", i1 false, i1 false}
!97 = !{!"../kernel/softirq.c", i32 102, i32 1}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../kernel/softirq.c", i32 308, i32 2}
!100 = !{ptr @.str.20, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__ksymtab___local_bh_disable_ip, !102, !"__ksymtab___local_bh_disable_ip", i1 false, i1 false}
!102 = !{!"../kernel/softirq.c", i32 333, i32 1}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../kernel/softirq.c", i32 355, i32 2}
!105 = !{ptr @__ksymtab__local_bh_enable, !106, !"__ksymtab__local_bh_enable", i1 false, i1 false}
!106 = !{!"../kernel/softirq.c", i32 358, i32 1}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../kernel/softirq.c", i32 362, i32 2}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../kernel/softirq.c", i32 363, i32 2}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/softirq.c", i32 378, i32 6}
!113 = !{ptr @__ksymtab___local_bh_enable_ip, !114, !"__ksymtab___local_bh_enable_ip", i1 false, i1 false}
!114 = !{!"../kernel/softirq.c", i32 392, i32 1}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/softirq.c", i32 540, i32 2}
!117 = !{ptr @.str.24, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/softirq.c", i32 561, i32 4}
!119 = !{ptr @.str.25, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__do_softirq._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @__do_softirq._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/softirq.c", i32 596, i32 2}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/softirq.c", i32 651, i32 2}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../kernel/softirq.c", i32 698, i32 2}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/softirq.c", i32 700, i32 2}
!130 = !{ptr @__ksymtab___tasklet_schedule, !131, !"__ksymtab___tasklet_schedule", i1 false, i1 false}
!131 = !{!"../kernel/softirq.c", i32 740, i32 1}
!132 = !{ptr @__ksymtab___tasklet_hi_schedule, !133, !"__ksymtab___tasklet_hi_schedule", i1 false, i1 false}
!133 = !{!"../kernel/softirq.c", i32 747, i32 1}
!134 = !{ptr @__ksymtab_tasklet_setup, !135, !"__ksymtab_tasklet_setup", i1 false, i1 false}
!135 = !{!"../kernel/softirq.c", i32 823, i32 1}
!136 = !{ptr @__ksymtab_tasklet_init, !137, !"__ksymtab_tasklet_init", i1 false, i1 false}
!137 = !{!"../kernel/softirq.c", i32 835, i32 1}
!138 = !{ptr @__ksymtab_tasklet_unlock_spin_wait, !139, !"__ksymtab_tasklet_unlock_spin_wait", i1 false, i1 false}
!139 = !{!"../kernel/softirq.c", i32 860, i32 1}
!140 = !{ptr @.str.29, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/softirq.c", i32 866, i32 3}
!142 = !{ptr @.str.30, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @tasklet_kill._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @tasklet_kill._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @__ksymtab_tasklet_kill, !146, !"__ksymtab_tasklet_kill", i1 false, i1 false}
!146 = !{!"../kernel/softirq.c", i32 874, i32 1}
!147 = !{ptr @__ksymtab_tasklet_unlock, !148, !"__ksymtab_tasklet_unlock", i1 false, i1 false}
!148 = !{!"../kernel/softirq.c", i32 884, i32 1}
!149 = !{ptr @__ksymtab_tasklet_unlock_wait, !150, !"__ksymtab_tasklet_unlock_wait", i1 false, i1 false}
!150 = !{!"../kernel/softirq.c", i32 890, i32 1}
!151 = !{ptr @__initcall__kmod_softirq__311_974_spawn_ksoftirqdearly, !152, !"__initcall__kmod_softirq__311_974_spawn_ksoftirqdearly", i1 false, i1 false}
!152 = !{!"../kernel/softirq.c", i32 974, i32 1}
!153 = !{ptr @__pcpu_scope_irq_stat, !154, !"__pcpu_scope_irq_stat", i1 false, i1 false}
!154 = !{!"../kernel/softirq.c", i32 55, i32 1}
!155 = !{ptr @__pcpu_unique_irq_stat, !154, !"__pcpu_unique_irq_stat", i1 false, i1 false}
!156 = !{ptr @irq_stat, !154, !"irq_stat", i1 false, i1 false}
!157 = !{ptr @softirq_vec, !158, !"softirq_vec", i1 false, i1 false}
!158 = !{!"../kernel/softirq.c", i32 59, i32 30}
!159 = !{ptr @__pcpu_scope_ksoftirqd, !160, !"__pcpu_scope_ksoftirqd", i1 false, i1 false}
!160 = !{!"../kernel/softirq.c", i32 61, i32 1}
!161 = !{ptr @__pcpu_unique_ksoftirqd, !160, !"__pcpu_unique_ksoftirqd", i1 false, i1 false}
!162 = !{ptr @ksoftirqd, !160, !"ksoftirqd", i1 false, i1 false}
!163 = !{ptr @__pcpu_scope_hardirqs_enabled, !164, !"__pcpu_scope_hardirqs_enabled", i1 false, i1 false}
!164 = !{!"../kernel/softirq.c", i32 99, i32 1}
!165 = !{ptr @__pcpu_unique_hardirqs_enabled, !164, !"__pcpu_unique_hardirqs_enabled", i1 false, i1 false}
!166 = !{ptr @hardirqs_enabled, !164, !"hardirqs_enabled", i1 false, i1 false}
!167 = !{ptr @__pcpu_scope_hardirq_context, !168, !"__pcpu_scope_hardirq_context", i1 false, i1 false}
!168 = !{!"../kernel/softirq.c", i32 100, i32 1}
!169 = !{ptr @__pcpu_unique_hardirq_context, !168, !"__pcpu_unique_hardirq_context", i1 false, i1 false}
!170 = !{ptr @hardirq_context, !168, !"hardirq_context", i1 false, i1 false}
!171 = !{ptr @__pcpu_unique_tasklet_vec, !172, !"__pcpu_unique_tasklet_vec", i1 false, i1 false}
!172 = !{!"../kernel/softirq.c", i32 716, i32 8}
!173 = !{ptr @tasklet_vec, !172, !"tasklet_vec", i1 false, i1 false}
!174 = !{ptr @__pcpu_unique_tasklet_hi_vec, !175, !"__pcpu_unique_tasklet_hi_vec", i1 false, i1 false}
!175 = !{!"../kernel/softirq.c", i32 717, i32 8}
!176 = !{ptr @tasklet_hi_vec, !175, !"tasklet_hi_vec", i1 false, i1 false}
!177 = !{ptr @__tpstrtab_irq_handler_entry, !1, !"__tpstrtab_irq_handler_entry", i1 false, i1 false}
!178 = !{ptr @__tpstrtab_irq_handler_exit, !5, !"__tpstrtab_irq_handler_exit", i1 false, i1 false}
!179 = !{ptr @__tpstrtab_softirq_entry, !9, !"__tpstrtab_softirq_entry", i1 false, i1 false}
!180 = !{ptr @__tpstrtab_softirq_exit, !13, !"__tpstrtab_softirq_exit", i1 false, i1 false}
!181 = !{ptr @__tpstrtab_softirq_raise, !17, !"__tpstrtab_softirq_raise", i1 false, i1 false}
!182 = !{ptr @str__irq__trace_system_name, !183, !"str__irq__trace_system_name", i1 false, i1 false}
!183 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!184 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @trace_event_fields_irq_handler_entry, !1, !"trace_event_fields_irq_handler_entry", i1 false, i1 false}
!190 = !{ptr @trace_event_type_funcs_irq_handler_entry, !1, !"trace_event_type_funcs_irq_handler_entry", i1 false, i1 false}
!191 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @print_fmt_irq_handler_entry, !1, !"print_fmt_irq_handler_entry", i1 false, i1 false}
!193 = !{ptr @.str.37, !5, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @trace_event_fields_irq_handler_exit, !5, !"trace_event_fields_irq_handler_exit", i1 false, i1 false}
!195 = !{ptr @trace_event_type_funcs_irq_handler_exit, !5, !"trace_event_type_funcs_irq_handler_exit", i1 false, i1 false}
!196 = !{ptr @.str.38, !5, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.39, !5, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.40, !5, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @print_fmt_irq_handler_exit, !5, !"print_fmt_irq_handler_exit", i1 false, i1 false}
!200 = !{ptr @.str.41, !58, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.42, !58, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @trace_event_fields_softirq, !58, !"trace_event_fields_softirq", i1 false, i1 false}
!203 = !{ptr @trace_event_type_funcs_softirq, !58, !"trace_event_type_funcs_softirq", i1 false, i1 false}
!204 = !{ptr @.str.43, !58, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @trace_raw_output_softirq.symbols, !58, !"symbols", i1 false, i1 false}
!206 = !{ptr @print_fmt_softirq, !58, !"print_fmt_softirq", i1 false, i1 false}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../kernel/softirq.c", i32 338, i32 2}
!209 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!210 = !{ptr @.str.44, !9, !"<string literal>", i1 false, i1 false}
!211 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!212 = !{ptr @.str.45, !9, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!215 = !{ptr @.str.46, !214, !"<string literal>", i1 false, i1 false}
!216 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!217 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../kernel/softirq.c", i32 402, i32 2}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../kernel/softirq.c", i32 632, i32 2}
!222 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!223 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../kernel/softirq.c", i32 756, i32 2}
!226 = !{ptr @.str.47, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.48, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.49, !225, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.50, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../kernel/softirq.c", i32 968, i32 48}
!231 = !{ptr @.str.51, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../kernel/softirq.c", i32 963, i32 18}
!233 = !{ptr @softirq_threads, !234, !"softirq_threads", i1 false, i1 false}
!234 = !{!"../kernel/softirq.c", i32 959, i32 34}
!235 = !{!"sp"}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{!"branch_weights", i32 2000, i32 1}
!246 = !{!"branch_weights", i32 1, i32 2000}
!247 = !{!"auto-init"}
!248 = !{i64 770897, i64 770958}
!249 = !{i64 773629}
!250 = !{i64 773914}
!251 = !{i64 2155795797}
!252 = !{i64 2155800731}
!253 = !{i64 2155822413}
!254 = !{i64 2155827307}
!255 = !{i64 2156066887}
!256 = !{i64 2156071821}
!257 = !{i64 2156093505}
!258 = !{i64 2156098399}
!259 = !{i64 771332}
!260 = !{i64 771142}
!261 = !{i32 0, i32 33}
!262 = !{i64 2148849869, i64 2148849874, i64 2148849887, i64 2148849931, i64 2148849965, i64 2148849986}
!263 = !{i64 2154475878}
!264 = !{i64 2154476079}
!265 = !{i64 2149323532}
!266 = !{i64 2149324568}
!267 = !{i64 2154491688}
!268 = !{i64 2154491887}
!269 = !{i64 2156423323}
!270 = !{i64 2156428257}
!271 = !{i64 2156449939}
!272 = !{i64 2156454833}
!273 = !{i64 2156710415}
!274 = !{i64 2156715349}
!275 = !{i64 2156737031}
!276 = !{i64 2156741925}
!277 = !{i64 2154507482}
!278 = !{i64 2154507683}
!279 = !{i64 2156771822}
!280 = !{i64 2156771664}
!281 = !{i8 0, i8 2}
!282 = !{i64 2156778927}
!283 = !{i64 2156779224}
!284 = !{i64 2156850215, i64 2156850696, i64 2156850252, i64 2156850308, i64 2156850342, i64 2156850366, i64 2156850407, i64 2156850428, i64 2156850456, i64 2156850490}
