; ModuleID = '/llk/IR_all_yes/kernel/irq/handle.c_pt.bc'
source_filename = "../kernel/irq/handle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+handle_bad_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_handle_bad_irq\09\09\09\09"
module asm "\09.long\09__crc_handle_bad_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_bad_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_bad_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_bad_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+no_action\22, \22a\22\09"
module asm "\09.weak\09__crc_no_action\09\09\09\09"
module asm "\09.long\09__crc_no_action\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_action:\09\09\09\09\09"
module asm "\09.asciz \09\22no_action\22\09\09\09\09\09"
module asm "__kstrtabns_no_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_handle_bad_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_bad_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_bad_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_bad_irq to i32), ptr @__kstrtab_handle_bad_irq, ptr @__kstrtabns_handle_bad_irq }, section "___ksymtab_gpl+handle_bad_irq", align 4
@__kstrtab_no_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_action = external dso_local constant [0 x i8], align 1
@__ksymtab_no_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_action to i32), ptr @__kstrtab_no_action, ptr @__kstrtabns_no_action }, section "___ksymtab_gpl+no_action", align 4
@__handle_irq_event_percpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/irq/handle.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"irq %u handler %pS enabled interrupts\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_arch_irq = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@print_irq_desc.ratelimit = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 5, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ratelimit.lock\00", [17 x i8] zeroinitializer }, align 32
@__func__.print_irq_desc = private unnamed_addr constant [15 x i8] c"print_irq_desc\00", align 1
@print_irq_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.print_irq_desc, ptr @.str.4, i32 19, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"irq %d, desc: %p, depth: %d, count: %d, unhandled: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/irq/debug.h\00", [45 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr = internal global ptr @print_irq_desc._entry, section ".printk_index", align 4
@print_irq_desc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.print_irq_desc, ptr @.str.4, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"->handle_irq():  %p, %pS\0A\00", [38 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.7 = internal global ptr @print_irq_desc._entry.5, section ".printk_index", align 4
@print_irq_desc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.print_irq_desc, ptr @.str.4, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"->irq_data.chip(): %p, %pS\0A\00", [36 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.10 = internal global ptr @print_irq_desc._entry.8, section ".printk_index", align 4
@print_irq_desc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.print_irq_desc, ptr @.str.4, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"->action(): %p\0A\00", [16 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.13 = internal global ptr @print_irq_desc._entry.11, section ".printk_index", align 4
@print_irq_desc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.print_irq_desc, ptr @.str.4, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"->action->handler(): %p, %pS\0A\00", [34 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.16 = internal global ptr @print_irq_desc._entry.14, section ".printk_index", align 4
@print_irq_desc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%14s set\0A\00", [22 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.19 = internal global ptr @print_irq_desc._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ_LEVEL\00", [22 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.22 = internal global ptr @print_irq_desc._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_PER_CPU\00", [20 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.25 = internal global ptr @print_irq_desc._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_NOPROBE\00", [20 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.28 = internal global ptr @print_irq_desc._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IRQ_NOREQUEST\00", [18 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.31 = internal global ptr @print_irq_desc._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ_NOTHREAD\00", [19 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.34 = internal global ptr @print_irq_desc._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ_NOAUTOEN\00", [19 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.37 = internal global ptr @print_irq_desc._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQS_AUTODETECT\00", [16 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.40 = internal global ptr @print_irq_desc._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQS_REPLAY\00", [20 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.43 = internal global ptr @print_irq_desc._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_WAITING\00", [19 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.46 = internal global ptr @print_irq_desc._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_PENDING\00", [19 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@irq_err_count = external dso_local local_unnamed_addr global i32, align 4
@ack_bad_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.51, i32 12, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012unexpected IRQ trap at vector %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ack_bad_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/include/asm/hw_irq.h\00", [34 x i8] zeroinitializer }, align 32
@ack_bad_irq._entry_ptr = internal global ptr @ack_bad_irq._entry, section ".printk_index", align 4
@__tracepoint_irq_handler_entry = external dso_local global %struct.tracepoint, align 4
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/irq.h\00", [37 x i8] zeroinitializer }, align 32
@trace_irq_handler_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_irq_handler_exit = external dso_local global %struct.tracepoint, align 4
@trace_irq_handler_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@warn_no_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014IRQ %d device %s returned IRQ_WAKE_THREAD but no thread function available.\00", [50 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"warn_no_thread\00", [17 x i8] zeroinitializer }, align 32
@warn_no_thread._entry_ptr = internal global ptr @warn_no_thread._entry, section ".printk_index", align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 161, i32 7 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 13, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 18, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 20, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 22, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 24, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 26, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 30, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 31, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 32, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 33, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 34, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 35, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 37, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 38, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 39, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"../kernel/irq/debug.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 40, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [33 x i8] c"../arch/arm/include/asm/hw_irq.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 12, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [30 x i8] c"../include/trace/events/irq.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 53, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 108, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [23 x i8] c"../kernel/irq/handle.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 57, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__ksymtab_handle_bad_irq, ptr @__ksymtab_no_action, ptr @ack_bad_irq._entry, ptr @ack_bad_irq._entry_ptr, ptr @print_irq_desc._entry, ptr @print_irq_desc._entry.11, ptr @print_irq_desc._entry.14, ptr @print_irq_desc._entry.17, ptr @print_irq_desc._entry.21, ptr @print_irq_desc._entry.24, ptr @print_irq_desc._entry.27, ptr @print_irq_desc._entry.30, ptr @print_irq_desc._entry.33, ptr @print_irq_desc._entry.36, ptr @print_irq_desc._entry.39, ptr @print_irq_desc._entry.42, ptr @print_irq_desc._entry.45, ptr @print_irq_desc._entry.5, ptr @print_irq_desc._entry.8, ptr @print_irq_desc._entry_ptr, ptr @print_irq_desc._entry_ptr.10, ptr @print_irq_desc._entry_ptr.13, ptr @print_irq_desc._entry_ptr.16, ptr @print_irq_desc._entry_ptr.19, ptr @print_irq_desc._entry_ptr.22, ptr @print_irq_desc._entry_ptr.25, ptr @print_irq_desc._entry_ptr.28, ptr @print_irq_desc._entry_ptr.31, ptr @print_irq_desc._entry_ptr.34, ptr @print_irq_desc._entry_ptr.37, ptr @print_irq_desc._entry_ptr.40, ptr @print_irq_desc._entry_ptr.43, ptr @print_irq_desc._entry_ptr.46, ptr @print_irq_desc._entry_ptr.7, ptr @warn_no_thread._entry, ptr @warn_no_thread._entry_ptr, ptr @.str, ptr @.str.1, ptr @print_irq_desc.ratelimit, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc.ratelimit to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ack_bad_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_no_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @handle_bad_irq(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @print_irq_desc.ratelimit, ptr noundef nonnull @__func__.print_irq_desc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.print_irq_desc.exit_crit_edge, label %do.end.i

entry.print_irq_desc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %print_irq_desc.exit

do.end.i:                                         ; preds = %entry
  %depth.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 7
  %2 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %depth.i, align 4
  %irq_count.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 10
  %4 = ptrtoint ptr %irq_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_count.i, align 8
  %irqs_unhandled.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 12
  %6 = ptrtoint ptr %irqs_unhandled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqs_unhandled.i, align 32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef %desc, i32 noundef %3, i32 noundef %5, i32 noundef %7) #13
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 3
  %8 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle_irq.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %9, ptr noundef %9) #13
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i, align 8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %11, ptr noundef %11) #13
  %action.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %12 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %action.i, align 64
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %13) #13
  %14 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %action.i, align 64
  %tobool18.not.i = icmp eq ptr %15, null
  br i1 %tobool18.not.i, label %do.end.i.if.end27.i_crit_edge, label %do.end21.i

do.end.i.if.end27.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

do.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %17, ptr noundef %17) #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end21.i, %do.end.i.if.end27.i_crit_edge
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %18 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end34.i_crit_edge, label %do.end31.i

if.end27.i.if.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %if.end27.i.if.end34.i_crit_edge
  %20 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status_use_accessors.i, align 4
  %and36.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end43.i_crit_edge, label %do.end40.i

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end40.i, %if.end34.i.if.end43.i_crit_edge
  %22 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status_use_accessors.i, align 4
  %and45.i = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end52.i_crit_edge, label %do.end49.i

if.end43.i.if.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26) #13
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end49.i, %if.end43.i.if.end52.i_crit_edge
  %24 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status_use_accessors.i, align 4
  %and54.i = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end52.i.if.end61.i_crit_edge, label %do.end58.i

if.end52.i.if.end61.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

do.end58.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.29) #13
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end58.i, %if.end52.i.if.end61.i_crit_edge
  %26 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status_use_accessors.i, align 4
  %and63.i = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end61.i.if.end70.i_crit_edge, label %do.end67.i

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

do.end67.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.32) #13
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end67.i, %if.end61.i.if.end70.i_crit_edge
  %28 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status_use_accessors.i, align 4
  %and72.i = and i32 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end79.i_crit_edge, label %do.end76.i

if.end70.i.if.end79.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

do.end76.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.35) #13
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end76.i, %if.end70.i.if.end79.i_crit_edge
  %core_internal_state__do_not_mess_with_it.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %30 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and80.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end87.i_crit_edge, label %do.end84.i

if.end79.i.if.end87.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

do.end84.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.38) #13
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end84.i, %if.end79.i.if.end87.i_crit_edge
  %32 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and89.i = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end87.i.if.end96.i_crit_edge, label %do.end93.i

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

do.end93.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.41) #13
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.end93.i, %if.end87.i.if.end96.i_crit_edge
  %34 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and98.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.end96.i.if.end105.i_crit_edge, label %do.end102.i

if.end96.i.if.end105.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

do.end102.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.44) #13
  br label %if.end105.i

if.end105.i:                                      ; preds = %do.end102.i, %if.end96.i.if.end105.i_crit_edge
  %36 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and107.i = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %if.end105.i.print_irq_desc.exit_crit_edge, label %do.end111.i

if.end105.i.print_irq_desc.exit_crit_edge:        ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %print_irq_desc.exit

do.end111.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %call113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.47) #13
  br label %print_irq_desc.exit

print_irq_desc.exit:                              ; preds = %do.end111.i, %if.end105.i.print_irq_desc.exit_crit_edge, %entry.print_irq_desc.exit_crit_edge
  %kstat_irqs.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 2
  %38 = ptrtoint ptr %kstat_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kstat_irqs.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !105) #10
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %46, %40
  %47 = inttoptr i32 %add.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add7.i.i = add i32 %49, 1
  store i32 %add7.i.i, ptr %47, align 4
  %50 = load i32, ptr %cpu.i.i, align 4
  %arrayidx23.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx23.i.i, align 4
  %add24.i.i = add i32 %52, ptrtoint (ptr @kstat to i32)
  %53 = inttoptr i32 %add24.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add25.i.i = add i32 %55, 1
  store i32 %add25.i.i, ptr %53, align 4
  %tot_count.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 9
  %56 = ptrtoint ptr %tot_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tot_count.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %tot_count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_err_count to i32))
  %58 = load i32, ptr @irq_err_count, align 4
  %inc.i4 = add i32 %58, 1
  store i32 %inc.i4, ptr @irq_err_count, align 4
  %call.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @no_action(i32 %cpl, ptr nocapture readnone %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__irq_wake_thread(ptr noundef %desc, ptr noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 5
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 4
  %flags = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 9
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %thread_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %thread_mask = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 10
  %4 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thread_mask, align 8
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 20
  %6 = ptrtoint ptr %threads_oneshot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %threads_oneshot, align 8
  %or = or i32 %7, %5
  store i32 %or, ptr %threads_oneshot, align 8
  %threads_active = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %threads_active, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %threads_active, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %threads_active, ptr %threads_active, i32 1, ptr elementtype(i32) %threads_active) #10, !srcloc !115
  %9 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread, align 4
  %call5 = tail call i32 @wake_up_process(ptr noundef %10) #10
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__handle_irq_event_percpu(ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq2 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq2, align 4
  %action3 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %action3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %action.0116 = load ptr, ptr %action3, align 4
  %tobool.not117 = icmp eq ptr %action.0116, null
  br i1 %tobool.not117, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %threads_oneshot.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 20
  %threads_active.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %action.0119 = phi ptr [ %action.0116, %for.body.lr.ph ], [ %action.0, %sw.epilog.for.body_crit_edge ]
  %retval1.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %sw.epilog.for.body_crit_edge ]
  %3 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 32
  %and = and i32 %6, 74752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !105) #10
  %and.i112 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i112 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %hardirq_threaded = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 136
  %11 = ptrtoint ptr %hardirq_threaded to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %hardirq_threaded, align 16
  br label %if.end

if.end:                                           ; preds = %do.body, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call fastcc void @trace_irq_handler_entry(i32 noundef %1, ptr noundef nonnull %action.0119)
  %12 = ptrtoint ptr %action.0119 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %action.0119, align 128
  %dev_id = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 1
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %call6 = tail call i32 %13(i32 noundef %1, ptr noundef %15) #10
  tail call fastcc void @trace_irq_handler_exit(i32 noundef %1, ptr noundef nonnull %action.0119, i32 noundef %call6)
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !116
  %and.i113 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool19.not = icmp eq i32 %and.i113, 0
  br i1 %tobool19.not, label %land.rhs, label %if.end.if.end75_crit_edge

if.end.if.end75_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.rhs:                                         ; preds = %if.end
  %.b110 = load i1, ptr @__handle_irq_event_percpu.__already_done, align 1
  br i1 %.b110, label %land.rhs.do.body66_crit_edge, label %if.then29, !prof !117

land.rhs.do.body66_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__handle_irq_event_percpu.__already_done, align 1
  %17 = ptrtoint ptr %action.0119 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %action.0119, align 128
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef %18) #10
  br label %do.body66

do.body66:                                        ; preds = %if.then29, %land.rhs.do.body66_crit_edge
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !116
  %and.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool68.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !118
  br i1 %tobool68.not, label %if.then71, label %do.body66.if.end75_crit_edge

do.body66.if.end75_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then71:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %do.body66.if.end75_crit_edge, %if.end.if.end75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cond = icmp eq i32 %call6, 2
  br i1 %cond, label %sw.bb, label %if.end75.sw.epilog_crit_edge

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end75
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 4
  %20 = ptrtoint ptr %thread_fn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %thread_fn, align 16
  %tobool76.not = icmp eq ptr %21, null
  br i1 %tobool76.not, label %if.then85, label %if.end86, !prof !119

if.then85:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @warn_no_thread(i32 noundef %1, ptr noundef nonnull %action.0119)
  br label %sw.epilog

if.end86:                                         ; preds = %sw.bb
  %thread.i = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 5
  %22 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thread.i, align 4
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i114 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %if.end.i, label %if.end86.sw.epilog_crit_edge

if.end86.sw.epilog_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end86
  %thread_flags.i = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 9
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %thread_flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %thread_mask.i = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 10
  %26 = ptrtoint ptr %thread_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %thread_mask.i, align 8
  %28 = ptrtoint ptr %threads_oneshot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %threads_oneshot.i, align 8
  %or.i = or i32 %29, %27
  store i32 %or.i, ptr %threads_oneshot.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %threads_active.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %threads_active.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %threads_active.i, ptr %threads_active.i, i32 1, ptr elementtype(i32) %threads_active.i) #10, !srcloc !115
  %31 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %32) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3.i, %if.end.i.sw.epilog_crit_edge, %if.end86.sw.epilog_crit_edge, %if.then85, %if.end75.sw.epilog_crit_edge
  %or = or i32 %call6, %retval1.0118
  %next = getelementptr inbounds %struct.irqaction, ptr %action.0119, i32 0, i32 3
  %33 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %33)
  %action.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %action.0, null
  br i1 %tobool.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %retval1.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %sw.epilog.for.end_crit_edge ]
  ret i32 %retval1.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_irq_handler_entry(i32 noundef %irq, ptr noundef %action) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 1), ptr blockaddress(@trace_irq_handler_entry, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !105) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %call42 = tail call i32 @__traceiter_irq_handler_entry(ptr noundef null, i32 noundef %irq, ptr noundef %action) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !105) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_irq_handler_entry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_irq_handler_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 70, ptr noundef nonnull @.str.53) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !124
  %31 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_irq_handler_exit(i32 noundef %irq, ptr noundef %action, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 1), ptr blockaddress(@trace_irq_handler_exit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !105) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !125
  %call42 = tail call i32 @__traceiter_irq_handler_exit(ptr noundef null, i32 noundef %irq, ptr noundef %action, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !105) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_irq_handler_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_irq_handler_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 101, ptr noundef nonnull @.str.53) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !124
  %31 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @warn_no_thread(i32 noundef %irq, ptr noundef %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 9
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %thread_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 11
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %irq, ptr noundef %1) #13
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @handle_irq_event_percpu(ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__handle_irq_event_percpu(ptr noundef %desc)
  %irq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @add_interrupt_randomness(i32 noundef %1) #10
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %2 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @note_interrupt(ptr noundef %desc, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_interrupt_randomness(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @note_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @handle_irq_event(ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %1, -513
  store i32 %and, ptr %core_internal_state__do_not_mess_with_it, align 8
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %3, align 4
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %call.i = tail call i32 @__handle_irq_event_percpu(ptr noundef %desc) #10
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @add_interrupt_randomness(i32 noundef %7) #10
  %status_use_accessors.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %8 = ptrtoint ptr %status_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_use_accessors.i.i, align 4
  %and.i.i = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %entry.handle_irq_event_percpu.exit_crit_edge

entry.handle_irq_event_percpu.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_irq_event_percpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @note_interrupt(ptr noundef %desc, i32 noundef %call.i) #10
  br label %handle_irq_event_percpu.exit

handle_irq_event_percpu.exit:                     ; preds = %if.then.i, %entry.handle_irq_event_percpu.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %10 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i = and i32 %13, -262145
  store i32 %and.i, ptr %11, align 4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @set_handle_irq(ptr noundef %handle_irq) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @handle_arch_irq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %handle_irq, ptr @handle_arch_irq, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline noprofile nosanitize_coverage nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_handle_arch_irq(ptr noundef %regs) local_unnamed_addr #5 section ".noinstr.text" align 64 {
entry:
  tail call void @irq_enter() #10
  %call = tail call fastcc ptr @set_irq_regs(ptr noundef %regs)
  %0 = load ptr, ptr @handle_arch_irq, align 4
  tail call void %0(ptr noundef %regs) #10
  %call1 = tail call fastcc ptr @set_irq_regs(ptr noundef %call)
  tail call void @irq_exit() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_enter() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @set_irq_regs(ptr noundef %new_regs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !105) #10
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
  %add = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  store ptr %new_regs, ptr %6, align 4
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_irq_handler_entry(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_irq_handler_exit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline noprofile nosanitize_coverage nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !101, !103}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__ksymtab_handle_bad_irq, !1, !"__ksymtab_handle_bad_irq", i1 false, i1 false}
!1 = !{!"../kernel/irq/handle.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_no_action, !3, !"__ksymtab_no_action", i1 false, i1 false}
!3 = !{!"../kernel/irq/handle.c", i32 50, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/irq/handle.c", i32 161, i32 7}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @handle_arch_irq, !9, !"handle_arch_irq", i1 false, i1 false}
!9 = !{!"../kernel/irq/handle.c", i32 24, i32 8}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/irq/debug.h", i32 13, i32 9}
!12 = !{ptr @print_irq_desc.ratelimit, !11, !"ratelimit", i1 false, i1 false}
!13 = !{ptr @__func__.print_irq_desc, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/irq/debug.h", i32 15, i32 7}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/irq/debug.h", i32 18, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @print_irq_desc._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @print_irq_desc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/irq/debug.h", i32 20, i32 2}
!22 = !{ptr @print_irq_desc._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @print_irq_desc._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/irq/debug.h", i32 22, i32 2}
!26 = !{ptr @print_irq_desc._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @print_irq_desc._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/irq/debug.h", i32 24, i32 2}
!30 = !{ptr @print_irq_desc._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @print_irq_desc._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/irq/debug.h", i32 26, i32 3}
!34 = !{ptr @print_irq_desc._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @print_irq_desc._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/irq/debug.h", i32 30, i32 2}
!38 = !{ptr @print_irq_desc._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @print_irq_desc._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @print_irq_desc._entry.21, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../kernel/irq/debug.h", i32 31, i32 2}
!43 = !{ptr @print_irq_desc._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @print_irq_desc._entry.24, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../kernel/irq/debug.h", i32 32, i32 2}
!47 = !{ptr @print_irq_desc._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @print_irq_desc._entry.27, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../kernel/irq/debug.h", i32 33, i32 2}
!51 = !{ptr @print_irq_desc._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @print_irq_desc._entry.30, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../kernel/irq/debug.h", i32 34, i32 2}
!55 = !{ptr @print_irq_desc._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @print_irq_desc._entry.33, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../kernel/irq/debug.h", i32 35, i32 2}
!59 = !{ptr @print_irq_desc._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @print_irq_desc._entry.36, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../kernel/irq/debug.h", i32 37, i32 2}
!63 = !{ptr @print_irq_desc._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @print_irq_desc._entry.39, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../kernel/irq/debug.h", i32 38, i32 2}
!67 = !{ptr @print_irq_desc._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @print_irq_desc._entry.42, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../kernel/irq/debug.h", i32 39, i32 2}
!71 = !{ptr @print_irq_desc._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @print_irq_desc._entry.45, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../kernel/irq/debug.h", i32 40, i32 2}
!75 = !{ptr @print_irq_desc._entry_ptr.46, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/irq/internals.h", i32 252, i32 2}
!79 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/include/asm/hw_irq.h", i32 12, i32 2}
!81 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.51, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ack_bad_irq._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @ack_bad_irq._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/trace/events/irq.h", i32 53, i32 1}
!87 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!89 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!92 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/trace/events/irq.h", i32 83, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/irq/handle.c", i32 57, i32 2}
!98 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @warn_no_thread._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @warn_no_thread._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/asm-generic/irq_regs.h", i32 28, i32 13}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/asm-generic/irq_regs.h", i32 29, i32 2}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2148524385, i64 2148524411, i64 2148524440, i64 2148524474, i64 2148524505, i64 2148524528}
!116 = !{i64 931797}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 929500}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 2148348983, i64 2148348988, i64 2148349001, i64 2148349045, i64 2148349079, i64 2148349100}
!121 = !{i64 2153084866}
!122 = !{i64 2153085085}
!123 = !{i64 2149942766}
!124 = !{i64 2149943802}
!125 = !{i64 2153101522}
!126 = !{i64 2153101749}
