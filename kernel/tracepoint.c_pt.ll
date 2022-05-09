; ModuleID = '/llk/IR_all_yes/kernel/tracepoint.c_pt.bc'
source_filename = "../kernel/tracepoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tracepoint_srcu\22, \22a\22\09"
module asm "\09.weak\09__crc_tracepoint_srcu\09\09\09\09"
module asm "\09.long\09__crc_tracepoint_srcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tracepoint_probe_register_prio_may_exist\22, \22a\22\09"
module asm "\09.weak\09__crc_tracepoint_probe_register_prio_may_exist\09\09\09\09"
module asm "\09.long\09__crc_tracepoint_probe_register_prio_may_exist\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_register_prio_may_exist:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_register_prio_may_exist\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_register_prio_may_exist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tracepoint_probe_register_prio\22, \22a\22\09"
module asm "\09.weak\09__crc_tracepoint_probe_register_prio\09\09\09\09"
module asm "\09.long\09__crc_tracepoint_probe_register_prio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_register_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_register_prio\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_register_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tracepoint_probe_register\22, \22a\22\09"
module asm "\09.weak\09__crc_tracepoint_probe_register\09\09\09\09"
module asm "\09.long\09__crc_tracepoint_probe_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_register\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tracepoint_probe_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_tracepoint_probe_unregister\09\09\09\09"
module asm "\09.long\09__crc_tracepoint_probe_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_tracepoint_module_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_tracepoint_module_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_tracepoint_module_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_tracepoint_module_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_tracepoint_module_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_tracepoint_module_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_tracepoint_module_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_tracepoint_module_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+for_each_kernel_tracepoint\22, \22a\22\09"
module asm "\09.weak\09__crc_for_each_kernel_tracepoint\09\09\09\09"
module asm "\09.long\09__crc_for_each_kernel_tracepoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_for_each_kernel_tracepoint:\09\09\09\09\09"
module asm "\09.asciz \09\22for_each_kernel_tracepoint\22\09\09\09\09\09"
module asm "__kstrtabns_for_each_kernel_tracepoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.34, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.34 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.tp_probes = type { %struct.callback_head, [0 x %struct.tracepoint_func] }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.tp_module = type { %struct.list_head, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tracepoint_srcu.lock\00", [43 x i8] zeroinitializer }, align 32
@tracepoint_srcu_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@tracepoint_srcu = dso_local global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @tracepoint_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_srcu, i64 700), ptr getelementptr (i8, ptr @tracepoint_srcu, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @tracepoint_srcu, i64 696), [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.2, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(tracepoint_srcu.work).work\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/tracepoint.c:28\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tracepoint_srcu\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_tracepoint_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_srcu to i32), ptr @__kstrtab_tracepoint_srcu, ptr @__kstrtabns_tracepoint_srcu }, section "___ksymtab_gpl+tracepoint_srcu", align 4
@__initcall__kmod_tracepoint__200_140_release_early_probes2 = internal global ptr @release_early_probes, section ".initcall2.init", align 4
@tracepoints_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoints_mutex, i64 52), ptr getelementptr (i8, ptr @tracepoints_mutex, i64 52) }, ptr @tracepoints_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tracepoint_probe_register_prio_may_exist = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_register_prio_may_exist = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_register_prio_may_exist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_register_prio_may_exist to i32), ptr @__kstrtab_tracepoint_probe_register_prio_may_exist, ptr @__kstrtabns_tracepoint_probe_register_prio_may_exist }, section "___ksymtab_gpl+tracepoint_probe_register_prio_may_exist", align 4
@__kstrtab_tracepoint_probe_register_prio = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_register_prio = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_register_prio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_register_prio to i32), ptr @__kstrtab_tracepoint_probe_register_prio, ptr @__kstrtabns_tracepoint_probe_register_prio }, section "___ksymtab_gpl+tracepoint_probe_register_prio", align 4
@__kstrtab_tracepoint_probe_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_register to i32), ptr @__kstrtab_tracepoint_probe_register, ptr @__kstrtabns_tracepoint_probe_register }, section "___ksymtab_gpl+tracepoint_probe_register", align 4
@__kstrtab_tracepoint_probe_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_unregister to i32), ptr @__kstrtab_tracepoint_probe_unregister, ptr @__kstrtabns_tracepoint_probe_unregister }, section "___ksymtab_gpl+tracepoint_probe_unregister", align 4
@tracepoint_module_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_module_list_mutex, i64 52), ptr getelementptr (i8, ptr @tracepoint_module_list_mutex, i64 52) }, ptr @tracepoint_module_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tracepoint_notify_list = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_notify_list, i64 56), ptr getelementptr (i8, ptr @tracepoint_notify_list, i64 56) }, ptr @tracepoint_notify_list, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@tracepoint_module_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tracepoint_module_list, ptr @tracepoint_module_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_register_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_tracepoint_module_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_tracepoint_module_notifier to i32), ptr @__kstrtab_register_tracepoint_module_notifier, ptr @__kstrtabns_register_tracepoint_module_notifier }, section "___ksymtab_gpl+register_tracepoint_module_notifier", align 4
@__kstrtab_unregister_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_tracepoint_module_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_tracepoint_module_notifier to i32), ptr @__kstrtab_unregister_tracepoint_module_notifier, ptr @__kstrtabns_unregister_tracepoint_module_notifier }, section "___ksymtab_gpl+unregister_tracepoint_module_notifier", align 4
@__initcall__kmod_tracepoint__217_738_init_tracepoints6 = internal global ptr @init_tracepoints, section ".initcall6.init", align 4
@__start___tracepoints_ptrs = external dso_local constant [0 x ptr], align 4
@__stop___tracepoints_ptrs = external dso_local constant [0 x ptr], align 4
@__kstrtab_for_each_kernel_tracepoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_for_each_kernel_tracepoint = external dso_local constant [0 x i8], align 1
@__ksymtab_for_each_kernel_tracepoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @for_each_kernel_tracepoint to i32), ptr @__kstrtab_for_each_kernel_tracepoint, ptr @__kstrtabns_for_each_kernel_tracepoint }, section "___ksymtab_gpl+for_each_kernel_tracepoint", align 4
@sys_tracepoint_refcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 128
@syscall_regfunc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/tracepoint.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@syscall_unregfunc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__pcpu_unique_tracepoint_srcu_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ok_to_free_tracepoints = internal global { i1, [31 x i8] } zeroinitializer, align 32
@early_probes = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tracepoints_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tracepoints_mutex\00", [46 x i8] zeroinitializer }, align 32
@tracepoint_add_func.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tracepoint_add_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_print_probes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017Probe %d : %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debug_print_probes\00", [45 x i8] zeroinitializer }, align 32
@debug_print_probes._entry_ptr = internal global ptr @debug_print_probes._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tp_transition_snapshot.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tp_transition_snapshot.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tp_transition_snapshot.2 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@tp_transition_snapshot.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tp_transition_snapshot.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tp_transition_snapshot.5 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@tracepoint_remove_func.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tracepoint_remove_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tracepoint_module_list_mutex.wait_lock\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tracepoint_module_list_mutex\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(tracepoint_notify_list).rwsem.wait_lock\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(tracepoint_notify_list).rwsem\00", [33 x i8] zeroinitializer }, align 32
@tracepoint_module_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @tracepoint_module_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_tracepoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014Failed to register tracepoint module enter notifier\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_tracepoints\00", [47 x i8] zeroinitializer }, align 32
@init_tracepoints._entry_ptr = internal global ptr @init_tracepoints._entry, section ".printk_index", align 4
@tp_module_going_check_quiescent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"tracepoint_srcu\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 28, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"tracepoints_mutex\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"tracepoint_module_list_mutex\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"tracepoint_notify_list\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"tracepoint_module_list\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 79, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"sys_tracepoint_refcount\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 757, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 765, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"ok_to_free_tracepoints\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"early_probes\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 88, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 86, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 336, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 176, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"tp_transition_snapshot.0\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"tp_transition_snapshot.1\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"tp_transition_snapshot.2\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [25 x i8] c"tp_transition_snapshot.3\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"tp_transition_snapshot.4\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"tp_transition_snapshot.5\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 76, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 577, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"tracepoint_module_nb\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 723, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [23 x i8] c"../kernel/tracepoint.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 734, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__initcall__kmod_tracepoint__200_140_release_early_probes2, ptr @__initcall__kmod_tracepoint__217_738_init_tracepoints6, ptr @__ksymtab_for_each_kernel_tracepoint, ptr @__ksymtab_register_tracepoint_module_notifier, ptr @__ksymtab_tracepoint_probe_register, ptr @__ksymtab_tracepoint_probe_register_prio, ptr @__ksymtab_tracepoint_probe_register_prio_may_exist, ptr @__ksymtab_tracepoint_probe_unregister, ptr @__ksymtab_tracepoint_srcu, ptr @__ksymtab_unregister_tracepoint_module_notifier, ptr @debug_print_probes._entry, ptr @debug_print_probes._entry_ptr, ptr @init_tracepoints._entry, ptr @init_tracepoints._entry_ptr, ptr @.str, ptr @tracepoint_srcu, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tracepoints_mutex, ptr @tracepoint_module_list_mutex, ptr @tracepoint_notify_list, ptr @tracepoint_module_list, ptr @sys_tracepoint_refcount, ptr @.str.4, ptr @.str.5, ptr @ok_to_free_tracepoints, ptr @early_probes, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @tp_transition_snapshot.0, ptr @tp_transition_snapshot.1, ptr @tp_transition_snapshot.2, ptr @tp_transition_snapshot.3, ptr @tp_transition_snapshot.4, ptr @tp_transition_snapshot.5, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tracepoint_module_nb, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracepoint_srcu to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracepoints_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracepoint_module_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracepoint_notify_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracepoint_module_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_tracepoint_refcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ok_to_free_tracepoints to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_probes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_print_probes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_transition_snapshot.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_transition_snapshot.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_transition_snapshot.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_transition_snapshot.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_transition_snapshot.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_transition_snapshot.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracepoint_module_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tracepoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @release_early_probes() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @ok_to_free_tracepoints, align 1
  %0 = load ptr, ptr @early_probes, align 4
  %tobool.not2 = icmp eq ptr %0, null
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  store ptr %3, ptr @early_probes, align 4
  tail call void @call_rcu(ptr noundef nonnull %1, ptr noundef nonnull @rcu_free_old_probes) #10
  %4 = load ptr, ptr @early_probes, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_register_prio_may_exist(ptr noundef %tp, ptr noundef %probe, ptr noundef %data, i32 noundef %prio) #2 align 64 {
entry:
  %tp_func = alloca %struct.tracepoint_func, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tp_func) #10
  %0 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoints_mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %tp_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %probe, ptr %tp_func, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %prio, ptr %1, align 4
  %call = call fastcc i32 @tracepoint_add_func(ptr noundef %tp, ptr noundef nonnull %tp_func, i32 noundef %prio, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tp_func) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tracepoint_add_func(ptr noundef %tp, ptr nocapture noundef readonly %func, i32 noundef %prio, i1 noundef zeroext %warn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regfunc = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %regfunc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regfunc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %key = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 1
  %call = tail call i32 @static_key_count(ptr noundef %key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %regfunc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regfunc, align 4
  %call3 = tail call i32 %3() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @tracepoints_mutex, i32 0, i32 5), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true10:                                  ; preds = %do.body
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b237 = load i1, ptr @tracepoint_add_func.__warned, align 1
  br i1 %.b237, label %land.lhs.true13.do.end_crit_edge, label %if.then15

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tracepoint_add_func.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 337, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %land.lhs.true13.do.end_crit_edge, %land.lhs.true10.do.end_crit_edge, %do.body.do.end_crit_edge
  %funcs = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 7
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !94

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 188, i32 noundef 9, ptr noundef null) #10
  br label %if.then20

if.end23.i:                                       ; preds = %do.end
  %tobool24.not.i = icmp eq ptr %5, null
  br i1 %tobool24.not.i, label %if.end23.i.if.end8.i.i.i_crit_edge, label %for.cond.preheader.i

if.end23.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.cond.preheader.i:                             ; preds = %if.end23.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool27.not131.i = icmp eq ptr %9, null
  br i1 %tobool27.not131.i, label %for.cond.preheader.i.if.end8.i.i.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end8.i.i.i_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %data37.i = getelementptr inbounds %struct.tracepoint_func, ptr %func, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %10 = phi ptr [ %9, %for.body.lr.ph.i ], [ %16, %for.inc.i.for.body.i_crit_edge ]
  %nr_probes.0135.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nr_probes.1.i, %for.inc.i.for.body.i_crit_edge ]
  %iter_probes.0132.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc42.i, %for.inc.i.for.body.i_crit_edge ]
  %cmp.i = icmp eq ptr %10, @tp_stub_func
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end31.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end31.i:                                       ; preds = %for.body.i
  %cmp35.i = icmp eq ptr %10, %7
  br i1 %cmp35.i, label %land.lhs.true.i, label %if.end31.i.if.end41.i_crit_edge

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end31.i
  %data.i = getelementptr %struct.tracepoint_func, ptr %5, i32 %iter_probes.0132.i, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %data37.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data37.i, align 4
  %cmp38.i = icmp eq ptr %12, %14
  br i1 %cmp38.i, label %land.lhs.true.i.if.then20_crit_edge, label %land.lhs.true.i.if.end41.i_crit_edge

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true.i.if.then20_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end41.i:                                       ; preds = %land.lhs.true.i.if.end41.i_crit_edge, %if.end31.i.if.end41.i_crit_edge
  %inc.i = add i32 %nr_probes.0135.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end41.i, %for.body.i.for.inc.i_crit_edge
  %nr_probes.1.i = phi i32 [ %nr_probes.0135.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end41.i ]
  %inc42.i = add i32 %iter_probes.0132.i, 1
  %arrayidx.i = getelementptr %struct.tracepoint_func, ptr %5, i32 %inc42.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool27.not.i = icmp eq ptr %16, null
  br i1 %tobool27.not.i, label %for.inc.i.if.end8.i.i.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end8.i.i.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %for.inc.i.if.end8.i.i.i_crit_edge, %for.cond.preheader.i.if.end8.i.i.i_crit_edge, %if.end23.i.if.end8.i.i.i_crit_edge
  %nr_probes.2.i = phi i32 [ 0, %if.end23.i.if.end8.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end8.i.i.i_crit_edge ], [ %nr_probes.1.i, %for.inc.i.if.end8.i.i.i_crit_edge ]
  %add.i = add i32 %nr_probes.2.i, 2
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 12) #10
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = extractvalue { i32, i1 } %17, 0
  %spec.select.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %19, i32 8) #10
  %retval.0.i.i.i = select i1 %18, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3264) #13
  %cmp.i.i = icmp eq ptr %call9.i.i.i, null
  %probes.i.i = getelementptr inbounds %struct.tp_probes, ptr %call9.i.i.i, i32 0, i32 1
  br i1 %cmp.i.i, label %if.end8.i.i.i.if.end63_crit_edge, label %if.end48.i

if.end8.i.i.i.if.end63_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.end48.i:                                       ; preds = %if.end8.i.i.i
  br i1 %tobool24.not.i, label %func_add.exit.thread280, label %for.cond51.preheader.i

func_add.exit.thread280:                          ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call ptr @memcpy(ptr %probes.i.i, ptr %func, i32 12)
  %arrayidx81.i284 = getelementptr %struct.tp_probes, ptr %call9.i.i.i, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx81.i284 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx81.i284, align 4
  br label %if.end.i

for.cond51.preheader.i:                           ; preds = %if.end48.i
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %tobool54.not136.i = icmp eq ptr %23, null
  br i1 %tobool54.not136.i, label %for.cond51.preheader.i.for.end74.thread.i_crit_edge, label %for.cond51.preheader.i.for.body55.i_crit_edge

for.cond51.preheader.i.for.body55.i_crit_edge:    ; preds = %for.cond51.preheader.i
  br label %for.body55.i

for.cond51.preheader.i.for.end74.thread.i_crit_edge: ; preds = %for.cond51.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end74.thread.i

for.body55.i:                                     ; preds = %for.inc72.i.for.body55.i_crit_edge, %for.cond51.preheader.i.for.body55.i_crit_edge
  %24 = phi ptr [ %29, %for.inc72.i.for.body55.i_crit_edge ], [ %23, %for.cond51.preheader.i.for.body55.i_crit_edge ]
  %arrayidx52142.i = phi ptr [ %arrayidx52.i, %for.inc72.i.for.body55.i_crit_edge ], [ %5, %for.cond51.preheader.i.for.body55.i_crit_edge ]
  %pos.0141.i = phi i32 [ %pos.2.i, %for.inc72.i.for.body55.i_crit_edge ], [ -1, %for.cond51.preheader.i.for.body55.i_crit_edge ]
  %nr_probes.3140.i = phi i32 [ %nr_probes.5.i, %for.inc72.i.for.body55.i_crit_edge ], [ 0, %for.cond51.preheader.i.for.body55.i_crit_edge ]
  %iter_probes.1137.i = phi i32 [ %inc73.i, %for.inc72.i.for.body55.i_crit_edge ], [ 0, %for.cond51.preheader.i.for.body55.i_crit_edge ]
  %cmp58.i = icmp eq ptr %24, @tp_stub_func
  br i1 %cmp58.i, label %for.body55.i.for.inc72.i_crit_edge, label %if.end60.i

for.body55.i.for.inc72.i_crit_edge:               ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72.i

if.end60.i:                                       ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0141.i)
  %cmp61.i = icmp slt i32 %pos.0141.i, 0
  br i1 %cmp61.i, label %land.lhs.true62.i, label %if.end60.i.if.end68.i_crit_edge

if.end60.i.if.end68.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

land.lhs.true62.i:                                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %prio64.i = getelementptr %struct.tracepoint_func, ptr %5, i32 %iter_probes.1137.i, i32 2
  %25 = ptrtoint ptr %prio64.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prio64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %prio)
  %cmp65.i = icmp slt i32 %26, %prio
  %inc67.i = zext i1 %cmp65.i to i32
  %spec.select.i = add i32 %nr_probes.3140.i, %inc67.i
  %spec.select126.i = select i1 %cmp65.i, i32 %nr_probes.3140.i, i32 %pos.0141.i
  br label %if.end68.i

if.end68.i:                                       ; preds = %land.lhs.true62.i, %if.end60.i.if.end68.i_crit_edge
  %nr_probes.4.i = phi i32 [ %nr_probes.3140.i, %if.end60.i.if.end68.i_crit_edge ], [ %spec.select.i, %land.lhs.true62.i ]
  %pos.1.i = phi i32 [ %pos.0141.i, %if.end60.i.if.end68.i_crit_edge ], [ %spec.select126.i, %land.lhs.true62.i ]
  %inc69.i = add i32 %nr_probes.4.i, 1
  %arrayidx70.i = getelementptr %struct.tracepoint_func, ptr %probes.i.i, i32 %nr_probes.4.i
  %27 = call ptr @memcpy(ptr %arrayidx70.i, ptr %arrayidx52142.i, i32 12)
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %if.end68.i, %for.body55.i.for.inc72.i_crit_edge
  %nr_probes.5.i = phi i32 [ %nr_probes.3140.i, %for.body55.i.for.inc72.i_crit_edge ], [ %inc69.i, %if.end68.i ]
  %pos.2.i = phi i32 [ %pos.0141.i, %for.body55.i.for.inc72.i_crit_edge ], [ %pos.1.i, %if.end68.i ]
  %inc73.i = add i32 %iter_probes.1137.i, 1
  %arrayidx52.i = getelementptr %struct.tracepoint_func, ptr %5, i32 %inc73.i
  %28 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx52.i, align 4
  %tobool54.not.i = icmp eq ptr %29, null
  br i1 %tobool54.not.i, label %for.end74.i, label %for.inc72.i.for.body55.i_crit_edge

for.inc72.i.for.body55.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body55.i

for.end74.i:                                      ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.2.i)
  %cmp75.i = icmp slt i32 %pos.2.i, 0
  %pos.0.lobit.i = lshr i32 %pos.2.i, 31
  %spec.select127.i = add i32 %pos.0.lobit.i, %nr_probes.5.i
  br i1 %cmp75.i, label %for.end74.i.for.end74.thread.i_crit_edge, label %for.end74.i.func_add.exit_crit_edge

for.end74.i.func_add.exit_crit_edge:              ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %func_add.exit

for.end74.i.for.end74.thread.i_crit_edge:         ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end74.thread.i

for.end74.thread.i:                               ; preds = %for.end74.i.for.end74.thread.i_crit_edge, %for.cond51.preheader.i.for.end74.thread.i_crit_edge
  %spec.select127152.i = phi i32 [ %spec.select127.i, %for.end74.i.for.end74.thread.i_crit_edge ], [ 1, %for.cond51.preheader.i.for.end74.thread.i_crit_edge ]
  %nr_probes.3.lcssa150.i = phi i32 [ %nr_probes.5.i, %for.end74.i.for.end74.thread.i_crit_edge ], [ 0, %for.cond51.preheader.i.for.end74.thread.i_crit_edge ]
  br label %func_add.exit

func_add.exit:                                    ; preds = %for.end74.thread.i, %for.end74.i.func_add.exit_crit_edge
  %nr_probes.6.i = phi i32 [ %spec.select127152.i, %for.end74.thread.i ], [ %spec.select127.i, %for.end74.i.func_add.exit_crit_edge ]
  %pos.3.i = phi i32 [ %nr_probes.3.lcssa150.i, %for.end74.thread.i ], [ %pos.2.i, %for.end74.i.func_add.exit_crit_edge ]
  %arrayidx80.i = getelementptr %struct.tracepoint_func, ptr %probes.i.i, i32 %pos.3.i
  %30 = call ptr @memcpy(ptr %arrayidx80.i, ptr %func, i32 12)
  %arrayidx81.i = getelementptr %struct.tracepoint_func, ptr %probes.i.i, i32 %nr_probes.6.i
  %31 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx81.i, align 4
  %cmp.i239 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %func_add.exit.if.then20_crit_edge, label %func_add.exit.if.end.i_crit_edge

func_add.exit.if.end.i_crit_edge:                 ; preds = %func_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

func_add.exit.if.then20_crit_edge:                ; preds = %func_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %func_add.exit.if.then20_crit_edge, %land.lhs.true.i.if.then20_crit_edge, %do.end.i
  %retval.0.i277 = phi ptr [ %5, %func_add.exit.if.then20_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -17 to ptr), %land.lhs.true.i.if.then20_crit_edge ]
  %cmp24 = icmp ne ptr %retval.0.i277, inttoptr (i32 -12 to ptr)
  %or.cond = select i1 %warn, i1 %cmp24, i1 false
  br i1 %or.cond, label %land.rhs30, label %if.then20.if.end63_crit_edge

if.then20.if.end63_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.rhs30:                                       ; preds = %if.then20
  %.b233236 = load i1, ptr @tracepoint_add_func.__already_done, align 1
  br i1 %.b233236, label %land.rhs30.if.end63_crit_edge, label %if.then37, !prof !95

land.rhs30.if.end63_crit_edge:                    ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then37:                                        ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tracepoint_add_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 340, i32 noundef 9, ptr noundef null) #10
  br label %if.end63

if.end63:                                         ; preds = %if.then37, %land.rhs30.if.end63_crit_edge, %if.then20.if.end63_crit_edge, %if.end8.i.i.i.if.end63_crit_edge
  %retval.0.i277301 = phi ptr [ %retval.0.i277, %if.then20.if.end63_crit_edge ], [ %retval.0.i277, %if.then37 ], [ %retval.0.i277, %land.rhs30.if.end63_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.if.end63_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i277301 to i32
  br label %cleanup

if.end.i:                                         ; preds = %func_add.exit.if.end.i_crit_edge, %func_add.exit.thread280
  %arrayidx.i241 = getelementptr %struct.tp_probes, ptr %call9.i.i.i, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i241, align 4
  %tobool1.not.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i, label %sw.bb, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %arrayidx4.i = getelementptr %struct.tp_probes, ptr %call9.i.i.i, i32 4
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx4.i, align 32
  %tobool6.not.i = icmp eq ptr %36, null
  br i1 %tobool6.not.i, label %sw.bb115, label %if.end3.i.do.body117_crit_edge

if.end3.i.do.body117_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body117

sw.bb:                                            ; preds = %if.end.i
  %.b = load i1, ptr @tp_transition_snapshot.2, align 4
  br i1 %.b, label %if.end.i245, label %sw.bb.tp_rcu_cond_sync.exit_crit_edge

sw.bb.tp_rcu_cond_sync.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %tp_rcu_cond_sync.exit

if.end.i245:                                      ; preds = %sw.bb
  %37 = load i32, ptr @tp_transition_snapshot.0, align 4
  tail call void @cond_synchronize_rcu(i32 noundef %37) #10
  %38 = load i32, ptr @tp_transition_snapshot.1, align 4
  %call.i244 = tail call zeroext i1 @poll_state_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu, i32 noundef %38) #10
  br i1 %call.i244, label %if.end.i245.if.end2.i_crit_edge, label %if.then1.i

if.end.i245.if.end2.i_crit_edge:                  ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #10
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i245.if.end2.i_crit_edge
  store i1 false, ptr @tp_transition_snapshot.2, align 4
  br label %tp_rcu_cond_sync.exit

tp_rcu_cond_sync.exit:                            ; preds = %if.end2.i, %sw.bb.tp_rcu_cond_sync.exit_crit_edge
  %static_call_key.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 2
  %39 = ptrtoint ptr %static_call_key.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %static_call_key.i, align 4
  %tobool.not.i246 = icmp eq ptr %40, null
  br i1 %tobool.not.i246, label %tp_rcu_cond_sync.exit.tracepoint_update_call.exit_crit_edge, label %if.end.i.i

tp_rcu_cond_sync.exit.tracepoint_update_call.exit_crit_edge: ; preds = %tp_rcu_cond_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tracepoint_update_call.exit

if.end.i.i:                                       ; preds = %tp_rcu_cond_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %iterator.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i241, align 4
  %tobool1.not.i.i = icmp eq ptr %42, null
  %spec.select = select i1 %tobool1.not.i.i, ptr %probes.i.i, ptr %iterator.i
  %43 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %43)
  %func.0.i = load ptr, ptr %spec.select, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %func.0.i, ptr %40, align 4
  br label %tracepoint_update_call.exit

tracepoint_update_call.exit:                      ; preds = %if.end.i.i, %tp_rcu_cond_sync.exit.tracepoint_update_call.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  %45 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %probes.i.i, ptr %funcs, align 4
  %key114 = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 1
  tail call void @static_key_enable(ptr noundef %key114) #10
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end3.i
  %static_call_key.i250 = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 2
  %46 = ptrtoint ptr %static_call_key.i250 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %static_call_key.i250, align 4
  %tobool.not.i251 = icmp eq ptr %47, null
  br i1 %tobool.not.i251, label %sw.bb115.do.body117_crit_edge, label %if.end.i.i257

sw.bb115.do.body117_crit_edge:                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body117

if.end.i.i257:                                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #12
  %iterator.i252 = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i241, align 4
  %tobool1.not.i.i256 = icmp eq ptr %49, null
  %spec.select297 = select i1 %tobool1.not.i.i256, ptr %probes.i.i, ptr %iterator.i252
  %50 = ptrtoint ptr %spec.select297 to i32
  call void @__asan_load4_noabort(i32 %50)
  %func.0.i259 = load ptr, ptr %spec.select297, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %func.0.i259, ptr %47, align 4
  br label %do.body117

do.body117:                                       ; preds = %if.end.i.i257, %sw.bb115.do.body117_crit_edge, %if.end3.i.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  %52 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %probes.i.i, ptr %funcs, align 4
  %data = getelementptr inbounds %struct.tp_probes, ptr %call9.i.i.i, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %data160 = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %data160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data160, align 4
  %cmp161.not = icmp eq ptr %54, %56
  br i1 %cmp161.not, label %do.body117.sw.epilog_crit_edge, label %if.then163

do.body117.sw.epilog_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then163:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #12
  %call.i262 = tail call i32 @get_state_synchronize_rcu() #10
  store i32 %call.i262, ptr @tp_transition_snapshot.3, align 4
  %call1.i = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #10
  store i32 %call1.i, ptr @tp_transition_snapshot.4, align 4
  store i1 true, ptr @tp_transition_snapshot.5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then163, %do.body117.sw.epilog_crit_edge, %tracepoint_update_call.exit
  br i1 %tobool24.not.i, label %sw.epilog.cleanup_crit_edge, label %if.then.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  %add.ptr.i = getelementptr i8, ptr %5, i32 -8
  %.b12.i = load i1, ptr @ok_to_free_tracepoints, align 1
  br i1 %.b12.i, label %if.end.i264, label %if.then5.i, !prof !95

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = load ptr, ptr @early_probes, align 4
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %add.ptr.i, align 4
  store ptr %add.ptr.i, ptr @early_probes, align 4
  br label %cleanup

if.end.i264:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef %add.ptr.i, ptr noundef nonnull @rcu_free_old_probes) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i264, %if.then5.i, %sw.epilog.cleanup_crit_edge, %if.end63, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %if.end63 ], [ %call3, %if.then.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then5.i ], [ 0, %if.end.i264 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_register_prio(ptr noundef %tp, ptr noundef %probe, ptr noundef %data, i32 noundef %prio) #2 align 64 {
entry:
  %tp_func = alloca %struct.tracepoint_func, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tp_func) #10
  %0 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoints_mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %tp_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %probe, ptr %tp_func, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %prio, ptr %1, align 4
  %call = call fastcc i32 @tracepoint_add_func(ptr noundef %tp, ptr noundef nonnull %tp_func, i32 noundef %prio, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tp_func) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_register(ptr noundef %tp, ptr noundef %probe, ptr noundef %data) #2 align 64 {
entry:
  %tp_func.i = alloca %struct.tracepoint_func, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tp_func.i) #10
  %0 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoints_mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %tp_func.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %probe, ptr %tp_func.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %1, align 4
  %call.i = call fastcc i32 @tracepoint_add_func(ptr noundef %tp, ptr noundef nonnull %tp_func.i, i32 noundef 10, i1 noundef zeroext true) #10
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tp_func.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_unregister(ptr noundef %tp, ptr noundef %probe, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoints_mutex, i32 noundef 0) #10
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @tracepoints_mutex, i32 0, i32 5), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b280.i = load i1, ptr @tracepoint_remove_func.__warned, align 1
  br i1 %.b280.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tracepoint_remove_func.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 402, ptr noundef nonnull @.str.8) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %funcs.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.end.i.land.rhs.i_crit_edge, label %if.end.i.i

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %do.end.i
  %tobool1.not.i.i = icmp eq ptr %probe, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.func_remove.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.func_remove.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %func_remove.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not146.i.i = icmp eq ptr %3, null
  br i1 %tobool4.not146.i.i, label %for.cond.preheader.i.i.func_remove.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.func_remove.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %func_remove.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %cmp13.i.i = icmp eq ptr %probe, @tp_stub_func
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %4 = phi ptr [ %3, %for.body.lr.ph.i.i ], [ %8, %for.inc.i.i.for.body.i.i_crit_edge ]
  %nr_del.0150.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %nr_del.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %nr_probes.0147.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc16.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmp.i.i = icmp eq ptr %4, %probe
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %data.i.i = getelementptr %struct.tracepoint_func, ptr %1, i32 %nr_probes.0147.i.i, i32 1
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %cmp10.i.i = icmp eq ptr %6, %data
  %or.cond.i.i = or i1 %cmp13.i.i, %cmp10.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then14.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.if.then14.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %cmp13.old.i.i = icmp eq ptr %4, @tp_stub_func
  br i1 %cmp13.old.i.i, label %lor.lhs.false.i.i.if.then14.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

lor.lhs.false.i.i.if.then14.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then14.i.i_crit_edge, %land.lhs.true.i.i.if.then14.i.i_crit_edge
  %inc.i.i = add i32 %nr_del.0150.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge
  %nr_del.1.i.i = phi i32 [ %inc.i.i, %if.then14.i.i ], [ %nr_del.0150.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ %nr_del.0150.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ]
  %inc16.i.i = add i32 %nr_probes.0147.i.i, 1
  %arrayidx.i.i = getelementptr %struct.tracepoint_func, ptr %1, i32 %inc16.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i.i, label %if.end17.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end17.i.i:                                     ; preds = %for.inc.i.i
  %sub.i.i = sub i32 %inc16.i.i, %nr_del.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16.i.i, i32 %nr_del.1.i.i)
  %cmp18.i.i = icmp eq i32 %inc16.i.i, %nr_del.1.i.i
  br i1 %cmp18.i.i, label %if.end17.i.i.func_remove.exit.i_crit_edge, label %if.end8.i.i.i.i

if.end17.i.i.func_remove.exit.i_crit_edge:        ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %func_remove.exit.i

if.end8.i.i.i.i:                                  ; preds = %if.end17.i.i
  %add.i.i = add i32 %sub.i.i, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 12) #10
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 8) #10
  %retval.0.i.i.i.i = select i1 %10, i32 -1, i32 %spec.select.i.i.i.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i.i, i32 noundef 3264) #13
  %cmp.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  %probes.i.i.i = getelementptr inbounds %struct.tp_probes, ptr %call9.i.i.i.i, i32 0, i32 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %probes.i.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool57.not160.i.i = icmp eq ptr %13, null
  br i1 %cmp.i.i.i, label %for.cond54.preheader.i.i, label %for.cond24.preheader.i.i

for.cond24.preheader.i.i:                         ; preds = %if.end8.i.i.i.i
  br i1 %tobool57.not160.i.i, label %for.cond24.preheader.i.i.for.end49.i.i_crit_edge, label %for.cond24.preheader.i.i.for.body28.i.i_crit_edge

for.cond24.preheader.i.i.for.body28.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  br label %for.body28.i.i

for.cond24.preheader.i.i.for.end49.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49.i.i

for.cond54.preheader.i.i:                         ; preds = %if.end8.i.i.i.i
  br i1 %tobool57.not160.i.i, label %for.cond54.preheader.i.i.func_remove.exit.i_crit_edge, label %for.cond54.preheader.i.i.for.body58.i.i_crit_edge

for.cond54.preheader.i.i.for.body58.i.i_crit_edge: ; preds = %for.cond54.preheader.i.i
  br label %for.body58.i.i

for.cond54.preheader.i.i.func_remove.exit.i_crit_edge: ; preds = %for.cond54.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %func_remove.exit.i

for.body28.i.i:                                   ; preds = %for.inc47.i.i.for.body28.i.i_crit_edge, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge
  %14 = phi ptr [ %19, %for.inc47.i.i.for.body28.i.i_crit_edge ], [ %13, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge ]
  %arrayidx25159.i.i = phi ptr [ %arrayidx25.i.i, %for.inc47.i.i.for.body28.i.i_crit_edge ], [ %1, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge ]
  %j.0157.i.i = phi i32 [ %j.1.i.i, %for.inc47.i.i.for.body28.i.i_crit_edge ], [ 0, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge ]
  %i.0154.i.i = phi i32 [ %inc48.i.i, %for.inc47.i.i.for.body28.i.i_crit_edge ], [ 0, %for.cond24.preheader.i.i.for.body28.i.i_crit_edge ]
  %cmp32.not.i.i = icmp eq ptr %14, %probe
  br i1 %cmp32.not.i.i, label %lor.lhs.false33.i.i, label %land.lhs.true38.i.i

lor.lhs.false33.i.i:                              ; preds = %for.body28.i.i
  %data35.i.i = getelementptr %struct.tracepoint_func, ptr %1, i32 %i.0154.i.i, i32 1
  %15 = ptrtoint ptr %data35.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data35.i.i, align 4
  %cmp37.not.i.i = icmp eq ptr %16, %data
  %or.cond145.i.i = or i1 %cmp37.not.i.i, %cmp13.i.i
  br i1 %or.cond145.i.i, label %lor.lhs.false33.i.i.for.inc47.i.i_crit_edge, label %lor.lhs.false33.i.i.if.then42.i.i_crit_edge

lor.lhs.false33.i.i.if.then42.i.i_crit_edge:      ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i.i

lor.lhs.false33.i.i.for.inc47.i.i_crit_edge:      ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47.i.i

land.lhs.true38.i.i:                              ; preds = %for.body28.i.i
  %cmp41.not.old.i.i = icmp eq ptr %14, @tp_stub_func
  br i1 %cmp41.not.old.i.i, label %land.lhs.true38.i.i.for.inc47.i.i_crit_edge, label %land.lhs.true38.i.i.if.then42.i.i_crit_edge

land.lhs.true38.i.i.if.then42.i.i_crit_edge:      ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i.i

land.lhs.true38.i.i.for.inc47.i.i_crit_edge:      ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47.i.i

if.then42.i.i:                                    ; preds = %land.lhs.true38.i.i.if.then42.i.i_crit_edge, %lor.lhs.false33.i.i.if.then42.i.i_crit_edge
  %inc43.i.i = add i32 %j.0157.i.i, 1
  %arrayidx44.i.i = getelementptr %struct.tracepoint_func, ptr %spec.select.i.i.i, i32 %j.0157.i.i
  %17 = call ptr @memcpy(ptr %arrayidx44.i.i, ptr %arrayidx25159.i.i, i32 12)
  br label %for.inc47.i.i

for.inc47.i.i:                                    ; preds = %if.then42.i.i, %land.lhs.true38.i.i.for.inc47.i.i_crit_edge, %lor.lhs.false33.i.i.for.inc47.i.i_crit_edge
  %j.1.i.i = phi i32 [ %inc43.i.i, %if.then42.i.i ], [ %j.0157.i.i, %land.lhs.true38.i.i.for.inc47.i.i_crit_edge ], [ %j.0157.i.i, %lor.lhs.false33.i.i.for.inc47.i.i_crit_edge ]
  %inc48.i.i = add i32 %i.0154.i.i, 1
  %arrayidx25.i.i = getelementptr %struct.tracepoint_func, ptr %1, i32 %inc48.i.i
  %18 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx25.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %19, null
  br i1 %tobool27.not.i.i, label %for.inc47.i.i.for.end49.i.i_crit_edge, label %for.inc47.i.i.for.body28.i.i_crit_edge

for.inc47.i.i.for.body28.i.i_crit_edge:           ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i.i

for.inc47.i.i.for.end49.i.i_crit_edge:            ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49.i.i

for.end49.i.i:                                    ; preds = %for.inc47.i.i.for.end49.i.i_crit_edge, %for.cond24.preheader.i.i.for.end49.i.i_crit_edge
  %arrayidx51.i.i = getelementptr %struct.tracepoint_func, ptr %spec.select.i.i.i, i32 %sub.i.i
  %20 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx51.i.i, align 4
  br label %func_remove.exit.i

for.body58.i.i:                                   ; preds = %for.inc78.i.i.for.body58.i.i_crit_edge, %for.cond54.preheader.i.i.for.body58.i.i_crit_edge
  %21 = phi ptr [ %26, %for.inc78.i.i.for.body58.i.i_crit_edge ], [ %13, %for.cond54.preheader.i.i.for.body58.i.i_crit_edge ]
  %arrayidx55163.i.i = phi ptr [ %arrayidx55.i.i, %for.inc78.i.i.for.body58.i.i_crit_edge ], [ %1, %for.cond54.preheader.i.i.for.body58.i.i_crit_edge ]
  %i.1161.i.i = phi i32 [ %inc79.i.i, %for.inc78.i.i.for.body58.i.i_crit_edge ], [ 0, %for.cond54.preheader.i.i.for.body58.i.i_crit_edge ]
  %cmp62.i.i = icmp eq ptr %21, %probe
  br i1 %cmp62.i.i, label %land.lhs.true63.i.i, label %for.body58.i.i.for.inc78.i.i_crit_edge

for.body58.i.i.for.inc78.i.i_crit_edge:           ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc78.i.i

land.lhs.true63.i.i:                              ; preds = %for.body58.i.i
  %data65.i.i = getelementptr %struct.tracepoint_func, ptr %1, i32 %i.1161.i.i, i32 1
  %22 = ptrtoint ptr %data65.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data65.i.i, align 4
  %cmp67.i.i = icmp eq ptr %23, %data
  br i1 %cmp67.i.i, label %do.body70.i.i, label %land.lhs.true63.i.i.for.inc78.i.i_crit_edge

land.lhs.true63.i.i.for.inc78.i.i_crit_edge:      ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc78.i.i

do.body70.i.i:                                    ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx55163.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr @tp_stub_func, ptr %arrayidx55163.i.i, align 4
  br label %for.inc78.i.i

for.inc78.i.i:                                    ; preds = %do.body70.i.i, %land.lhs.true63.i.i.for.inc78.i.i_crit_edge, %for.body58.i.i.for.inc78.i.i_crit_edge
  %inc79.i.i = add i32 %i.1161.i.i, 1
  %arrayidx55.i.i = getelementptr %struct.tracepoint_func, ptr %1, i32 %inc79.i.i
  %25 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx55.i.i, align 4
  %tobool57.not.i.i = icmp eq ptr %26, null
  br i1 %tobool57.not.i.i, label %for.inc78.i.i.func_remove.exit.i_crit_edge, label %for.inc78.i.i.for.body58.i.i_crit_edge

for.inc78.i.i.for.body58.i.i_crit_edge:           ; preds = %for.inc78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body58.i.i

for.inc78.i.i.func_remove.exit.i_crit_edge:       ; preds = %for.inc78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %func_remove.exit.i

func_remove.exit.i:                               ; preds = %for.inc78.i.i.func_remove.exit.i_crit_edge, %for.end49.i.i, %for.cond54.preheader.i.i.func_remove.exit.i_crit_edge, %if.end17.i.i.func_remove.exit.i_crit_edge, %for.cond.preheader.i.i.func_remove.exit.i_crit_edge, %if.end.i.i.func_remove.exit.i_crit_edge
  %tp_funcs.0.i = phi ptr [ null, %for.cond.preheader.i.i.func_remove.exit.i_crit_edge ], [ null, %if.end.i.i.func_remove.exit.i_crit_edge ], [ null, %if.end17.i.i.func_remove.exit.i_crit_edge ], [ %spec.select.i.i.i, %for.end49.i.i ], [ %1, %for.cond54.preheader.i.i.func_remove.exit.i_crit_edge ], [ %1, %for.inc78.i.i.func_remove.exit.i_crit_edge ]
  %cmp.i282.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282.i, label %func_remove.exit.i.land.rhs.i_crit_edge, label %if.end51.i

func_remove.exit.i.land.rhs.i_crit_edge:          ; preds = %func_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %func_remove.exit.i.land.rhs.i_crit_edge, %do.end.i.land.rhs.i_crit_edge
  %retval.0.i325.i = phi ptr [ %1, %func_remove.exit.i.land.rhs.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.end.i.land.rhs.i_crit_edge ]
  %.b276279.i = load i1, ptr @tracepoint_remove_func.__already_done, align 1
  br i1 %.b276279.i, label %land.rhs.i.if.then49.i_crit_edge, label %if.then14.i, !prof !95

land.rhs.i.if.then49.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

if.then14.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tracepoint_remove_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 404, i32 noundef 9, ptr noundef null) #10
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.then14.i, %land.rhs.i.if.then49.i_crit_edge
  %27 = ptrtoint ptr %retval.0.i325.i to i32
  br label %tracepoint_remove_func.exit

if.end51.i:                                       ; preds = %func_remove.exit.i
  %cmp.i = icmp eq ptr %tp_funcs.0.i, %1
  br i1 %cmp.i, label %if.end51.i.tracepoint_remove_func.exit_crit_edge, label %if.end53.i

if.end51.i.tracepoint_remove_func.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tracepoint_remove_func.exit

if.end53.i:                                       ; preds = %if.end51.i
  %tobool.not.i283.i = icmp eq ptr %tp_funcs.0.i, null
  br i1 %tobool.not.i283.i, label %sw.bb.i, label %if.end.i286.i

if.end.i286.i:                                    ; preds = %if.end53.i
  %arrayidx.i284.i = getelementptr %struct.tracepoint_func, ptr %tp_funcs.0.i, i32 1
  %28 = ptrtoint ptr %arrayidx.i284.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i284.i, align 4
  %tobool1.not.i285.i = icmp eq ptr %29, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10
  %30 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %tp_funcs.0.i, ptr %funcs.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %tp_funcs.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %data148.i = getelementptr inbounds %struct.tracepoint_func, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %data148.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data148.i, align 4
  %cmp149.not.i = icmp eq ptr %32, %34
  br i1 %tobool1.not.i285.i, label %do.body105.i, label %do.body155.i

sw.bb.i:                                          ; preds = %if.end53.i
  %unregfunc.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 6
  %35 = ptrtoint ptr %unregfunc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unregfunc.i, align 4
  %tobool55.not.i = icmp eq ptr %36, null
  br i1 %tobool55.not.i, label %sw.bb.i.if.end63.i_crit_edge, label %land.lhs.true56.i

sw.bb.i.if.end63.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true56.i:                                ; preds = %sw.bb.i
  %key.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 1
  %call58.i = tail call i32 @static_key_count(ptr noundef %key.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.i = icmp sgt i32 %call58.i, 0
  br i1 %cmp59.i, label %if.then61.i, label %land.lhs.true56.i.if.end63.i_crit_edge

land.lhs.true56.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then61.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %unregfunc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unregfunc.i, align 4
  tail call void %38() #10
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %land.lhs.true56.i.if.end63.i_crit_edge, %sw.bb.i.if.end63.i_crit_edge
  %key64.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 1
  tail call void @static_key_disable(ptr noundef %key64.i) #10
  %static_call_key.i.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 2
  %39 = ptrtoint ptr %static_call_key.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %static_call_key.i.i, align 4
  %tobool.not.i288.i = icmp eq ptr %40, null
  br i1 %tobool.not.i288.i, label %if.end63.i.tracepoint_update_call.exit.i_crit_edge, label %if.end3.i290.i

if.end63.i.tracepoint_update_call.exit.i_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tracepoint_update_call.exit.i

if.end3.i290.i:                                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %iterator.i.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 4
  %41 = ptrtoint ptr %iterator.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iterator.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %40, align 4
  br label %tracepoint_update_call.exit.i

tracepoint_update_call.exit.i:                    ; preds = %if.end3.i290.i, %if.end63.i.tracepoint_update_call.exit.i_crit_edge
  %44 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr null, ptr %funcs.i, align 4
  %call.i291.i = tail call i32 @get_state_synchronize_rcu() #10
  store i32 %call.i291.i, ptr @tp_transition_snapshot.0, align 4
  %call1.i.i = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #10
  store i32 %call1.i.i, ptr @tp_transition_snapshot.1, align 4
  store i1 true, ptr @tp_transition_snapshot.2, align 4
  br label %if.then.i.i

do.body105.i:                                     ; preds = %if.end.i286.i
  br i1 %cmp149.not.i, label %if.end152.i, label %if.end152.thread.i

if.end152.thread.i:                               ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i292.i = tail call i32 @get_state_synchronize_rcu() #10
  store i32 %call.i292.i, ptr @tp_transition_snapshot.3, align 4
  %call1.i293.i = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #10
  store i32 %call1.i293.i, ptr @tp_transition_snapshot.4, align 4
  store i1 true, ptr @tp_transition_snapshot.5, align 4
  br label %if.end.i296.i

if.end152.i:                                      ; preds = %do.body105.i
  %.pr.i.b = load i1, ptr @tp_transition_snapshot.5, align 4
  br i1 %.pr.i.b, label %if.end152.i.if.end.i296.i_crit_edge, label %if.end152.i.tp_rcu_cond_sync.exit.i_crit_edge

if.end152.i.tp_rcu_cond_sync.exit.i_crit_edge:    ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tp_rcu_cond_sync.exit.i

if.end152.i.if.end.i296.i_crit_edge:              ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i296.i

if.end.i296.i:                                    ; preds = %if.end152.i.if.end.i296.i_crit_edge, %if.end152.thread.i
  %45 = load i32, ptr @tp_transition_snapshot.3, align 4
  tail call void @cond_synchronize_rcu(i32 noundef %45) #10
  %46 = load i32, ptr @tp_transition_snapshot.4, align 4
  %call.i295.i = tail call zeroext i1 @poll_state_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu, i32 noundef %46) #10
  br i1 %call.i295.i, label %if.end.i296.i.if.end2.i.i_crit_edge, label %if.then1.i297.i

if.end.i296.i.if.end2.i.i_crit_edge:              ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i.i

if.then1.i297.i:                                  ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #10
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i297.i, %if.end.i296.i.if.end2.i.i_crit_edge
  store i1 false, ptr @tp_transition_snapshot.5, align 4
  br label %tp_rcu_cond_sync.exit.i

tp_rcu_cond_sync.exit.i:                          ; preds = %if.end2.i.i, %if.end152.i.tp_rcu_cond_sync.exit.i_crit_edge
  %static_call_key.i298.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 2
  %47 = ptrtoint ptr %static_call_key.i298.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %static_call_key.i298.i, align 4
  %tobool.not.i299.i = icmp eq ptr %48, null
  br i1 %tobool.not.i299.i, label %tp_rcu_cond_sync.exit.i.if.then.i.i_crit_edge, label %if.end.i.i305.i

tp_rcu_cond_sync.exit.i.if.then.i.i_crit_edge:    ; preds = %tp_rcu_cond_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end.i.i305.i:                                  ; preds = %tp_rcu_cond_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %iterator.i300.i = getelementptr inbounds %struct.tracepoint, ptr %tp, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx.i284.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i284.i, align 4
  %tobool1.not.i.i304.i = icmp eq ptr %50, null
  %spec.select.i = select i1 %tobool1.not.i.i304.i, ptr %tp_funcs.0.i, ptr %iterator.i300.i
  %51 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %func.0.i307.i = load ptr, ptr %spec.select.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %func.0.i307.i, ptr %48, align 4
  br label %if.then.i.i

do.body155.i:                                     ; preds = %if.end.i286.i
  br i1 %cmp149.not.i, label %do.body155.i.if.then.i.i_crit_edge, label %if.then203.i

do.body155.i.if.then.i.i_crit_edge:               ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then203.i:                                     ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i310.i = tail call i32 @get_state_synchronize_rcu() #10
  store i32 %call.i310.i, ptr @tp_transition_snapshot.3, align 4
  %call1.i311.i = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #10
  store i32 %call1.i311.i, ptr @tp_transition_snapshot.4, align 4
  store i1 true, ptr @tp_transition_snapshot.5, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then203.i, %do.body155.i.if.then.i.i_crit_edge, %if.end.i.i305.i, %tp_rcu_cond_sync.exit.i.if.then.i.i_crit_edge, %tracepoint_update_call.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  %.b12.i.i = load i1, ptr @ok_to_free_tracepoints, align 1
  br i1 %.b12.i.i, label %if.end.i313.i, label %if.then5.i.i, !prof !95

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = load ptr, ptr @early_probes, align 4
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %add.ptr.i.i, align 4
  store ptr %add.ptr.i.i, ptr @early_probes, align 4
  br label %tracepoint_remove_func.exit

if.end.i313.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef %add.ptr.i.i, ptr noundef nonnull @rcu_free_old_probes) #10
  br label %tracepoint_remove_func.exit

tracepoint_remove_func.exit:                      ; preds = %if.end.i313.i, %if.then5.i.i, %if.end51.i.tracepoint_remove_func.exit_crit_edge, %if.then49.i
  %retval.0.i = phi i32 [ %27, %if.then49.i ], [ 0, %if.end51.i.tracepoint_remove_func.exit_crit_edge ], [ 0, %if.then5.i.i ], [ 0, %if.end.i313.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #10
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @trace_module_has_bad_taint(ptr nocapture noundef readonly %mod) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %taints = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 28
  %0 = ptrtoint ptr %taints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %taints, align 4
  %and = and i32 %1, -13313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_tracepoint_module_notifier(ptr noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoint_module_list_mutex, i32 noundef 0) #10
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @tracepoint_notify_list, ptr noundef %nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

for.cond.preheader:                               ; preds = %entry
  %tp_mod.011 = load ptr, ptr @tracepoint_module_list, align 4
  %cmp.not12 = icmp eq ptr %tp_mod.011, @tracepoint_module_list
  br i1 %cmp.not12, label %for.cond.preheader.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.end_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tp_mod.013 = phi ptr [ %tp_mod.0, %for.body.for.body_crit_edge ], [ %tp_mod.011, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nb, align 4
  %call1 = tail call i32 %1(ptr noundef %nb, i32 noundef 1, ptr noundef %tp_mod.013) #10
  %2 = ptrtoint ptr %tp_mod.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tp_mod.0 = load ptr, ptr %tp_mod.013, align 4
  %cmp.not = icmp eq ptr %tp_mod.0, @tracepoint_module_list
  br i1 %cmp.not, label %for.body.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.end_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

end:                                              ; preds = %for.body.end_crit_edge, %for.cond.preheader.end_crit_edge, %entry.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_module_list_mutex) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_tracepoint_module_notifier(ptr noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoint_module_list_mutex, i32 noundef 0) #10
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @tracepoint_notify_list, ptr noundef %nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

for.cond.preheader:                               ; preds = %entry
  %tp_mod.011 = load ptr, ptr @tracepoint_module_list, align 4
  %cmp.not12 = icmp eq ptr %tp_mod.011, @tracepoint_module_list
  br i1 %cmp.not12, label %for.cond.preheader.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.end_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tp_mod.013 = phi ptr [ %tp_mod.0, %for.body.for.body_crit_edge ], [ %tp_mod.011, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nb, align 4
  %call1 = tail call i32 %1(ptr noundef %nb, i32 noundef 2, ptr noundef %tp_mod.013) #10
  %2 = ptrtoint ptr %tp_mod.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tp_mod.0 = load ptr, ptr %tp_mod.013, align 4
  %cmp.not = icmp eq ptr %tp_mod.0, @tracepoint_module_list
  br i1 %cmp.not, label %for.body.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.end_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

end:                                              ; preds = %for.body.end_crit_edge, %for.cond.preheader.end_crit_edge, %entry.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_module_list_mutex) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_tracepoints() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_module_notifier(ptr noundef nonnull @tracepoint_module_nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @for_each_kernel_tracepoint(ptr nocapture noundef readonly %fct, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 icmp ult (ptr @__start___tracepoints_ptrs, ptr @__stop___tracepoints_ptrs), label %entry.for.body.i_crit_edge, label %entry.for_each_tracepoint_range.exit_crit_edge

entry.for_each_tracepoint_range.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for_each_tracepoint_range.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %iter.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ @__start___tracepoints_ptrs, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %iter.05.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter.05.i, align 4
  tail call void %fct(ptr noundef %1, ptr noundef %priv) #10
  %incdec.ptr.i = getelementptr ptr, ptr %iter.05.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, @__stop___tracepoints_ptrs
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for_each_tracepoint_range.exit_crit_edge

for.body.i.for_each_tracepoint_range.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for_each_tracepoint_range.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for_each_tracepoint_range.exit:                   ; preds = %for.body.i.for_each_tracepoint_range.exit_crit_edge, %entry.for_each_tracepoint_range.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @syscall_regfunc() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sys_tracepoint_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr44 = getelementptr i8, ptr %1, i32 -1136
  %cmp.not45 = icmp eq ptr %add.ptr44, @init_task
  br i1 %cmp.not45, label %if.then.for.end33_crit_edge, label %if.then.do.body2_crit_edge

if.then.do.body2_crit_edge:                       ; preds = %if.then
  br label %do.body2

if.then.for.end33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.cond.loopexit:                                ; preds = %for.body23.for.cond.loopexit_crit_edge, %do.end10.for.cond.loopexit_crit_edge
  %2 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %4, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.cond.loopexit.for.end33_crit_edge, label %for.cond.loopexit.do.body2_crit_edge

for.cond.loopexit.do.body2_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

for.cond.loopexit.for.end33_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

do.body2:                                         ; preds = %for.cond.loopexit.do.body2_crit_edge, %if.then.do.body2_crit_edge
  %4 = phi ptr [ %3, %for.cond.loopexit.do.body2_crit_edge ], [ %1, %if.then.do.body2_crit_edge ]
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.body2.do.end10_crit_edge

do.body2.do.end10_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %do.body2
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @syscall_regfunc.__warned, align 1
  br i1 %.b39, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @syscall_regfunc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 765, ptr noundef nonnull @.str.5) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %do.body2.do.end10_crit_edge
  %signal = getelementptr i8, ptr %4, i32 544
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn40 = load volatile ptr, ptr %thread_head, align 4
  %cmp22.not42 = icmp eq ptr %.pn40, %thread_head
  br i1 %cmp22.not42, label %do.end10.for.cond.loopexit_crit_edge, label %do.end10.for.body23_crit_edge

do.end10.for.body23_crit_edge:                    ; preds = %do.end10
  br label %for.body23

do.end10.for.cond.loopexit_crit_edge:             ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %do.end10.for.body23_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.body23.for.body23_crit_edge ], [ %.pn40, %do.end10.for.body23_crit_edge ]
  %stack = getelementptr i8, ptr %.pn43, i32 -1400
  %8 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %9) #10
  %10 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn43, align 4
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %thread_head21 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %cmp22.not = icmp eq ptr %.pn, %thread_head21
  br i1 %cmp22.not, label %for.body23.for.cond.loopexit_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.body23.for.cond.loopexit_crit_edge:           ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end33:                                        ; preds = %for.cond.loopexit.for.end33_crit_edge, %if.then.for.end33_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #10
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %entry.if.end34_crit_edge
  %13 = load i32, ptr @sys_tracepoint_refcount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @sys_tracepoint_refcount, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @syscall_unregfunc() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sys_tracepoint_refcount, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @sys_tracepoint_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr44 = getelementptr i8, ptr %1, i32 -1136
  %cmp.not45 = icmp eq ptr %add.ptr44, @init_task
  br i1 %cmp.not45, label %if.then.for.end33_crit_edge, label %if.then.do.body2_crit_edge

if.then.do.body2_crit_edge:                       ; preds = %if.then
  br label %do.body2

if.then.for.end33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.cond.loopexit:                                ; preds = %for.body23.for.cond.loopexit_crit_edge, %do.end10.for.cond.loopexit_crit_edge
  %2 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %4, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.cond.loopexit.for.end33_crit_edge, label %for.cond.loopexit.do.body2_crit_edge

for.cond.loopexit.do.body2_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

for.cond.loopexit.for.end33_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

do.body2:                                         ; preds = %for.cond.loopexit.do.body2_crit_edge, %if.then.do.body2_crit_edge
  %4 = phi ptr [ %3, %for.cond.loopexit.do.body2_crit_edge ], [ %1, %if.then.do.body2_crit_edge ]
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.body2.do.end10_crit_edge

do.body2.do.end10_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %do.body2
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @syscall_unregfunc.__warned, align 1
  br i1 %.b39, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @syscall_unregfunc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 782, ptr noundef nonnull @.str.5) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %do.body2.do.end10_crit_edge
  %signal = getelementptr i8, ptr %4, i32 544
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn40 = load volatile ptr, ptr %thread_head, align 4
  %cmp22.not42 = icmp eq ptr %.pn40, %thread_head
  br i1 %cmp22.not42, label %do.end10.for.cond.loopexit_crit_edge, label %do.end10.for.body23_crit_edge

do.end10.for.body23_crit_edge:                    ; preds = %do.end10
  br label %for.body23

do.end10.for.cond.loopexit_crit_edge:             ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %do.end10.for.body23_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.body23.for.body23_crit_edge ], [ %.pn40, %do.end10.for.body23_crit_edge ]
  %stack = getelementptr i8, ptr %.pn43, i32 -1400
  %8 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack, align 4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %9) #10
  %10 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn43, align 4
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %thread_head21 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %cmp22.not = icmp eq ptr %.pn, %thread_head21
  br i1 %cmp22.not, label %for.body23.for.cond.loopexit_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.body23.for.cond.loopexit_crit_edge:           ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.end33:                                        ; preds = %for.cond.loopexit.for.end33_crit_edge, %if.then.for.end33_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #10
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %entry.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_free_old_probes(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @call_srcu(ptr noundef nonnull @tracepoint_srcu, ptr noundef %head, ptr noundef nonnull @srcu_free_old_probes) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_free_old_probes(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %head) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tp_stub_func() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @cond_synchronize_rcu(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @poll_state_synchronize_srcu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_state_synchronize_rcu() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_poll_synchronize_srcu(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracepoint_module_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %val, label %entry.sw.epilog.thread_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  %num_tracepoints.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 41
  %1 = ptrtoint ptr %num_tracepoints.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tracepoints.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog.thread_crit_edge, label %if.end.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb
  %taints.i.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 28
  %3 = ptrtoint ptr %taints.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %taints.i.i, align 4
  %and.i.i = and i32 %4, -13313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end2.i, label %if.end.i.sw.epilog.thread_crit_edge

if.end.i.sw.epilog.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end2.i:                                        ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoint_module_list_mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 12) #15
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.end2.i.sw.epilog.thread.sink.split_crit_edge, label %if.end6.i

if.end2.i.sw.epilog.thread.sink.split_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread.sink.split

if.end6.i:                                        ; preds = %if.end2.i
  %mod7.i = getelementptr inbounds %struct.tp_module, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %mod7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %mod7.i, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tracepoint_module_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %7, ptr noundef nonnull @tracepoint_module_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.sw.epilog_crit_edge

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @tracepoint_module_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tracepoint_module_list, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %7, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %num_tracepoints.i4 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 41
  %11 = ptrtoint ptr %num_tracepoints.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tracepoints.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i5 = icmp eq i32 %12, 0
  br i1 %tobool.not.i5, label %sw.bb1.sw.epilog.thread_crit_edge, label %if.end.i6

sw.bb1.sw.epilog.thread_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end.i6:                                        ; preds = %sw.bb1
  tail call void @mutex_lock_nested(ptr noundef nonnull @tracepoint_module_list_mutex, i32 noundef 0) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i6
  %tp_mod.0.in.i = phi ptr [ @tracepoint_module_list, %if.end.i6 ], [ %tp_mod.0.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %tp_mod.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tp_mod.0.i = load ptr, ptr %tp_mod.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tp_mod.0.i, @tracepoint_module_list
  br i1 %cmp.not.i, label %for.cond.i.sw.epilog.thread.sink.split_crit_edge, label %for.body.i

for.cond.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %mod1.i = getelementptr inbounds %struct.tp_module, ptr %tp_mod.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %mod1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mod1.i, align 4
  %cmp2.i = icmp eq ptr %15, %data
  br i1 %cmp2.i, label %if.then3.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then3.i:                                       ; preds = %for.body.i
  %call.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @tracepoint_notify_list, i32 noundef 2, ptr noundef %tp_mod.0.i) #10
  %call.i.i.i7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tp_mod.0.i) #10
  br i1 %call.i.i.i7, label %if.end.i.i.i8, label %if.then3.i.list_del.exit.i_crit_edge

if.then3.i.list_del.exit.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i8:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tp_mod.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %tp_mod.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp_mod.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i8, %if.then3.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %tp_mod.0.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %tp_mod.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tp_mod.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %tp_mod.0.i) #10
  %tracepoints_ptrs.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 42
  %24 = ptrtoint ptr %tracepoints_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tracepoints_ptrs.i, align 4
  %26 = ptrtoint ptr %num_tracepoints.i4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tracepoints.i4, align 8
  %add.ptr7.i = getelementptr ptr, ptr %25, i32 %27
  %tobool.not.i.i = icmp ne ptr %25, null
  %cmp4.i.i = icmp ult ptr %25, %add.ptr7.i
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %list_del.exit.i.for.body.i.i_crit_edge, label %list_del.exit.i.sw.epilog.thread.sink.split_crit_edge

list_del.exit.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread.sink.split

list_del.exit.i.for.body.i.i_crit_edge:           ; preds = %list_del.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %tp_module_going_check_quiescent.exit.i.for.body.i.i_crit_edge, %list_del.exit.i.for.body.i.i_crit_edge
  %iter.05.i.i = phi ptr [ %incdec.ptr.i.i, %tp_module_going_check_quiescent.exit.i.for.body.i.i_crit_edge ], [ %25, %list_del.exit.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %iter.05.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iter.05.i.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.tracepoint, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i22.i = icmp eq ptr %31, null
  br i1 %tobool.not.i22.i, label %for.body.i.i.tp_module_going_check_quiescent.exit.i_crit_edge, label %land.rhs.i.i

for.body.i.i.tp_module_going_check_quiescent.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tp_module_going_check_quiescent.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i.i
  %.b38.i.i = load i1, ptr @tp_module_going_check_quiescent.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.tp_module_going_check_quiescent.exit.i_crit_edge, label %if.then.i.i, !prof !95

land.rhs.i.i.tp_module_going_check_quiescent.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tp_module_going_check_quiescent.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tp_module_going_check_quiescent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 636, i32 noundef 9, ptr noundef null) #10
  br label %tp_module_going_check_quiescent.exit.i

tp_module_going_check_quiescent.exit.i:           ; preds = %if.then.i.i, %land.rhs.i.i.tp_module_going_check_quiescent.exit.i_crit_edge, %for.body.i.i.tp_module_going_check_quiescent.exit.i_crit_edge
  %incdec.ptr.i.i = getelementptr ptr, ptr %iter.05.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr7.i
  br i1 %cmp.i.i, label %tp_module_going_check_quiescent.exit.i.for.body.i.i_crit_edge, label %tp_module_going_check_quiescent.exit.i.sw.epilog.thread.sink.split_crit_edge

tp_module_going_check_quiescent.exit.i.sw.epilog.thread.sink.split_crit_edge: ; preds = %tp_module_going_check_quiescent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread.sink.split

tp_module_going_check_quiescent.exit.i.for.body.i.i_crit_edge: ; preds = %tp_module_going_check_quiescent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

sw.epilog:                                        ; preds = %if.end.i.i.i, %if.end6.i.sw.epilog_crit_edge
  %call8.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @tracepoint_notify_list, i32 noundef 1, ptr noundef nonnull %call7.i.i) #10
  br label %sw.epilog.thread.sink.split

sw.epilog.thread.sink.split:                      ; preds = %sw.epilog, %tp_module_going_check_quiescent.exit.i.sw.epilog.thread.sink.split_crit_edge, %list_del.exit.i.sw.epilog.thread.sink.split_crit_edge, %for.cond.i.sw.epilog.thread.sink.split_crit_edge, %if.end2.i.sw.epilog.thread.sink.split_crit_edge
  %.ph = phi i32 [ 1, %sw.epilog ], [ 32781, %if.end2.i.sw.epilog.thread.sink.split_crit_edge ], [ 1, %list_del.exit.i.sw.epilog.thread.sink.split_crit_edge ], [ 1, %tp_module_going_check_quiescent.exit.i.sw.epilog.thread.sink.split_crit_edge ], [ 1, %for.cond.i.sw.epilog.thread.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_module_list_mutex) #10
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread.sink.split, %sw.bb1.sw.epilog.thread_crit_edge, %if.end.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  %32 = phi i32 [ 1, %sw.bb1.sw.epilog.thread_crit_edge ], [ 1, %if.end.i.sw.epilog.thread_crit_edge ], [ 1, %sw.bb.sw.epilog.thread_crit_edge ], [ 1, %entry.sw.epilog.thread_crit_edge ], [ %.ph, %sw.epilog.thread.sink.split ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/tracepoint.c", i32 28, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tracepoint_srcu, !1, !"tracepoint_srcu", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tracepoint_srcu, !7, !"__ksymtab_tracepoint_srcu", i1 false, i1 false}
!7 = !{!"../kernel/tracepoint.c", i32 29, i32 1}
!8 = !{ptr @__initcall__kmod_tracepoint__200_140_release_early_probes2, !9, !"__initcall__kmod_tracepoint__200_140_release_early_probes2", i1 false, i1 false}
!9 = !{!"../kernel/tracepoint.c", i32 140, i32 1}
!10 = !{ptr @__ksymtab_tracepoint_probe_register_prio_may_exist, !11, !"__ksymtab_tracepoint_probe_register_prio_may_exist", i1 false, i1 false}
!11 = !{!"../kernel/tracepoint.c", i32 486, i32 1}
!12 = !{ptr @__ksymtab_tracepoint_probe_register_prio, !13, !"__ksymtab_tracepoint_probe_register_prio", i1 false, i1 false}
!13 = !{!"../kernel/tracepoint.c", i32 515, i32 1}
!14 = !{ptr @__ksymtab_tracepoint_probe_register, !15, !"__ksymtab_tracepoint_probe_register", i1 false, i1 false}
!15 = !{!"../kernel/tracepoint.c", i32 533, i32 1}
!16 = !{ptr @__ksymtab_tracepoint_probe_unregister, !17, !"__ksymtab_tracepoint_probe_unregister", i1 false, i1 false}
!17 = !{!"../kernel/tracepoint.c", i32 555, i32 1}
!18 = !{ptr @__ksymtab_register_tracepoint_module_notifier, !19, !"__ksymtab_register_tracepoint_module_notifier", i1 false, i1 false}
!19 = !{!"../kernel/tracepoint.c", i32 603, i32 1}
!20 = !{ptr @__ksymtab_unregister_tracepoint_module_notifier, !21, !"__ksymtab_unregister_tracepoint_module_notifier", i1 false, i1 false}
!21 = !{!"../kernel/tracepoint.c", i32 628, i32 1}
!22 = !{ptr @__initcall__kmod_tracepoint__217_738_init_tracepoints6, !23, !"__initcall__kmod_tracepoint__217_738_init_tracepoints6", i1 false, i1 false}
!23 = !{!"../kernel/tracepoint.c", i32 738, i32 1}
!24 = !{ptr @__ksymtab_for_each_kernel_tracepoint, !25, !"__ksymtab_for_each_kernel_tracepoint", i1 false, i1 false}
!25 = !{!"../kernel/tracepoint.c", i32 752, i32 1}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../kernel/tracepoint.c", i32 765, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../kernel/tracepoint.c", i32 782, i32 3}
!32 = !{ptr @__pcpu_unique_tracepoint_srcu_srcu_data, !1, !"__pcpu_unique_tracepoint_srcu_srcu_data", i1 false, i1 false}
!33 = !{ptr @tracepoint_srcu_srcu_data, !1, !"tracepoint_srcu_srcu_data", i1 false, i1 false}
!34 = !{ptr @sys_tracepoint_refcount, !35, !"sys_tracepoint_refcount", i1 false, i1 false}
!35 = !{!"../kernel/tracepoint.c", i32 757, i32 12}
!36 = distinct !{null, !37, !"ok_to_free_tracepoints", i1 false, i1 false}
!37 = !{!"../kernel/tracepoint.c", i32 89, i32 13}
!38 = !{ptr @early_probes, !39, !"early_probes", i1 false, i1 false}
!39 = !{!"../kernel/tracepoint.c", i32 88, i32 25}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/tracepoint.c", i32 86, i32 8}
!42 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tracepoints_mutex, !41, !"tracepoints_mutex", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../kernel/tracepoint.c", i32 336, i32 13}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../kernel/tracepoint.c", i32 340, i32 3}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../kernel/tracepoint.c", i32 382, i32 3}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/tracepoint.c", i32 176, i32 3}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @debug_print_probes._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @debug_print_probes._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"tracepoint_debug", i1 false, i1 false}
!57 = !{!"../kernel/tracepoint.c", i32 70, i32 18}
!58 = distinct !{null, !59, !"tp_transition_snapshot", i1 false, i1 false}
!59 = !{!"../kernel/tracepoint.c", i32 45, i32 38}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../kernel/tracepoint.c", i32 401, i32 13}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../kernel/tracepoint.c", i32 404, i32 6}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../kernel/tracepoint.c", i32 455, i32 3}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/tracepoint.c", i32 76, i32 8}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tracepoint_module_list_mutex, !67, !"tracepoint_module_list_mutex", i1 false, i1 false}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/tracepoint.c", i32 577, i32 8}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tracepoint_notify_list, !71, !"tracepoint_notify_list", i1 false, i1 false}
!74 = !{ptr @tracepoint_module_list, !75, !"tracepoint_module_list", i1 false, i1 false}
!75 = !{!"../kernel/tracepoint.c", i32 79, i32 8}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/tracepoint.c", i32 734, i32 3}
!78 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @init_tracepoints._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @init_tracepoints._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @tracepoint_module_nb, !82, !"tracepoint_module_nb", i1 false, i1 false}
!82 = !{!"../kernel/tracepoint.c", i32 723, i32 30}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../kernel/tracepoint.c", i32 636, i32 2}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2153000825}
!97 = !{i64 2153008085}
