; ModuleID = '/llk/IR_all_yes/kernel/exit.c_pt.bc'
source_filename = "../kernel/exit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rcuwait_wake_up\22, \22a\22\09"
module asm "\09.weak\09__crc_rcuwait_wake_up\09\09\09\09"
module asm "\09.long\09__crc_rcuwait_wake_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcuwait_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22rcuwait_wake_up\22\09\09\09\09\09"
module asm "__kstrtabns_rcuwait_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+thread_group_exited\22, \22a\22\09"
module asm "\09.weak\09__crc_thread_group_exited\09\09\09\09"
module asm "\09.long\09__crc_thread_group_exited\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thread_group_exited:\09\09\09\09\09"
module asm "\09.asciz \09\22thread_group_exited\22\09\09\09\09\09"
module asm "__kstrtabns_thread_group_exited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+abort\22, \22a\22\09"
module asm "\09.weak\09__crc_abort\09\09\09\09"
module asm "\09.long\09__crc_abort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22abort\22\09\09\09\09\09"
module asm "__kstrtabns_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.124, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.124 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.22 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.64 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.64 = type { %struct.callback_head }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.page = type { i32, %union.anon.7, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.core_thread = type { ptr, ptr }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_opts = type { i32, i32, ptr, ptr, i32, ptr, %struct.wait_queue_entry, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.waitid_info = type { i32, i32, i32, i32 }
%struct.anon.137 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32, i32, i32 }

@release_task.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/exit.c\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@rcuwait_wake_up.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_rcuwait_wake_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcuwait_wake_up = external dso_local constant [0 x i8], align 1
@__ksymtab_rcuwait_wake_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcuwait_wake_up to i32), ptr @__kstrtab_rcuwait_wake_up, ptr @__kstrtabns_rcuwait_wake_up }, section "___ksymtab_gpl+rcuwait_wake_up", align 4
@init_task = external dso_local global %struct.task_struct, align 128
@mm_update_next_owner.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempted to kill init! exitcode=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@dirty_throttle_leaks = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Aiee, killing interrupt handler!\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Attempted to kill the idle task!\00", [63 x i8] zeroinitializer }, align 32
@make_task_dead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016note: %s[%d] exited with preempt_count %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"make_task_dead\00", [17 x i8] zeroinitializer }, align 32
@make_task_dead._entry_ptr = internal global ptr @make_task_dead._entry, section ".printk_index", align 4
@make_task_dead._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011Fixing recursive fault but reboot is needed!\0A\00", [48 x i8] zeroinitializer }, align 32
@make_task_dead._entry_ptr.11 = internal global ptr @make_task_dead._entry.9, section ".printk_index", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_exit\00", [17 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__exit = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 1, ptr @types__exit, ptr @args__exit, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__exit, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__exit, i64 20) }, ptr @event_enter__exit, ptr @event_exit__exit }, align 4
@event_enter__exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__exit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__exit = internal global ptr @event_enter__exit, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_exit\00", [18 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__exit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__exit = internal global ptr @event_exit__exit, section "_ftrace_events", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_exit\00", [23 x i8] zeroinitializer }, align 32
@types__exit = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@args__exit = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.37], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__exit = internal global ptr @__syscall_meta__exit, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_exit_group\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__exit_group = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 1, ptr @types__exit_group, ptr @args__exit_group, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__exit_group, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__exit_group, i64 20) }, ptr @event_enter__exit_group, ptr @event_exit__exit_group }, align 4
@event_enter__exit_group = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__exit_group, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__exit_group = internal global ptr @event_enter__exit_group, section "_ftrace_events", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_exit_group\00", [44 x i8] zeroinitializer }, align 32
@event_exit__exit_group = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__exit_group, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__exit_group = internal global ptr @event_exit__exit_group, section "_ftrace_events", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_group\00", [17 x i8] zeroinitializer }, align 32
@types__exit_group = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@args__exit_group = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.37], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__exit_group = internal global ptr @__syscall_meta__exit_group, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_waitid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__waitid = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 5, ptr @types__waitid, ptr @args__waitid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__waitid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__waitid, i64 20) }, ptr @event_enter__waitid, ptr @event_exit__waitid }, align 4
@event_enter__waitid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__waitid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__waitid = internal global ptr @event_enter__waitid, section "_ftrace_events", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_waitid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__waitid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__waitid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__waitid = internal global ptr @event_exit__waitid, section "_ftrace_events", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_waitid\00", [21 x i8] zeroinitializer }, align 32
@types__waitid = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.36, ptr @.str.40], [44 x i8] zeroinitializer }, align 32
@args__waitid = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__waitid = internal global ptr @__syscall_meta__waitid, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_wait4\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__wait4 = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 4, ptr @types__wait4, ptr @args__wait4, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__wait4, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__wait4, i64 20) }, ptr @event_enter__wait4, ptr @event_exit__wait4 }, align 4
@event_enter__wait4 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__wait4, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__wait4 = internal global ptr @event_enter__wait4, section "_ftrace_events", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_wait4\00", [17 x i8] zeroinitializer }, align 32
@event_exit__wait4 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__wait4, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__wait4 = internal global ptr @event_exit__wait4, section "_ftrace_events", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_wait4\00", [22 x i8] zeroinitializer }, align 32
@types__wait4 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.53, ptr @.str.36, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@args__wait4 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.54, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__wait4 = internal global ptr @__syscall_meta__wait4, section "__syscalls_metadata", align 4
@__kstrtab_thread_group_exited = external dso_local constant [0 x i8], align 1
@__kstrtabns_thread_group_exited = external dso_local constant [0 x i8], align 1
@__ksymtab_thread_group_exited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thread_group_exited to i32), ptr @__kstrtab_thread_group_exited, ptr @__kstrtabns_thread_group_exited }, section "___ksymtab+thread_group_exited", align 4
@__kstrtab_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abort to i32), ptr @__kstrtab_abort, ptr @__kstrtabns_abort }, section "___ksymtab+abort", align 4
@__tracepoint_sched_process_free = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_process_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__exit_signal.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@process_counts = external dso_local global i32, section ".data..percpu", align 4
@will_become_orphaned_pgrp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_process_exit = external dso_local global %struct.tracepoint, align 4
@trace_sched_process_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@forget_original_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@find_alive_thread.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@has_stopped_jobs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@check_stack_usage.low_water_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"low_water_lock\00", [17 x i8] zeroinitializer }, align 32
@check_stack_usage.lowest_to_date = internal global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@check_stack_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s (%d) used greatest stack depth: %lu bytes left\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_stack_usage\00", [46 x i8] zeroinitializer }, align 32
@check_stack_usage._entry_ptr = internal global ptr @check_stack_usage._entry, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"error_code\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct siginfo *\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct rusage *\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"which\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"upid\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"infop\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"options\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ru\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_sched_process_wait = external dso_local global %struct.tracepoint, align 4
@trace_sched_process_wait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_task_zombie.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_task_stopped.__warned.51 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wait_task_continued.__warned.52 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"int *\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stat_addr\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 2147483648, i64 4294967295]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 192, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 431, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 775, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 874, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 876, i32 9 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 879, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 890, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"event_enter__exit\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"event_exit__exit\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"types__exit\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"args__exit\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [24 x i8] c"event_enter__exit_group\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"event_exit__exit_group\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"types__exit_group\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"args__exit_group\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 944, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"event_enter__waitid\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"event_exit__waitid\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"types__waitid\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"args__waitid\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"event_enter__wait4\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"event_exit__wait4\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"types__wait4\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"args__wait4\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 323, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 108, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 695, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 723, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 57, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 717, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"low_water_lock\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 712, i32 9 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"lowest_to_date\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 713, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 723, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 900, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1623, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 174, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [17 x i8] c"../kernel/exit.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1715, i32 1 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__event_enter__exit, ptr @__event_enter__exit_group, ptr @__event_enter__wait4, ptr @__event_enter__waitid, ptr @__event_exit__exit, ptr @__event_exit__exit_group, ptr @__event_exit__wait4, ptr @__event_exit__waitid, ptr @__ksymtab_abort, ptr @__ksymtab_rcuwait_wake_up, ptr @__ksymtab_thread_group_exited, ptr @__p_syscall_meta__exit, ptr @__p_syscall_meta__exit_group, ptr @__p_syscall_meta__wait4, ptr @__p_syscall_meta__waitid, ptr @__syscall_meta__exit, ptr @__syscall_meta__exit_group, ptr @__syscall_meta__wait4, ptr @__syscall_meta__waitid, ptr @check_stack_usage._entry, ptr @check_stack_usage._entry_ptr, ptr @event_enter__exit, ptr @event_enter__exit_group, ptr @event_enter__wait4, ptr @event_enter__waitid, ptr @event_exit__exit, ptr @event_exit__exit_group, ptr @event_exit__wait4, ptr @event_exit__waitid, ptr @make_task_dead._entry, ptr @make_task_dead._entry.9, ptr @make_task_dead._entry_ptr, ptr @make_task_dead._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__exit, ptr @args__exit, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__exit_group, ptr @args__exit_group, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__waitid, ptr @args__waitid, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__wait4, ptr @args__wait4, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @check_stack_usage.low_water_lock, ptr @.str.33, ptr @check_stack_usage.lowest_to_date, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_task_dead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_task_dead._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__exit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__exit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__exit_group to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__exit_group to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__exit_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__exit_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__waitid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__waitid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__waitid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__waitid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__wait4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__wait4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__wait4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__wait4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stack_usage.low_water_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stack_usage.lowest_to_date to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stack_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_exit = dso_local alias i32 (i32), ptr @__se_sys_exit
@sys_exit_group = dso_local alias i32 (i32), ptr @__se_sys_exit_group
@sys_waitid = dso_local alias i32 (i32, i32, ptr, i32, ptr), ptr @__se_sys_waitid
@sys_wait4 = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_wait4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_task_struct_rcu_user(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 178
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %0, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !177

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_put_task_struct(ptr noundef %rhp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rhp, i32 -4708
  tail call void @kprobe_flush_task(ptr noundef %add.ptr) #12
  tail call void @perf_event_delayed_put(ptr noundef %add.ptr) #12
  tail call fastcc void @trace_sched_process_free(ptr noundef %add.ptr)
  %usage.i = getelementptr i8, ptr %rhp, i32 -4700
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !177

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @__put_task_struct(ptr noundef %add.ptr) #12
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_task(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %repeat

repeat:                                           ; preds = %repeat.backedge, %entry
  %p.addr.0 = phi ptr [ %p, %entry ], [ %165, %repeat.backedge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %repeat.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

repeat.rcu_read_lock.exit_crit_edge:              ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %repeat
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %repeat.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i51 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %add.i.i.i53 = add i32 %7, 1
  store volatile i32 %add.i.i.i53, ptr %preempt_count.i.i.i.i52, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i54, label %rcu_read_lock.exit.rcu_read_lock.exit61_crit_edge, label %land.lhs.true.i57

rcu_read_lock.exit.rcu_read_lock.exit61_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit61

land.lhs.true.i57:                                ; preds = %rcu_read_lock.exit
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_lock.exit61_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_lock.exit61_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit61

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_lock.exit61_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_lock.exit61_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit61

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit61

rcu_read_lock.exit61:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_lock.exit61_crit_edge, %land.lhs.true.i57.rcu_read_lock.exit61_crit_edge, %rcu_read_lock.exit.rcu_read_lock.exit61_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 98
  %8 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit61.do.end7_crit_edge

rcu_read_lock.exit61.do.end7_crit_edge:           ; preds = %rcu_read_lock.exit61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit61
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @release_task.__warned, align 1
  br i1 %.b47, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @release_task.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit61.do.end7_crit_edge
  %ucounts = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ucounts, align 4
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i62, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %do.end7
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %12 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i69 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call10 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %11, i32 noundef 12, i32 noundef 1) #12
  %call.i71 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i71, label %rcu_read_unlock.exit.rcu_read_unlock.exit81_crit_edge, label %land.lhs.true.i74

rcu_read_unlock.exit.rcu_read_unlock.exit81_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit81

land.lhs.true.i74:                                ; preds = %rcu_read_unlock.exit
  %call1.i72 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock.exit81_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock.exit81_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit81

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock.exit81_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock.exit81_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit81

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_unlock.exit81

rcu_read_unlock.exit81:                           ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock.exit81_crit_edge, %land.lhs.true.i74.rcu_read_unlock.exit81_crit_edge, %rcu_read_unlock.exit.rcu_read_unlock.exit81_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %16 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i78 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %sub.i.i.i80 = add i32 %19, -1
  store volatile i32 %sub.i.i.i80, ptr %preempt_count.i.i.i.i79, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @cgroup_release(ptr noundef %p.addr.0) #12
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  %ptraced.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 76
  %20 = ptrtoint ptr %ptraced.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ptraced.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %ptraced.i
  br i1 %cmp.i.not.i, label %do.end7.i, label %do.body4.i, !prof !177

do.body4.i:                                       ; preds = %rcu_read_unlock.exit81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ptrace.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #12, !srcloc !181
  unreachable

do.end7.i:                                        ; preds = %rcu_read_unlock.exit81
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 4
  %22 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptrace.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %do.end7.i.ptrace_unlink.exit.i_crit_edge, label %if.then.i.i, !prof !177

do.end7.i.ptrace_unlink.exit.i_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptrace_unlink.exit.i

if.then.i.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__ptrace_unlink(ptr noundef %p.addr.0) #12
  br label %ptrace_unlink.exit.i

ptrace_unlink.exit.i:                             ; preds = %if.then.i.i, %do.end7.i.ptrace_unlink.exit.i_crit_edge
  %ptrace_entry.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 77
  %24 = ptrtoint ptr %ptrace_entry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %ptrace_entry.i, align 4
  %cmp.i28.not.i = icmp eq ptr %25, %ptrace_entry.i
  br i1 %cmp.i28.not.i, label %ptrace_release_task.exit, label %do.body20.i, !prof !177

do.body20.i:                                      ; preds = %ptrace_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ptrace.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #12, !srcloc !182
  unreachable

ptrace_release_task.exit:                         ; preds = %ptrace_unlink.exit.i
  %thread_pid11 = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 78
  %26 = ptrtoint ptr %thread_pid11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %thread_pid11, align 16
  %tobool.not.i82 = icmp eq ptr %27, null
  br i1 %tobool.not.i82, label %ptrace_release_task.exit.get_pid.exit_crit_edge, label %if.then.i83

ptrace_release_task.exit.get_pid.exit_crit_edge:  ; preds = %ptrace_release_task.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.then.i83:                                      ; preds = %ptrace_release_task.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %27, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i83.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !184

if.then.i83.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i83
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !177

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i83.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i83.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %ptrace_release_task.exit.get_pid.exit_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 111
  %30 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signal.i, align 16
  %exit_signal.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 59
  %32 = ptrtoint ptr %exit_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exit_signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.i = icmp sgt i32 %33, -1
  %sighand1.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 112
  %34 = ptrtoint ptr %sighand1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %sighand1.i, align 4
  %call3.i = tail call i32 @lockdep_tasklist_lock_is_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i84 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i84, label %lor.lhs.false.i, label %get_pid.exit.do.end11.i_crit_edge

get_pid.exit.do.end11.i_crit_edge:                ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

lor.lhs.false.i:                                  ; preds = %get_pid.exit
  %call4.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i85, label %lor.lhs.false.i.do.end11.i_crit_edge

lor.lhs.false.i.do.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

land.lhs.true.i85:                                ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i85.do.end11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i85.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i85
  %.b109.i = load i1, ptr @__exit_signal.__warned, align 1
  br i1 %.b109.i, label %land.lhs.true8.i.do.end11.i_crit_edge, label %if.then.i86

land.lhs.true8.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

if.then.i86:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__exit_signal.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.1) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i86, %land.lhs.true8.i.do.end11.i_crit_edge, %land.lhs.true.i85.do.end11.i_crit_edge, %lor.lhs.false.i.do.end11.i_crit_edge, %get_pid.exit.do.end11.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %35) #12
  tail call void @posix_cpu_timers_exit(ptr noundef %p.addr.0) #12
  br i1 %cmp.i.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @posix_cpu_timers_exit_group(ptr noundef %p.addr.0) #12
  %tty18.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 25
  %36 = ptrtoint ptr %tty18.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty18.i, align 8
  store ptr null, ptr %tty18.i, align 8
  br label %if.end31.i

if.else.i:                                        ; preds = %do.end11.i
  %notify_count.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 9
  %38 = ptrtoint ptr %notify_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %notify_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp sgt i32 %39, 0
  br i1 %cmp.i, label %land.lhs.true20.i, label %if.else.i.if.end25.i_crit_edge

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

land.lhs.true20.i:                                ; preds = %if.else.i
  %dec.i = add nsw i32 %39, -1
  %40 = ptrtoint ptr %notify_count.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dec.i, ptr %notify_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %land.lhs.true20.i.if.end25.i_crit_edge

land.lhs.true20.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then23.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  %group_exec_task.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 10
  %41 = ptrtoint ptr %group_exec_task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %group_exec_task.i, align 8
  %call24.i = tail call i32 @wake_up_process(ptr noundef %42) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %land.lhs.true20.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge
  %curr_target.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 5
  %43 = ptrtoint ptr %curr_target.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %curr_target.i, align 8
  %cmp26.i = icmp eq ptr %44, %p.addr.0
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.if.end31.i_crit_edge

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %thread_group.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 80
  %45 = ptrtoint ptr %thread_group.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %thread_group.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 -1396
  %47 = ptrtoint ptr %curr_target.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i.i, ptr %curr_target.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end31.i_crit_edge, %if.then14.i
  %tty.0.i = phi ptr [ %37, %if.then14.i ], [ inttoptr (i32 -1 to ptr), %if.then27.i ], [ inttoptr (i32 -1 to ptr), %if.end25.i.if.end31.i_crit_edge ]
  %sum_exec_runtime.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 18, i32 5
  tail call void @add_device_randomness(ptr noundef %sum_exec_runtime.i, i32 noundef 8) #12
  %utime1.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 86
  %48 = ptrtoint ptr %utime1.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %utime1.i.i, align 8
  %stime2.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 87
  %50 = ptrtoint ptr %stime2.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %stime2.i.i, align 32
  %stats_lock.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 27
  %lock.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 27, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %52 = ptrtoint ptr %stats_lock.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stats_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i, ptr %stats_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  %dep_map.i.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 27, i32 0, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #12
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #12
  %utime33.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 28
  %56 = ptrtoint ptr %utime33.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %utime33.i, align 8
  %add.i = add i64 %57, %49
  store i64 %add.i, ptr %utime33.i, align 8
  %stime34.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 29
  %58 = ptrtoint ptr %stime34.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %stime34.i, align 8
  %add35.i = add i64 %59, %51
  store i64 %add35.i, ptr %stime34.i, align 8
  %gtime.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 88
  %60 = ptrtoint ptr %gtime.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %gtime.i.i, align 8
  %gtime.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 32
  %62 = ptrtoint ptr %gtime.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %gtime.i, align 8
  %add37.i = add i64 %63, %61
  store i64 %add37.i, ptr %gtime.i, align 8
  %min_flt.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 94
  %64 = ptrtoint ptr %min_flt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_flt.i, align 8
  %min_flt38.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 39
  %66 = ptrtoint ptr %min_flt38.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %min_flt38.i, align 8
  %add39.i = add i32 %67, %65
  store i32 %add39.i, ptr %min_flt38.i, align 8
  %maj_flt.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 95
  %68 = ptrtoint ptr %maj_flt.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %maj_flt.i, align 4
  %maj_flt40.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 40
  %70 = ptrtoint ptr %maj_flt40.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %maj_flt40.i, align 4
  %add41.i = add i32 %71, %69
  store i32 %add41.i, ptr %maj_flt40.i, align 4
  %nvcsw.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 90
  %72 = ptrtoint ptr %nvcsw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nvcsw.i, align 16
  %nvcsw42.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 35
  %74 = ptrtoint ptr %nvcsw42.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nvcsw42.i, align 8
  %add43.i = add i32 %75, %73
  store i32 %add43.i, ptr %nvcsw42.i, align 8
  %nivcsw.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 91
  %76 = ptrtoint ptr %nivcsw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nivcsw.i, align 4
  %nivcsw44.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 36
  %78 = ptrtoint ptr %nivcsw44.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nivcsw44.i, align 4
  %add45.i = add i32 %79, %77
  store i32 %add45.i, ptr %nivcsw44.i, align 4
  %read_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155, i32 4
  %80 = ptrtoint ptr %read_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %read_bytes.i.i, align 8
  %shr.i.i = lshr i64 %81, 9
  %conv.i.i = trunc i64 %shr.i.i to i32
  %inblock.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 43
  %82 = ptrtoint ptr %inblock.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %inblock.i, align 8
  %add47.i = add i32 %83, %conv.i.i
  store i32 %add47.i, ptr %inblock.i, align 8
  %write_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155, i32 5
  %84 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %write_bytes.i.i, align 8
  %shr.i110.i = lshr i64 %85, 9
  %conv.i111.i = trunc i64 %shr.i110.i to i32
  %oublock.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 44
  %86 = ptrtoint ptr %oublock.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %oublock.i, align 4
  %add49.i = add i32 %87, %conv.i111.i
  store i32 %add49.i, ptr %oublock.i, align 4
  %ioac.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49
  %ioac50.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155
  %88 = ptrtoint ptr %ioac50.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ioac50.i, align 8
  %90 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ioac.i, align 8
  %add.i.i.i87 = add i64 %91, %89
  store i64 %add.i.i.i87, ptr %ioac.i, align 8
  %wchar.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155, i32 1
  %92 = ptrtoint ptr %wchar.i.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %wchar.i.i.i, align 8
  %wchar2.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49, i32 1
  %94 = ptrtoint ptr %wchar2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %wchar2.i.i.i, align 8
  %add3.i.i.i = add i64 %95, %93
  store i64 %add3.i.i.i, ptr %wchar2.i.i.i, align 8
  %syscr.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155, i32 2
  %96 = ptrtoint ptr %syscr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %syscr.i.i.i, align 8
  %syscr4.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49, i32 2
  %98 = ptrtoint ptr %syscr4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %syscr4.i.i.i, align 8
  %add5.i.i.i = add i64 %99, %97
  store i64 %add5.i.i.i, ptr %syscr4.i.i.i, align 8
  %syscw.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155, i32 3
  %100 = ptrtoint ptr %syscw.i.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %syscw.i.i.i, align 8
  %syscw6.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49, i32 3
  %102 = ptrtoint ptr %syscw6.i.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %syscw6.i.i.i, align 8
  %add7.i.i.i = add i64 %103, %101
  store i64 %add7.i.i.i, ptr %syscw6.i.i.i, align 8
  %104 = load i64, ptr %read_bytes.i.i, align 8
  %read_bytes1.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49, i32 4
  %105 = ptrtoint ptr %read_bytes1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %read_bytes1.i.i.i, align 8
  %add.i3.i.i = add i64 %106, %104
  store i64 %add.i3.i.i, ptr %read_bytes1.i.i.i, align 8
  %107 = load i64, ptr %write_bytes.i.i, align 8
  %write_bytes2.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49, i32 5
  %108 = ptrtoint ptr %write_bytes2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %write_bytes2.i.i.i, align 8
  %add3.i4.i.i = add i64 %109, %107
  store i64 %add3.i4.i.i, ptr %write_bytes2.i.i.i, align 8
  %cancelled_write_bytes.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 155, i32 6
  %110 = ptrtoint ptr %cancelled_write_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %cancelled_write_bytes.i.i.i, align 8
  %cancelled_write_bytes4.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 49, i32 6
  %112 = ptrtoint ptr %cancelled_write_bytes4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %cancelled_write_bytes4.i.i.i, align 8
  %add5.i5.i.i = add i64 %113, %111
  store i64 %add5.i5.i.i, ptr %cancelled_write_bytes4.i.i.i, align 8
  %114 = ptrtoint ptr %sum_exec_runtime.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %sum_exec_runtime.i, align 8
  %sum_sched_runtime.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 50
  %116 = ptrtoint ptr %sum_sched_runtime.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %sum_sched_runtime.i, align 8
  %add53.i = add i64 %117, %115
  store i64 %add53.i, ptr %sum_sched_runtime.i, align 8
  %nr_threads.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 2
  %118 = ptrtoint ptr %nr_threads.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nr_threads.i, align 8
  %dec54.i = add i32 %119, -1
  store i32 %dec54.i, ptr %nr_threads.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_threads to i32))
  %120 = load i32, ptr @nr_threads, align 4
  %dec.i.i = add i32 %120, -1
  store i32 %dec.i.i, ptr @nr_threads, align 4
  tail call void @detach_pid(ptr noundef %p.addr.0, i32 noundef 0) #12
  br i1 %cmp.i.i, label %if.then.i.i88, label %if.end31.i.if.end.i.i_crit_edge

if.end31.i.if.end.i.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i88:                                    ; preds = %if.end31.i
  tail call void @detach_pid(ptr noundef %p.addr.0, i32 noundef 1) #12
  tail call void @detach_pid(ptr noundef %p.addr.0, i32 noundef 2) #12
  tail call void @detach_pid(ptr noundef %p.addr.0, i32 noundef 3) #12
  %tasks.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 50
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tasks.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i88.list_del_rcu.exit.i.i_crit_edge

if.then.i.i88.list_del_rcu.exit.i.i_crit_edge:    ; preds = %if.then.i.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i88
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 50, i32 1
  %121 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i.i, align 4
  %123 = ptrtoint ptr %tasks.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tasks.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.then.i.i88.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 50, i32 1
  %127 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %sibling.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 74
  %call.i.i17.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sibling.i.i) #12
  br i1 %call.i.i17.i.i, label %if.end.i.i20.i.i, label %list_del_rcu.exit.i.i.list_del_init.exit.i.i_crit_edge

list_del_rcu.exit.i.i.list_del_init.exit.i.i_crit_edge: ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i20.i.i:                                 ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i18.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 74, i32 1
  %128 = ptrtoint ptr %prev.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i18.i.i, align 4
  %130 = ptrtoint ptr %sibling.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sibling.i.i, align 4
  %prev1.i.i.i19.i.i = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i19.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i20.i.i, %list_del_rcu.exit.i.i.list_del_init.exit.i.i_crit_edge
  %134 = ptrtoint ptr %sibling.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %sibling.i.i, ptr %sibling.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 74, i32 1
  %135 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %sibling.i.i, ptr %prev.i3.i.i.i, align 4
  %136 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %141, ptrtoint (ptr @process_counts to i32)
  %142 = inttoptr i32 %add.i.i to ptr
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %add7.i.i = add i32 %144, -1
  store i32 %add7.i.i, ptr %142, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %list_del_init.exit.i.i, %if.end31.i.if.end.i.i_crit_edge
  %thread_group.i112.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 80
  %call.i.i21.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %thread_group.i112.i) #12
  br i1 %call.i.i21.i.i, label %if.end.i.i24.i.i, label %if.end.i.i.list_del_rcu.exit26.i.i_crit_edge

if.end.i.i.list_del_rcu.exit26.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit26.i.i

if.end.i.i24.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i22.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 80, i32 1
  %145 = ptrtoint ptr %prev.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i22.i.i, align 4
  %147 = ptrtoint ptr %thread_group.i112.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %thread_group.i112.i, align 4
  %prev1.i.i.i23.i.i = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i23.i.i, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %list_del_rcu.exit26.i.i

list_del_rcu.exit26.i.i:                          ; preds = %if.end.i.i24.i.i, %if.end.i.i.list_del_rcu.exit26.i.i_crit_edge
  %prev.i25.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 80, i32 1
  %151 = ptrtoint ptr %prev.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i25.i.i, align 4
  %thread_node.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 81
  %call.i.i27.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %thread_node.i.i) #12
  br i1 %call.i.i27.i.i, label %if.end.i.i30.i.i, label %list_del_rcu.exit26.i.i.__unhash_process.exit.i_crit_edge

list_del_rcu.exit26.i.i.__unhash_process.exit.i_crit_edge: ; preds = %list_del_rcu.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__unhash_process.exit.i

if.end.i.i30.i.i:                                 ; preds = %list_del_rcu.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i28.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 81, i32 1
  %152 = ptrtoint ptr %prev.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i28.i.i, align 4
  %154 = ptrtoint ptr %thread_node.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %thread_node.i.i, align 4
  %prev1.i.i.i29.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i29.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %__unhash_process.exit.i

__unhash_process.exit.i:                          ; preds = %if.end.i.i30.i.i, %list_del_rcu.exit26.i.i.__unhash_process.exit.i_crit_edge
  %prev.i31.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 81, i32 1
  %158 = ptrtoint ptr %prev.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i31.i.i, align 4
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %55) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  %159 = ptrtoint ptr %stats_lock.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %stats_lock.i, align 4
  %inc.i.i.i.i = add i32 %160, 1
  store i32 %inc.i.i.i.i, ptr %stats_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  %pending.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 116
  tail call void @flush_sigqueue(ptr noundef %pending.i) #12
  %161 = ptrtoint ptr %sighand1.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %sighand1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %35) #12
  tail call void @__cleanup_sighand(ptr noundef %35) #12
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 1
  %162 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %stack.i.i, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %163) #12
  br i1 %cmp.i.i, label %if.then60.i, label %__unhash_process.exit.i.__exit_signal.exit_crit_edge

__unhash_process.exit.i.__exit_signal.exit_crit_edge: ; preds = %__unhash_process.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__exit_signal.exit

if.then60.i:                                      ; preds = %__unhash_process.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %shared_pending.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 6
  tail call void @flush_sigqueue(ptr noundef %shared_pending.i) #12
  tail call void @tty_kref_put(ptr noundef %tty.0.i) #12
  br label %__exit_signal.exit

__exit_signal.exit:                               ; preds = %if.then60.i, %__unhash_process.exit.i.__exit_signal.exit_crit_edge
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 75
  %164 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %group_leader, align 4
  %cmp.not = icmp eq ptr %165, %p.addr.0
  br i1 %cmp.not, label %if.end29.critedge49, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %__exit_signal.exit
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 80
  %166 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i89.not = icmp eq ptr %167, %thread_group.i
  br i1 %cmp.i.i89.not, label %land.lhs.true16, label %if.end29.critedge48

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 57
  %168 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %169)
  %cmp17 = icmp eq i32 %169, 32
  br i1 %cmp17, label %if.then18, label %if.end29.critedge

if.then18:                                        ; preds = %land.lhs.true16
  %exit_signal = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 59
  %170 = ptrtoint ptr %exit_signal to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %exit_signal, align 4
  %call19 = tail call zeroext i1 @do_notify_parent(ptr noundef %165, i32 noundef %171) #12
  br i1 %call19, label %if.then21, label %if.end29.critedge50

if.then21:                                        ; preds = %if.then18
  %172 = ptrtoint ptr %exit_state to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 16, ptr %exit_state, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  tail call void @proc_flush_pid(ptr noundef %27) #12
  tail call void @put_pid(ptr noundef %27) #12
  tail call void @release_thread(ptr noundef %p.addr.0) #12
  %173 = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 178
  %call.i.i.i.i.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %173, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %173, i32 1, i32 3, i32 1) #12
  %174 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i93, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i92 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i92, label %if.end5.i.i.i.i.repeat.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !177

if.end5.i.i.i.i.repeat.backedge_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %if.then.i93, %if.then10.i.i.i.i, %if.end5.i.i.i.i.repeat.backedge_crit_edge
  br label %repeat

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %173, i32 noundef 3) #12
  br label %repeat.backedge

if.then.i93:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @call_rcu(ptr noundef %173, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %repeat.backedge

if.end29.critedge:                                ; preds = %land.lhs.true16
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  tail call void @proc_flush_pid(ptr noundef %27) #12
  tail call void @put_pid(ptr noundef %27) #12
  tail call void @release_thread(ptr noundef %p.addr.0) #12
  %175 = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 178
  %call.i.i.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %175, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %175, i32 1, i32 3, i32 1) #12
  %176 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %175, ptr %175, i32 1, ptr elementtype(i32) %175) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i95 = extractvalue { i32, i32, i32 } %176, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i95)
  %cmp.i.i.i.i96 = icmp eq i32 %asmresult.i.i.i.i.i.i.i95, 1
  br i1 %cmp.i.i.i.i96, label %if.then.i100, label %if.end5.i.i.i.i98

if.end5.i.i.i.i98:                                ; preds = %if.end29.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i95)
  %.not.i.i.i.i97 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i95, 0
  br i1 %.not.i.i.i.i97, label %if.end5.i.i.i.i98.if.end29_crit_edge, label %if.then10.i.i.i.i99, !prof !177

if.end5.i.i.i.i98.if.end29_crit_edge:             ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then10.i.i.i.i99:                              ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %175, i32 noundef 3) #12
  br label %if.end29

if.then.i100:                                     ; preds = %if.end29.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @call_rcu(ptr noundef %175, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %if.end29

if.end29.critedge48:                              ; preds = %land.lhs.true13
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  tail call void @proc_flush_pid(ptr noundef %27) #12
  tail call void @put_pid(ptr noundef %27) #12
  tail call void @release_thread(ptr noundef %p.addr.0) #12
  %177 = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 178
  %call.i.i.i.i.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %177, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %177, i32 1, i32 3, i32 1) #12
  %178 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 1, ptr elementtype(i32) %177) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i103)
  %cmp.i.i.i.i104 = icmp eq i32 %asmresult.i.i.i.i.i.i.i103, 1
  br i1 %cmp.i.i.i.i104, label %if.then.i108, label %if.end5.i.i.i.i106

if.end5.i.i.i.i106:                               ; preds = %if.end29.critedge48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i103)
  %.not.i.i.i.i105 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i103, 0
  br i1 %.not.i.i.i.i105, label %if.end5.i.i.i.i106.if.end29_crit_edge, label %if.then10.i.i.i.i107, !prof !177

if.end5.i.i.i.i106.if.end29_crit_edge:            ; preds = %if.end5.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then10.i.i.i.i107:                             ; preds = %if.end5.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %177, i32 noundef 3) #12
  br label %if.end29

if.then.i108:                                     ; preds = %if.end29.critedge48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @call_rcu(ptr noundef %177, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %if.end29

if.end29.critedge49:                              ; preds = %__exit_signal.exit
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  tail call void @proc_flush_pid(ptr noundef %27) #12
  tail call void @put_pid(ptr noundef %27) #12
  tail call void @release_thread(ptr noundef %p.addr.0) #12
  %179 = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 178
  %call.i.i.i.i.i.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef %179, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %179, i32 1, i32 3, i32 1) #12
  %180 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %179, ptr %179, i32 1, ptr elementtype(i32) %179) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i111 = extractvalue { i32, i32, i32 } %180, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i111)
  %cmp.i.i.i.i112 = icmp eq i32 %asmresult.i.i.i.i.i.i.i111, 1
  br i1 %cmp.i.i.i.i112, label %if.then.i116, label %if.end5.i.i.i.i114

if.end5.i.i.i.i114:                               ; preds = %if.end29.critedge49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i111)
  %.not.i.i.i.i113 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i111, 0
  br i1 %.not.i.i.i.i113, label %if.end5.i.i.i.i114.if.end29_crit_edge, label %if.then10.i.i.i.i115, !prof !177

if.end5.i.i.i.i114.if.end29_crit_edge:            ; preds = %if.end5.i.i.i.i114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then10.i.i.i.i115:                             ; preds = %if.end5.i.i.i.i114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %179, i32 noundef 3) #12
  br label %if.end29

if.then.i116:                                     ; preds = %if.end29.critedge49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @call_rcu(ptr noundef %179, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %if.end29

if.end29.critedge50:                              ; preds = %if.then18
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  tail call void @proc_flush_pid(ptr noundef %27) #12
  tail call void @put_pid(ptr noundef %27) #12
  tail call void @release_thread(ptr noundef %p.addr.0) #12
  %181 = getelementptr inbounds %struct.task_struct, ptr %p.addr.0, i32 0, i32 178
  %call.i.i.i.i.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %181, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %181, i32 1, i32 3, i32 1) #12
  %182 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i119 = extractvalue { i32, i32, i32 } %182, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i119)
  %cmp.i.i.i.i120 = icmp eq i32 %asmresult.i.i.i.i.i.i.i119, 1
  br i1 %cmp.i.i.i.i120, label %if.then.i124, label %if.end5.i.i.i.i122

if.end5.i.i.i.i122:                               ; preds = %if.end29.critedge50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i119)
  %.not.i.i.i.i121 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i119, 0
  br i1 %.not.i.i.i.i121, label %if.end5.i.i.i.i122.if.end29_crit_edge, label %if.then10.i.i.i.i123, !prof !177

if.end5.i.i.i.i122.if.end29_crit_edge:            ; preds = %if.end5.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then10.i.i.i.i123:                             ; preds = %if.end5.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %181, i32 noundef 3) #12
  br label %if.end29

if.then.i124:                                     ; preds = %if.end29.critedge50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @call_rcu(ptr noundef %181, ptr noundef nonnull @delayed_put_task_struct) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then.i124, %if.then10.i.i.i.i123, %if.end5.i.i.i.i122.if.end29_crit_edge, %if.then.i116, %if.then10.i.i.i.i115, %if.end5.i.i.i.i114.if.end29_crit_edge, %if.then.i108, %if.then10.i.i.i.i107, %if.end5.i.i.i.i106.if.end29_crit_edge, %if.then.i100, %if.then10.i.i.i.i99, %if.end5.i.i.i.i98.if.end29_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @do_notify_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_flush_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcuwait_wake_up(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  %4 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %w, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true11

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b21 = load i1, ptr @rcuwait_wake_up.__warned, align 1
  br i1 %.b21, label %land.lhs.true11.do.end14_crit_edge, label %if.then

land.lhs.true11.do.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcuwait_wake_up.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 253, ptr noundef nonnull @.str.1) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then, %land.lhs.true11.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %do.end14.if.end19_crit_edge, label %if.then17

do.end14.if.end19_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 @wake_up_process(ptr noundef nonnull %5) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.end14.if.end19_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then17 ], [ 0, %do.end14.if.end19_crit_edge ]
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i22, label %if.end19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end19.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end19
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end19.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %6 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i29 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %call3 = tail call fastcc i32 @will_become_orphaned_pgrp(ptr noundef %7, ptr noundef null)
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @will_become_orphaned_pgrp(ptr noundef %pgrp, ptr noundef readnone %ignored_task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %pgrp, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body1.do.end_crit_edge

do.body1.do.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body1
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @will_become_orphaned_pgrp.__warned, align 1
  br i1 %.b67, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @will_become_orphaned_pgrp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body1.do.end_crit_edge
  %arrayidx = getelementptr %struct.pid, ptr %pgrp, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -1380
  %tobool14.not7579 = icmp eq ptr %add.ptr, null
  %tobool14.not75 = or i1 %tobool12.not, %tobool14.not7579
  br i1 %tobool14.not75, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %p.076 = phi ptr [ %add.ptr47, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %cmp15 = icmp eq ptr %p.076, %ignored_task
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %p.076, i32 0, i32 57
  %2 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not = icmp eq i32 %3, 0
  br i1 %tobool16.not, label %lor.lhs.false.lor.lhs.false20_crit_edge, label %land.lhs.true17

lor.lhs.false.lor.lhs.false20_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false20

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %p.076, i32 0, i32 80
  %4 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %5, %thread_group.i
  br i1 %cmp.i.i.not, label %land.lhs.true17.for.inc_crit_edge, label %land.lhs.true17.lor.lhs.false20_crit_edge

land.lhs.true17.lor.lhs.false20_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false20

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false20:                                  ; preds = %land.lhs.true17.lor.lhs.false20_crit_edge, %lor.lhs.false.lor.lhs.false20_crit_edge
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %p.076, i32 0, i32 71
  %6 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_parent, align 4
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 69
  %8 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tgid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 1
  br i1 %cmp.i.not, label %lor.lhs.false20.for.inc_crit_edge, label %if.end24

lor.lhs.false20.for.inc_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end24:                                         ; preds = %lor.lhs.false20
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 22, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %cmp27.not = icmp eq ptr %13, %pgrp
  br i1 %cmp27.not, label %if.end24.for.inc_crit_edge, label %land.lhs.true28

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true28:                                  ; preds = %if.end24
  %arrayidx.i70 = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 22, i32 3
  %14 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i70, align 4
  %signal.i71 = getelementptr inbounds %struct.task_struct, ptr %p.076, i32 0, i32 111
  %16 = ptrtoint ptr %signal.i71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal.i71, align 16
  %arrayidx.i72 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 3
  %18 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i72, align 4
  %cmp32 = icmp eq ptr %15, %19
  br i1 %cmp32, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true28.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %lor.lhs.false20.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %arrayidx40 = getelementptr %struct.task_struct, ptr %p.076, i32 0, i32 79, i32 2
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx40, align 4
  %tobool43.not = icmp eq ptr %21, null
  %add.ptr47 = getelementptr i8, ptr %21, i32 -1380
  %tobool14.not80 = icmp eq ptr %add.ptr47, null
  %tobool14.not = or i1 %tobool43.not, %tobool14.not80
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mm_update_next_owner(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %owner = getelementptr inbounds %struct.anon.2, ptr %mm, i32 0, i32 46
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  %cmp.not211 = icmp eq ptr %5, %3
  br i1 %cmp.not211, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %mm_users = getelementptr inbounds %struct.anon.2, ptr %mm, i32 0, i32 10
  %children = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 73
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 71
  br label %if.end

if.end:                                           ; preds = %put_task_struct.exit.if.end_crit_edge, %if.end.lr.ph
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #12
  %6 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mm_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp slt i32 %7, 2
  br i1 %cmp2, label %do.body5, label %if.end11

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %owner, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end11
  %.pn.in = phi ptr [ %children, %if.end11 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp13.not = icmp eq ptr %.pn, %children
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %mm14 = getelementptr i8, ptr %.pn, i32 -156
  %10 = ptrtoint ptr %mm14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm14, align 8
  %cmp15 = icmp eq ptr %11, %mm
  br i1 %cmp15, label %do.body113.loopexit198, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %real_parent, align 4
  %children24 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 73
  br label %for.cond28

for.cond28:                                       ; preds = %for.body34.for.cond28_crit_edge, %for.end
  %.pn180.in = phi ptr [ %children24, %for.end ], [ %.pn180, %for.body34.for.cond28_crit_edge ]
  %14 = ptrtoint ptr %.pn180.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn180 = load ptr, ptr %.pn180.in, align 4
  %cmp32.not = icmp eq ptr %.pn180, %children24
  br i1 %cmp32.not, label %for.cond46.preheader, label %for.body34

for.cond46.preheader:                             ; preds = %for.cond28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %15 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr54204 = getelementptr i8, ptr %15, i32 -1136
  %cmp55.not205 = icmp eq ptr %add.ptr54204, @init_task
  br i1 %cmp55.not205, label %for.cond46.preheader.for.end102_crit_edge, label %for.cond46.preheader.for.body56_crit_edge

for.cond46.preheader.for.body56_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body56

for.cond46.preheader.for.end102_crit_edge:        ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end102

for.body34:                                       ; preds = %for.cond28
  %mm35 = getelementptr i8, ptr %.pn180, i32 -156
  %16 = ptrtoint ptr %mm35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm35, align 8
  %cmp36 = icmp eq ptr %17, %mm
  br i1 %cmp36, label %do.body113.loopexit197, label %for.body34.for.cond28_crit_edge

for.body34.for.cond28_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond28

for.body56:                                       ; preds = %for.cond46.backedge.for.body56_crit_edge, %for.cond46.preheader.for.body56_crit_edge
  %18 = phi ptr [ %27, %for.cond46.backedge.for.body56_crit_edge ], [ %15, %for.cond46.preheader.for.body56_crit_edge ]
  %flags = getelementptr i8, ptr %18, i32 -1124
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body59, label %for.body56.for.cond46.backedge_crit_edge

for.body56.for.cond46.backedge_crit_edge:         ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond46.backedge

do.body59:                                        ; preds = %for.body56
  %call60 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true, label %do.body59.do.end69_crit_edge

do.body59.do.end69_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

land.lhs.true:                                    ; preds = %do.body59
  %call62 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true
  %.b182 = load i1, ptr @mm_update_next_owner.__warned, align 1
  br i1 %.b182, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mm_update_next_owner.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 431, ptr noundef nonnull @.str.2) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge, %do.body59.do.end69_crit_edge
  %signal = getelementptr i8, ptr %18, i32 544
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 3
  br label %for.cond78

for.cond78:                                       ; preds = %if.end86.for.cond78_crit_edge, %do.end69
  %.pn181.in = phi ptr [ %thread_head, %do.end69 ], [ %.pn181, %if.end86.for.cond78_crit_edge ]
  %23 = ptrtoint ptr %.pn181.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn181 = load volatile ptr, ptr %.pn181.in, align 4
  %cmp81.not = icmp eq ptr %.pn181, %thread_head
  br i1 %cmp81.not, label %for.cond78.for.cond46.backedge_crit_edge, label %for.body82

for.cond78.for.cond46.backedge_crit_edge:         ; preds = %for.cond78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond46.backedge

for.body82:                                       ; preds = %for.cond78
  %mm83 = getelementptr i8, ptr %.pn181, i32 -228
  %24 = ptrtoint ptr %mm83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mm83, align 8
  %cmp84 = icmp eq ptr %25, %mm
  br i1 %cmp84, label %do.body113.loopexit, label %if.end86

if.end86:                                         ; preds = %for.body82
  %tobool88.not = icmp eq ptr %25, null
  br i1 %tobool88.not, label %if.end86.for.cond78_crit_edge, label %if.end86.for.cond46.backedge_crit_edge

if.end86.for.cond46.backedge_crit_edge:           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond46.backedge

if.end86.for.cond78_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond78

for.cond46.backedge:                              ; preds = %if.end86.for.cond46.backedge_crit_edge, %for.cond78.for.cond46.backedge_crit_edge, %for.body56.for.cond46.backedge_crit_edge
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %18, align 16
  %add.ptr54 = getelementptr i8, ptr %27, i32 -1136
  %cmp55.not = icmp eq ptr %add.ptr54, @init_task
  br i1 %cmp55.not, label %for.cond46.backedge.for.end102_crit_edge, label %for.cond46.backedge.for.body56_crit_edge

for.cond46.backedge.for.body56_crit_edge:         ; preds = %for.cond46.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56

for.cond46.backedge.for.end102_crit_edge:         ; preds = %for.cond46.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end102

for.end102:                                       ; preds = %for.cond46.backedge.for.end102_crit_edge, %for.cond46.preheader.for.end102_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  %28 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %owner, align 4
  br label %cleanup

do.body113.loopexit:                              ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #14
  %c.2.le = getelementptr i8, ptr %.pn181, i32 -1404
  br label %do.body113

do.body113.loopexit197:                           ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  %c.1.le = getelementptr i8, ptr %.pn180, i32 -1332
  br label %do.body113

do.body113.loopexit198:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %c.0.le = getelementptr i8, ptr %.pn, i32 -1332
  br label %do.body113

do.body113:                                       ; preds = %do.body113.loopexit198, %do.body113.loopexit197, %do.body113.loopexit
  %c.3 = phi ptr [ %c.2.le, %do.body113.loopexit ], [ %c.1.le, %do.body113.loopexit197 ], [ %c.0.le, %do.body113.loopexit198 ]
  %cmp114 = icmp eq ptr %c.3, %3
  br i1 %cmp114, label %do.body119, label %do.end127, !prof !184

do.body119:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 448, 0\0A.popsection", ""() #12, !srcloc !188
  unreachable

do.end127:                                        ; preds = %do.body113
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %c.3, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end127.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !184

do.end127.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end127
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !177

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end127.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end127.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %c.3, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  %mm129 = getelementptr inbounds %struct.task_struct, ptr %c.3, i32 0, i32 53
  %31 = ptrtoint ptr %mm129 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mm129, align 8
  %cmp130.not = icmp eq ptr %32, %mm
  br i1 %cmp130.not, label %do.body137, label %if.then131

if.then131:                                       ; preds = %get_task_struct.exit
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  %call.i.i.i.i.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i186 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i186, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !177

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @__put_task_struct(ptr noundef %c.3) #12
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %34 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner, align 4
  %cmp.not = icmp eq ptr %35, %3
  br i1 %cmp.not, label %put_task_struct.exit.if.end_crit_edge, label %put_task_struct.exit.cleanup_crit_edge

put_task_struct.exit.cleanup_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

put_task_struct.exit.if.end_crit_edge:            ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body137:                                       ; preds = %get_task_struct.exit
  %36 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %c.3, ptr %owner, align 4
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  %call.i.i.i.i.i.i189 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i190 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i190)
  %cmp.i.i.i.i191 = icmp eq i32 %asmresult.i.i.i.i.i.i.i190, 1
  br i1 %cmp.i.i.i.i191, label %if.then.i195, label %if.end5.i.i.i.i193

if.end5.i.i.i.i193:                               ; preds = %do.body137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i190)
  %.not.i.i.i.i192 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i190, 0
  br i1 %.not.i.i.i.i192, label %if.end5.i.i.i.i193.cleanup_crit_edge, label %if.then10.i.i.i.i194, !prof !177

if.end5.i.i.i.i193.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i194:                             ; preds = %if.end5.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %cleanup

if.then.i195:                                     ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @__put_task_struct(ptr noundef %c.3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i195, %if.then10.i.i.i.i194, %if.end5.i.i.i.i193.cleanup_crit_edge, %put_task_struct.exit.cleanup_crit_edge, %for.end102, %do.body5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_task_struct(ptr noundef %t) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !183
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !184

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !177

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_task_struct(ptr noundef %t) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !177

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @__put_task_struct(ptr noundef %t) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_exit(i32 noundef %code) local_unnamed_addr #4 align 64 {
entry:
  %dead.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %plug1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 148
  %4 = ptrtoint ptr %plug1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plug1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %blk_needs_flush_plug.exit, label %land.rhs.i.do.end_crit_edge, !prof !189

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

blk_needs_flush_plug.exit:                        ; preds = %land.rhs.i
  %cb_list.i = getelementptr inbounds %struct.blk_plug, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %cb_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cb_list.i, align 4
  %cmp.i.i168.not = icmp eq ptr %9, %cb_list.i
  br i1 %cmp.i.i168.not, label %blk_needs_flush_plug.exit.if.end_crit_edge, label %blk_needs_flush_plug.exit.do.end_crit_edge, !prof !177

blk_needs_flush_plug.exit.do.end_crit_edge:       ; preds = %blk_needs_flush_plug.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

blk_needs_flush_plug.exit.if.end_crit_edge:       ; preds = %blk_needs_flush_plug.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %blk_needs_flush_plug.exit.do.end_crit_edge, %land.rhs.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 738, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %blk_needs_flush_plug.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kcov_task_exit(ptr noundef %3) #12
  tail call fastcc void @coredump_task_exit(ptr noundef %3)
  %10 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptrace.i.i, align 16
  %and.i1.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.i.not.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.i.not.i, label %if.end.ptrace_event.exit_crit_edge, label %if.then.i, !prof !177

if.end.ptrace_event.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptrace_event.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ptrace_message.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 153
  %16 = ptrtoint ptr %ptrace_message.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %code, ptr %ptrace_message.i, align 32
  tail call void @ptrace_notify(i32 noundef 1541) #12
  br label %ptrace_event.exit

ptrace_event.exit:                                ; preds = %if.then.i, %if.end.ptrace_event.exit_crit_edge
  tail call void @validate_creds_for_do_exit(ptr noundef %3) #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i169 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i169 to ptr
  %task.i170 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i170 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i170, align 8
  %io_uring.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 109
  %21 = ptrtoint ptr %io_uring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_uring.i, align 8
  %tobool.not.i171 = icmp eq ptr %22, null
  br i1 %tobool.not.i171, label %ptrace_event.exit.io_uring_files_cancel.exit_crit_edge, label %if.then.i172

ptrace_event.exit.io_uring_files_cancel.exit_crit_edge: ; preds = %ptrace_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %io_uring_files_cancel.exit

if.then.i172:                                     ; preds = %ptrace_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__io_uring_cancel(i1 noundef zeroext false) #12
  br label %io_uring_files_cancel.exit

io_uring_files_cancel.exit:                       ; preds = %if.then.i172, %ptrace_event.exit.io_uring_files_cancel.exit_crit_edge
  tail call void @exit_signals(ptr noundef %3) #12
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %23 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm, align 8
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %io_uring_files_cancel.exit.if.end23_crit_edge, label %if.then21

io_uring_files_cancel.exit.if.end23_crit_edge:    ; preds = %io_uring_files_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %io_uring_files_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sync_mm_rss(ptr noundef nonnull %24) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %io_uring_files_cancel.exit.if.end23_crit_edge
  tail call void @acct_update_integrals(ptr noundef %3) #12
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %25 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signal, align 16
  %live = getelementptr inbounds %struct.signal_struct, ptr %26, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %live, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %live, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %live, ptr %live, i32 1, ptr elementtype(i32) %live) #12, !srcloc !191
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  br i1 %cmp.i.i, label %if.then26, label %if.end51.critedge

if.then26:                                        ; preds = %if.end23
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %28 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tgid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i.not = icmp eq i32 %29, 1
  %30 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signal, align 16
  br i1 %cmp.i.not, label %if.then35, label %if.end38, !prof !184

if.then35:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %group_exit_code = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %group_exit_code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %group_exit_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool37.not = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool37.not, i32 %code, i32 %33
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, i32 noundef %spec.select) #15
  unreachable

if.end38:                                         ; preds = %if.then26
  %real_timer = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 17
  %call40 = tail call i32 @hrtimer_cancel(ptr noundef %real_timer) #12
  %34 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %signal, align 16
  tail call void @exit_itimers(ptr noundef %35) #12
  %36 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mm, align 8
  %tobool43.not = icmp eq ptr %37, null
  br i1 %tobool43.not, label %if.end38.if.then56_crit_edge, label %if.then44

if.end38.if.then56_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then44:                                        ; preds = %if.end38
  %38 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %signal, align 16
  %maxrss = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 47
  %hiwater_rss.i.i = getelementptr inbounds %struct.anon.2, ptr %37, i32 0, i32 17
  %40 = ptrtoint ptr %hiwater_rss.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hiwater_rss.i.i, align 8
  %rss_stat.i.i.i.i = getelementptr inbounds %struct.anon.2, ptr %37, i32 0, i32 40
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %rss_stat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %rss_stat.i.i.i.i, align 4
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0) #12
  %arrayidx.i.i.i.i = getelementptr %struct.anon.2, ptr %37, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i.i, i32 noundef 4) #12
  %45 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #12
  %add.i.i.i = add nuw i32 %47, %44
  %arrayidx.i9.i.i.i = getelementptr %struct.anon.2, ptr %37, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i.i, i32 noundef 4) #12
  %48 = ptrtoint ptr %arrayidx.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i9.i.i.i, align 4
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #12
  %add3.i.i.i = add i32 %add.i.i.i, %50
  %51 = tail call i32 @llvm.umax.i32(i32 %41, i32 %add3.i.i.i) #12
  %52 = ptrtoint ptr %maxrss to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %maxrss, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.i173 = icmp ult i32 %53, %51
  br i1 %cmp.i173, label %if.then.i174, label %if.then44.if.then56_crit_edge

if.then44.if.then56_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then.i174:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %maxrss to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %maxrss, align 4
  br label %if.then56

if.end51.critedge:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @acct_collect(i32 noundef %code, i32 noundef %conv) #12
  %exit_code.c = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 58
  %55 = ptrtoint ptr %exit_code.c to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %code, ptr %exit_code.c, align 16
  tail call void @taskstats_exit(ptr noundef %3, i32 noundef %conv) #12
  tail call fastcc void @exit_mm()
  tail call fastcc void @trace_sched_process_exit(ptr noundef %3)
  tail call void @exit_sem(ptr noundef %3) #12
  tail call void @exit_shm(ptr noundef %3) #12
  tail call void @exit_files(ptr noundef %3) #12
  tail call void @exit_fs(ptr noundef %3) #12
  br label %if.end57

if.then56:                                        ; preds = %if.then.i174, %if.then44.if.then56_crit_edge, %if.end38.if.then56_crit_edge
  tail call void @acct_collect(i32 noundef %code, i32 noundef %conv) #12
  tail call void @tty_audit_exit() #12
  %exit_code.c167 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 58
  %56 = ptrtoint ptr %exit_code.c167 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %code, ptr %exit_code.c167, align 16
  tail call void @taskstats_exit(ptr noundef %3, i32 noundef %conv) #12
  tail call fastcc void @exit_mm()
  tail call void @acct_process() #12
  tail call fastcc void @trace_sched_process_exit(ptr noundef %3)
  tail call void @exit_sem(ptr noundef %3) #12
  tail call void @exit_shm(ptr noundef %3) #12
  tail call void @exit_files(ptr noundef %3) #12
  tail call void @exit_fs(ptr noundef %3) #12
  tail call void @disassociate_ctty(i32 noundef 1) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end51.critedge
  tail call void @exit_task_namespaces(ptr noundef %3) #12
  tail call void @task_work_run() #12
  tail call void @exit_thread(ptr noundef %3) #12
  tail call void @perf_event_exit_task(ptr noundef %3) #12
  tail call void @sched_autogroup_exit_task(ptr noundef %3) #12
  tail call void @cgroup_exit(ptr noundef %3) #12
  tail call void @flush_ptrace_hw_breakpoint(ptr noundef %3) #12
  tail call void @exit_tasks_rcu_start() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dead.i) #12
  %57 = getelementptr inbounds %struct.list_head, ptr %dead.i, i32 0, i32 1
  %58 = ptrtoint ptr %dead.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dead.i, ptr %dead.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dead.i, ptr %57, align 4
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  %ptraced.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 76
  %60 = ptrtoint ptr %ptraced.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %ptraced.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %61, %ptraced.i.i
  br i1 %cmp.i.not.i.i, label %if.end57.if.end.i.i_crit_edge, label %if.then.i.i, !prof !177

if.end57.if.end.i.i_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  call void @exit_ptrace(ptr noundef %3, ptr noundef nonnull %dead.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end57.if.end.i.i_crit_edge
  %call.i.i.i = call ptr @task_active_pid_ns(ptr noundef %3) #12
  %child_reaper.i.i.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %child_reaper.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %child_reaper.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %63, %3
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.find_child_reaper.exit.i.i_crit_edge, !prof !184

if.end.i.i.find_child_reaper.exit.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_child_reaper.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %call2.i.i.i = call fastcc ptr @find_alive_thread(ptr noundef %3) #12
  %tobool3.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %if.end6.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %child_reaper.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call2.i.i.i, ptr %child_reaper.i.i.i, align 4
  br label %find_child_reaper.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  %65 = ptrtoint ptr %dead.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dead.i, align 4
  %cmp12.not39.i.i.i = icmp eq ptr %66, %dead.i
  br i1 %cmp12.not39.i.i.i, label %if.end6.i.i.i.for.end.i.i.i_crit_edge, label %if.end6.i.i.i.for.body.i.i.i_crit_edge

if.end6.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  br label %for.body.i.i.i

if.end6.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end6.i.i.i.for.body.i.i.i_crit_edge
  %.pn.in40.i.i.i = phi ptr [ %.pn.i.i.i, %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %66, %if.end6.i.i.i.for.body.i.i.i_crit_edge ]
  %p.0.i.i.i = getelementptr i8, ptr %.pn.in40.i.i.i, i32 -1352
  %67 = ptrtoint ptr %.pn.in40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i.i.i = load ptr, ptr %.pn.in40.i.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in40.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge

for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %70 = ptrtoint ptr %.pn.in40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %.pn.in40.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %74 = ptrtoint ptr %.pn.in40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %.pn.in40.i.i.i, ptr %.pn.in40.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40.i.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %.pn.in40.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  call void @release_task(ptr noundef %p.0.i.i.i) #12
  %cmp12.not.i.i.i = icmp eq ptr %.pn.i.i.i, %dead.i
  br i1 %cmp12.not.i.i.i, label %list_del_init.exit.i.i.i.for.end.i.i.i_crit_edge, label %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge

list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

list_del_init.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %list_del_init.exit.i.i.i.for.end.i.i.i_crit_edge, %if.end6.i.i.i.for.end.i.i.i_crit_edge
  call void @zap_pid_ns_processes(ptr noundef %call.i.i.i) #12
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  br label %find_child_reaper.exit.i.i

find_child_reaper.exit.i.i:                       ; preds = %for.end.i.i.i, %if.then4.i.i.i, %if.end.i.i.find_child_reaper.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call2.i.i.i, %if.then4.i.i.i ], [ %3, %for.end.i.i.i ], [ %63, %if.end.i.i.find_child_reaper.exit.i.i_crit_edge ]
  %children.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 73
  %76 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %children.i.i, align 4
  %cmp.i148.not.i.i = icmp eq ptr %77, %children.i.i
  br i1 %cmp.i148.not.i.i, label %find_child_reaper.exit.i.i.forget_original_parent.exit.i_crit_edge, label %if.end8.i.i

find_child_reaper.exit.i.i.forget_original_parent.exit.i_crit_edge: ; preds = %find_child_reaper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %forget_original_parent.exit.i

if.end8.i.i:                                      ; preds = %find_child_reaper.exit.i.i
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end8.i.i.do.end.i.i.i.i_crit_edge

if.end8.i.i.do.end.i.i.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b27.i.i.i.i = load i1, ptr @find_alive_thread.__warned, align 1
  br i1 %.b27.i.i.i.i, label %land.lhs.true3.i.i.i.i.do.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.do.end.i.i.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @find_alive_thread.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 516, ptr noundef nonnull @.str.2) #12
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.do.end.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end8.i.i.do.end.i.i.i.i_crit_edge
  %78 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %signal, align 16
  %thread_head.i.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 3
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %do.end.i.i.i.i
  %.pn.in.i.i.i.i = phi ptr [ %thread_head.i.i.i.i, %do.end.i.i.i.i ], [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %80 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i.i.i.i = load volatile ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %thread_head.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.if.end.i150.i.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.if.end.i150.i.i_crit_edge:       ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i150.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %flags.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -1392
  %81 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %82, 4
  %tobool11.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool11.not.i.i.i.i, label %find_alive_thread.exit.i.i.i, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i.i

find_alive_thread.exit.i.i.i:                     ; preds = %for.body.i.i.i.i
  %t.0.le.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -1404
  %tobool.not.i.i.i = icmp eq ptr %t.0.le.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %find_alive_thread.exit.i.i.i.if.end.i150.i.i_crit_edge, label %find_alive_thread.exit.i.i.i.find_new_reaper.exit.i.i_crit_edge

find_alive_thread.exit.i.i.i.find_new_reaper.exit.i.i_crit_edge: ; preds = %find_alive_thread.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_new_reaper.exit.i.i

find_alive_thread.exit.i.i.i.if.end.i150.i.i_crit_edge: ; preds = %find_alive_thread.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i150.i.i

if.end.i150.i.i:                                  ; preds = %find_alive_thread.exit.i.i.i.if.end.i150.i.i_crit_edge, %for.cond.i.i.i.i.if.end.i150.i.i_crit_edge
  %has_child_subreaper.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 14
  %83 = ptrtoint ptr %has_child_subreaper.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i.i.i = load i8, ptr %has_child_subreaper.i.i.i, align 8
  %84 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool1.not.i.i.i = icmp eq i8 %84, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i150.i.i.find_new_reaper.exit.i.i_crit_edge, label %if.then2.i.i.i

if.end.i150.i.i.find_new_reaper.exit.i.i_crit_edge: ; preds = %if.end.i150.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_new_reaper.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i150.i.i
  %thread_pid.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %85 = ptrtoint ptr %thread_pid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %thread_pid.i.i.i.i, align 16
  %level.i.i.i = getelementptr inbounds %struct.pid, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %level.i.i.i, align 4
  %reaper.0.in66.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 71
  %89 = ptrtoint ptr %reaper.0.in66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %reaper.067.i.i.i = load ptr, ptr %reaper.0.in66.i.i.i, align 4
  %thread_pid.i3468.i.i.i = getelementptr inbounds %struct.task_struct, ptr %reaper.067.i.i.i, i32 0, i32 78
  %90 = ptrtoint ptr %thread_pid.i3468.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %thread_pid.i3468.i.i.i, align 16
  %level569.i.i.i = getelementptr inbounds %struct.pid, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %level569.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %level569.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %88)
  %cmp70.i.i.i = icmp ne i32 %93, %88
  %cmp671.i.i.i = icmp eq ptr %reaper.067.i.i.i, @init_task
  %or.cond72.i.i.i = or i1 %cmp671.i.i.i, %cmp70.i.i.i
  br i1 %or.cond72.i.i.i, label %if.then2.i.i.i.find_new_reaper.exit.i.i_crit_edge, label %if.then2.i.i.i.if.end8.i.i.i_crit_edge

if.then2.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then2.i.i.i
  br label %if.end8.i.i.i

if.then2.i.i.i.find_new_reaper.exit.i.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_new_reaper.exit.i.i

if.end8.i.i.i:                                    ; preds = %for.inc.i.i.i.if.end8.i.i.i_crit_edge, %if.then2.i.i.i.if.end8.i.i.i_crit_edge
  %reaper.073.i.i.i = phi ptr [ %reaper.0.i.i.i, %for.inc.i.i.i.if.end8.i.i.i_crit_edge ], [ %reaper.067.i.i.i, %if.then2.i.i.i.if.end8.i.i.i_crit_edge ]
  %signal9.i.i.i = getelementptr inbounds %struct.task_struct, ptr %reaper.073.i.i.i, i32 0, i32 111
  %94 = ptrtoint ptr %signal9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %signal9.i.i.i, align 16
  %is_child_subreaper.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %is_child_subreaper.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load10.i.i.i = load i8, ptr %is_child_subreaper.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10.i.i.i)
  %tobool13.not.i.i.i = icmp sgt i8 %bf.load10.i.i.i, -1
  br i1 %tobool13.not.i.i.i, label %if.end8.i.i.i.for.inc.i.i.i_crit_edge, label %if.end15.i.i.i

if.end8.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end8.i.i.i
  %call.i35.i.i.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i.i.i)
  %tobool.not.i36.i.i.i = icmp eq i32 %call.i35.i.i.i, 0
  br i1 %tobool.not.i36.i.i.i, label %land.lhs.true.i39.i.i.i, label %if.end15.i.i.i.do.end.i45.i.i.i_crit_edge

if.end15.i.i.i.do.end.i45.i.i.i_crit_edge:        ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i45.i.i.i

land.lhs.true.i39.i.i.i:                          ; preds = %if.end15.i.i.i
  %call1.i37.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i.i.i)
  %tobool2.not.i38.i.i.i = icmp eq i32 %call1.i37.i.i.i, 0
  br i1 %tobool2.not.i38.i.i.i, label %land.lhs.true.i39.i.i.i.do.end.i45.i.i.i_crit_edge, label %land.lhs.true3.i41.i.i.i

land.lhs.true.i39.i.i.i.do.end.i45.i.i.i_crit_edge: ; preds = %land.lhs.true.i39.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i45.i.i.i

land.lhs.true3.i41.i.i.i:                         ; preds = %land.lhs.true.i39.i.i.i
  %.b27.i40.i.i.i = load i1, ptr @find_alive_thread.__warned, align 1
  br i1 %.b27.i40.i.i.i, label %land.lhs.true3.i41.i.i.i.do.end.i45.i.i.i_crit_edge, label %if.then.i42.i.i.i

land.lhs.true3.i41.i.i.i.do.end.i45.i.i.i_crit_edge: ; preds = %land.lhs.true3.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i45.i.i.i

if.then.i42.i.i.i:                                ; preds = %land.lhs.true3.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @find_alive_thread.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 516, ptr noundef nonnull @.str.2) #12
  br label %do.end.i45.i.i.i

do.end.i45.i.i.i:                                 ; preds = %if.then.i42.i.i.i, %land.lhs.true3.i41.i.i.i.do.end.i45.i.i.i_crit_edge, %land.lhs.true.i39.i.i.i.do.end.i45.i.i.i_crit_edge, %if.end15.i.i.i.do.end.i45.i.i.i_crit_edge
  %97 = ptrtoint ptr %signal9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %signal9.i.i.i, align 16
  %thread_head.i44.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %98, i32 0, i32 3
  br label %for.cond.i49.i.i.i

for.cond.i49.i.i.i:                               ; preds = %for.body.i53.i.i.i.for.cond.i49.i.i.i_crit_edge, %do.end.i45.i.i.i
  %.pn.in.i46.i.i.i = phi ptr [ %thread_head.i44.i.i.i, %do.end.i45.i.i.i ], [ %.pn.i47.i.i.i, %for.body.i53.i.i.i.for.cond.i49.i.i.i_crit_edge ]
  %99 = ptrtoint ptr %.pn.in.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i47.i.i.i = load volatile ptr, ptr %.pn.in.i46.i.i.i, align 4
  %cmp.not.i48.i.i.i = icmp eq ptr %.pn.i47.i.i.i, %thread_head.i44.i.i.i
  br i1 %cmp.not.i48.i.i.i, label %for.cond.i49.i.i.i.for.inc.i.i.i_crit_edge, label %for.body.i53.i.i.i

for.cond.i49.i.i.i.for.inc.i.i.i_crit_edge:       ; preds = %for.cond.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.body.i53.i.i.i:                               ; preds = %for.cond.i49.i.i.i
  %flags.i50.i.i.i = getelementptr i8, ptr %.pn.i47.i.i.i, i32 -1392
  %100 = ptrtoint ptr %flags.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i50.i.i.i, align 4
  %and.i51.i.i.i = and i32 %101, 4
  %tobool11.not.i52.i.i.i = icmp eq i32 %and.i51.i.i.i, 0
  br i1 %tobool11.not.i52.i.i.i, label %find_alive_thread.exit57.i.i.i, label %for.body.i53.i.i.i.for.cond.i49.i.i.i_crit_edge

for.body.i53.i.i.i.for.cond.i49.i.i.i_crit_edge:  ; preds = %for.body.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i49.i.i.i

find_alive_thread.exit57.i.i.i:                   ; preds = %for.body.i53.i.i.i
  %t.0.le.i54.i.i.i = getelementptr i8, ptr %.pn.i47.i.i.i, i32 -1404
  %tobool17.not.i.i.i = icmp eq ptr %t.0.le.i54.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %find_alive_thread.exit57.i.i.i.for.inc.i.i.i_crit_edge, label %find_alive_thread.exit57.i.i.i.find_new_reaper.exit.i.i_crit_edge

find_alive_thread.exit57.i.i.i.find_new_reaper.exit.i.i_crit_edge: ; preds = %find_alive_thread.exit57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_new_reaper.exit.i.i

find_alive_thread.exit57.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %find_alive_thread.exit57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %find_alive_thread.exit57.i.i.i.for.inc.i.i.i_crit_edge, %for.cond.i49.i.i.i.for.inc.i.i.i_crit_edge, %if.end8.i.i.i.for.inc.i.i.i_crit_edge
  %reaper.0.in.i.i.i = getelementptr inbounds %struct.task_struct, ptr %reaper.073.i.i.i, i32 0, i32 71
  %102 = ptrtoint ptr %reaper.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %reaper.0.i.i.i = load ptr, ptr %reaper.0.in.i.i.i, align 4
  %thread_pid.i34.i.i.i = getelementptr inbounds %struct.task_struct, ptr %reaper.0.i.i.i, i32 0, i32 78
  %103 = ptrtoint ptr %thread_pid.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %thread_pid.i34.i.i.i, align 16
  %level5.i.i.i = getelementptr inbounds %struct.pid, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %level5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %level5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %88)
  %cmp.i151.i.i = icmp ne i32 %106, %88
  %cmp6.i.i.i = icmp eq ptr %reaper.0.i.i.i, @init_task
  %or.cond.i.i.i = or i1 %cmp6.i.i.i, %cmp.i151.i.i
  br i1 %or.cond.i.i.i, label %for.inc.i.i.i.find_new_reaper.exit.i.i_crit_edge, label %for.inc.i.i.i.if.end8.i.i.i_crit_edge

for.inc.i.i.i.if.end8.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

for.inc.i.i.i.find_new_reaper.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_new_reaper.exit.i.i

find_new_reaper.exit.i.i:                         ; preds = %for.inc.i.i.i.find_new_reaper.exit.i.i_crit_edge, %find_alive_thread.exit57.i.i.i.find_new_reaper.exit.i.i_crit_edge, %if.then2.i.i.i.find_new_reaper.exit.i.i_crit_edge, %if.end.i150.i.i.find_new_reaper.exit.i.i_crit_edge, %find_alive_thread.exit.i.i.i.find_new_reaper.exit.i.i_crit_edge
  %retval.1.i.i.i = phi ptr [ %t.0.le.i.i.i.i, %find_alive_thread.exit.i.i.i.find_new_reaper.exit.i.i_crit_edge ], [ %retval.0.i.i.i, %if.end.i150.i.i.find_new_reaper.exit.i.i_crit_edge ], [ %retval.0.i.i.i, %if.then2.i.i.i.find_new_reaper.exit.i.i_crit_edge ], [ %retval.0.i.i.i, %for.inc.i.i.i.find_new_reaper.exit.i.i_crit_edge ], [ %t.0.le.i54.i.i.i, %find_alive_thread.exit57.i.i.i.find_new_reaper.exit.i.i_crit_edge ]
  %107 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn167.i.i = load ptr, ptr %children.i.i, align 4
  %cmp.not169.i.i = icmp eq ptr %.pn167.i.i, %children.i.i
  br i1 %cmp.not169.i.i, label %find_new_reaper.exit.i.i.for.end112.i.i_crit_edge, label %do.body.lr.ph.i.i

find_new_reaper.exit.i.i.for.end112.i.i_crit_edge: ; preds = %find_new_reaper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end112.i.i

do.body.lr.ph.i.i:                                ; preds = %find_new_reaper.exit.i.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %retval.1.i.i.i, i32 0, i32 111
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc106.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %.pn170.i.i = phi ptr [ %.pn167.i.i, %do.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc106.i.i.do.body.i.i_crit_edge ]
  %p.0171.i.i = getelementptr i8, ptr %.pn170.i.i, i32 -1332
  %call14.i.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %call16.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true18.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true18.i.i:                              ; preds = %land.lhs.true.i.i
  %.b147.i.i = load i1, ptr @forget_original_parent.__warned, align 1
  br i1 %.b147.i.i, label %land.lhs.true18.i.i.do.end.i.i_crit_edge, label %if.then20.i.i

land.lhs.true18.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @forget_original_parent.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 643, ptr noundef nonnull @.str.2) #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then20.i.i, %land.lhs.true18.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %signal.i.i = getelementptr i8, ptr %.pn170.i.i, i32 348
  %108 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %signal.i.i, align 16
  %thread_head.i.i = getelementptr inbounds %struct.signal_struct, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %thread_head.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn146161.i.i = load volatile ptr, ptr %thread_head.i.i, align 4
  %cmp33.not164.i.i = icmp eq ptr %.pn146161.i.i, %thread_head.i.i
  br i1 %cmp33.not164.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.do.body40.i.i_crit_edge

do.end.i.i.do.body40.i.i_crit_edge:               ; preds = %do.end.i.i
  br label %do.body40.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

do.body40.i.i:                                    ; preds = %for.inc.i.i.do.body40.i.i_crit_edge, %do.end.i.i.do.body40.i.i_crit_edge
  %.pn146165.i.i = phi ptr [ %.pn146.i.i, %for.inc.i.i.do.body40.i.i_crit_edge ], [ %.pn146161.i.i, %do.end.i.i.do.body40.i.i_crit_edge ]
  %t.0166.i.i = getelementptr i8, ptr %.pn146165.i.i, i32 -1404
  %real_parent.i.i = getelementptr i8, ptr %.pn146165.i.i, i32 -88
  %111 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %retval.1.i.i.i, ptr %real_parent.i.i, align 4
  %ptrace.i.i175 = getelementptr i8, ptr %.pn146165.i.i, i32 -1388
  %112 = ptrtoint ptr %ptrace.i.i175 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ptrace.i.i175, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool48.not.i.i = icmp ne i32 %113, 0
  %parent.i.i = getelementptr i8, ptr %.pn146165.i.i, i32 -84
  %114 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %parent.i.i, align 8
  %cmp56.i.i = icmp eq ptr %115, %3
  %cmp57.not.i.i = xor i1 %tobool48.not.i.i, %cmp56.i.i
  br i1 %cmp57.not.i.i, label %do.end74.i.i, label %do.body66.i.i, !prof !177

do.body66.i.i:                                    ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #12, !srcloc !193
  unreachable

do.end74.i.i:                                     ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool76.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool76.not.i.i, label %if.then85.i.i, label %do.end74.i.i.if.end88.i.i_crit_edge, !prof !177

do.end74.i.i.if.end88.i.i_crit_edge:              ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i.i

if.then85.i.i:                                    ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %retval.1.i.i.i, ptr %parent.i.i, align 8
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then85.i.i, %do.end74.i.i.if.end88.i.i_crit_edge
  %pdeath_signal.i.i = getelementptr i8, ptr %.pn146165.i.i, i32 -164
  %117 = ptrtoint ptr %pdeath_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pdeath_signal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool89.not.i.i = icmp eq i32 %118, 0
  br i1 %tobool89.not.i.i, label %if.end88.i.i.for.inc.i.i_crit_edge, label %if.then90.i.i

if.end88.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then90.i.i:                                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call92.i.i = call i32 @group_send_sig_info(i32 noundef %118, ptr noundef null, ptr noundef %t.0166.i.i, i32 noundef 1) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then90.i.i, %if.end88.i.i.for.inc.i.i_crit_edge
  %119 = ptrtoint ptr %.pn146165.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pn146.i.i = load volatile ptr, ptr %.pn146165.i.i, align 4
  %120 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %signal.i.i, align 16
  %thread_head32.i.i = getelementptr inbounds %struct.signal_struct, ptr %121, i32 0, i32 3
  %cmp33.not.i.i = icmp eq ptr %.pn146.i.i, %thread_head32.i.i
  br i1 %cmp33.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.do.body40.i.i_crit_edge

for.inc.i.i.do.body40.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %122 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %signal.i.i.i, align 16
  %124 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %signal, align 16
  %cmp.i152.i.i = icmp eq ptr %123, %125
  br i1 %cmp.i152.i.i, label %for.end.i.i.for.inc106.i.i_crit_edge, label %if.then104.i.i

for.end.i.i.for.inc106.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc106.i.i

if.then104.i.i:                                   ; preds = %for.end.i.i
  %exit_state.i.i.i = getelementptr i8, ptr %.pn170.i.i, i32 -104
  %126 = ptrtoint ptr %exit_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %exit_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %127)
  %cmp.i153.i.i = icmp eq i32 %127, 16
  br i1 %cmp.i153.i.i, label %if.then104.i.i.for.inc106.i.i_crit_edge, label %if.end.i155.i.i, !prof !184

if.then104.i.i.for.inc106.i.i_crit_edge:          ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc106.i.i

if.end.i155.i.i:                                  ; preds = %if.then104.i.i
  %exit_signal.i.i.i = getelementptr i8, ptr %.pn170.i.i, i32 -96
  %128 = ptrtoint ptr %exit_signal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 17, ptr %exit_signal.i.i.i, align 4
  %ptrace.i.i.i = getelementptr i8, ptr %.pn170.i.i, i32 -1316
  %129 = ptrtoint ptr %ptrace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ptrace.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool2.not.i.i.i = icmp eq i32 %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %127)
  %cmp4.i.i.i = icmp eq i32 %127, 32
  %or.cond.i154.i.i = select i1 %tobool2.not.i.i.i, i1 %cmp4.i.i.i, i1 false
  br i1 %or.cond.i154.i.i, label %land.lhs.true5.i.i.i, label %if.end.i155.i.i.if.end13.i.i.i_crit_edge

if.end.i155.i.i.if.end13.i.i.i_crit_edge:         ; preds = %if.end.i155.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %if.end.i155.i.i
  %thread_group.i.i.i.i = getelementptr i8, ptr %.pn170.i.i, i32 64
  %131 = ptrtoint ptr %thread_group.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %thread_group.i.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq ptr %132, %thread_group.i.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %if.then7.i.i.i, label %land.lhs.true5.i.i.i.if.end13.i.i.i_crit_edge

land.lhs.true5.i.i.i.if.end13.i.i.i_crit_edge:    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true5.i.i.i
  %call9.i.i.i = call zeroext i1 @do_notify_parent(ptr noundef %p.0171.i.i, i32 noundef 17) #12
  br i1 %call9.i.i.i, label %if.then10.i.i.i, label %if.then7.i.i.i.if.end13.i.i.i_crit_edge

if.then7.i.i.i.if.end13.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i.i

if.then10.i.i.i:                                  ; preds = %if.then7.i.i.i
  %133 = ptrtoint ptr %exit_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 16, ptr %exit_state.i.i.i, align 4
  %ptrace_entry.i.i.i = getelementptr i8, ptr %.pn170.i.i, i32 20
  %134 = ptrtoint ptr %dead.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dead.i, align 4
  %call.i.i.i156.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ptrace_entry.i.i.i, ptr noundef nonnull %dead.i, ptr noundef %135) #12
  br i1 %call.i.i.i156.i.i, label %if.end.i.i.i157.i.i, label %if.then10.i.i.i.if.end13.i.i.i_crit_edge

if.then10.i.i.i.if.end13.i.i.i_crit_edge:         ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i.i

if.end.i.i.i157.i.i:                              ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %ptrace_entry.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %137 = ptrtoint ptr %ptrace_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %ptrace_entry.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %.pn170.i.i, i32 24
  %138 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %dead.i, ptr %prev3.i.i.i.i.i, align 4
  %139 = ptrtoint ptr %dead.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %ptrace_entry.i.i.i, ptr %dead.i, align 4
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.end.i.i.i157.i.i, %if.then10.i.i.i.if.end13.i.i.i_crit_edge, %if.then7.i.i.i.if.end13.i.i.i_crit_edge, %land.lhs.true5.i.i.i.if.end13.i.i.i_crit_edge, %if.end.i155.i.i.if.end13.i.i.i_crit_edge
  call fastcc void @kill_orphaned_pgrp(ptr noundef %p.0171.i.i, ptr noundef %3) #12
  br label %for.inc106.i.i

for.inc106.i.i:                                   ; preds = %if.end13.i.i.i, %if.then104.i.i.for.inc106.i.i_crit_edge, %for.end.i.i.for.inc106.i.i_crit_edge
  %140 = ptrtoint ptr %.pn170.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pn.i.i = load ptr, ptr %.pn170.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %children.i.i
  br i1 %cmp.not.i.i, label %for.inc106.i.i.for.end112.i.i_crit_edge, label %for.inc106.i.i.do.body.i.i_crit_edge

for.inc106.i.i.do.body.i.i_crit_edge:             ; preds = %for.inc106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

for.inc106.i.i.for.end112.i.i_crit_edge:          ; preds = %for.inc106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end112.i.i

for.end112.i.i:                                   ; preds = %for.inc106.i.i.for.end112.i.i_crit_edge, %find_new_reaper.exit.i.i.for.end112.i.i_crit_edge
  %141 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %children.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %142, %children.i.i
  br i1 %cmp.i.not.i.i.i, label %for.end112.i.i.forget_original_parent.exit.i_crit_edge, label %if.then.i.i.i

for.end112.i.i.forget_original_parent.exit.i_crit_edge: ; preds = %for.end112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %forget_original_parent.exit.i

if.then.i.i.i:                                    ; preds = %for.end112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %children114.i.i = getelementptr inbounds %struct.task_struct, ptr %retval.1.i.i.i, i32 0, i32 73
  %prev.i.i.i = getelementptr inbounds %struct.task_struct, ptr %retval.1.i.i.i, i32 0, i32 73, i32 1
  %143 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 73, i32 1
  %145 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %147 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev3.i.i.i.i, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %142, ptr %144, align 4
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %children114.i.i, ptr %146, align 4
  store ptr %146, ptr %prev.i.i.i, align 4
  %150 = ptrtoint ptr %children.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %children.i.i, ptr %children.i.i, align 4
  store ptr %children.i.i, ptr %prev2.i.i.i.i, align 4
  br label %forget_original_parent.exit.i

forget_original_parent.exit.i:                    ; preds = %if.then.i.i.i, %for.end112.i.i.forget_original_parent.exit.i_crit_edge, %find_child_reaper.exit.i.i.forget_original_parent.exit.i_crit_edge
  br i1 %cmp.i.i, label %if.then.i177, label %forget_original_parent.exit.i.if.end.i_crit_edge

forget_original_parent.exit.i.if.end.i_crit_edge: ; preds = %forget_original_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i177:                                     ; preds = %forget_original_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %151 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %group_leader.i, align 4
  call fastcc void @kill_orphaned_pgrp(ptr noundef %152, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i177, %forget_original_parent.exit.i.if.end.i_crit_edge
  %exit_state.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 57
  %153 = ptrtoint ptr %exit_state.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 32, ptr %exit_state.i, align 4
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %154 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool1.not.i = icmp eq i32 %155, 0
  %exit_signal.i76.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 59
  %156 = ptrtoint ptr %exit_signal.i76.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %exit_signal.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp.i77.i = icmp sgt i32 %157, -1
  br i1 %tobool1.not.i, label %if.else.i, label %if.then4.i, !prof !177

if.then4.i:                                       ; preds = %if.end.i
  br i1 %cmp.i77.i, label %land.lhs.true.i, label %if.then4.i.cond.end.i_crit_edge

if.then4.i.cond.end.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %if.then4.i
  %thread_group.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 80
  %158 = ptrtoint ptr %thread_group.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile ptr, ptr %thread_group.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %159, %thread_group.i.i
  br i1 %cmp.i.i.not.i, label %land.lhs.true7.i, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %real_parent.i72.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 71
  %160 = ptrtoint ptr %real_parent.i72.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %real_parent.i72.i, align 4
  %parent.i73.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 72
  %162 = ptrtoint ptr %parent.i73.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %parent.i73.i, align 8
  %signal.i.i74.i = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 111
  %164 = ptrtoint ptr %signal.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %signal.i.i74.i, align 16
  %signal1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %163, i32 0, i32 111
  %166 = ptrtoint ptr %signal1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %signal1.i.i.i, align 16
  %cmp.i.i75.not.i = icmp eq ptr %165, %167
  %spec.select.i = select i1 %cmp.i.i75.not.i, i32 %157, i32 17
  br label %cond.end.i

cond.end.i:                                       ; preds = %land.lhs.true7.i, %land.lhs.true.i.cond.end.i_crit_edge, %if.then4.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ 17, %land.lhs.true.i.cond.end.i_crit_edge ], [ 17, %if.then4.i.cond.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true7.i ]
  %call10.i = call zeroext i1 @do_notify_parent(ptr noundef %3, i32 noundef %cond.i) #12
  br i1 %call10.i, label %cond.end.i.if.then22.i_crit_edge, label %cond.end.i.if.end24.i_crit_edge

cond.end.i.if.end24.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

cond.end.i.if.then22.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %cmp.i77.i, label %if.then12.i, label %if.else.i.if.then22.i_crit_edge

if.else.i.if.then22.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

if.then12.i:                                      ; preds = %if.else.i
  %thread_group.i78.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 80
  %168 = ptrtoint ptr %thread_group.i78.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile ptr, ptr %thread_group.i78.i, align 4
  %cmp.i.i79.not.i = icmp eq ptr %169, %thread_group.i78.i
  br i1 %cmp.i.i79.not.i, label %if.end20.i, label %if.then12.i.if.end24.i_crit_edge

if.then12.i.if.end24.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end20.i:                                       ; preds = %if.then12.i
  %call16.i = call zeroext i1 @do_notify_parent(ptr noundef %3, i32 noundef %157) #12
  br i1 %call16.i, label %if.end20.i.if.then22.i_crit_edge, label %if.end20.i.if.end24.i_crit_edge

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end20.i.if.then22.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i.if.then22.i_crit_edge, %if.else.i.if.then22.i_crit_edge, %cond.end.i.if.then22.i_crit_edge
  %170 = ptrtoint ptr %exit_state.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 16, ptr %exit_state.i, align 4
  %ptrace_entry.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 77
  %171 = ptrtoint ptr %dead.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dead.i, align 4
  %call.i.i81.i = call zeroext i1 @__list_add_valid(ptr noundef %ptrace_entry.i, ptr noundef nonnull %dead.i, ptr noundef %172) #12
  br i1 %call.i.i81.i, label %if.end.i.i82.i, label %if.then22.i.if.end24.i_crit_edge

if.then22.i.if.end24.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i.i82.i:                                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %ptrace_entry.i, ptr %prev1.i.i.i, align 4
  %174 = ptrtoint ptr %ptrace_entry.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %172, ptr %ptrace_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 77, i32 1
  %175 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %dead.i, ptr %prev3.i.i.i, align 4
  %176 = ptrtoint ptr %dead.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %ptrace_entry.i, ptr %dead.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end.i.i82.i, %if.then22.i.if.end24.i_crit_edge, %if.end20.i.if.end24.i_crit_edge, %if.then12.i.if.end24.i_crit_edge, %cond.end.i.if.end24.i_crit_edge
  %177 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %signal, align 16
  %notify_count.i = getelementptr inbounds %struct.signal_struct, ptr %178, i32 0, i32 9
  %179 = ptrtoint ptr %notify_count.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %notify_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp.i178 = icmp slt i32 %180, 0
  br i1 %cmp.i178, label %if.then31.i, label %if.end24.i.if.end34.i_crit_edge, !prof !184

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %group_exec_task.i = getelementptr inbounds %struct.signal_struct, ptr %178, i32 0, i32 10
  %181 = ptrtoint ptr %group_exec_task.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %group_exec_task.i, align 8
  %call33.i = call i32 @wake_up_process(ptr noundef %182) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.end24.i.if.end34.i_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  %183 = ptrtoint ptr %dead.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dead.i, align 4
  %cmp42.not88.i = icmp eq ptr %184, %dead.i
  br i1 %cmp42.not88.i, label %if.end34.i.exit_notify.exit_crit_edge, label %if.end34.i.for.body.i_crit_edge

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  br label %for.body.i

if.end34.i.exit_notify.exit_crit_edge:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_notify.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %if.end34.i.for.body.i_crit_edge
  %.pn.in89.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %184, %if.end34.i.for.body.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %.pn.in89.i, i32 -1352
  %185 = ptrtoint ptr %.pn.in89.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pn.i = load ptr, ptr %.pn.in89.i, align 8
  %call.i.i83.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in89.i) #12
  br i1 %call.i.i83.i, label %if.end.i.i85.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i85.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i84.i = getelementptr inbounds %struct.list_head, ptr %.pn.in89.i, i32 0, i32 1
  %186 = ptrtoint ptr %prev.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i.i84.i, align 4
  %188 = ptrtoint ptr %.pn.in89.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %.pn.in89.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev1.i.i.i.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %189, ptr %187, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i85.i, %for.body.i.list_del_init.exit.i_crit_edge
  %192 = ptrtoint ptr %.pn.in89.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %.pn.in89.i, ptr %.pn.in89.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in89.i, i32 0, i32 1
  %193 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %.pn.in89.i, ptr %prev.i3.i.i, align 4
  call void @release_task(ptr noundef %p.0.i) #12
  %cmp42.not.i = icmp eq ptr %.pn.i, %dead.i
  br i1 %cmp42.not.i, label %list_del_init.exit.i.exit_notify.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del_init.exit.i.exit_notify.exit_crit_edge:  ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_notify.exit

exit_notify.exit:                                 ; preds = %list_del_init.exit.i.exit_notify.exit_crit_edge, %if.end34.i.exit_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dead.i) #12
  call void @proc_exit_connector(ptr noundef %3) #12
  %194 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %task, align 8
  %pi_state_cache = getelementptr inbounds %struct.task_struct, ptr %195, i32 0, i32 168
  %196 = ptrtoint ptr %pi_state_cache to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pi_state_cache, align 8
  %tobool60.not = icmp eq ptr %197, null
  br i1 %tobool60.not, label %exit_notify.exit.if.end71_crit_edge, label %if.then67, !prof !177

exit_notify.exit.if.end71_crit_edge:              ; preds = %exit_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then67:                                        ; preds = %exit_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %197) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %exit_notify.exit.if.end71_crit_edge
  call void @debug_check_no_locks_held() #12
  %io_context = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 151
  %198 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %io_context, align 8
  %tobool72.not = icmp eq ptr %199, null
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.then73

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  call void @exit_io_context(ptr noundef %3) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71.if.end74_crit_edge
  %splice_pipe = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 179
  %200 = ptrtoint ptr %splice_pipe to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %splice_pipe, align 4
  %tobool75.not = icmp eq ptr %201, null
  br i1 %tobool75.not, label %if.end74.if.end78_crit_edge, label %if.then76

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  call void @free_pipe_info(ptr noundef nonnull %201) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end74.if.end78_crit_edge
  %task_frag = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 180
  %202 = ptrtoint ptr %task_frag to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %task_frag, align 16
  %tobool79.not = icmp eq ptr %203, null
  br i1 %tobool79.not, label %if.end78.if.end83_crit_edge, label %if.then80

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then80:                                        ; preds = %if.end78
  %204 = getelementptr inbounds %struct.page, ptr %203, i32 0, i32 1
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %204, align 4
  %and.i.i179 = and i32 %206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i179)
  %tobool.not.i.i = icmp eq i32 %and.i.i179, 0
  br i1 %tobool.not.i.i, label %if.end.i.i181, label %if.then.i.i180, !prof !177

if.then.i.i180:                                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %206, -1
  br label %_compound_head.exit.i

if.end.i.i181:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %207 = ptrtoint ptr %203 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i181, %if.then.i.i180
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i180 ], [ %207, %if.end.i.i181 ]
  %208 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %208, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %209 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp.i.i.i.i = icmp eq i32 %210, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i182, label %do.end5.i.i.i.i, !prof !184

if.then.i.i.i.i182:                               ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %208, ptr noundef nonnull @.str.32) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !194
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %211 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !191
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %211, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_exit, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !195

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %208, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end83_crit_edge

folio_put_testzero.exit.i.i.if.end83_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %208) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end83_crit_edge, %if.end78.if.end83_crit_edge
  call void @validate_creds_for_do_exit(ptr noundef %3) #12
  %212 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i183 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i.i183 to ptr
  %task.i184 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %task.i184 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %task.i184, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %stack.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.thread_info, ptr %217, i32 1
  br label %do.body.i.i186

do.body.i.i186:                                   ; preds = %do.body.i.i186.do.body.i.i186_crit_edge, %if.end83
  %n.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.end83 ], [ %incdec.ptr.i.i, %do.body.i.i186.do.body.i.i186_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %n.0.i.i, i32 1
  %218 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i185 = icmp eq i32 %219, 0
  br i1 %tobool.not.i.i185, label %do.body.i.i186.do.body.i.i186_crit_edge, label %stack_not_used.exit.i

do.body.i.i186.do.body.i.i186_crit_edge:          ; preds = %do.body.i.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i186

stack_not_used.exit.i:                            ; preds = %do.body.i.i186
  %220 = ptrtoint ptr %incdec.ptr.i.i to i32
  %221 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i.i187 = sub i32 %220, %221
  %222 = load i32, ptr @check_stack_usage.lowest_to_date, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i187, i32 %222)
  %cmp.not.i = icmp ult i32 %sub.i.i187, %222
  br i1 %cmp.not.i, label %if.end.i188, label %stack_not_used.exit.i.check_stack_usage.exit_crit_edge

stack_not_used.exit.i.check_stack_usage.exit_crit_edge: ; preds = %stack_not_used.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_stack_usage.exit

if.end.i188:                                      ; preds = %stack_not_used.exit.i
  call void @_raw_spin_lock(ptr noundef nonnull @check_stack_usage.low_water_lock) #12
  %223 = load i32, ptr @check_stack_usage.lowest_to_date, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i187, i32 %223)
  %cmp2.i = icmp ult i32 %sub.i.i187, %223
  br i1 %cmp2.i, label %do.end.i, label %if.end.i188.if.end10.i_crit_edge

if.end.i188.if.end10.i_crit_edge:                 ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %task.i184 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %task.i184, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %225, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %225, i32 0, i32 68
  %226 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pid.i.i, align 8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm.i, i32 noundef %227, i32 noundef %sub.i.i187) #16
  store i32 %sub.i.i187, ptr @check_stack_usage.lowest_to_date, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i188.if.end10.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @check_stack_usage.low_water_lock) #12
  br label %check_stack_usage.exit

check_stack_usage.exit:                           ; preds = %if.end10.i, %stack_not_used.exit.i.check_stack_usage.exit_crit_edge
  %228 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %228, -16384
  %229 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %231, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !196
  %nr_dirtied = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 184
  %232 = ptrtoint ptr %nr_dirtied to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %nr_dirtied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool87.not = icmp eq i32 %233, 0
  br i1 %tobool87.not, label %check_stack_usage.exit.if.end107_crit_edge, label %if.then88

check_stack_usage.exit.if.end107_crit_edge:       ; preds = %check_stack_usage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then88:                                        ; preds = %check_stack_usage.exit
  call void @__sanitizer_cov_trace_pc() #14
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %234 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %235
  %236 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx, align 4
  %add = add i32 %237, ptrtoint (ptr @dirty_throttle_leaks to i32)
  %238 = inttoptr i32 %add to ptr
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  %add102 = add i32 %240, %233
  store i32 %add102, ptr %238, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then88, %check_stack_usage.exit.if.end107_crit_edge
  call void @exit_rcu() #12
  call void @exit_tasks_rcu_finish() #12
  call void @__asan_handle_no_return()
  call void @do_task_dead() #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcov_task_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coredump_task_exit(ptr nocapture noundef %tsk) #0 align 64 {
entry:
  %self = alloca %struct.core_thread, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sighand = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 112
  %0 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #12
  %flags = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %flags, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %core_state1 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %core_state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_state1, align 4
  %8 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %9) #12
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end172_crit_edge, label %if.then

entry.if.end172_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %self) #12
  %10 = getelementptr inbounds %struct.core_thread, ptr %self, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !197
  %12 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %self, align 4
  %flags6 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags6, align 4
  %and = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %next = getelementptr inbounds %struct.core_state, ptr %7, i32 0, i32 1, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !198
  %19 = ptrtoint ptr %self to i32
  call void @llvm.prefetch.p0(ptr %next, i32 1, i32 3, i32 1) #12
  %20 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %19, ptr %next) #12, !srcloc !199
  %asmresult.i = extractvalue { i32, i32 } %20, 0
  %21 = inttoptr i32 %asmresult.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !200
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %10, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %self, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #12
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #12, !srcloc !191
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then27, label %if.end.__here.preheader_crit_edge

if.end.__here.preheader_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here.preheader

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %startup = getelementptr inbounds %struct.core_state, ptr %7, i32 0, i32 2
  call void @complete(ptr noundef %startup) #12
  br label %__here.preheader

__here.preheader:                                 ; preds = %if.then27, %if.end.__here.preheader_crit_edge
  br label %__here

__here:                                           ; preds = %__here.backedge, %__here.preheader
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@coredump_task_exit, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 2, ptr %28, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !201
  %30 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %self, align 4
  %tobool98.not = icmp eq ptr %31, null
  br i1 %tobool98.not, label %__here151, label %if.end100

if.end100:                                        ; preds = %__here
  %32 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %37, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #12
  %38 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i1.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %43, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  %44 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end100.if.end.i.i.i_crit_edge

if.end100.if.end.i.i.i_crit_edge:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_check_no_locks_held() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end100.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 57) #12
  %50 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %54 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.__here.backedge_crit_edge, label %freezing.exit.i.i.i.i, !prof !177

if.end.i.i.i.__here.backedge_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here.backedge

__here.backedge:                                  ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.__here.backedge_crit_edge, %if.end.i.i.i.__here.backedge_crit_edge
  br label %__here

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %53) #12
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.__here.backedge_crit_edge, !prof !184

freezing.exit.i.i.i.i.__here.backedge_crit_edge:  ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here.backedge

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %__here.backedge

__here151:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %task_state_change155 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 212
  %57 = ptrtoint ptr %task_state_change155 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 ptrtoint (ptr blockaddress(@coredump_task_exit, %__here151) to i32), ptr %task_state_change155, align 4
  %58 = load ptr, ptr %task, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %58, align 128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %self) #12
  br label %if.end172

if.end172:                                        ; preds = %__here151, %entry.if.end172_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @validate_creds_for_do_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_signals(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_update_integrals(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_itimers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_collect(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_audit_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @taskstats_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exit_mm() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  tail call void @exit_mm_release(ptr noundef %3, ptr noundef %5) #12
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sync_mm_rss(ptr noundef nonnull %5) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@exit_mm, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !195

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %5, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@exit_mm, %if.then.i3.i)) #12
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !195

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %mm_count.i = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #12, !srcloc !203
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %active_mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_mm, align 4
  %cmp.not = icmp eq ptr %5, %10
  br i1 %cmp.not, label %do.end15, label %do.body9, !prof !177

do.body9:                                         ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #12, !srcloc !204
  unreachable

do.end15:                                         ; preds = %mmap_read_lock.exit
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #12
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !205
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool23.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !206
  br i1 %tobool23.not, label %if.then25, label %do.end15.if.end26_crit_edge

do.end15.if.end26_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end15.if.end26_crit_edge
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %mm31 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %mm31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mm31, align 8
  tail call void @membarrier_update_current_mm(ptr noundef null) #12
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !207
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %alloc_lock.i53 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i53) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@exit_mm, %if.then.i.i54)) #12
          to label %mmap_read_unlock.exit [label %if.then.i.i54], !srcloc !195

if.then.i.i54:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %5, i1 noundef zeroext false) #12
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i54, %if.end26
  tail call void @up_read(ptr noundef %mmap_lock.i) #12
  tail call void @mm_update_next_owner(ptr noundef nonnull %5)
  tail call void @mmput(ptr noundef nonnull %5) #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %1, align 16384
  %19 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not = icmp eq i32 %19, 0
  br i1 %tobool41.not, label %mmap_read_unlock.exit.cleanup_crit_edge, label %if.then42

mmap_read_unlock.exit.cleanup_crit_edge:          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @exit_oom_victim() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %mmap_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_process() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_process_exit(ptr noundef %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exit, i32 0, i32 1), ptr blockaddress(@trace_sched_process_exit, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !195

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %call42 = tail call i32 @__traceiter_sched_process_exit(ptr noundef null, ptr noundef %p) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_process_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_sched_process_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 332, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
declare dso_local void @exit_sem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_shm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_files(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_fs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disassociate_ctty(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_task_namespaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_exit_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_autogroup_exit_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_ptrace_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_tasks_rcu_start() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_exit_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_io_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pipe_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_tasks_rcu_finish() local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_task_dead() local_unnamed_addr #6

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @make_task_dead(i32 noundef %signr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i55 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i55 to ptr
  %preempt_count.i56 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i56 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i56, align 4
  %and3 = and i32 %9, 983040
  %or = or i32 %and3, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i57 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i57 to ptr
  %preempt_count.i58 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i58, align 4
  %and5 = and i32 %13, 65280
  %or6 = or i32 %or, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #15
  unreachable

if.end:                                           ; preds = %entry
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.then18, label %if.end19, !prof !184

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #15
  unreachable

if.end19:                                         ; preds = %if.end
  %16 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i59 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i59 to ptr
  %preempt_count.i60 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end19.if.end35_crit_edge, label %do.end, !prof !177

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %20 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i61 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i61 to ptr
  %preempt_count.i62 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i62, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm, i32 noundef %15, i32 noundef %23) #16
  %24 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %preempt_count.i.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.end19.if.end35_crit_edge
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and36 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end50, label %do.end47, !prof !177

do.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  tail call void @futex_exit_recursive(ptr noundef %3) #12
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 57
  %29 = ptrtoint ptr %exit_state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %exit_state, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 178
  tail call fastcc void @refcount_inc(ptr noundef %30)
  call void @__asan_handle_no_return()
  tail call void @do_task_dead() #17
  unreachable

if.end50:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef %signr) #18
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exit_recursive(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #12, !srcloc !183
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !184

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !177

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #12
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_exit(i32 noundef %error_code) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = shl i32 %error_code, 8
  %shl.i = and i32 %and.i, 65280
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef %shl.i) #17
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_group_exit(i32 noundef %exit_code) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %flags = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %group_exit_code = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %group_exit_code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %group_exit_code, align 8
  br label %if.end31

if.else:                                          ; preds = %entry
  %group_exec_task = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %group_exec_task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group_exec_task, align 8
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.else3, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else3:                                         ; preds = %if.else
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 80
  %12 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %13, %thread_group.i
  br i1 %cmp.i.i.not, label %if.else3.if.end31_crit_edge, label %if.then8

if.else3.if.end31_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then8:                                         ; preds = %if.else3
  %sighand11 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %14 = ptrtoint ptr %sighand11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sighand11, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #12
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and13 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %group_exit_code16 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %group_exit_code16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %group_exit_code16, align 8
  br label %if.end27

if.else17:                                        ; preds = %if.then8
  %20 = ptrtoint ptr %group_exec_task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group_exec_task, align 8
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.else21, label %if.else17.if.end27_crit_edge

if.else17.if.end27_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %group_exit_code22 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %group_exit_code22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %exit_code, ptr %group_exit_code22, align 8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %flags, align 8
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %call26 = tail call i32 @zap_other_threads(ptr noundef %25) #12
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.else17.if.end27_crit_edge, %if.then15
  %exit_code.addr.0 = phi i32 [ %19, %if.then15 ], [ %exit_code, %if.else21 ], [ 0, %if.else17.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %15) #12
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.else3.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then
  %exit_code.addr.1 = phi i32 [ %9, %if.then ], [ %exit_code, %if.else3.if.end31_crit_edge ], [ %exit_code.addr.0, %if.end27 ], [ 0, %if.else.if.end31_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef %exit_code.addr.1) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zap_other_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_exit_group(i32 noundef %error_code) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = shl i32 %error_code, 8
  %shl.i = and i32 %and.i, 65280
  call void @__asan_handle_no_return()
  tail call void @do_group_exit(i32 noundef %shl.i) #12
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_parent(ptr noundef %p, ptr nocapture noundef readonly %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %wait_chldexit = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 4
  tail call void @__wake_up_sync_key(ptr noundef %wait_chldexit, i32 noundef 1, ptr noundef %p) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_waitid(i32 noundef %which, i32 noundef %upid, i32 noundef %infop, i32 noundef %options, i32 noundef %ru) #0 align 64 {
entry:
  %wo.i.i = alloca %struct.wait_opts, align 4
  %f_flags.i.i = alloca i32, align 4
  %r.i = alloca %struct.rusage, align 4
  %info.i = alloca %struct.waitid_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %infop to ptr
  %1 = inttoptr i32 %ru to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %r.i) #12
  %2 = call ptr @memset(ptr %r.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #12
  %3 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ru)
  %tobool.not.i = icmp eq i32 %ru, 0
  %r..i = select i1 %tobool.not.i, ptr null, ptr %r.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %wo.i.i) #12
  %4 = getelementptr inbounds i8, ptr %wo.i.i, i32 16
  %5 = call ptr @memset(ptr %4, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags.i.i) #12
  %6 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %f_flags.i.i, align 4
  %and.i201.i = and i32 %options, 520093680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201.i)
  %tobool.not.i.i = icmp ne i32 %and.i201.i, 0
  %and1.i.i = and i32 %options, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %entry.kernel_waitid.exit.thread.i_crit_edge, label %if.end4.i.i

entry.kernel_waitid.exit.thread.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kernel_waitid.exit.thread.i

if.end4.i.i:                                      ; preds = %entry
  %7 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %which, label %if.end4.i.i.kernel_waitid.exit.thread.i_crit_edge [
    i32 0, label %if.end4.i.i.sw.epilog.i.i_crit_edge
    i32 1, label %sw.bb5.i.i
    i32 2, label %sw.bb8.i.i
    i32 3, label %sw.bb18.i.i
  ]

if.end4.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.end4.i.i.kernel_waitid.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kernel_waitid.exit.thread.i

sw.bb5.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %upid)
  %cmp.i.i = icmp slt i32 %upid, 1
  br i1 %cmp.i.i, label %sw.bb5.i.i.kernel_waitid.exit.thread.i_crit_edge, label %if.end7.i.i

sw.bb5.i.i.kernel_waitid.exit.thread.i_crit_edge: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kernel_waitid.exit.thread.i

if.end7.i.i:                                      ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call ptr @find_get_pid(i32 noundef %upid) #12
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upid)
  %cmp9.i.i = icmp slt i32 %upid, 0
  br i1 %cmp9.i.i, label %sw.bb8.i.i.kernel_waitid.exit.thread.i_crit_edge, label %if.end11.i.i

sw.bb8.i.i.kernel_waitid.exit.thread.i_crit_edge: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kernel_waitid.exit.thread.i

if.end11.i.i:                                     ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upid)
  %tobool12.not.i.i = icmp eq i32 %upid, 0
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i.i = tail call ptr @find_get_pid(i32 noundef %upid) #12
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %call16.i.i = tail call ptr @get_task_pid(ptr noundef %11, i32 noundef 2) #12
  br label %sw.epilog.i.i

sw.bb18.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upid)
  %cmp19.i.i = icmp slt i32 %upid, 0
  br i1 %cmp19.i.i, label %sw.bb18.i.i.kernel_waitid.exit.thread.i_crit_edge, label %if.end21.i.i

sw.bb18.i.i.kernel_waitid.exit.thread.i_crit_edge: ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kernel_waitid.exit.thread.i

if.end21.i.i:                                     ; preds = %sw.bb18.i.i
  %call22.i.i = call ptr @pidfd_get_pid(i32 noundef %upid, ptr noundef nonnull %f_flags.i.i) #12
  %cmp.i.i202.i = icmp ugt ptr %call22.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i202.i, label %if.then24.i.i, label %if.end21.i.i.sw.epilog.i.i_crit_edge

if.end21.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call22.i.i to i32
  br label %kernel_waitid.exit.i

sw.epilog.i.i:                                    ; preds = %if.end21.i.i.sw.epilog.i.i_crit_edge, %if.else.i.i, %if.then13.i.i, %if.end7.i.i, %if.end4.i.i.sw.epilog.i.i_crit_edge
  %pid.0.i.i = phi ptr [ %call22.i.i, %if.end21.i.i.sw.epilog.i.i_crit_edge ], [ %call14.i.i, %if.then13.i.i ], [ %call16.i.i, %if.else.i.i ], [ %call.i.i, %if.end7.i.i ], [ null, %if.end4.i.i.sw.epilog.i.i_crit_edge ]
  %type.0.i.i = phi i32 [ 0, %if.end21.i.i.sw.epilog.i.i_crit_edge ], [ 2, %if.then13.i.i ], [ 2, %if.else.i.i ], [ 0, %if.end7.i.i ], [ 4, %if.end4.i.i.sw.epilog.i.i_crit_edge ]
  %13 = ptrtoint ptr %wo.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %type.0.i.i, ptr %wo.i.i, align 4
  %wo_pid.i.i = getelementptr inbounds %struct.wait_opts, ptr %wo.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %wo_pid.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pid.0.i.i, ptr %wo_pid.i.i, align 4
  %wo_flags.i.i = getelementptr inbounds %struct.wait_opts, ptr %wo.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %wo_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %options, ptr %wo_flags.i.i, align 4
  %wo_info.i.i = getelementptr inbounds %struct.wait_opts, ptr %wo.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %wo_info.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %info.i, ptr %wo_info.i.i, align 4
  %wo_rusage.i.i = getelementptr inbounds %struct.wait_opts, ptr %wo.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %wo_rusage.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %r..i, ptr %wo_rusage.i.i, align 4
  %18 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags.i.i, align 4
  %and27.i.i = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %sw.epilog.i.i.if.end31.i.i_crit_edge, label %if.then29.i.i

sw.epilog.i.i.if.end31.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i.i

if.then29.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i203.i = or i32 %options, 1
  %20 = ptrtoint ptr %wo_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i203.i, ptr %wo_flags.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %sw.epilog.i.i.if.end31.i.i_crit_edge
  %call32.i.i = call fastcc i32 @do_wait(ptr noundef nonnull %wo.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %land.lhs.true.i.i, label %if.end31.i.i.if.end40.i.i_crit_edge

if.end31.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i.i

land.lhs.true.i.i:                                ; preds = %if.end31.i.i
  %and34.i.i = and i32 %options, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %land.lhs.true36.i.i, label %land.lhs.true.i.i.if.end40.i.i_crit_edge

land.lhs.true.i.i.if.end40.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i.i

land.lhs.true36.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_flags.i.i, align 4
  %and37.i.i = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  %spec.select.i.i = select i1 %tobool38.not.i.i, i32 0, i32 -11
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %land.lhs.true36.i.i, %land.lhs.true.i.i.if.end40.i.i_crit_edge, %if.end31.i.i.if.end40.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call32.i.i, %if.end31.i.i.if.end40.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end40.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true36.i.i ]
  call void @put_pid(ptr noundef %pid.0.i.i) #12
  br label %kernel_waitid.exit.i

kernel_waitid.exit.thread.i:                      ; preds = %sw.bb18.i.i.kernel_waitid.exit.thread.i_crit_edge, %sw.bb8.i.i.kernel_waitid.exit.thread.i_crit_edge, %sw.bb5.i.i.kernel_waitid.exit.thread.i_crit_edge, %if.end4.i.i.kernel_waitid.exit.thread.i_crit_edge, %entry.kernel_waitid.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags.i.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wo.i.i) #12
  br label %if.end5.i

kernel_waitid.exit.i:                             ; preds = %if.end40.i.i, %if.then24.i.i
  %retval.0.i.i = phi i32 [ %12, %if.then24.i.i ], [ %ret.0.i.i, %if.end40.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags.i.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wo.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 1
  %brmerge.i = or i1 %tobool.not.i, %cmp.i
  %.mux.i = select i1 %cmp.i, i32 0, i32 17
  %call.mux.i = select i1 %cmp.i, i32 %retval.0.i.i, i32 0
  br i1 %brmerge.i, label %kernel_waitid.exit.i.if.end5.i_crit_edge, label %if.then.i.i

kernel_waitid.exit.i.if.end5.i_crit_edge:         ; preds = %kernel_waitid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i.i:                                      ; preds = %kernel_waitid.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.__do_sys_waitid.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.__do_sys_waitid.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_waitid.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 72, i32 -1226833920) #19, !srcloc !212
  %asmresult.i.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_waitid.exit_crit_edge

if.end.i.i.i.__do_sys_waitid.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_waitid.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r.i, i32 noundef 72) #12
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %r.i, i32 noundef 72) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool3.not.i, label %copy_to_user.exit.i.if.end5.i_crit_edge, label %copy_to_user.exit.i.__do_sys_waitid.exit_crit_edge

copy_to_user.exit.i.__do_sys_waitid.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_waitid.exit

copy_to_user.exit.i.if.end5.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %copy_to_user.exit.i.if.end5.i_crit_edge, %kernel_waitid.exit.i.if.end5.i_crit_edge, %kernel_waitid.exit.thread.i
  %signo.0.i = phi i32 [ 17, %copy_to_user.exit.i.if.end5.i_crit_edge ], [ %.mux.i, %kernel_waitid.exit.i.if.end5.i_crit_edge ], [ 0, %kernel_waitid.exit.thread.i ]
  %err.0.i = phi i32 [ 0, %copy_to_user.exit.i.if.end5.i_crit_edge ], [ %call.mux.i, %kernel_waitid.exit.i.if.end5.i_crit_edge ], [ -22, %kernel_waitid.exit.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %infop)
  %tobool6.not.i = icmp eq i32 %infop, 0
  br i1 %tobool6.not.i, label %if.end5.i.__do_sys_waitid.exit_crit_edge, label %if.end8.i

if.end5.i.__do_sys_waitid.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_waitid.exit

if.end8.i:                                        ; preds = %if.end5.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 128, i32 -1226833920) #19, !srcloc !213
  %asmresult.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp10.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp10.i, label %do.body.i, label %if.end8.i.__do_sys_waitid.exit_crit_edge

if.end8.i.__do_sys_waitid.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_waitid.exit

do.body.i:                                        ; preds = %if.end8.i
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1643) #12
  %25 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !214
  %and.i.i = and i32 %27, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %28 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i32 %signo.0.i, i32 -1226833921) #12, !srcloc !217
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not.i = icmp eq i32 %28, 0
  br i1 %tobool17.not.i, label %do.body24.i, label %do.body.i.do.end166.i_crit_edge, !prof !177

do.body.i.do.end166.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166.i

do.body24.i:                                      ; preds = %do.body.i
  %si_errno.i = getelementptr inbounds %struct.anon.137, ptr %0, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1644) #12
  %29 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i181.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i181.i to ptr
  %cpu_domain.i.i182.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i182.i) #10, !srcloc !214
  %and.i183.i = and i32 %31, -13
  %or.i184.i = or i32 %and.i183.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i184.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %32 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %si_errno.i, i32 0, i32 -1226833921) #12, !srcloc !218
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool40.not.i = icmp eq i32 %32, 0
  br i1 %tobool40.not.i, label %do.body51.i, label %do.body24.i.do.end166.i_crit_edge, !prof !177

do.body24.i.do.end166.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166.i

do.body51.i:                                      ; preds = %do.body24.i
  %si_code.i = getelementptr inbounds %struct.anon.137, ptr %0, i32 0, i32 2
  %cause.i = getelementptr inbounds %struct.waitid_info, ptr %info.i, i32 0, i32 3
  %33 = ptrtoint ptr %cause.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cause.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1645) #12
  %35 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i185.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i185.i to ptr
  %cpu_domain.i.i186.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i186.i) #10, !srcloc !214
  %and.i187.i = and i32 %37, -13
  %or.i188.i = or i32 %and.i187.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i188.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %38 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %si_code.i, i32 %34, i32 -1226833921) #12, !srcloc !219
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool67.not.i = icmp eq i32 %38, 0
  br i1 %tobool67.not.i, label %do.body78.i, label %do.body51.i.do.end166.i_crit_edge, !prof !177

do.body51.i.do.end166.i_crit_edge:                ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166.i

do.body78.i:                                      ; preds = %do.body51.i
  %_sifields.i = getelementptr inbounds %struct.anon.137, ptr %0, i32 0, i32 3
  %39 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %info.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1646) #12
  %41 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i189.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i189.i to ptr
  %cpu_domain.i.i190.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i190.i) #10, !srcloc !214
  %and.i191.i = and i32 %43, -13
  %or.i192.i = or i32 %and.i191.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i192.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %44 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %_sifields.i, i32 %40, i32 -1226833921) #12, !srcloc !220
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool94.not.i = icmp eq i32 %44, 0
  br i1 %tobool94.not.i, label %do.body105.i, label %do.body78.i.do.end166.i_crit_edge, !prof !177

do.body78.i.do.end166.i_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166.i

do.body105.i:                                     ; preds = %do.body78.i
  %_uid.i = getelementptr inbounds %struct.anon.137, ptr %0, i32 0, i32 3, i32 0, i32 1
  %uid.i = getelementptr inbounds %struct.waitid_info, ptr %info.i, i32 0, i32 1
  %45 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %uid.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1647) #12
  %47 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i193.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i193.i to ptr
  %cpu_domain.i.i194.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i194.i) #10, !srcloc !214
  %and.i195.i = and i32 %49, -13
  %or.i196.i = or i32 %and.i195.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i196.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %50 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %_uid.i, i32 %46, i32 -1226833921) #12, !srcloc !221
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool122.not.i = icmp eq i32 %50, 0
  br i1 %tobool122.not.i, label %do.body133.i, label %do.body105.i.do.end166.i_crit_edge, !prof !177

do.body105.i.do.end166.i_crit_edge:               ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166.i

do.body133.i:                                     ; preds = %do.body105.i
  %_status.i = getelementptr inbounds %struct.anon.137, ptr %0, i32 0, i32 3, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.waitid_info, ptr %info.i, i32 0, i32 2
  %51 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1648) #12
  %53 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i197.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i197.i to ptr
  %cpu_domain.i.i198.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i198.i) #10, !srcloc !214
  %and.i199.i = and i32 %55, -13
  %or.i200.i = or i32 %and.i199.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i200.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %56 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %_status.i, i32 %52, i32 -1226833921) #12, !srcloc !222
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool150.not.i = icmp eq i32 %56, 0
  br i1 %tobool150.not.i, label %do.body133.i.__do_sys_waitid.exit_crit_edge, label %do.body133.i.do.end166.i_crit_edge, !prof !177

do.body133.i.do.end166.i_crit_edge:               ; preds = %do.body133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166.i

do.body133.i.__do_sys_waitid.exit_crit_edge:      ; preds = %do.body133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_waitid.exit

do.end166.i:                                      ; preds = %do.body133.i.do.end166.i_crit_edge, %do.body105.i.do.end166.i_crit_edge, %do.body78.i.do.end166.i_crit_edge, %do.body51.i.do.end166.i_crit_edge, %do.body24.i.do.end166.i_crit_edge, %do.body.i.do.end166.i_crit_edge
  br label %__do_sys_waitid.exit

__do_sys_waitid.exit:                             ; preds = %do.end166.i, %do.body133.i.__do_sys_waitid.exit_crit_edge, %if.end8.i.__do_sys_waitid.exit_crit_edge, %if.end5.i.__do_sys_waitid.exit_crit_edge, %copy_to_user.exit.i.__do_sys_waitid.exit_crit_edge, %if.end.i.i.i.__do_sys_waitid.exit_crit_edge, %if.then.i.i.__do_sys_waitid.exit_crit_edge
  %retval.0.i = phi i32 [ -14, %do.end166.i ], [ -14, %copy_to_user.exit.i.__do_sys_waitid.exit_crit_edge ], [ %err.0.i, %if.end5.i.__do_sys_waitid.exit_crit_edge ], [ -14, %if.end8.i.__do_sys_waitid.exit_crit_edge ], [ %err.0.i, %do.body133.i.__do_sys_waitid.exit_crit_edge ], [ -14, %if.then.i.i.__do_sys_waitid.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_waitid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %r.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_wait4(i32 noundef %upid, ptr noundef %stat_addr, i32 noundef %options, ptr noundef %ru) local_unnamed_addr #0 align 64 {
entry:
  %wo = alloca %struct.wait_opts, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %wo) #12
  %0 = getelementptr inbounds i8, ptr %wo, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %and = and i32 %options, 536870900
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %upid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %upid, label %if.else [
    i32 -2147483648, label %if.end.cleanup_crit_edge
    i32 -1, label %if.end.if.end16_crit_edge
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upid)
  %cmp5 = icmp slt i32 %upid, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 0, %upid
  %call = tail call ptr @find_get_pid(i32 noundef %sub) #12
  br label %if.end16

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upid)
  %cmp8 = icmp eq i32 %upid, 0
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i39 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i39 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %call11 = tail call ptr @get_task_pid(ptr noundef %6, i32 noundef 2) #12
  br label %if.end16

if.else12:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call ptr @find_get_pid(i32 noundef %upid) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then9, %if.then6, %if.end.if.end16_crit_edge
  %type.0 = phi i32 [ 2, %if.then6 ], [ 2, %if.then9 ], [ 0, %if.else12 ], [ 4, %if.end.if.end16_crit_edge ]
  %pid.0 = phi ptr [ %call, %if.then6 ], [ %call11, %if.then9 ], [ %call13, %if.else12 ], [ null, %if.end.if.end16_crit_edge ]
  %7 = ptrtoint ptr %wo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type.0, ptr %wo, align 4
  %wo_pid = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 2
  %8 = ptrtoint ptr %wo_pid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pid.0, ptr %wo_pid, align 4
  %or = or i32 %options, 4
  %wo_flags = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %9 = ptrtoint ptr %wo_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %wo_flags, align 4
  %wo_info = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 3
  %10 = ptrtoint ptr %wo_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wo_info, align 4
  %wo_stat = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 4
  %11 = ptrtoint ptr %wo_stat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wo_stat, align 4
  %wo_rusage = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 5
  %12 = ptrtoint ptr %wo_rusage to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ru, ptr %wo_rusage, align 4
  %call17 = call fastcc i32 @do_wait(ptr noundef nonnull %wo)
  call void @put_pid(ptr noundef %pid.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 1
  %tobool19.not = icmp eq ptr %stat_addr, null
  %or.cond = or i1 %tobool19.not, %cmp18
  br i1 %or.cond, label %if.end16.cleanup_crit_edge, label %land.lhs.true20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true20:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %wo_stat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wo_stat, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1693) #12
  %15 = call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !214
  %and.i = and i32 %17, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %18 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %stat_addr, i32 %14, i32 -1226833921) #12, !srcloc !223
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  %spec.select = select i1 %tobool24.not, i32 %call17, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true20, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %spec.select, %land.lhs.true20 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wo) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_wait(ptr noundef %wo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wo_pid = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 2
  %0 = ptrtoint ptr %wo_pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wo_pid, align 4
  tail call fastcc void @trace_sched_process_wait(ptr noundef %1)
  %child_wait = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 6
  %2 = ptrtoint ptr %child_wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %child_wait, align 4
  %private.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %private.i, align 4
  %func1.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @child_wait_callback, ptr %func1.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %private.i, align 4
  %10 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 111
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %wait_chldexit = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 4
  tail call void @add_wait_queue(ptr noundef %wait_chldexit, ptr noundef %child_wait) #12
  %notask_error = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 7
  %wo_flags = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  br label %repeat

repeat:                                           ; preds = %if.then113, %entry
  %13 = ptrtoint ptr %notask_error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -10, ptr %notask_error, align 4
  %14 = ptrtoint ptr %wo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp = icmp ult i32 %15, 4
  br i1 %cmp, label %land.lhs.true, label %repeat.__here_crit_edge

repeat.__here_crit_edge:                          ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

land.lhs.true:                                    ; preds = %repeat
  %16 = ptrtoint ptr %wo_pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wo_pid, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %land.lhs.true.notask_crit_edge, label %lor.lhs.false

land.lhs.true.notask_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %notask

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx.i = getelementptr %struct.pid, ptr %17, i32 0, i32 3, i32 %15
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.not, label %lor.lhs.false.notask_crit_edge, label %lor.lhs.false.__here_crit_edge

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

lor.lhs.false.notask_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %notask

__here:                                           ; preds = %lor.lhs.false.__here_crit_edge, %repeat.__here_crit_edge
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@do_wait, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %23, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !224
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #12
  %25 = ptrtoint ptr %wo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp75 = icmp eq i32 %26, 0
  br i1 %cmp75, label %if.then76, label %if.else

if.then76:                                        ; preds = %__here
  %27 = ptrtoint ptr %wo_pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wo_pid, align 4
  %call.i = tail call ptr @pid_task(ptr noundef %28, i32 noundef 1) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then76.if.end8.i_crit_edge, label %land.lhs.true.i

if.then76.if.end8.i_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.then76
  %real_parent.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 71
  %29 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond.i.i = load ptr, ptr %real_parent.i.i, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i, align 8
  %cmp.i.i = icmp eq ptr %33, %cond.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.rhs.i.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %wo_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wo_flags, align 4
  %and.i.i = and i32 %35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %is_effectively_child.exit.i, label %lor.rhs.i.i.if.end8.i_crit_edge

lor.rhs.i.i.if.end8.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

is_effectively_child.exit.i:                      ; preds = %lor.rhs.i.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 111
  %36 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %signal.i.i.i, align 16
  %signal1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %cond.i.i, i32 0, i32 111
  %38 = ptrtoint ptr %signal1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %signal1.i.i.i, align 16
  %cmp.i.i.i = icmp eq ptr %37, %39
  br i1 %cmp.i.i.i, label %is_effectively_child.exit.i.if.then.i_crit_edge, label %is_effectively_child.exit.i.if.end8.i_crit_edge

is_effectively_child.exit.i.if.end8.i_crit_edge:  ; preds = %is_effectively_child.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

is_effectively_child.exit.i.if.then.i_crit_edge:  ; preds = %is_effectively_child.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %is_effectively_child.exit.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call5.i = tail call fastcc i32 @wait_consider_task(ptr noundef %wo, i32 noundef 0, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.cleanup192_crit_edge

if.then.i.cleanup192_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %is_effectively_child.exit.i.if.end8.i_crit_edge, %lor.rhs.i.i.if.end8.i_crit_edge, %if.then76.if.end8.i_crit_edge
  %40 = ptrtoint ptr %wo_pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wo_pid, align 4
  %call10.i = tail call ptr @pid_task(ptr noundef %41, i32 noundef 0) #12
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end8.i.if.end101_crit_edge, label %land.lhs.true12.i

if.end8.i.if.end101_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true12.i:                                ; preds = %if.end8.i
  %ptrace13.i = getelementptr inbounds %struct.task_struct, ptr %call10.i, i32 0, i32 4
  %42 = ptrtoint ptr %ptrace13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptrace13.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool14.not.i = icmp eq i32 %43, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.end101_crit_edge, label %land.lhs.true15.i

land.lhs.true12.i.if.end101_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %parent1.i47.i = getelementptr inbounds %struct.task_struct, ptr %call10.i, i32 0, i32 72
  %44 = ptrtoint ptr %parent1.i47.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %cond.i48.i = load ptr, ptr %parent1.i47.i, align 4
  %45 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i49.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i49.i to ptr
  %task.i50.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i50.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i50.i, align 8
  %cmp.i51.i = icmp eq ptr %48, %cond.i48.i
  br i1 %cmp.i51.i, label %land.lhs.true15.i.if.then19.i_crit_edge, label %lor.rhs.i55.i

land.lhs.true15.i.if.then19.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

lor.rhs.i55.i:                                    ; preds = %land.lhs.true15.i
  %49 = ptrtoint ptr %wo_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wo_flags, align 4
  %and.i53.i = and i32 %50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool2.not.i54.i = icmp eq i32 %and.i53.i, 0
  br i1 %tobool2.not.i54.i, label %is_effectively_child.exit60.i, label %lor.rhs.i55.i.if.end101_crit_edge

lor.rhs.i55.i.if.end101_crit_edge:                ; preds = %lor.rhs.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

is_effectively_child.exit60.i:                    ; preds = %lor.rhs.i55.i
  %signal.i.i56.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 111
  %51 = ptrtoint ptr %signal.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %signal.i.i56.i, align 16
  %signal1.i.i57.i = getelementptr inbounds %struct.task_struct, ptr %cond.i48.i, i32 0, i32 111
  %53 = ptrtoint ptr %signal1.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %signal1.i.i57.i, align 16
  %cmp.i.i58.i = icmp eq ptr %52, %54
  br i1 %cmp.i.i58.i, label %is_effectively_child.exit60.i.if.then19.i_crit_edge, label %is_effectively_child.exit60.i.if.end101_crit_edge

is_effectively_child.exit60.i.if.end101_crit_edge: ; preds = %is_effectively_child.exit60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

is_effectively_child.exit60.i.if.then19.i_crit_edge: ; preds = %is_effectively_child.exit60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19.i

if.then19.i:                                      ; preds = %is_effectively_child.exit60.i.if.then19.i_crit_edge, %land.lhs.true15.i.if.then19.i_crit_edge
  %call22.i = tail call fastcc i32 @wait_consider_task(ptr noundef %wo, i32 noundef 1, ptr noundef nonnull %call10.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then19.i.if.end101_crit_edge, label %if.then19.i.cleanup192_crit_edge

if.then19.i.cleanup192_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

if.then19.i.if.end101_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.else:                                          ; preds = %__here
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  br label %do.body83

do.body83:                                        ; preds = %do.cond95.do.body83_crit_edge, %if.else
  %tsk.0 = phi ptr [ %56, %if.else ], [ %add.ptr.i, %do.cond95.do.body83_crit_edge ]
  %children.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0, i32 0, i32 73
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body83
  %.pn.in.i = phi ptr [ %children.i, %do.body83 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %57 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %children.i
  br i1 %cmp.not.i, label %if.end87, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %p.0.i = getelementptr i8, ptr %.pn.i, i32 -1332
  %call.i221 = tail call fastcc i32 @wait_consider_task(ptr noundef %wo, i32 noundef 0, ptr noundef %p.0.i) #12
  %tobool.not.i222 = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i222, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup192_crit_edge

for.body.i.cleanup192_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.end87:                                         ; preds = %for.cond.i
  %ptraced.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0, i32 0, i32 76
  br label %for.cond.i226

for.cond.i226:                                    ; preds = %for.body.i230.for.cond.i226_crit_edge, %if.end87
  %.pn.in.i223 = phi ptr [ %ptraced.i, %if.end87 ], [ %.pn.i224, %for.body.i230.for.cond.i226_crit_edge ]
  %58 = ptrtoint ptr %.pn.in.i223 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i224 = load ptr, ptr %.pn.in.i223, align 8
  %cmp.not.i225 = icmp eq ptr %.pn.i224, %ptraced.i
  br i1 %cmp.not.i225, label %if.end91, label %for.body.i230

for.body.i230:                                    ; preds = %for.cond.i226
  %p.0.i227 = getelementptr i8, ptr %.pn.i224, i32 -1352
  %call.i228 = tail call fastcc i32 @wait_consider_task(ptr noundef %wo, i32 noundef 1, ptr noundef %p.0.i227) #12
  %tobool.not.i229 = icmp eq i32 %call.i228, 0
  br i1 %tobool.not.i229, label %for.body.i230.for.cond.i226_crit_edge, label %for.body.i230.cleanup192_crit_edge

for.body.i230.cleanup192_crit_edge:               ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

for.body.i230.for.cond.i226_crit_edge:            ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i226

if.end91:                                         ; preds = %for.cond.i226
  %59 = ptrtoint ptr %wo_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wo_flags, align 4
  %and = and i32 %60, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %do.cond95, label %if.end91.if.end101_crit_edge

if.end91.if.end101_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

do.cond95:                                        ; preds = %if.end91
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %tsk.0, i32 0, i32 80
  %61 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %thread_group.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 -1396
  %63 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task, align 8
  %cmp99.not = icmp eq ptr %add.ptr.i, %64
  br i1 %cmp99.not, label %do.cond95.if.end101_crit_edge, label %do.cond95.do.body83_crit_edge

do.cond95.do.body83_crit_edge:                    ; preds = %do.cond95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

do.cond95.if.end101_crit_edge:                    ; preds = %do.cond95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.end101:                                        ; preds = %do.cond95.if.end101_crit_edge, %if.end91.if.end101_crit_edge, %if.then19.i.if.end101_crit_edge, %is_effectively_child.exit60.i.if.end101_crit_edge, %lor.rhs.i55.i.if.end101_crit_edge, %land.lhs.true12.i.if.end101_crit_edge, %if.end8.i.if.end101_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  br label %notask

notask:                                           ; preds = %if.end101, %lor.lhs.false.notask_crit_edge, %land.lhs.true.notask_crit_edge
  %65 = ptrtoint ptr %notask_error to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %notask_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool103.not = icmp eq i32 %66, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %notask.cleanup192_crit_edge

notask.cleanup192_crit_edge:                      ; preds = %notask
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

land.lhs.true104:                                 ; preds = %notask
  %67 = ptrtoint ptr %wo_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wo_flags, align 4
  %and106 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true104.cleanup192_crit_edge

land.lhs.true104.cleanup192_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

if.then108:                                       ; preds = %land.lhs.true104
  %69 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stack.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i232 = icmp eq i32 %75, 0
  br i1 %tobool.not.i232, label %signal_pending.exit, label %if.then108.cleanup192_crit_edge, !prof !177

if.then108.cleanup192_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

signal_pending.exit:                              ; preds = %if.then108
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %72, align 4
  %and1.i.i.i.i.i = and i32 %77, 1
  %tobool112.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool112.not, label %if.then113, label %signal_pending.exit.cleanup192_crit_edge

signal_pending.exit.cleanup192_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

if.then113:                                       ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @schedule() #12
  br label %repeat

cleanup192:                                       ; preds = %signal_pending.exit.cleanup192_crit_edge, %if.then108.cleanup192_crit_edge, %land.lhs.true104.cleanup192_crit_edge, %notask.cleanup192_crit_edge, %for.body.i230.cleanup192_crit_edge, %for.body.i.cleanup192_crit_edge, %if.then19.i.cleanup192_crit_edge, %if.then.i.cleanup192_crit_edge
  %retval1.1 = phi i32 [ %call.i228, %for.body.i230.cleanup192_crit_edge ], [ %call.i221, %for.body.i.cleanup192_crit_edge ], [ -512, %if.then108.cleanup192_crit_edge ], [ %call5.i, %if.then.i.cleanup192_crit_edge ], [ %call22.i, %if.then19.i.cleanup192_crit_edge ], [ -512, %signal_pending.exit.cleanup192_crit_edge ], [ 0, %land.lhs.true104.cleanup192_crit_edge ], [ %66, %notask.cleanup192_crit_edge ]
  %78 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task, align 8
  %task_state_change170 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 212
  %80 = ptrtoint ptr %task_state_change170 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 ptrtoint (ptr blockaddress(@do_wait, %cleanup192) to i32), ptr %task_state_change170, align 4
  %81 = load ptr, ptr %task, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %81, align 128
  %83 = load ptr, ptr %task, align 8
  %signal189 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 111
  %84 = ptrtoint ptr %signal189 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %signal189, align 16
  %wait_chldexit190 = getelementptr inbounds %struct.signal_struct, ptr %85, i32 0, i32 4
  tail call void @remove_wait_queue(ptr noundef %wait_chldexit190, ptr noundef %child_wait) #12
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_wait(i32 noundef %pid, ptr nocapture noundef writeonly %stat) local_unnamed_addr #0 align 64 {
entry:
  %wo = alloca %struct.wait_opts, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %wo) #12
  %wo_flags = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %0 = call ptr @memset(ptr %wo, i32 0, i32 48)
  %1 = ptrtoint ptr %wo_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %wo_flags, align 4
  %wo_pid = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 2
  %call = tail call ptr @find_get_pid(i32 noundef %pid) #12
  %2 = ptrtoint ptr %wo_pid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %wo_pid, align 4
  %call1 = call fastcc i32 @do_wait(ptr noundef nonnull %wo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %wo_stat = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 4
  %3 = ptrtoint ptr %wo_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wo_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %stat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %wo_pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wo_pid, align 4
  call void @put_pid(ptr noundef %7) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wo) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_wait4(i32 noundef %upid, i32 noundef %stat_addr, i32 noundef %options, i32 noundef %ru) #0 align 64 {
entry:
  %r.i = alloca %struct.rusage, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %stat_addr to ptr
  %1 = inttoptr i32 %ru to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %r.i) #12
  %2 = call ptr @memset(ptr %r.i, i32 255, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ru)
  %tobool.not.i = icmp eq i32 %ru, 0
  %r..i = select i1 %tobool.not.i, ptr null, ptr %r.i
  %call.i = call i32 @kernel_wait4(i32 noundef %upid, ptr noundef %0, i32 noundef %options, ptr noundef %r..i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  %brmerge.i = or i1 %tobool.not.i, %cmp.i
  br i1 %brmerge.i, label %entry.if.end5.i_crit_edge, label %if.then.i.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i.i:                                      ; preds = %entry
  call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.__do_sys_wait4.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.__do_sys_wait4.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_wait4.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 72, i32 -1226833920) #19, !srcloc !212
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_wait4.exit_crit_edge

if.end.i.i.i.__do_sys_wait4.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_wait4.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r.i, i32 noundef 72) #12
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %r.i, i32 noundef 72) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool3.not.i, label %copy_to_user.exit.i.if.end5.i_crit_edge, label %copy_to_user.exit.i.__do_sys_wait4.exit_crit_edge

copy_to_user.exit.i.__do_sys_wait4.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_wait4.exit

copy_to_user.exit.i.if.end5.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %copy_to_user.exit.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  br label %__do_sys_wait4.exit

__do_sys_wait4.exit:                              ; preds = %if.end5.i, %copy_to_user.exit.i.__do_sys_wait4.exit_crit_edge, %if.end.i.i.i.__do_sys_wait4.exit_crit_edge, %if.then.i.i.__do_sys_wait4.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end5.i ], [ -14, %copy_to_user.exit.i.__do_sys_wait4.exit_crit_edge ], [ -14, %if.then.i.i.__do_sys_wait4.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_wait4.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %r.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @thread_group_exited(ptr noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @pid_task(ptr noundef %pid, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.lor.end_crit_edge, label %do.end

rcu_read_lock.exit.lor.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

do.end:                                           ; preds = %rcu_read_lock.exit
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 57
  %4 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %do.end.lor.end_crit_edge, label %land.rhs

do.end.lor.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

land.rhs:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 80
  %6 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i = icmp eq ptr %7, %thread_group.i
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %do.end.lor.end_crit_edge, %rcu_read_lock.exit.lor.end_crit_edge
  %8 = phi i1 [ true, %rcu_read_lock.exit.lor.end_crit_edge ], [ false, %do.end.lor.end_crit_edge ], [ %cmp.i.i, %land.rhs ]
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i7, label %lor.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

lor.end.rcu_read_unlock.exit_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %lor.end
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %lor.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i14 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @abort() #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/exit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1826, 0\0A.popsection", ""() #12, !srcloc !225
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_flush_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_delayed_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_process_free(ptr noundef %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_free, i32 0, i32 1), ptr blockaddress(@trace_sched_process_free, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !195

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !226
  %call42 = tail call i32 @__traceiter_sched_process_free(ptr noundef null, ptr noundef %p) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !227
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_process_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_sched_process_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 325, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
declare dso_local i32 @__traceiter_sched_process_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ptrace_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_tasklist_lock_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cpu_timers_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cpu_timers_exit_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_sigqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cleanup_sighand(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @detach_pid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_cancel(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_mm_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_update_current_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_oom_victim() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kill_orphaned_pgrp(ptr noundef %tsk, ptr noundef readonly %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 22, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 71
  %4 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_parent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.addr.0 = phi ptr [ %5, %if.then ], [ %parent, %entry.if.end_crit_edge ]
  %ignored_task.0 = phi ptr [ %tsk, %if.then ], [ null, %entry.if.end_crit_edge ]
  %signal.i23 = getelementptr inbounds %struct.task_struct, ptr %parent.addr.0, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i23, align 16
  %arrayidx.i24 = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 22, i32 2
  %8 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i24, align 8
  %cmp.not = icmp eq ptr %9, %3
  br i1 %cmp.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %arrayidx.i26 = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 22, i32 3
  %10 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i26, align 4
  %arrayidx.i28 = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 22, i32 3
  %12 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i28, align 4
  %cmp4 = icmp eq ptr %11, %13
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc i32 @will_become_orphaned_pgrp(ptr noundef %3, ptr noundef %ignored_task.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %cmp.not.i = icmp eq ptr %3, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %land.lhs.true5.if.end13_crit_edge, label %do.body1.i

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.body1.i:                                       ; preds = %land.lhs.true5
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body1.i.do.end.i_crit_edge

do.body1.i.do.end.i_crit_edge:                    ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body1.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @has_stopped_jobs.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @has_stopped_jobs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @.str.2) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body1.i.do.end.i_crit_edge
  %arrayidx.i29 = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i29, align 4
  %tobool12.not.i = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -1380
  %tobool14.not4750.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not47.i = or i1 %tobool12.not.i, %tobool14.not4750.i
  br i1 %tobool14.not47.i, label %do.end.i.if.end13_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end13_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %p.048.i = phi ptr [ %add.ptr30.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %signal.i30 = getelementptr inbounds %struct.task_struct, ptr %p.048.i, i32 0, i32 111
  %16 = ptrtoint ptr %signal.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal.i30, align 16
  %flags.i = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %for.inc.i, label %if.then10

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx23.i = getelementptr %struct.task_struct, ptr %p.048.i, i32 0, i32 79, i32 2
  %20 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx23.i, align 4
  %tobool26.not.i = icmp eq ptr %21, null
  %add.ptr30.i = getelementptr i8, ptr %21, i32 -1380
  %tobool14.not51.i = icmp eq ptr %add.ptr30.i, null
  %tobool14.not.i = or i1 %tobool26.not.i, %tobool14.not51.i
  br i1 %tobool14.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 @__kill_pgrp_info(i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %3) #12
  %call12 = tail call i32 @__kill_pgrp_info(i32 noundef 18, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %3) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.inc.i.if.end13_crit_edge, %do.end.i.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_ptrace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_alive_thread(ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @find_alive_thread.__warned, align 1
  br i1 %.b27, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @find_alive_thread.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 516, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %thread_head, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %thread_head
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %flags = getelementptr i8, ptr %.pn, i32 -1392
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %cleanup.split.loop.exit28, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup.split.loop.exit28:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %t.0.le = getelementptr i8, ptr %.pn, i32 -1404
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit28, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %t.0.le, %cleanup.split.loop.exit28 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zap_pid_ns_processes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kill_pgrp_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_pid(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_process_wait(ptr noundef %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_wait, i32 0, i32 1), ptr blockaddress(@trace_sched_process_wait, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !195

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  %call42 = tail call i32 @__traceiter_sched_process_wait(ptr noundef null, ptr noundef %pid) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !229
  %13 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_wait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_wait, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_process_wait.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_sched_process_wait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 364, ptr noundef nonnull @.str.1) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !165) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @child_wait_callback(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wait, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %1, label %if.else.i.i [
    i32 4, label %entry.if.end_crit_edge
    i32 0, label %if.then.i.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %key, i32 0, i32 78
  br label %eligible_pid.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %key, i32 0, i32 111
  %3 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %4, i32 0, i32 22, i32 %1
  br label %eligible_pid.exit

eligible_pid.exit:                                ; preds = %if.else.i.i, %if.then.i.i
  %pid.0.in.i.i = phi ptr [ %thread_pid.i.i.i, %if.then.i.i ], [ %arrayidx.i.i, %if.else.i.i ]
  %5 = ptrtoint ptr %pid.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %pid.0.i.i = load ptr, ptr %pid.0.in.i.i, align 4
  %wo_pid.i = getelementptr i8, ptr %wait, i32 -16
  %6 = ptrtoint ptr %wo_pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wo_pid.i, align 4
  %cmp2.i.not = icmp eq ptr %pid.0.i.i, %7
  br i1 %cmp2.i.not, label %eligible_pid.exit.if.end_crit_edge, label %eligible_pid.exit.cleanup_crit_edge

eligible_pid.exit.cleanup_crit_edge:              ; preds = %eligible_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

eligible_pid.exit.if.end_crit_edge:               ; preds = %eligible_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %eligible_pid.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %wo_flags = getelementptr i8, ptr %wait, i32 -20
  %8 = ptrtoint ptr %wo_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wo_flags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %parent = getelementptr inbounds %struct.task_struct, ptr %key, i32 0, i32 72
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @default_wake_function(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true.cleanup_crit_edge, %eligible_pid.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %eligible_pid.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_consider_task(ptr noundef %wo, i32 noundef %ptrace, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %tgutime.i = alloca i64, align 8
  %tgstime.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %exit_state1 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 57
  %0 = ptrtoint ptr %exit_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %exit_state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !184

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptrace)
  %tobool3 = icmp ne i32 %ptrace, 0
  %2 = ptrtoint ptr %wo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wo, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %3, label %if.else.i.i.i [
    i32 4, label %if.end.eligible_pid.exit.i_crit_edge
    i32 0, label %if.then.i.i.i
  ]

if.end.eligible_pid.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %eligible_pid.exit.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 78
  br label %task_pid_type.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %5 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 22, i32 %3
  br label %task_pid_type.exit.i.i

task_pid_type.exit.i.i:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %pid.0.in.i.i.i = phi ptr [ %thread_pid.i.i.i.i, %if.then.i.i.i ], [ %arrayidx.i.i.i, %if.else.i.i.i ]
  %7 = ptrtoint ptr %pid.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %pid.0.i.i.i = load ptr, ptr %pid.0.in.i.i.i, align 4
  %wo_pid.i.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 2
  %8 = ptrtoint ptr %wo_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wo_pid.i.i, align 4
  %cmp2.i.i = icmp ne ptr %pid.0.i.i.i, %9
  br label %eligible_pid.exit.i

eligible_pid.exit.i:                              ; preds = %task_pid_type.exit.i.i, %if.end.eligible_pid.exit.i_crit_edge
  %10 = phi i1 [ false, %if.end.eligible_pid.exit.i_crit_edge ], [ %cmp2.i.i, %task_pid_type.exit.i.i ]
  %brmerge.i = or i1 %tobool3, %10
  %not..i = xor i1 %10, true
  %.mux.i = zext i1 %not..i to i32
  br i1 %brmerge.i, label %eligible_pid.exit.i.eligible_child.exit_crit_edge, label %lor.lhs.false.i

eligible_pid.exit.i.eligible_child.exit_crit_edge: ; preds = %eligible_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %eligible_child.exit

lor.lhs.false.i:                                  ; preds = %eligible_pid.exit.i
  %wo_flags.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %11 = ptrtoint ptr %wo_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wo_flags.i, align 4
  %and.i = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i.if.end6_crit_edge

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end4.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 59
  %13 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %14)
  %cmp.i = icmp ne i32 %14, 17
  %conv.i = zext i1 %cmp.i to i32
  %15 = xor i32 %12, -1
  %16 = lshr i32 %15, 31
  %tobool9.not.i = xor i32 %16, %conv.i
  br label %eligible_child.exit

eligible_child.exit:                              ; preds = %if.end4.i, %eligible_pid.exit.i.eligible_child.exit_crit_edge
  %retval.0.i = phi i32 [ %.mux.i, %eligible_pid.exit.i.eligible_child.exit_crit_edge ], [ %tobool9.not.i, %if.end4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %eligible_child.exit.cleanup_crit_edge, label %eligible_child.exit.if.end6_crit_edge

eligible_child.exit.if.end6_crit_edge:            ; preds = %eligible_child.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

eligible_child.exit.cleanup_crit_edge:            ; preds = %eligible_child.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %eligible_child.exit.if.end6_crit_edge, %lor.lhs.false.i.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %1)
  %cmp7 = icmp eq i32 %1, 48
  br i1 %cmp7, label %if.then14, label %if.end26, !prof !184

if.then14:                                        ; preds = %if.end6
  br i1 %tobool3, label %if.then14.cleanup_crit_edge, label %if.then24, !prof !184

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %notask_error = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 7
  %17 = ptrtoint ptr %notask_error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %notask_error, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end6
  br i1 %tobool3, label %if.end26.if.end49_crit_edge, label %land.lhs.true, !prof !184

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end26
  %ptrace36 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 4
  %18 = ptrtoint ptr %ptrace36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptrace36, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool37.not = icmp eq i32 %19, 0
  br i1 %tobool37.not, label %land.lhs.true.if.end49_crit_edge, label %if.then44, !prof !177

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 71
  %20 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %real_parent.i, align 4
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 72
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 111
  %24 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal.i.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 111
  %26 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i.i.not = icmp eq ptr %25, %27
  %spec.select = zext i1 %cmp.i.i.not to i32
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %land.lhs.true.if.end49_crit_edge, %if.end26.if.end49_crit_edge
  %ptrace.addr.0 = phi i32 [ 0, %land.lhs.true.if.end49_crit_edge ], [ %ptrace, %if.end26.if.end49_crit_edge ], [ %spec.select, %if.then44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp50 = icmp eq i32 %1, 32
  br i1 %cmp50, label %if.then51, label %if.end49.if.end93_crit_edge

if.end49.if.end93_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then51:                                        ; preds = %if.end49
  %exit_signal.i126 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 59
  %28 = ptrtoint ptr %exit_signal.i126 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %exit_signal.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i127 = icmp sgt i32 %29, -1
  br i1 %cmp.i127, label %land.lhs.true53, label %if.then51.if.then56_crit_edge

if.then51.if.then56_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

land.lhs.true53:                                  ; preds = %if.then51
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 80
  %30 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i128.not = icmp eq ptr %31, %thread_group.i
  br i1 %cmp.i.i128.not, label %land.lhs.true53.if.then56_crit_edge, label %if.end77

land.lhs.true53.if.then56_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then56:                                        ; preds = %land.lhs.true53.if.then56_crit_edge, %if.then51.if.then56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptrace.addr.0)
  %tobool57.not = icmp eq i32 %ptrace.addr.0, 0
  br i1 %tobool57.not, label %lor.lhs.false, label %if.then56.if.then74_crit_edge, !prof !177

if.then56.if.then74_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

lor.lhs.false:                                    ; preds = %if.then56
  %ptrace64 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 4
  %32 = ptrtoint ptr %ptrace64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptrace64, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool65.not = icmp eq i32 %33, 0
  br i1 %tobool65.not, label %lor.lhs.false.if.then74_crit_edge, label %lor.lhs.false.if.end93_crit_edge, !prof !177

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

lor.lhs.false.if.then74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then74:                                        ; preds = %lor.lhs.false.if.then74_crit_edge, %if.then56.if.then74_crit_edge
  %call.i284.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 0, ptr noundef null) #12
  %34 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 99
  %38 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 25
  %40 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %user_ns.i, align 4
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then74.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then74.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then74
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then74.rcu_read_lock.exit.i_crit_edge
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %44 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %real_cred.i, align 4
  %call8.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end14.i_crit_edge

rcu_read_lock.exit.i.do.end14.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end14.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b282.i = load i1, ptr @wait_task_zombie.__warned.50, align 1
  br i1 %.b282.i, label %land.lhs.true11.i.do.end14.i_crit_edge, label %if.then.i

land.lhs.true11.i.do.end14.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

if.then.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @wait_task_zombie.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @.str.1) #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then.i, %land.lhs.true11.i.do.end14.i_crit_edge, %land.lhs.true.i.do.end14.i_crit_edge, %rcu_read_lock.exit.i.do.end14.i_crit_edge
  %uid16.i = getelementptr inbounds %struct.cred, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %uid16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid16.i, align 4
  %call.i285.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i285.i, label %do.end14.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i288.i

do.end14.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i288.i:                             ; preds = %do.end14.i
  %call1.i286.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i286.i)
  %tobool.not.i287.i = icmp eq i32 %call1.i286.i, 0
  br i1 %tobool.not.i287.i, label %land.lhs.true.i288.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i290.i

land.lhs.true.i288.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i288.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i290.i:                            ; preds = %land.lhs.true.i288.i
  %.b4.i289.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i289.i, label %land.lhs.true2.i290.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i291.i

land.lhs.true2.i290.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i290.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i291.i:                                   ; preds = %land.lhs.true2.i290.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i291.i, %land.lhs.true2.i290.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i288.i.rcu_read_unlock.exit.i_crit_edge, %do.end14.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %47 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i292.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i292.i to ptr
  %preempt_count.i.i.i.i293.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i293.i, align 4
  %sub.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i293.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload.i, 0
  %call17.i = tail call i32 @from_kuid_munged(ptr noundef %41, [1 x i32] %.fca.0.insert.i) #12
  %wo_flags.i129 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %51 = ptrtoint ptr %wo_flags.i129 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wo_flags.i129, align 4
  %and.i130 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool18.not.i = icmp eq i32 %and.i130, 0
  br i1 %tobool18.not.i, label %rcu_read_unlock.exit.i.cleanup_crit_edge, label %if.end22.i, !prof !184

rcu_read_unlock.exit.i.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22.i:                                       ; preds = %rcu_read_unlock.exit.i
  %and24.i = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end43.i, label %if.then32.i, !prof !177

if.then32.i:                                      ; preds = %if.end22.i
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %53 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %signal.i, align 16
  %flags.i = getelementptr inbounds %struct.signal_struct, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 8
  %and33.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %group_exit_code.i = getelementptr inbounds %struct.signal_struct, ptr %54, i32 0, i32 8
  %exit_code.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 58
  %cond.in.i = select i1 %tobool34.not.i, ptr %exit_code.i, ptr %group_exit_code.i
  %57 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %cond.i = load i32, ptr %cond.in.i, align 8
  tail call fastcc void @get_task_struct(ptr noundef %p) #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  %58 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i, align 8
  %task_state_change.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 212
  %60 = ptrtoint ptr %task_state_change.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %task_state_change.i, align 4
  %wo_rusage.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 5
  %61 = ptrtoint ptr %wo_rusage.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wo_rusage.i, align 4
  %tobool39.not.i = icmp eq ptr %62, null
  br i1 %tobool39.not.i, label %if.then32.i.if.end42.i_crit_edge, label %if.then40.i

if.then32.i.if.end42.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @getrusage(ptr noundef %p, i32 noundef -2, ptr noundef nonnull %62) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.then32.i.if.end42.i_crit_edge
  tail call fastcc void @put_task_struct(ptr noundef %p) #12
  br label %out_info.i

if.end43.i:                                       ; preds = %if.end22.i
  %real_parent.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 71
  %63 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %real_parent.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 72
  %65 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent.i.i, align 8
  %signal.i.i.i131 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 111
  %67 = ptrtoint ptr %signal.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %signal.i.i.i131, align 16
  %signal1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 111
  %69 = ptrtoint ptr %signal1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %signal1.i.i.i, align 16
  %cmp.i.i.not.i = icmp eq ptr %68, %70
  br i1 %cmp.i.i.not.i, label %if.end43.i.land.end.thread.i_crit_edge, label %land.end.i

if.end43.i.land.end.thread.i_crit_edge:           ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.thread.i

land.end.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %exit_signal.i126 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %exit_signal.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.i132 = icmp sgt i32 %72, -1
  %spec.select322.i = select i1 %cmp.i.i132, i32 48, i32 16
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.end.i, %if.end43.i.land.end.thread.i_crit_edge
  %73 = phi i1 [ false, %if.end43.i.land.end.thread.i_crit_edge ], [ %cmp.i.i132, %land.end.i ]
  %74 = phi i32 [ 16, %if.end43.i.land.end.thread.i_crit_edge ], [ %spec.select322.i, %land.end.i ]
  %call.i283.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %exit_state1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %exit_state1, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %land.end.thread.i
  %75 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %exit_state1, i32 32, i32 %74) #12, !srcloc !231
  %asmresult.i.i = extractvalue { i32, i32 } %75, 0
  %tobool.not.i294.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i294.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %75, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %asmresult1.i.i)
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, 32
  br i1 %cmp.not.i, label %if.end68.i, label %__cmpxchg.exit.i.cleanup_crit_edge

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end68.i:                                       ; preds = %__cmpxchg.exit.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  %76 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task.i, align 8
  %task_state_change71.i = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 212
  %78 = ptrtoint ptr %task_state_change71.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %task_state_change71.i, align 4
  br i1 %73, label %if.end68.i.if.end142.i_crit_edge, label %land.lhs.true73.i

if.end68.i.if.end142.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142.i

land.lhs.true73.i:                                ; preds = %if.end68.i
  %79 = ptrtoint ptr %exit_signal.i126 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %exit_signal.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i296.i = icmp sgt i32 %80, -1
  br i1 %cmp.i296.i, label %if.then75.i, label %land.lhs.true73.i.if.end142.i_crit_edge

land.lhs.true73.i.if.end142.i_crit_edge:          ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142.i

if.then75.i:                                      ; preds = %land.lhs.true73.i
  %signal76.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %81 = ptrtoint ptr %signal76.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %signal76.i, align 16
  %83 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i, align 8
  %signal79.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 111
  %85 = ptrtoint ptr %signal79.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %signal79.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tgutime.i) #12
  %87 = ptrtoint ptr %tgutime.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %tgutime.i, align 8, !annotation !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tgstime.i) #12
  %88 = ptrtoint ptr %tgstime.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 -1, ptr %tgstime.i, align 8, !annotation !197
  call void @thread_group_cputime_adjusted(ptr noundef %p, ptr noundef nonnull %tgutime.i, ptr noundef nonnull %tgstime.i) #12
  %89 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 112
  %91 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sighand.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %92) #12
  %stats_lock.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 27
  %lock.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 27, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %93 = ptrtoint ptr %stats_lock.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %stats_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %94, 1
  store i32 %inc.i.i.i.i.i, ptr %stats_lock.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  %dep_map.i.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 27, i32 0, i32 0, i32 1
  %95 = call ptr @llvm.returnaddress(i32 0) #12
  %96 = ptrtoint ptr %95 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %96) #12
  %97 = ptrtoint ptr %tgutime.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %tgutime.i, align 8
  %cutime.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 30
  %99 = ptrtoint ptr %cutime.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %cutime.i, align 8
  %add.i = add i64 %100, %98
  %cutime82.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 30
  %101 = ptrtoint ptr %cutime82.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %cutime82.i, align 8
  %add83.i = add i64 %add.i, %102
  store i64 %add83.i, ptr %cutime82.i, align 8
  %103 = ptrtoint ptr %tgstime.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %tgstime.i, align 8
  %cstime.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 31
  %105 = ptrtoint ptr %cstime.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %cstime.i, align 8
  %add84.i = add i64 %106, %104
  %cstime85.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 31
  %107 = ptrtoint ptr %cstime85.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %cstime85.i, align 8
  %add86.i = add i64 %add84.i, %108
  store i64 %add86.i, ptr %cstime85.i, align 8
  %gtime.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 88
  %109 = ptrtoint ptr %gtime.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %gtime.i.i, align 8
  %gtime.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 32
  %111 = ptrtoint ptr %gtime.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %gtime.i, align 8
  %add88.i = add i64 %112, %110
  %cgtime.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 33
  %113 = ptrtoint ptr %cgtime.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %cgtime.i, align 8
  %add89.i = add i64 %add88.i, %114
  %cgtime90.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 33
  %115 = ptrtoint ptr %cgtime90.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %cgtime90.i, align 8
  %add91.i = add i64 %add89.i, %116
  store i64 %add91.i, ptr %cgtime90.i, align 8
  %min_flt.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 94
  %117 = ptrtoint ptr %min_flt.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %min_flt.i, align 8
  %min_flt92.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 39
  %119 = ptrtoint ptr %min_flt92.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %min_flt92.i, align 8
  %add93.i = add i32 %120, %118
  %cmin_flt.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 41
  %121 = ptrtoint ptr %cmin_flt.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cmin_flt.i, align 8
  %add94.i = add i32 %add93.i, %122
  %cmin_flt95.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 41
  %123 = ptrtoint ptr %cmin_flt95.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cmin_flt95.i, align 8
  %add96.i = add i32 %add94.i, %124
  store i32 %add96.i, ptr %cmin_flt95.i, align 8
  %maj_flt.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 95
  %125 = ptrtoint ptr %maj_flt.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %maj_flt.i, align 4
  %maj_flt97.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 40
  %127 = ptrtoint ptr %maj_flt97.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %maj_flt97.i, align 4
  %add98.i = add i32 %128, %126
  %cmaj_flt.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 42
  %129 = ptrtoint ptr %cmaj_flt.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cmaj_flt.i, align 4
  %add99.i = add i32 %add98.i, %130
  %cmaj_flt100.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 42
  %131 = ptrtoint ptr %cmaj_flt100.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cmaj_flt100.i, align 4
  %add101.i = add i32 %add99.i, %132
  store i32 %add101.i, ptr %cmaj_flt100.i, align 4
  %nvcsw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 90
  %133 = ptrtoint ptr %nvcsw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nvcsw.i, align 16
  %nvcsw102.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 35
  %135 = ptrtoint ptr %nvcsw102.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nvcsw102.i, align 8
  %add103.i = add i32 %136, %134
  %cnvcsw.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 37
  %137 = ptrtoint ptr %cnvcsw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cnvcsw.i, align 8
  %add104.i = add i32 %add103.i, %138
  %cnvcsw105.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 37
  %139 = ptrtoint ptr %cnvcsw105.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cnvcsw105.i, align 8
  %add106.i = add i32 %add104.i, %140
  store i32 %add106.i, ptr %cnvcsw105.i, align 8
  %nivcsw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 91
  %141 = ptrtoint ptr %nivcsw.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nivcsw.i, align 4
  %nivcsw107.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 36
  %143 = ptrtoint ptr %nivcsw107.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nivcsw107.i, align 4
  %add108.i = add i32 %144, %142
  %cnivcsw.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 38
  %145 = ptrtoint ptr %cnivcsw.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cnivcsw.i, align 4
  %add109.i = add i32 %add108.i, %146
  %cnivcsw110.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 38
  %147 = ptrtoint ptr %cnivcsw110.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cnivcsw110.i, align 4
  %add111.i = add i32 %add109.i, %148
  store i32 %add111.i, ptr %cnivcsw110.i, align 4
  %read_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 4
  %149 = ptrtoint ptr %read_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %read_bytes.i.i, align 8
  %shr.i.i = lshr i64 %150, 9
  %conv.i.i133 = trunc i64 %shr.i.i to i32
  %inblock.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 43
  %151 = ptrtoint ptr %inblock.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %inblock.i, align 8
  %add113.i = add i32 %152, %conv.i.i133
  %cinblock.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 45
  %153 = ptrtoint ptr %cinblock.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cinblock.i, align 8
  %add114.i = add i32 %add113.i, %154
  %cinblock115.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 45
  %155 = ptrtoint ptr %cinblock115.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cinblock115.i, align 8
  %add116.i = add i32 %add114.i, %156
  store i32 %add116.i, ptr %cinblock115.i, align 8
  %write_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 5
  %157 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %write_bytes.i.i, align 8
  %shr.i297.i = lshr i64 %158, 9
  %conv.i298.i = trunc i64 %shr.i297.i to i32
  %oublock.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 44
  %159 = ptrtoint ptr %oublock.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %oublock.i, align 4
  %add118.i = add i32 %160, %conv.i298.i
  %coublock.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 46
  %161 = ptrtoint ptr %coublock.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %coublock.i, align 4
  %add119.i = add i32 %add118.i, %162
  %coublock120.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 46
  %163 = ptrtoint ptr %coublock120.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %coublock120.i, align 4
  %add121.i = add i32 %add119.i, %164
  store i32 %add121.i, ptr %coublock120.i, align 4
  %maxrss122.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 47
  %165 = ptrtoint ptr %maxrss122.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %maxrss122.i, align 8
  %cmaxrss.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 48
  %167 = ptrtoint ptr %cmaxrss.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cmaxrss.i, align 4
  %169 = call i32 @llvm.umax.i32(i32 %166, i32 %168) #12
  %cmaxrss129.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 48
  %170 = ptrtoint ptr %cmaxrss129.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cmaxrss129.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %169)
  %cmp130.i = icmp ult i32 %171, %169
  br i1 %cmp130.i, label %if.then131.i, label %if.then75.i.if.end133.i_crit_edge

if.then75.i.if.end133.i_crit_edge:                ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133.i

if.then131.i:                                     ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %cmaxrss129.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %169, ptr %cmaxrss129.i, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then131.i, %if.then75.i.if.end133.i_crit_edge
  %ioac.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49
  %ioac134.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155
  %173 = ptrtoint ptr %ioac134.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %ioac134.i, align 8
  %175 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %ioac.i, align 8
  %add.i.i.i = add i64 %176, %174
  store i64 %add.i.i.i, ptr %ioac.i, align 8
  %wchar.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 1
  %177 = ptrtoint ptr %wchar.i.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %wchar.i.i.i, align 8
  %wchar2.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49, i32 1
  %179 = ptrtoint ptr %wchar2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %wchar2.i.i.i, align 8
  %add3.i.i.i = add i64 %180, %178
  store i64 %add3.i.i.i, ptr %wchar2.i.i.i, align 8
  %syscr.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 2
  %181 = ptrtoint ptr %syscr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %syscr.i.i.i, align 8
  %syscr4.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49, i32 2
  %183 = ptrtoint ptr %syscr4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %syscr4.i.i.i, align 8
  %add5.i.i.i = add i64 %184, %182
  store i64 %add5.i.i.i, ptr %syscr4.i.i.i, align 8
  %syscw.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 3
  %185 = ptrtoint ptr %syscw.i.i.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %syscw.i.i.i, align 8
  %syscw6.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49, i32 3
  %187 = ptrtoint ptr %syscw6.i.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %syscw6.i.i.i, align 8
  %add7.i.i.i = add i64 %188, %186
  store i64 %add7.i.i.i, ptr %syscw6.i.i.i, align 8
  %189 = ptrtoint ptr %read_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %read_bytes.i.i, align 8
  %read_bytes1.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49, i32 4
  %191 = ptrtoint ptr %read_bytes1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %read_bytes1.i.i.i, align 8
  %add.i3.i.i = add i64 %192, %190
  store i64 %add.i3.i.i, ptr %read_bytes1.i.i.i, align 8
  %193 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %write_bytes.i.i, align 8
  %write_bytes2.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49, i32 5
  %195 = ptrtoint ptr %write_bytes2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %write_bytes2.i.i.i, align 8
  %add3.i4.i.i = add i64 %196, %194
  store i64 %add3.i4.i.i, ptr %write_bytes2.i.i.i, align 8
  %cancelled_write_bytes.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 6
  %197 = ptrtoint ptr %cancelled_write_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %cancelled_write_bytes.i.i.i, align 8
  %cancelled_write_bytes4.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %86, i32 0, i32 49, i32 6
  %199 = ptrtoint ptr %cancelled_write_bytes4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %cancelled_write_bytes4.i.i.i, align 8
  %add5.i5.i.i = add i64 %200, %198
  store i64 %add5.i5.i.i, ptr %cancelled_write_bytes4.i.i.i, align 8
  %ioac136.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49
  %201 = ptrtoint ptr %ioac136.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %ioac136.i, align 8
  %add.i.i299.i = add i64 %202, %add.i.i.i
  store i64 %add.i.i299.i, ptr %ioac.i, align 8
  %wchar.i.i300.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49, i32 1
  %203 = ptrtoint ptr %wchar.i.i300.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %wchar.i.i300.i, align 8
  %add3.i.i302.i = add i64 %204, %add3.i.i.i
  store i64 %add3.i.i302.i, ptr %wchar2.i.i.i, align 8
  %syscr.i.i303.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49, i32 2
  %205 = ptrtoint ptr %syscr.i.i303.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %syscr.i.i303.i, align 8
  %add5.i.i305.i = add i64 %206, %add5.i.i.i
  store i64 %add5.i.i305.i, ptr %syscr4.i.i.i, align 8
  %syscw.i.i306.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49, i32 3
  %207 = ptrtoint ptr %syscw.i.i306.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %syscw.i.i306.i, align 8
  %add7.i.i308.i = add i64 %208, %add7.i.i.i
  store i64 %add7.i.i308.i, ptr %syscw6.i.i.i, align 8
  %read_bytes.i.i309.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49, i32 4
  %209 = ptrtoint ptr %read_bytes.i.i309.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %read_bytes.i.i309.i, align 8
  %add.i3.i311.i = add i64 %210, %add.i3.i.i
  store i64 %add.i3.i311.i, ptr %read_bytes1.i.i.i, align 8
  %write_bytes.i.i312.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49, i32 5
  %211 = ptrtoint ptr %write_bytes.i.i312.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %write_bytes.i.i312.i, align 8
  %add3.i4.i314.i = add i64 %212, %add3.i4.i.i
  store i64 %add3.i4.i314.i, ptr %write_bytes2.i.i.i, align 8
  %cancelled_write_bytes.i.i315.i = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 49, i32 6
  %213 = ptrtoint ptr %cancelled_write_bytes.i.i315.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %cancelled_write_bytes.i.i315.i, align 8
  %add5.i5.i317.i = add i64 %214, %add5.i5.i.i
  store i64 %add5.i5.i317.i, ptr %cancelled_write_bytes4.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %96) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  %215 = ptrtoint ptr %stats_lock.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %stats_lock.i, align 4
  %inc.i.i.i.i = add i32 %216, 1
  store i32 %inc.i.i.i.i, ptr %stats_lock.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  %217 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %task.i, align 8
  %sighand140.i = getelementptr inbounds %struct.task_struct, ptr %218, i32 0, i32 112
  %219 = ptrtoint ptr %sighand140.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %sighand140.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %220) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tgstime.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tgutime.i) #12
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.end133.i, %land.lhs.true73.i.if.end142.i_crit_edge, %if.end68.i.if.end142.i_crit_edge
  %wo_rusage143.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 5
  %221 = ptrtoint ptr %wo_rusage143.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %wo_rusage143.i, align 4
  %tobool144.not.i = icmp eq ptr %222, null
  br i1 %tobool144.not.i, label %if.end142.i.if.end147.i_crit_edge, label %if.then145.i

if.end142.i.if.end147.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.i

if.then145.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @getrusage(ptr noundef %p, i32 noundef -2, ptr noundef nonnull %222) #12
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then145.i, %if.end142.i.if.end147.i_crit_edge
  %signal148.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %223 = ptrtoint ptr %signal148.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %signal148.i, align 16
  %flags149.i = getelementptr inbounds %struct.signal_struct, ptr %224, i32 0, i32 12
  %225 = ptrtoint ptr %flags149.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %flags149.i, align 8
  %and150.i = and i32 %226, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  %group_exit_code154.i = getelementptr inbounds %struct.signal_struct, ptr %224, i32 0, i32 8
  %exit_code156.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 58
  %cond158.in.i = select i1 %tobool151.not.i, ptr %exit_code156.i, ptr %group_exit_code154.i
  %227 = ptrtoint ptr %cond158.in.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %cond158.i = load i32, ptr %cond158.in.i, align 8
  %wo_stat.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 4
  %228 = ptrtoint ptr %wo_stat.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %cond158.i, ptr %wo_stat.i, align 4
  br i1 %73, label %if.then160.i, label %if.end147.i.if.end165.i_crit_edge

if.end147.i.if.end165.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165.i

if.then160.i:                                     ; preds = %if.end147.i
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #12
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 4
  %229 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %ptrace.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i319.i = icmp eq i32 %230, 0
  br i1 %tobool.not.i319.i, label %if.then160.i.ptrace_unlink.exit.i_crit_edge, label %if.then.i320.i, !prof !177

if.then160.i.ptrace_unlink.exit.i_crit_edge:      ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptrace_unlink.exit.i

if.then.i320.i:                                   ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__ptrace_unlink(ptr noundef %p) #12
  br label %ptrace_unlink.exit.i

ptrace_unlink.exit.i:                             ; preds = %if.then.i320.i, %if.then160.i.ptrace_unlink.exit.i_crit_edge
  %231 = ptrtoint ptr %exit_signal.i126 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %exit_signal.i126, align 4
  %call161.i = call zeroext i1 @do_notify_parent(ptr noundef %p, i32 noundef %232) #12
  %spec.select.i = select i1 %call161.i, i32 16, i32 32
  %233 = ptrtoint ptr %exit_state1 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %spec.select.i, ptr %exit_state1, align 4
  call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #12
  br label %if.end165.i

if.end165.i:                                      ; preds = %ptrace_unlink.exit.i, %if.end147.i.if.end165.i_crit_edge
  %state.1.i = phi i32 [ %spec.select.i, %ptrace_unlink.exit.i ], [ %74, %if.end147.i.if.end165.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %state.1.i)
  %cmp166.i = icmp eq i32 %state.1.i, 16
  br i1 %cmp166.i, label %if.then167.i, label %if.end165.i.out_info.i_crit_edge

if.end165.i.out_info.i_crit_edge:                 ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_info.i

if.then167.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @release_task(ptr noundef %p) #12
  br label %out_info.i

out_info.i:                                       ; preds = %if.then167.i, %if.end165.i.out_info.i_crit_edge, %if.end42.i
  %status.0.i = phi i32 [ %cond.i, %if.end42.i ], [ %cond158.i, %if.then167.i ], [ %cond158.i, %if.end165.i.out_info.i_crit_edge ]
  %wo_info.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 3
  %234 = ptrtoint ptr %wo_info.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wo_info.i, align 4
  %tobool169.not.i = icmp eq ptr %235, null
  br i1 %tobool169.not.i, label %out_info.i.cleanup_crit_edge, label %if.then170.i

out_info.i.cleanup_crit_edge:                     ; preds = %out_info.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then170.i:                                     ; preds = %out_info.i
  call void @__sanitizer_cov_trace_pc() #14
  %and171.i = and i32 %status.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %cmp172.i = icmp eq i32 %and171.i, 0
  %shr.i = ashr i32 %status.0.i, 8
  %and175.i = and i32 %status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  %cond177.i = select i1 %tobool176.not.i, i32 2, i32 3
  %cond177.sink.i = select i1 %cmp172.i, i32 1, i32 %cond177.i
  %and171.sink.i = select i1 %cmp172.i, i32 %shr.i, i32 %and171.i
  %236 = getelementptr inbounds %struct.waitid_info, ptr %235, i32 0, i32 3
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %cond177.sink.i, ptr %236, align 4
  %238 = getelementptr inbounds %struct.waitid_info, ptr %235, i32 0, i32 2
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %and171.sink.i, ptr %238, align 4
  %240 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %call.i284.i, ptr %235, align 4
  %uid183.i = getelementptr inbounds %struct.waitid_info, ptr %235, i32 0, i32 1
  %241 = ptrtoint ptr %uid183.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %call17.i, ptr %uid183.i, align 4
  br label %cleanup

if.end77:                                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptrace.addr.0)
  %tobool78.not = icmp eq i32 %ptrace.addr.0, 0
  br i1 %tobool78.not, label %if.end77.if.end93_crit_edge, label %lor.lhs.false87, !prof !177

if.end77.if.end93_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

lor.lhs.false87:                                  ; preds = %if.end77
  %wo_flags = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %242 = ptrtoint ptr %wo_flags to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %wo_flags, align 4
  %and = and i32 %243, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  br i1 %tobool88.not, label %lor.lhs.false87.do.end.i.i_crit_edge, label %lor.lhs.false87.if.end93_crit_edge

lor.lhs.false87.if.end93_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

lor.lhs.false87.do.end.i.i_crit_edge:             ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.end93:                                         ; preds = %lor.lhs.false87.if.end93_crit_edge, %if.end77.if.end93_crit_edge, %lor.lhs.false.if.end93_crit_edge, %if.end49.if.end93_crit_edge
  %notask_error90 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 7
  %244 = ptrtoint ptr %notask_error90 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %notask_error90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptrace.addr.0)
  %tobool.not.i136 = icmp eq i32 %ptrace.addr.0, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i139, label %if.end93.do.end.i.i_crit_edge

if.end93.do.end.i.i_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true.i139:                               ; preds = %if.end93
  %wo_flags.i137 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %245 = ptrtoint ptr %wo_flags.i137 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %wo_flags.i137, align 4
  %and.i138 = and i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool1.not.i = icmp eq i32 %and.i138, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i139.if.end97_crit_edge, label %if.else.i.i

land.lhs.true.i139.if.end97_crit_edge:            ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end.i.i:                                       ; preds = %if.end93.do.end.i.i_crit_edge, %lor.lhs.false87.do.end.i.i_crit_edge
  %247 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %p, align 128
  %and.i.i140 = and i32 %248, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %cmp.not.i.i = icmp eq i32 %and.i.i140, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.if.end97_crit_edge, label %land.lhs.true.i117.i

do.end.i.i.if.end97_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

land.lhs.true.i117.i:                             ; preds = %do.end.i.i
  %jobctl.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 61
  %249 = ptrtoint ptr %jobctl.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %jobctl.i.i, align 4
  %and1.i.i = and i32 %250, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i.not = icmp eq i32 %and1.i.i, 0
  %exit_code.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 58
  br i1 %tobool2.not.i.i.not, label %do.end.i120.i, label %land.lhs.true.i117.i.if.end97_crit_edge

land.lhs.true.i117.i.if.end97_crit_edge:          ; preds = %land.lhs.true.i117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.else.i.i:                                      ; preds = %land.lhs.true.i139
  %signal.i.i141 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %251 = ptrtoint ptr %signal.i.i141 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %signal.i.i141, align 16
  %flags.i.i = getelementptr inbounds %struct.signal_struct, ptr %252, i32 0, i32 12
  %253 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %flags.i.i, align 8
  %and4.i.i = and i32 %254, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.else.i.i.if.end97_crit_edge, label %if.else.i133.i

if.else.i.i.if.end97_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end.i120.i:                                    ; preds = %land.lhs.true.i117.i
  %sighand.i142 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %255 = ptrtoint ptr %sighand.i142 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %sighand.i142, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %256) #12
  %257 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %p, align 128
  %and.i118.i = and i32 %258, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.i)
  %cmp.not.i119.i = icmp eq i32 %and.i118.i, 0
  br i1 %cmp.not.i119.i, label %do.end.i120.i.unlock_sig.thread.i_crit_edge, label %land.lhs.true.i126.i

do.end.i120.i.unlock_sig.thread.i_crit_edge:      ; preds = %do.end.i120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_sig.thread.i

land.lhs.true.i126.i:                             ; preds = %do.end.i120.i
  %259 = ptrtoint ptr %jobctl.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %jobctl.i.i, align 4
  %and1.i122.i = and i32 %260, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i122.i)
  %tobool2.not.i123.i = icmp eq i32 %and1.i122.i, 0
  br i1 %tobool2.not.i123.i, label %land.lhs.true.i126.i.if.end13.i_crit_edge, label %land.lhs.true.i126.i.unlock_sig.thread.i_crit_edge

land.lhs.true.i126.i.unlock_sig.thread.i_crit_edge: ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_sig.thread.i

land.lhs.true.i126.i.if.end13.i_crit_edge:        ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.else.i133.i:                                   ; preds = %if.else.i.i
  %sighand159.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %261 = ptrtoint ptr %sighand159.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %sighand159.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %262) #12
  %263 = ptrtoint ptr %signal.i.i141 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %signal.i.i141, align 16
  %flags.i128.i = getelementptr inbounds %struct.signal_struct, ptr %264, i32 0, i32 12
  %265 = ptrtoint ptr %flags.i128.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %flags.i128.i, align 8
  %and4.i129.i = and i32 %266, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i129.i)
  %tobool5.not.i130.i = icmp eq i32 %and4.i129.i, 0
  %group_exit_code.i131.i = getelementptr inbounds %struct.signal_struct, ptr %264, i32 0, i32 8
  br i1 %tobool5.not.i130.i, label %if.else.i133.i.unlock_sig.thread.i_crit_edge, label %if.else.i133.i.if.end13.i_crit_edge, !prof !233

if.else.i133.i.if.end13.i_crit_edge:              ; preds = %if.else.i133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.else.i133.i.unlock_sig.thread.i_crit_edge:     ; preds = %if.else.i133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_sig.thread.i

if.end13.i:                                       ; preds = %if.else.i133.i.if.end13.i_crit_edge, %land.lhs.true.i126.i.if.end13.i_crit_edge
  %tobool.not.i136206 = phi i32 [ 4, %land.lhs.true.i126.i.if.end13.i_crit_edge ], [ 5, %if.else.i133.i.if.end13.i_crit_edge ]
  %retval.0.i134177.i = phi ptr [ %exit_code.i.i, %land.lhs.true.i126.i.if.end13.i_crit_edge ], [ %group_exit_code.i131.i, %if.else.i133.i.if.end13.i_crit_edge ]
  %sighand160176.i = phi ptr [ %sighand.i142, %land.lhs.true.i126.i.if.end13.i_crit_edge ], [ %sighand159.i, %if.else.i133.i.if.end13.i_crit_edge ]
  %267 = ptrtoint ptr %retval.0.i134177.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %retval.0.i134177.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool14.not.i = icmp eq i32 %268, 0
  br i1 %tobool14.not.i, label %if.end13.i.unlock_sig.thread.i_crit_edge, label %if.end16.i

if.end13.i.unlock_sig.thread.i_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_sig.thread.i

if.end16.i:                                       ; preds = %if.end13.i
  %wo_flags17.i = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %269 = ptrtoint ptr %wo_flags17.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %wo_flags17.i, align 4
  %and18.i = and i32 %270, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then26.i, label %if.end16.i.do.end.i_crit_edge, !prof !177

if.end16.i.do.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then26.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %271 = ptrtoint ptr %retval.0.i134177.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %retval.0.i134177.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then26.i, %if.end16.i.do.end.i_crit_edge
  %272 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i136.i = and i32 %272, -16384
  %273 = inttoptr i32 %and.i136.i to ptr
  %task.i143 = getelementptr inbounds %struct.thread_info, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %task.i143 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %task.i143, align 8
  %cred.i144 = getelementptr inbounds %struct.task_struct, ptr %275, i32 0, i32 99
  %276 = ptrtoint ptr %cred.i144 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cred.i144, align 16
  %user_ns.i145 = getelementptr inbounds %struct.cred, ptr %277, i32 0, i32 25
  %278 = ptrtoint ptr %user_ns.i145 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %user_ns.i145, align 4
  %preempt_count.i.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %273, i32 0, i32 1
  %280 = ptrtoint ptr %preempt_count.i.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load volatile i32, ptr %preempt_count.i.i.i.i.i146, align 4
  %add.i.i.i.i147 = add i32 %281, 1
  store volatile i32 %add.i.i.i.i147, ptr %preempt_count.i.i.i.i.i146, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i148 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i148, label %do.end.i.rcu_read_lock.exit.i156_crit_edge, label %land.lhs.true.i.i151

do.end.i.rcu_read_lock.exit.i156_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i156

land.lhs.true.i.i151:                             ; preds = %do.end.i
  %call1.i.i149 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i149)
  %tobool.not.i.i150 = icmp eq i32 %call1.i.i149, 0
  br i1 %tobool.not.i.i150, label %land.lhs.true.i.i151.rcu_read_lock.exit.i156_crit_edge, label %land.lhs.true2.i.i153

land.lhs.true.i.i151.rcu_read_lock.exit.i156_crit_edge: ; preds = %land.lhs.true.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i156

land.lhs.true2.i.i153:                            ; preds = %land.lhs.true.i.i151
  %.b4.i.i152 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i152, label %land.lhs.true2.i.i153.rcu_read_lock.exit.i156_crit_edge, label %if.then.i.i154

land.lhs.true2.i.i153.rcu_read_lock.exit.i156_crit_edge: ; preds = %land.lhs.true2.i.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i156

if.then.i.i154:                                   ; preds = %land.lhs.true2.i.i153
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit.i156

rcu_read_lock.exit.i156:                          ; preds = %if.then.i.i154, %land.lhs.true2.i.i153.rcu_read_lock.exit.i156_crit_edge, %land.lhs.true.i.i151.rcu_read_lock.exit.i156_crit_edge, %do.end.i.rcu_read_lock.exit.i156_crit_edge
  %real_cred.i155 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %282 = ptrtoint ptr %real_cred.i155 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile ptr, ptr %real_cred.i155, align 4
  %call35.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true37.i, label %rcu_read_lock.exit.i156.do.end45.i_crit_edge

rcu_read_lock.exit.i156.do.end45.i_crit_edge:     ; preds = %rcu_read_lock.exit.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i

land.lhs.true37.i:                                ; preds = %rcu_read_lock.exit.i156
  %call38.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i157 = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i157, label %land.lhs.true37.i.do.end45.i_crit_edge, label %land.lhs.true40.i

land.lhs.true37.i.do.end45.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i

land.lhs.true40.i:                                ; preds = %land.lhs.true37.i
  %.b116.i = load i1, ptr @wait_task_stopped.__warned.51, align 1
  br i1 %.b116.i, label %land.lhs.true40.i.do.end45.i_crit_edge, label %if.then42.i

land.lhs.true40.i.do.end45.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i

if.then42.i:                                      ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @wait_task_stopped.__warned.51, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1201, ptr noundef nonnull @.str.1) #12
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then42.i, %land.lhs.true40.i.do.end45.i_crit_edge, %land.lhs.true37.i.do.end45.i_crit_edge, %rcu_read_lock.exit.i156.do.end45.i_crit_edge
  %uid47.i = getelementptr inbounds %struct.cred, ptr %283, i32 0, i32 4
  %284 = ptrtoint ptr %uid47.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %___val.sroa.0.0.copyload.i158 = load i32, ptr %uid47.i, align 4
  %call.i137.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i137.i, label %do.end45.i.if.end53.i_crit_edge, label %land.lhs.true.i140.i

do.end45.i.if.end53.i_crit_edge:                  ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

land.lhs.true.i140.i:                             ; preds = %do.end45.i
  %call1.i138.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i138.i)
  %tobool.not.i139.i = icmp eq i32 %call1.i138.i, 0
  br i1 %tobool.not.i139.i, label %land.lhs.true.i140.i.if.end53.i_crit_edge, label %land.lhs.true2.i142.i

land.lhs.true.i140.i.if.end53.i_crit_edge:        ; preds = %land.lhs.true.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

land.lhs.true2.i142.i:                            ; preds = %land.lhs.true.i140.i
  %.b4.i141.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i141.i, label %land.lhs.true2.i142.i.if.end53.i_crit_edge, label %if.then.i143.i

land.lhs.true2.i142.i.if.end53.i_crit_edge:       ; preds = %land.lhs.true2.i142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then.i143.i:                                   ; preds = %land.lhs.true2.i142.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #12
  br label %if.end53.i

unlock_sig.thread.i:                              ; preds = %if.end13.i.unlock_sig.thread.i_crit_edge, %if.else.i133.i.unlock_sig.thread.i_crit_edge, %land.lhs.true.i126.i.unlock_sig.thread.i_crit_edge, %do.end.i120.i.unlock_sig.thread.i_crit_edge
  %sighand160167.ph.i = phi ptr [ %sighand160176.i, %if.end13.i.unlock_sig.thread.i_crit_edge ], [ %sighand.i142, %land.lhs.true.i126.i.unlock_sig.thread.i_crit_edge ], [ %sighand.i142, %do.end.i120.i.unlock_sig.thread.i_crit_edge ], [ %sighand159.i, %if.else.i133.i.unlock_sig.thread.i_crit_edge ]
  %285 = ptrtoint ptr %sighand160167.ph.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sighand160167.ph.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %286) #12
  br label %if.end97

if.end53.i:                                       ; preds = %if.then.i143.i, %land.lhs.true2.i142.i.if.end53.i_crit_edge, %land.lhs.true.i140.i.if.end53.i_crit_edge, %do.end45.i.if.end53.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %287 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i.i.i.i144.i = and i32 %287, -16384
  %288 = inttoptr i32 %and.i.i.i.i.i144.i to ptr
  %preempt_count.i.i.i.i145.i = getelementptr inbounds %struct.thread_info, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %preempt_count.i.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load volatile i32, ptr %preempt_count.i.i.i.i145.i, align 4
  %sub.i.i.i.i159 = add i32 %290, -1
  store volatile i32 %sub.i.i.i.i159, ptr %preempt_count.i.i.i.i145.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %.fca.0.insert.i160 = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload.i158, 0
  %call48.i = tail call i32 @from_kuid_munged(ptr noundef %279, [1 x i32] %.fca.0.insert.i160) #12
  %291 = ptrtoint ptr %sighand160176.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %sighand160176.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %292) #12
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #12
  %293 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %293, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end53.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !184

if.end53.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end53.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %294 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %294)
  %.not.i.i.i.i.i = icmp sgt i32 %294, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !177

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end53.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end53.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  %call.i147.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 0, ptr noundef null) #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  %295 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i148.i = and i32 %295, -16384
  %296 = inttoptr i32 %and.i148.i to ptr
  %task58.i = getelementptr inbounds %struct.thread_info, ptr %296, i32 0, i32 2
  %297 = ptrtoint ptr %task58.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %task58.i, align 8
  %task_state_change.i162 = getelementptr inbounds %struct.task_struct, ptr %298, i32 0, i32 212
  %299 = ptrtoint ptr %task_state_change.i162 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %task_state_change.i162, align 4
  %wo_rusage.i163 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 5
  %300 = ptrtoint ptr %wo_rusage.i163 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %wo_rusage.i163, align 4
  %tobool59.not.i = icmp eq ptr %301, null
  br i1 %tobool59.not.i, label %get_task_struct.exit.i.if.end62.i_crit_edge, label %if.then60.i

get_task_struct.exit.i.if.end62.i_crit_edge:      ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then60.i:                                      ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @getrusage(ptr noundef %p, i32 noundef -2, ptr noundef nonnull %301) #12
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then60.i, %get_task_struct.exit.i.if.end62.i_crit_edge
  %call.i.i.i.i.i.i150.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #12
  %302 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #12, !srcloc !176
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %302, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i152.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i151.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i151.i, label %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !177

if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #12
  br label %put_task_struct.exit.i

if.then.i152.i:                                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void @__put_task_struct(ptr noundef %p) #12
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %if.then.i152.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge
  %303 = ptrtoint ptr %wo_flags17.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %wo_flags17.i, align 4
  %and64.i = and i32 %304, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.then74.i, label %put_task_struct.exit.i.if.end75.i_crit_edge, !prof !177

put_task_struct.exit.i.if.end75.i_crit_edge:      ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then74.i:                                      ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl i32 %268, 8
  %or.i = or i32 %shl.i, 127
  %wo_stat.i164 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 4
  %305 = ptrtoint ptr %wo_stat.i164 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %or.i, ptr %wo_stat.i164, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %put_task_struct.exit.i.if.end75.i_crit_edge
  %wo_info.i165 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 3
  %306 = ptrtoint ptr %wo_info.i165 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %wo_info.i165, align 4
  %tobool76.not.i = icmp eq ptr %307, null
  br i1 %tobool76.not.i, label %if.end75.i.wait_task_stopped.exit_crit_edge, label %if.then77.i

if.end75.i.wait_task_stopped.exit_crit_edge:      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_task_stopped.exit

if.then77.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  %cause.i = getelementptr inbounds %struct.waitid_info, ptr %307, i32 0, i32 3
  %308 = ptrtoint ptr %cause.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %tobool.not.i136206, ptr %cause.i, align 4
  %status.i = getelementptr inbounds %struct.waitid_info, ptr %307, i32 0, i32 2
  %309 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %268, ptr %status.i, align 4
  %310 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %call.i147.i, ptr %307, align 4
  %uid79.i = getelementptr inbounds %struct.waitid_info, ptr %307, i32 0, i32 1
  %311 = ptrtoint ptr %uid79.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %call48.i, ptr %uid79.i, align 4
  br label %wait_task_stopped.exit

wait_task_stopped.exit:                           ; preds = %if.then77.i, %if.end75.i.wait_task_stopped.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %tobool95.not = icmp eq i32 %call.i147.i, 0
  br i1 %tobool95.not, label %wait_task_stopped.exit.if.end97_crit_edge, label %wait_task_stopped.exit.cleanup_crit_edge

wait_task_stopped.exit.cleanup_crit_edge:         ; preds = %wait_task_stopped.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

wait_task_stopped.exit.if.end97_crit_edge:        ; preds = %wait_task_stopped.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.end97:                                         ; preds = %wait_task_stopped.exit.if.end97_crit_edge, %unlock_sig.thread.i, %if.else.i.i.if.end97_crit_edge, %land.lhs.true.i117.i.if.end97_crit_edge, %do.end.i.i.if.end97_crit_edge, %land.lhs.true.i139.if.end97_crit_edge
  %wo_flags.i167 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 1
  %312 = ptrtoint ptr %wo_flags.i167 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %wo_flags.i167, align 4
  %and.i168 = and i32 %313, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  br i1 %tobool.not.i169, label %if.end97.cleanup_crit_edge, label %if.end.i, !prof !177

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end97
  %signal.i170 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %314 = ptrtoint ptr %signal.i170 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %signal.i170, align 16
  %flags.i171 = getelementptr inbounds %struct.signal_struct, ptr %315, i32 0, i32 12
  %316 = ptrtoint ptr %flags.i171 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %flags.i171, align 8
  %and3.i = and i32 %317, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %sighand.i172 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %318 = ptrtoint ptr %sighand.i172 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %sighand.i172, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %319) #12
  %320 = ptrtoint ptr %signal.i170 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %signal.i170, align 16
  %flags8.i = getelementptr inbounds %struct.signal_struct, ptr %321, i32 0, i32 12
  %322 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %flags8.i, align 8
  %and9.i = and i32 %323, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i173 = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i173, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %324 = ptrtoint ptr %sighand.i172 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %sighand.i172, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %325) #12
  br label %cleanup

if.end14.i:                                       ; preds = %if.end6.i
  %326 = ptrtoint ptr %wo_flags.i167 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %wo_flags.i167, align 4
  %and16.i = and i32 %327, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then24.i, label %if.end14.i.do.end.i181_crit_edge, !prof !177

if.end14.i.do.end.i181_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i181

if.then24.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %and27.i = and i32 %323, -3
  %328 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %and27.i, ptr %flags8.i, align 8
  br label %do.end.i181

do.end.i181:                                      ; preds = %if.then24.i, %if.end14.i.do.end.i181_crit_edge
  %329 = tail call i32 @llvm.read_register.i32(metadata !165) #12
  %and.i.i174 = and i32 %329, -16384
  %330 = inttoptr i32 %and.i.i174 to ptr
  %task.i175 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %task.i175 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %task.i175, align 8
  %cred.i176 = getelementptr inbounds %struct.task_struct, ptr %332, i32 0, i32 99
  %333 = ptrtoint ptr %cred.i176 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cred.i176, align 16
  %user_ns.i177 = getelementptr inbounds %struct.cred, ptr %334, i32 0, i32 25
  %335 = ptrtoint ptr %user_ns.i177 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %user_ns.i177, align 4
  %preempt_count.i.i.i.i.i178 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 1
  %337 = ptrtoint ptr %preempt_count.i.i.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load volatile i32, ptr %preempt_count.i.i.i.i.i178, align 4
  %add.i.i.i.i179 = add i32 %338, 1
  store volatile i32 %add.i.i.i.i179, ptr %preempt_count.i.i.i.i.i178, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i180 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i180, label %do.end.i181.rcu_read_lock.exit.i191_crit_edge, label %land.lhs.true.i.i184

do.end.i181.rcu_read_lock.exit.i191_crit_edge:    ; preds = %do.end.i181
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i191

land.lhs.true.i.i184:                             ; preds = %do.end.i181
  %call1.i.i182 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i182)
  %tobool.not.i.i183 = icmp eq i32 %call1.i.i182, 0
  br i1 %tobool.not.i.i183, label %land.lhs.true.i.i184.rcu_read_lock.exit.i191_crit_edge, label %land.lhs.true2.i.i186

land.lhs.true.i.i184.rcu_read_lock.exit.i191_crit_edge: ; preds = %land.lhs.true.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i191

land.lhs.true2.i.i186:                            ; preds = %land.lhs.true.i.i184
  %.b4.i.i185 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i185, label %land.lhs.true2.i.i186.rcu_read_lock.exit.i191_crit_edge, label %if.then.i.i187

land.lhs.true2.i.i186.rcu_read_lock.exit.i191_crit_edge: ; preds = %land.lhs.true2.i.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i191

if.then.i.i187:                                   ; preds = %land.lhs.true2.i.i186
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_lock.exit.i191

rcu_read_lock.exit.i191:                          ; preds = %if.then.i.i187, %land.lhs.true2.i.i186.rcu_read_lock.exit.i191_crit_edge, %land.lhs.true.i.i184.rcu_read_lock.exit.i191_crit_edge, %do.end.i181.rcu_read_lock.exit.i191_crit_edge
  %real_cred.i188 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %339 = ptrtoint ptr %real_cred.i188 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load volatile ptr, ptr %real_cred.i188, align 4
  %call35.i189 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i189)
  %tobool36.not.i190 = icmp eq i32 %call35.i189, 0
  br i1 %tobool36.not.i190, label %land.lhs.true.i192, label %rcu_read_lock.exit.i191.do.end44.i_crit_edge

rcu_read_lock.exit.i191.do.end44.i_crit_edge:     ; preds = %rcu_read_lock.exit.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

land.lhs.true.i192:                               ; preds = %rcu_read_lock.exit.i191
  %call37.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true.i192.do.end44.i_crit_edge, label %land.lhs.true39.i

land.lhs.true.i192.do.end44.i_crit_edge:          ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

land.lhs.true39.i:                                ; preds = %land.lhs.true.i192
  %.b87.i = load i1, ptr @wait_task_continued.__warned.52, align 1
  br i1 %.b87.i, label %land.lhs.true39.i.do.end44.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @wait_task_continued.__warned.52, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1262, ptr noundef nonnull @.str.1) #12
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true39.i.do.end44.i_crit_edge, %land.lhs.true.i192.do.end44.i_crit_edge, %rcu_read_lock.exit.i191.do.end44.i_crit_edge
  %uid46.i = getelementptr inbounds %struct.cred, ptr %340, i32 0, i32 4
  %341 = ptrtoint ptr %uid46.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %___val.sroa.0.0.copyload.i193 = load i32, ptr %uid46.i, align 4
  tail call fastcc void @rcu_read_unlock() #12
  %.fca.0.insert.i194 = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload.i193, 0
  %call47.i = tail call i32 @from_kuid_munged(ptr noundef %336, [1 x i32] %.fca.0.insert.i194) #12
  %342 = ptrtoint ptr %sighand.i172 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %sighand.i172, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %343) #12
  %call.i88.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 0, ptr noundef null) #12
  tail call fastcc void @get_task_struct(ptr noundef %p) #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #12
  %344 = ptrtoint ptr %task.i175 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %task.i175, align 8
  %task_state_change.i195 = getelementptr inbounds %struct.task_struct, ptr %345, i32 0, i32 212
  %346 = ptrtoint ptr %task_state_change.i195 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %task_state_change.i195, align 4
  %wo_rusage.i196 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 5
  %347 = ptrtoint ptr %wo_rusage.i196 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %wo_rusage.i196, align 4
  %tobool54.not.i = icmp eq ptr %348, null
  br i1 %tobool54.not.i, label %do.end44.i.if.end57.i_crit_edge, label %if.then55.i

do.end44.i.if.end57.i_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then55.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @getrusage(ptr noundef %p, i32 noundef -2, ptr noundef nonnull %348) #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %do.end44.i.if.end57.i_crit_edge
  tail call fastcc void @put_task_struct(ptr noundef %p) #12
  %wo_info.i197 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 3
  %349 = ptrtoint ptr %wo_info.i197 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %wo_info.i197, align 4
  %tobool58.not.i = icmp eq ptr %350, null
  br i1 %tobool58.not.i, label %if.then59.i, label %if.else.i

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %wo_stat.i198 = getelementptr inbounds %struct.wait_opts, ptr %wo, i32 0, i32 4
  %351 = ptrtoint ptr %wo_stat.i198 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 65535, ptr %wo_stat.i198, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %cause.i199 = getelementptr inbounds %struct.waitid_info, ptr %350, i32 0, i32 3
  %352 = ptrtoint ptr %cause.i199 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 6, ptr %cause.i199, align 4
  %353 = ptrtoint ptr %350 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %call.i88.i, ptr %350, align 4
  %uid61.i = getelementptr inbounds %struct.waitid_info, ptr %350, i32 0, i32 1
  %354 = ptrtoint ptr %uid61.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %call47.i, ptr %uid61.i, align 4
  %status.i200 = getelementptr inbounds %struct.waitid_info, ptr %350, i32 0, i32 2
  %355 = ptrtoint ptr %status.i200 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 18, ptr %status.i200, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then59.i, %if.then11.i, %if.end.i.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %wait_task_stopped.exit.cleanup_crit_edge, %if.then170.i, %out_info.i.cleanup_crit_edge, %__cmpxchg.exit.i.cleanup_crit_edge, %rcu_read_unlock.exit.i.cleanup_crit_edge, %if.then24, %if.then14.cleanup_crit_edge, %eligible_child.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %eligible_child.exit.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.then14.cleanup_crit_edge ], [ %call.i147.i, %wait_task_stopped.exit.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit.i.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i.cleanup_crit_edge ], [ %call.i284.i, %if.then170.i ], [ %call.i284.i, %out_info.i.cleanup_crit_edge ], [ 0, %if.then11.i ], [ 0, %if.end97.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i88.i, %if.else.i ], [ %call.i88.i, %if.then59.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @getrusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !112, !114, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !140, !142, !144, !146, !148, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164}
!llvm.named.register.sp = !{!165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/exit.c", i32 192, i32 21}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../kernel/exit.c", i32 253, i32 9}
!6 = !{ptr @__ksymtab_rcuwait_wake_up, !7, !"__ksymtab_rcuwait_wake_up", i1 false, i1 false}
!7 = !{!"../kernel/exit.c", i32 260, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../kernel/exit.c", i32 431, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/exit.c", i32 775, i32 10}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/exit.c", i32 852, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/exit.c", i32 874, i32 9}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/exit.c", i32 876, i32 9}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/exit.c", i32 879, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @make_task_dead._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @make_task_dead._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/exit.c", i32 890, i32 3}
!26 = !{ptr @make_task_dead._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @make_task_dead._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/exit.c", i32 900, i32 1}
!30 = !{ptr @event_enter__exit, !29, !"event_enter__exit", i1 false, i1 false}
!31 = !{ptr @__event_enter__exit, !29, !"__event_enter__exit", i1 false, i1 false}
!32 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @event_exit__exit, !29, !"event_exit__exit", i1 false, i1 false}
!34 = !{ptr @__event_exit__exit, !29, !"__event_exit__exit", i1 false, i1 false}
!35 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__syscall_meta__exit, !29, !"__syscall_meta__exit", i1 false, i1 false}
!37 = !{ptr @__p_syscall_meta__exit, !29, !"__p_syscall_meta__exit", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/exit.c", i32 944, i32 1}
!40 = !{ptr @event_enter__exit_group, !39, !"event_enter__exit_group", i1 false, i1 false}
!41 = !{ptr @__event_enter__exit_group, !39, !"__event_enter__exit_group", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @event_exit__exit_group, !39, !"event_exit__exit_group", i1 false, i1 false}
!44 = !{ptr @__event_exit__exit_group, !39, !"__event_exit__exit_group", i1 false, i1 false}
!45 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__syscall_meta__exit_group, !39, !"__syscall_meta__exit_group", i1 false, i1 false}
!47 = !{ptr @__p_syscall_meta__exit_group, !39, !"__p_syscall_meta__exit_group", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/exit.c", i32 1623, i32 1}
!50 = !{ptr @event_enter__waitid, !49, !"event_enter__waitid", i1 false, i1 false}
!51 = !{ptr @__event_enter__waitid, !49, !"__event_enter__waitid", i1 false, i1 false}
!52 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @event_exit__waitid, !49, !"event_exit__waitid", i1 false, i1 false}
!54 = !{ptr @__event_exit__waitid, !49, !"__event_exit__waitid", i1 false, i1 false}
!55 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__syscall_meta__waitid, !49, !"__syscall_meta__waitid", i1 false, i1 false}
!57 = !{ptr @__p_syscall_meta__waitid, !49, !"__p_syscall_meta__waitid", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/exit.c", i32 1715, i32 1}
!60 = !{ptr @event_enter__wait4, !59, !"event_enter__wait4", i1 false, i1 false}
!61 = !{ptr @__event_enter__wait4, !59, !"__event_enter__wait4", i1 false, i1 false}
!62 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @event_exit__wait4, !59, !"event_exit__wait4", i1 false, i1 false}
!64 = !{ptr @__event_exit__wait4, !59, !"__event_exit__wait4", i1 false, i1 false}
!65 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__syscall_meta__wait4, !59, !"__syscall_meta__wait4", i1 false, i1 false}
!67 = !{ptr @__p_syscall_meta__wait4, !59, !"__p_syscall_meta__wait4", i1 false, i1 false}
!68 = !{ptr @__ksymtab_thread_group_exited, !69, !"__ksymtab_thread_group_exited", i1 false, i1 false}
!69 = !{!"../kernel/exit.c", i32 1822, i32 1}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/exit.c", i32 1829, i32 8}
!72 = !{ptr @__ksymtab_abort, !73, !"__ksymtab_abort", i1 false, i1 false}
!73 = !{!"../kernel/exit.c", i32 1831, i32 1}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/trace/events/sched.h", i32 323, i32 1}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../kernel/exit.c", i32 100, i32 12}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../kernel/exit.c", i32 275, i32 2}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../kernel/exit.c", i32 374, i32 4}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../kernel/exit.c", i32 379, i32 3}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/trace/events/sched.h", i32 330, i32 1}
!100 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../kernel/exit.c", i32 643, i32 3}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../kernel/exit.c", i32 516, i32 2}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../kernel/exit.c", i32 304, i32 2}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/mm.h", i32 717, i32 2}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/exit.c", i32 712, i32 9}
!111 = !{ptr @check_stack_usage.low_water_lock, !110, !"low_water_lock", i1 false, i1 false}
!112 = !{ptr @check_stack_usage.lowest_to_date, !113, !"lowest_to_date", i1 false, i1 false}
!113 = !{!"../kernel/exit.c", i32 713, i32 13}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/exit.c", i32 723, i32 3}
!116 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @check_stack_usage._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @check_stack_usage._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.36, !29, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @types__exit, !29, !"types__exit", i1 false, i1 false}
!121 = !{ptr @.str.37, !29, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @args__exit, !29, !"args__exit", i1 false, i1 false}
!123 = !{ptr @types__exit_group, !39, !"types__exit_group", i1 false, i1 false}
!124 = !{ptr @args__exit_group, !39, !"args__exit_group", i1 false, i1 false}
!125 = !{ptr @.str.38, !49, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.39, !49, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.40, !49, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @types__waitid, !49, !"types__waitid", i1 false, i1 false}
!129 = !{ptr @.str.41, !49, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.42, !49, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.43, !49, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.44, !49, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.45, !49, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @args__waitid, !49, !"args__waitid", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!137 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../kernel/exit.c", i32 1517, i32 2}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../kernel/exit.c", i32 1552, i32 2}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/trace/events/sched.h", i32 344, i32 1}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!150 = !{!"../kernel/exit.c", i32 1014, i32 31}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../kernel/exit.c", i32 1014, i32 50}
!153 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!154 = !{!"../kernel/exit.c", i32 1201, i32 25}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../kernel/exit.c", i32 1201, i32 44}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../kernel/exit.c", i32 1262, i32 25}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../kernel/exit.c", i32 1262, i32 44}
!161 = !{ptr @.str.53, !59, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @types__wait4, !59, !"types__wait4", i1 false, i1 false}
!163 = !{ptr @.str.54, !59, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @args__wait4, !59, !"args__wait4", i1 false, i1 false}
!165 = !{!"sp"}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 2148799242}
!176 = !{i64 2148713682, i64 2148713714, i64 2148713743, i64 2148713777, i64 2148713808, i64 2148713831}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2149995477}
!179 = !{i64 2150045020}
!180 = !{i64 2150045286}
!181 = !{i64 2154561595, i64 2154562082, i64 2154561632, i64 2154561688, i64 2154561722, i64 2154561746, i64 2154561787, i64 2154561808, i64 2154561836, i64 2154561870}
!182 = !{i64 2154563224, i64 2154563711, i64 2154563261, i64 2154563317, i64 2154563351, i64 2154563375, i64 2154563416, i64 2154563437, i64 2154563465, i64 2154563499}
!183 = !{i64 2148711217, i64 2148711249, i64 2148711278, i64 2148711312, i64 2148711343, i64 2148711366}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2149887873}
!186 = !{i64 2149888198}
!187 = !{i64 2157783708}
!188 = !{i64 2157918810, i64 2157919288, i64 2157918847, i64 2157918903, i64 2157918937, i64 2157918961, i64 2157919002, i64 2157919023, i64 2157919051, i64 2157919085}
!189 = !{!"branch_weights", i32 2146410443, i32 1073205}
!190 = !{i64 2148798163}
!191 = !{i64 2148712872, i64 2148712904, i64 2148712933, i64 2148712967, i64 2148712998, i64 2148713021}
!192 = !{i64 2148798392}
!193 = !{i64 2158027099, i64 2158027577, i64 2158027136, i64 2158027192, i64 2158027226, i64 2158027250, i64 2158027291, i64 2158027312, i64 2158027340, i64 2158027374}
!194 = !{i64 2153155683, i64 2153156166, i64 2153155720, i64 2153155776, i64 2153155810, i64 2153155834, i64 2153155875, i64 2153155896, i64 2153155924, i64 2153155958}
!195 = !{i64 2148310364, i64 2148310369, i64 2148310382, i64 2148310426, i64 2148310460, i64 2148310481}
!196 = !{i64 2158037262}
!197 = !{!"auto-init"}
!198 = !{i64 2157836011}
!199 = !{i64 1216455, i64 1216472, i64 1216496, i64 1216522, i64 1216540}
!200 = !{i64 2157836358}
!201 = !{i64 2157841088}
!202 = !{i64 2154515536}
!203 = !{i64 2148709687, i64 2148709713, i64 2148709742, i64 2148709776, i64 2148709807, i64 2148709830}
!204 = !{i64 2157922625, i64 2157923103, i64 2157922662, i64 2157922718, i64 2157922752, i64 2157922776, i64 2157922817, i64 2157922838, i64 2157922866, i64 2157922900}
!205 = !{i64 1117099}
!206 = !{i64 1114802}
!207 = !{i64 1114612}
!208 = !{i64 2157154099}
!209 = !{i64 2157154300}
!210 = !{i64 2150053579}
!211 = !{i64 2150054615}
!212 = !{i64 2152770598, i64 2152770623}
!213 = !{i64 2158132424, i64 2158132449}
!214 = !{i64 5265472}
!215 = !{i64 5265669}
!216 = !{i64 2152750902}
!217 = !{i64 2158152167, i64 2158152477, i64 2158152791, i64 2158153105}
!218 = !{i64 2158173945, i64 2158174255, i64 2158174569, i64 2158174883}
!219 = !{i64 2158195762, i64 2158196072, i64 2158196386, i64 2158196700}
!220 = !{i64 2158217798, i64 2158218108, i64 2158218422, i64 2158218736}
!221 = !{i64 2158239834, i64 2158240144, i64 2158240458, i64 2158240772}
!222 = !{i64 2158261984, i64 2158262294, i64 2158262608, i64 2158262922}
!223 = !{i64 2158270769, i64 2158271049, i64 2158271383, i64 2158271717}
!224 = !{i64 2158106559}
!225 = !{i64 2158299319, i64 2158299798, i64 2158299356, i64 2158299412, i64 2158299446, i64 2158299470, i64 2158299511, i64 2158299532, i64 2158299560, i64 2158299594}
!226 = !{i64 2157133777}
!227 = !{i64 2157133978}
!228 = !{i64 2157186279}
!229 = !{i64 2157186484}
!230 = !{i64 2158073319}
!231 = !{i64 1219179, i64 1219200, i64 1219223, i64 1219242, i64 1219261}
!232 = !{i64 2158073729}
!233 = !{!"branch_weights", i32 2002, i32 2000}
