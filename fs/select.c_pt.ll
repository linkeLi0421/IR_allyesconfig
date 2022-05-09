; ModuleID = '/llk/IR_all_yes/fs/select.c_pt.bc'
source_filename = "../fs/select.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+poll_initwait\22, \22a\22\09"
module asm "\09.weak\09__crc_poll_initwait\09\09\09\09"
module asm "\09.long\09__crc_poll_initwait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_initwait:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_initwait\22\09\09\09\09\09"
module asm "__kstrtabns_poll_initwait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+poll_freewait\22, \22a\22\09"
module asm "\09.weak\09__crc_poll_freewait\09\09\09\09"
module asm "\09.long\09__crc_poll_freewait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_freewait:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_freewait\22\09\09\09\09\09"
module asm "__kstrtabns_poll_freewait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.86, %struct.trace_event, ptr, ptr, %union.anon.87, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.87 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.145, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.123 }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.145 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.poll_table_struct = type { ptr, i32 }
%struct.poll_wqueues = type { %struct.poll_table_struct, ptr, ptr, i32, i32, i32, [16 x %struct.poll_table_entry] }
%struct.poll_table_entry = type { ptr, i32, %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.poll_table_page = type { ptr, ptr, [0 x %struct.poll_table_entry] }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [36 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [68 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sigset_argpack = type { ptr, i32 }
%struct.sel_arg_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.old_timeval32 = type { i32, i32 }
%struct.poll_list = type { ptr, i32, [0 x %struct.pollfd] }
%struct.pollfd = type { i32, i16, i16 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_poll_initwait = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_initwait = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_initwait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_initwait to i32), ptr @__kstrtab_poll_initwait, ptr @__kstrtabns_poll_initwait }, section "___ksymtab+poll_initwait", align 4
@__kstrtab_poll_freewait = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_freewait = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_freewait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_freewait to i32), ptr @__kstrtab_poll_freewait, ptr @__kstrtabns_poll_freewait }, section "___ksymtab+poll_freewait", align 4
@core_sys_select.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/select.c\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_select\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__select = internal global %struct.syscall_metadata { ptr @.str.4, i32 -1, i32 5, ptr @types__select, ptr @args__select, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__select, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__select, i64 20) }, ptr @event_enter__select, ptr @event_exit__select }, align 4
@event_enter__select = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__select, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__select = internal global ptr @event_enter__select, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_select\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__select = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__select, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__select = internal global ptr @event_exit__select, section "_ftrace_events", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_select\00", [21 x i8] zeroinitializer }, align 32
@types__select = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.32], [44 x i8] zeroinitializer }, align 32
@args__select = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__select = internal global ptr @__syscall_meta__select, section "__syscalls_metadata", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_pselect6\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__pselect6 = internal global %struct.syscall_metadata { ptr @.str.7, i32 -1, i32 6, ptr @types__pselect6, ptr @args__pselect6, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pselect6, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pselect6, i64 20) }, ptr @event_enter__pselect6, ptr @event_exit__pselect6 }, align 4
@event_enter__pselect6 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__pselect6, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pselect6 = internal global ptr @event_enter__pselect6, section "_ftrace_events", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_pselect6\00", [46 x i8] zeroinitializer }, align 32
@event_exit__pselect6 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__pselect6, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pselect6 = internal global ptr @event_exit__pselect6, section "_ftrace_events", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pselect6\00", [19 x i8] zeroinitializer }, align 32
@types__pselect6 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.39, ptr @.str.40], [40 x i8] zeroinitializer }, align 32
@args__pselect6 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.41, ptr @.str.42], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pselect6 = internal global ptr @__syscall_meta__pselect6, section "__syscalls_metadata", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_pselect6_time32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__pselect6_time32 = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 6, ptr @types__pselect6_time32, ptr @args__pselect6_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pselect6_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pselect6_time32, i64 20) }, ptr @event_enter__pselect6_time32, ptr @event_exit__pselect6_time32 }, align 4
@event_enter__pselect6_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__pselect6_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pselect6_time32 = internal global ptr @event_enter__pselect6_time32, section "_ftrace_events", align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_pselect6_time32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__pselect6_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__pselect6_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pselect6_time32 = internal global ptr @event_exit__pselect6_time32, section "_ftrace_events", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_pselect6_time32\00", [44 x i8] zeroinitializer }, align 32
@types__pselect6_time32 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.43, ptr @.str.40], [40 x i8] zeroinitializer }, align 32
@args__pselect6_time32 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.41, ptr @.str.42], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pselect6_time32 = internal global ptr @__syscall_meta__pselect6_time32, section "__syscalls_metadata", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_old_select\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__old_select = internal global %struct.syscall_metadata { ptr @.str.13, i32 -1, i32 1, ptr @types__old_select, ptr @args__old_select, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_select, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_select, i64 20) }, ptr @event_enter__old_select, ptr @event_exit__old_select }, align 4
@event_enter__old_select = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__old_select, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_select = internal global ptr @event_enter__old_select, section "_ftrace_events", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_old_select\00", [44 x i8] zeroinitializer }, align 32
@event_exit__old_select = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__old_select, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_select = internal global ptr @event_exit__old_select, section "_ftrace_events", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_old_select\00", [17 x i8] zeroinitializer }, align 32
@types__old_select = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@args__old_select = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_select = internal global ptr @__syscall_meta__old_select, section "__syscalls_metadata", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_poll\00", [17 x i8] zeroinitializer }, align 32
@__syscall_meta__poll = internal global %struct.syscall_metadata { ptr @.str.16, i32 -1, i32 3, ptr @types__poll, ptr @args__poll, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__poll, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__poll, i64 20) }, ptr @event_enter__poll, ptr @event_exit__poll }, align 4
@event_enter__poll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__poll, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__poll = internal global ptr @event_enter__poll, section "_ftrace_events", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_poll\00", [18 x i8] zeroinitializer }, align 32
@event_exit__poll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__poll, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__poll = internal global ptr @event_exit__poll, section "_ftrace_events", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_poll\00", [23 x i8] zeroinitializer }, align 32
@types__poll = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@args__poll = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__poll = internal global ptr @__syscall_meta__poll, section "__syscalls_metadata", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_ppoll\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__ppoll = internal global %struct.syscall_metadata { ptr @.str.19, i32 -1, i32 5, ptr @types__ppoll, ptr @args__ppoll, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ppoll, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ppoll, i64 20) }, ptr @event_enter__ppoll, ptr @event_exit__ppoll }, align 4
@event_enter__ppoll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.17 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__ppoll, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ppoll = internal global ptr @event_enter__ppoll, section "_ftrace_events", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_ppoll\00", [17 x i8] zeroinitializer }, align 32
@event_exit__ppoll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__ppoll, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ppoll = internal global ptr @event_exit__ppoll, section "_ftrace_events", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_ppoll\00", [22 x i8] zeroinitializer }, align 32
@types__ppoll = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.39, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@args__ppoll = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.41, ptr @.str.53, ptr @.str.54], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ppoll = internal global ptr @__syscall_meta__ppoll, section "__syscalls_metadata", align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_ppoll_time32\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__ppoll_time32 = internal global %struct.syscall_metadata { ptr @.str.22, i32 -1, i32 5, ptr @types__ppoll_time32, ptr @args__ppoll_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ppoll_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ppoll_time32, i64 20) }, ptr @event_enter__ppoll_time32, ptr @event_exit__ppoll_time32 }, align 4
@event_enter__ppoll_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.86 { ptr @.str.20 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__ppoll_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ppoll_time32 = internal global ptr @event_enter__ppoll_time32, section "_ftrace_events", align 4
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_ppoll_time32\00", [42 x i8] zeroinitializer }, align 32
@event_exit__ppoll_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.86 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.87 zeroinitializer, ptr @__syscall_meta__ppoll_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ppoll_time32 = internal global ptr @event_exit__ppoll_time32, section "_ftrace_events", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_ppoll_time32\00", [47 x i8] zeroinitializer }, align 32
@types__ppoll_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.43, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@args__ppoll_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.41, ptr @.str.53, ptr @.str.54], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ppoll_time32 = internal global ptr @__syscall_meta__ppoll_time32, section "__syscalls_metadata", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@max_select_fd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fd_set *\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"struct __kernel_old_timeval *\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"inp\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"outp\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"exp\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tvp\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/sched/signal.h\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"struct __kernel_timespec *\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsp\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sig\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct old_timespec32 *\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct sel_arg_struct *\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arg\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct pollfd *\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ufds\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfds\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timeout_msecs\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"const sigset_t *\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sigmask\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sigsetsize\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 642, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"event_enter__select\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"event_exit__select\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"types__select\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"args__select\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"event_enter__pselect6\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"event_exit__pselect6\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"types__pselect6\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"args__pselect6\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [29 x i8] c"event_enter__pselect6_time32\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"event_exit__pselect6_time32\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"types__pselect6_time32\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"args__pselect6_time32\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"event_enter__old_select\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"event_exit__old_select\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"types__old_select\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"args__old_select\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"event_enter__poll\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"event_exit__poll\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"types__poll\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"args__poll\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"event_enter__ppoll\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [18 x i8] c"event_exit__ppoll\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"types__ppoll\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"args__ppoll\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"event_enter__ppoll_time32\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"event_exit__ppoll_time32\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c"types__ppoll_time32\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c"args__ppoll_time32\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1127, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 695, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 723, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 230, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 214, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 726, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant [32 x i8] c"../include/linux/sched/signal.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 519, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 795, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 809, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 830, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1068, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [15 x i8] c"../fs/select.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1101, i32 1 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__event_enter__old_select, ptr @__event_enter__poll, ptr @__event_enter__ppoll, ptr @__event_enter__ppoll_time32, ptr @__event_enter__pselect6, ptr @__event_enter__pselect6_time32, ptr @__event_enter__select, ptr @__event_exit__old_select, ptr @__event_exit__poll, ptr @__event_exit__ppoll, ptr @__event_exit__ppoll_time32, ptr @__event_exit__pselect6, ptr @__event_exit__pselect6_time32, ptr @__event_exit__select, ptr @__ksymtab_poll_freewait, ptr @__ksymtab_poll_initwait, ptr @__p_syscall_meta__old_select, ptr @__p_syscall_meta__poll, ptr @__p_syscall_meta__ppoll, ptr @__p_syscall_meta__ppoll_time32, ptr @__p_syscall_meta__pselect6, ptr @__p_syscall_meta__pselect6_time32, ptr @__p_syscall_meta__select, ptr @__syscall_meta__old_select, ptr @__syscall_meta__poll, ptr @__syscall_meta__ppoll, ptr @__syscall_meta__ppoll_time32, ptr @__syscall_meta__pselect6, ptr @__syscall_meta__pselect6_time32, ptr @__syscall_meta__select, ptr @event_enter__old_select, ptr @event_enter__poll, ptr @event_enter__ppoll, ptr @event_enter__ppoll_time32, ptr @event_enter__pselect6, ptr @event_enter__pselect6_time32, ptr @event_enter__select, ptr @event_exit__old_select, ptr @event_exit__poll, ptr @event_exit__ppoll, ptr @event_exit__ppoll_time32, ptr @event_exit__pselect6, ptr @event_exit__pselect6_time32, ptr @event_exit__select, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @types__select, ptr @args__select, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @types__pselect6, ptr @args__pselect6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__pselect6_time32, ptr @args__pselect6_time32, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @types__old_select, ptr @args__old_select, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @types__poll, ptr @args__poll, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @types__ppoll, ptr @args__ppoll, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @types__ppoll_time32, ptr @args__ppoll_time32, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__select to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__select to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__select to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__select to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pselect6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pselect6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pselect6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pselect6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pselect6_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pselect6_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pselect6_time32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pselect6_time32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_select to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_select to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_select to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_select to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__poll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__poll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__poll to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__poll to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ppoll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ppoll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ppoll to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ppoll to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ppoll_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ppoll_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ppoll_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ppoll_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_select = dso_local alias i32 (i32, ptr, ptr, ptr, ptr), ptr @__se_sys_select
@sys_pselect6 = dso_local alias i32 (i32, ptr, ptr, ptr, ptr, ptr), ptr @__se_sys_pselect6
@sys_pselect6_time32 = dso_local alias i32 (i32, ptr, ptr, ptr, ptr, ptr), ptr @__se_sys_pselect6_time32
@sys_old_select = dso_local alias i32 (ptr), ptr @__se_sys_old_select
@sys_poll = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_poll
@sys_ppoll = dso_local alias i32 (ptr, i32, ptr, ptr, i32), ptr @__se_sys_ppoll
@sys_ppoll_time32 = dso_local alias i32 (ptr, i32, ptr, ptr, i32), ptr @__se_sys_ppoll_time32

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @select_estimate_accuracy(ptr nocapture noundef readonly %tv) local_unnamed_addr #0 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #9
  %0 = call ptr @memset(ptr %now, i32 255, i32 16)
  %1 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %6)
  %cmp.i.i = icmp sgt i32 %6, 99
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ktime_get_ts64(ptr noundef nonnull %now) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %7 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack = load i64, ptr %tv, align 8
  %.elt13 = getelementptr inbounds [2 x i64], ptr %tv, i32 0, i32 1
  %8 = ptrtoint ptr %.elt13 to i32
  call void @__asan_load8_noabort(i32 %8)
  %.unpack14 = load i64, ptr %.elt13, align 8
  %9 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load = load i64, ptr %now, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %now, i32 0, i32 1
  %10 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %10)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack14, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %11 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %.fca.0.load
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i) #9
  %12 = call ptr @memcpy(ptr %now, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %13 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.i = icmp slt i64 %14, 0
  br i1 %cmp.i, label %if.end.__estimate_accuracy.exit_crit_edge, label %if.end.i

if.end.__estimate_accuracy.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__estimate_accuracy.exit

if.end.i:                                         ; preds = %if.end
  %15 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %static_prio.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %static_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %static_prio.i.i, align 4
  %sub.i.i = add i32 %20, -120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp2.i = icmp sgt i32 %sub.i.i, 0
  %div7.i = select i1 %cmp2.i, i32 20, i32 100
  %21 = zext i32 %div7.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %21)
  %cmp8.i = icmp ugt i64 %14, %21
  br i1 %cmp8.i, label %if.end.i.__estimate_accuracy.exit_crit_edge, label %if.end11.i

if.end.i.__estimate_accuracy.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__estimate_accuracy.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %div6.i = select i1 %cmp2.i, i32 5000000, i32 1000000
  %spec.select.i = select i1 %cmp2.i, i32 200, i32 1000
  %22 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %.fca.1.gep, align 8
  %div12.i = sdiv i32 %23, %spec.select.i
  %24 = trunc i64 %14 to i32
  %25 = mul i32 %div6.i, %24
  %conv17.i = add i32 %div12.i, %25
  %26 = call i32 @llvm.smin.i32(i32 %conv17.i, i32 100000000) #9
  br label %__estimate_accuracy.exit

__estimate_accuracy.exit:                         ; preds = %if.end11.i, %if.end.i.__estimate_accuracy.exit_crit_edge, %if.end.__estimate_accuracy.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.__estimate_accuracy.exit_crit_edge ], [ 100000000, %if.end.i.__estimate_accuracy.exit_crit_edge ], [ %26, %if.end11.i ]
  %conv = sext i32 %retval.0.i to i64
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 189
  %29 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %timer_slack_ns, align 8
  %31 = call i64 @llvm.umax.i64(i64 %30, i64 %conv)
  br label %cleanup

cleanup:                                          ; preds = %__estimate_accuracy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %31, %__estimate_accuracy.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #9
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @poll_initwait(ptr nocapture noundef writeonly %pwq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @__pollwait, ptr %pwq, align 4
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %pwq, i32 0, i32 1
  %1 = ptrtoint ptr %_key.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_key.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %polling_task = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 2
  %6 = ptrtoint ptr %polling_task to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %polling_task, align 4
  %triggered = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 3
  %7 = ptrtoint ptr %triggered to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %triggered, align 4
  %error = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 4
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %error, align 4
  %table = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 1
  %9 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %table, align 4
  %inline_index = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 5
  %10 = ptrtoint ptr %inline_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %inline_index, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__pollwait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %table1.i = getelementptr inbounds %struct.poll_wqueues, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table1.i, align 4
  %inline_index.i = getelementptr inbounds %struct.poll_wqueues, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %inline_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inline_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.i = icmp ult i32 %3, 16
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inline_entries.i = getelementptr inbounds %struct.poll_wqueues, ptr %p, i32 0, i32 6
  %inc.i = add nuw nsw i32 %3, 1
  %4 = ptrtoint ptr %inline_index.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc.i, ptr %inline_index.i, align 4
  %add.ptr.i = getelementptr %struct.poll_table_entry, ptr %inline_entries.i, i32 %3
  br label %poll_get_entry.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %entry3.i = getelementptr inbounds %struct.poll_table_page, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %entry3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry3.i, align 4
  %add.ptr4.i = getelementptr %struct.poll_table_entry, ptr %6, i32 1
  %7 = ptrtoint ptr %add.ptr4.i to i32
  %8 = ptrtoint ptr %1 to i32
  %add.i = add i32 %8, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp5.i = icmp ult i32 %add.i, %7
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.if.end13.i_crit_edge

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %poll_get_entry.exit.thread, label %cleanup.i

poll_get_entry.exit.thread:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.poll_wqueues, ptr %p, i32 0, i32 4
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -12, ptr %error.i, align 4
  br label %cleanup

cleanup.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = inttoptr i32 %call.i to ptr
  %entries.i = getelementptr inbounds %struct.poll_table_page, ptr %10, i32 0, i32 2
  %entry11.i = getelementptr inbounds %struct.poll_table_page, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entries.i, ptr %entry11.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %10, align 4
  %13 = ptrtoint ptr %table1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %table1.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %cleanup.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %table.1.i = phi ptr [ %10, %cleanup.i ], [ %1, %lor.lhs.false.i.if.end13.i_crit_edge ]
  %entry14.i = getelementptr inbounds %struct.poll_table_page, ptr %table.1.i, i32 0, i32 1
  %14 = ptrtoint ptr %entry14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry14.i, align 4
  %incdec.ptr.i = getelementptr %struct.poll_table_entry, ptr %15, i32 1
  store ptr %incdec.ptr.i, ptr %entry14.i, align 4
  br label %poll_get_entry.exit

poll_get_entry.exit:                              ; preds = %if.end13.i, %if.then.i
  %retval.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %15, %if.end13.i ]
  %tobool.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool.not, label %poll_get_entry.exit.cleanup_crit_edge, label %if.end

poll_get_entry.exit.cleanup_crit_edge:            ; preds = %poll_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %poll_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %f_count.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #9, !srcloc !148
  %17 = ptrtoint ptr %retval.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %filp, ptr %retval.1.i, align 4
  %wait_address4 = getelementptr inbounds %struct.poll_table_entry, ptr %retval.1.i, i32 0, i32 3
  %18 = ptrtoint ptr %wait_address4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wait_address, ptr %wait_address4, align 4
  %_key = getelementptr inbounds %struct.poll_table_struct, ptr %p, i32 0, i32 1
  %19 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_key, align 4
  %key = getelementptr inbounds %struct.poll_table_entry, ptr %retval.1.i, i32 0, i32 1
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %key, align 4
  %wait = getelementptr inbounds %struct.poll_table_entry, ptr %retval.1.i, i32 0, i32 2
  %22 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %wait, align 4
  %private.i = getelementptr inbounds %struct.poll_table_entry, ptr %retval.1.i, i32 0, i32 2, i32 1
  %func1.i = getelementptr inbounds %struct.poll_table_entry, ptr %retval.1.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pollwake, ptr %func1.i, align 4
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %p, ptr %private.i, align 4
  tail call void @add_wait_queue(ptr noundef %wait_address, ptr noundef %wait) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %poll_get_entry.exit.cleanup_crit_edge, %poll_get_entry.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poll_freewait(ptr noundef %pwq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 1
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %inline_index = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 5
  %2 = ptrtoint ptr %inline_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inline_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp sgt i32 %3, 0
  br i1 %cmp17, label %for.body.lr.ph, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %inline_entries = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 6
  br label %for.body

while.cond.preheader:                             ; preds = %for.body.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %tobool.not19 = icmp eq ptr %1, null
  br i1 %tobool.not19, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.poll_table_entry, ptr %inline_entries, i32 %i.018
  %wait_address.i = getelementptr %struct.poll_table_entry, ptr %inline_entries, i32 %i.018, i32 3
  %4 = ptrtoint ptr %wait_address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait_address.i, align 4
  %wait.i = getelementptr %struct.poll_table_entry, ptr %inline_entries, i32 %i.018, i32 2
  tail call void @remove_wait_queue(ptr noundef %5, ptr noundef %wait.i) #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void @fput(ptr noundef %7) #9
  %inc = add nuw nsw i32 %i.018, 1
  %8 = ptrtoint ptr %inline_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inline_index, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.while.cond.preheader_crit_edge

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %p.020 = phi ptr [ %17, %do.end.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %entry2 = getelementptr inbounds %struct.poll_table_page, ptr %p.020, i32 0, i32 1
  %10 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry2, align 4
  %entries = getelementptr inbounds %struct.poll_table_page, ptr %p.020, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.body
  %entry1.0 = phi ptr [ %11, %while.body ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.poll_table_entry, ptr %entry1.0, i32 -1
  %wait_address.i15 = getelementptr %struct.poll_table_entry, ptr %entry1.0, i32 -1, i32 3
  %12 = ptrtoint ptr %wait_address.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait_address.i15, align 4
  %wait.i16 = getelementptr %struct.poll_table_entry, ptr %entry1.0, i32 -1, i32 2
  tail call void @remove_wait_queue(ptr noundef %13, ptr noundef %wait.i16) #9
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr, align 4
  tail call void @fput(ptr noundef %15) #9
  %cmp4 = icmp ugt ptr %incdec.ptr, %entries
  br i1 %cmp4, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  %16 = ptrtoint ptr %p.020 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.020, align 4
  %18 = ptrtoint ptr %p.020 to i32
  tail call void @free_pages(i32 noundef %18, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @poll_select_set_timeout(ptr noundef %to, i64 noundef %sec, i32 noundef %nsec) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ts.sroa.6.8.insert.ext = zext i32 %nsec to i64
  %ts.sroa.6.8.insert.shift = shl nuw i64 %ts.sroa.6.8.insert.ext, 32
  %ts.sroa.6.8.insert.insert = or i64 %ts.sroa.6.8.insert.shift, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sec)
  %cmp.i = icmp sgt i64 %sec, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %nsec)
  %cmp1.i = icmp ult i32 %nsec, 1000000000
  %or.cond16 = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond16, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sec)
  %tobool.not = icmp eq i64 %sec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsec)
  %tobool1.not = icmp eq i32 %nsec, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec3 = getelementptr inbounds %struct.timespec64, ptr %to, i32 0, i32 1
  %0 = ptrtoint ptr %tv_nsec3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tv_nsec3, align 8
  %1 = ptrtoint ptr %to to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %to, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ktime_get_ts64(ptr noundef %to) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %to to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %to, align 8
  %3 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt12 = getelementptr inbounds [2 x i64], ptr %to, i32 0, i32 1
  %4 = ptrtoint ptr %.elt12 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack13 = load i64, ptr %.elt12, align 8
  %5 = insertvalue [2 x i64] %3, i64 %.unpack13, 1
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %sec, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %ts.sroa.6.8.insert.insert, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %tmp, [2 x i64] %5, [2 x i64] %.fca.1.insert) #9
  %6 = call ptr @memcpy(ptr %to, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timespec64_add_safe(ptr sret(%struct.timespec64) align 8, [2 x i64], [2 x i64]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_sys_select(i32 noundef %n, ptr noundef %inp, ptr noundef %outp, ptr noundef %exp, ptr noundef readonly %end_time) local_unnamed_addr #0 align 64 {
entry:
  %expire.i = alloca i64, align 8
  %table.i = alloca %struct.poll_wqueues, align 4
  %stack_fds = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %stack_fds) #9
  %0 = call ptr @memset(ptr %stack_fds, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %entry.out_nofds_crit_edge, label %if.end

entry.out_nofds_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nofds

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 108
  %9 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %files, align 4
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fdt1, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %10, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i123 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not = icmp eq i32 %call.i123, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b122 = load i1, ptr @core_sys_select.__warned, align 1
  br i1 %.b122, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @core_sys_select.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 642, ptr noundef nonnull @.str.1) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %lor.lhs.false.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %call.i124 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i124, label %do.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i127

do.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i127:                               ; preds = %do.end16
  %call1.i125 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool.not.i126 = icmp eq i32 %call1.i125, 0
  br i1 %tobool.not.i126, label %land.lhs.true.i127.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i129

land.lhs.true.i127.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i129:                              ; preds = %land.lhs.true.i127
  %.b4.i128 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i128, label %land.lhs.true2.i129.rcu_read_unlock.exit_crit_edge, label %if.then.i130

land.lhs.true2.i129.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i130:                                     ; preds = %land.lhs.true2.i129
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i130, %land.lhs.true2.i129.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i127.rcu_read_unlock.exit_crit_edge, %do.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !150
  %15 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i131 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i131 to ptr
  %preempt_count.i.i.i.i132 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i132, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i132, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %19 = tail call i32 @llvm.smin.i32(i32 %14, i32 %n)
  %sub = add i32 %19, 31
  %20 = lshr i32 %sub, 3
  %mul = and i32 %20, 536870908
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %mul)
  %cmp22 = icmp ugt i32 %mul, 42
  br i1 %cmp22, label %if.end26, label %rcu_read_unlock.exit.if.end32_crit_edge

rcu_read_unlock.exit.if.end32_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end26:                                         ; preds = %rcu_read_unlock.exit
  %mul27 = mul nuw i32 %mul, 6
  %call.i133 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul27, i32 noundef 3264, i32 noundef -1) #12
  %tobool29.not = icmp eq ptr %call.i133, null
  br i1 %tobool29.not, label %if.end26.out_nofds_crit_edge, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end26.out_nofds_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nofds

if.end32:                                         ; preds = %if.end26.if.end32_crit_edge, %rcu_read_unlock.exit.if.end32_crit_edge
  %bits.0 = phi ptr [ %call.i133, %if.end26.if.end32_crit_edge ], [ %stack_fds, %rcu_read_unlock.exit.if.end32_crit_edge ]
  %add.ptr = getelementptr i8, ptr %bits.0, i32 %mul
  %mul33 = shl nuw nsw i32 %mul, 1
  %add.ptr34 = getelementptr i8, ptr %bits.0, i32 %mul33
  %mul35 = mul nuw nsw i32 %mul, 3
  %add.ptr36 = getelementptr i8, ptr %bits.0, i32 %mul35
  %mul37 = shl nuw nsw i32 %mul, 2
  %add.ptr38 = getelementptr i8, ptr %bits.0, i32 %mul37
  %mul39 = mul nuw i32 %mul, 5
  %add.ptr40 = getelementptr i8, ptr %bits.0, i32 %mul39
  %call42 = call fastcc i32 @get_fd_set(i32 noundef %19, ptr noundef %inp, ptr noundef nonnull %bits.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %if.end32.out83_crit_edge

if.end32.out83_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

lor.lhs.false44:                                  ; preds = %if.end32
  %call46 = call fastcc i32 @get_fd_set(i32 noundef %19, ptr noundef %outp, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false44.out83_crit_edge

lor.lhs.false44.out83_crit_edge:                  ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %call50 = call fastcc i32 @get_fd_set(i32 noundef %19, ptr noundef %exp, ptr noundef %add.ptr34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false48.out83_crit_edge

lor.lhs.false48.out83_crit_edge:                  ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

if.end53:                                         ; preds = %lor.lhs.false48
  %21 = call ptr @memset(ptr %add.ptr36, i32 0, i32 %mul)
  %22 = call ptr @memset(ptr %add.ptr38, i32 0, i32 %mul)
  %23 = call ptr @memset(ptr %add.ptr40, i32 0, i32 %mul)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expire.i) #9
  %24 = ptrtoint ptr %expire.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %expire.i, align 8, !annotation !151
  call void @llvm.lifetime.start.p0(i64 540, ptr nonnull %table.i) #9
  %25 = call ptr @memset(ptr %table.i, i32 255, i32 540)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %26 = load i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i247.not.i = icmp eq i32 %26, 0
  %cond.i = select i1 %tobool.i247.not.i, i32 0, i32 32768
  %27 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end53.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end53.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end53
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end53.rcu_read_lock.exit.i_crit_edge
  %and.i.i = and i32 %19, 31
  %shl.i.i = shl nsw i32 -1, %and.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %div88.i.i = lshr i32 %19, 5
  %31 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i248.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i248.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i, align 8
  %files.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 108
  %35 = ptrtoint ptr %files.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %files.i.i, align 4
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %fdt1.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.files_struct, ptr %36, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i249.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i249.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.do.end14.i.i_crit_edge

rcu_read_lock.exit.i.do.end14.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i
  %call7.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i250.i, label %lor.lhs.false.i.i.do.end14.i.i_crit_edge

lor.lhs.false.i.i.do.end14.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i.i

land.lhs.true.i250.i:                             ; preds = %lor.lhs.false.i.i
  %call9.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i250.i.do.end14.i.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i250.i.do.end14.i.i_crit_edge:      ; preds = %land.lhs.true.i250.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i250.i
  %.b89.i.i = load i1, ptr @max_select_fd.__warned, align 1
  br i1 %.b89.i.i, label %land.lhs.true11.i.i.do.end14.i.i_crit_edge, label %if.then.i251.i

land.lhs.true11.i.i.do.end14.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i.i

if.then.i251.i:                                   ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @max_select_fd.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.1) #9
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.then.i251.i, %land.lhs.true11.i.i.do.end14.i.i_crit_edge, %land.lhs.true.i250.i.do.end14.i.i_crit_edge, %lor.lhs.false.i.i.do.end14.i.i_crit_edge, %rcu_read_lock.exit.i.do.end14.i.i_crit_edge
  %open_fds16.i.i = getelementptr inbounds %struct.fdtable, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %open_fds16.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %open_fds16.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %40, i32 %div88.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool17.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool17.not.i.i, label %do.end14.i.i.while.cond.preheader.i.i_crit_edge, label %if.then18.i.i

do.end14.i.i.while.cond.preheader.i.i_crit_edge:  ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i.i

if.then18.i.i:                                    ; preds = %do.end14.i.i
  %add.ptr19.i.i = getelementptr i32, ptr %bits.0, i32 %div88.i.i
  %41 = ptrtoint ptr %add.ptr19.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr19.i.i, align 4
  %add.ptr20.i.i = getelementptr i32, ptr %add.ptr, i32 %div88.i.i
  %43 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr20.i.i, align 4
  %or.i.i = or i32 %44, %42
  %add.ptr21.i.i = getelementptr i32, ptr %add.ptr34, i32 %div88.i.i
  %45 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr21.i.i, align 4
  %or22.i.i = or i32 %or.i.i, %46
  %and23.i.i = and i32 %or22.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then18.i.i.while.cond.preheader.i.i_crit_edge, label %if.then25.i.i

if.then18.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i.i

if.then25.i.i:                                    ; preds = %if.then18.i.i
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i, align 4
  %neg26.i.i = xor i32 %48, -1
  %and27.i.i = and i32 %and23.i.i, %neg26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then25.i.i.get_max.i.i_crit_edge, label %if.then25.i.i.max_select_fd.exit.i_crit_edge

if.then25.i.i.max_select_fd.exit.i_crit_edge:     ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_select_fd.exit.i

if.then25.i.i.get_max.i.i_crit_edge:              ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_max.i.i

while.cond.preheader.i.i:                         ; preds = %do.end56.i.i, %if.then18.i.i.while.cond.preheader.i.i_crit_edge, %do.end14.i.i.while.cond.preheader.i.i_crit_edge
  %open_fds.0.ph.i.i = phi ptr [ %open_fds.1.i.i, %do.end56.i.i ], [ %add.ptr.i.i, %if.then18.i.i.while.cond.preheader.i.i_crit_edge ], [ %add.ptr.i.i, %do.end14.i.i.while.cond.preheader.i.i_crit_edge ]
  %max.0.ph.i.i = phi i32 [ %add.i.i, %do.end56.i.i ], [ 0, %if.then18.i.i.while.cond.preheader.i.i_crit_edge ], [ 0, %do.end14.i.i.while.cond.preheader.i.i_crit_edge ]
  %n.addr.0.ph.i.i = phi i32 [ %n.addr.1.i.i, %do.end56.i.i ], [ %div88.i.i, %if.then18.i.i.while.cond.preheader.i.i_crit_edge ], [ %div88.i.i, %do.end14.i.i.while.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.ph.i.i)
  %tobool33.not90.i.i = icmp eq i32 %n.addr.0.ph.i.i, 0
  br i1 %tobool33.not90.i.i, label %while.cond.preheader.i.i.max_select_fd.exit.i_crit_edge, label %while.body.lr.ph.i.i

while.cond.preheader.i.i.max_select_fd.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_select_fd.exit.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.0.ph.i.i)
  %tobool50.not.i.i = icmp eq i32 %max.0.ph.i.i, 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %n.addr.092.i.i = phi i32 [ %n.addr.0.ph.i.i, %while.body.lr.ph.i.i ], [ %dec.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ]
  %open_fds.091.i.i = phi ptr [ %open_fds.0.ph.i.i, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %open_fds.091.i.i, i32 -1
  %dec.i.i = add i32 %n.addr.092.i.i, -1
  %add.ptr35.i.i = getelementptr i32, ptr %bits.0, i32 %dec.i.i
  %49 = ptrtoint ptr %add.ptr35.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr35.i.i, align 4
  %add.ptr37.i.i = getelementptr i32, ptr %add.ptr, i32 %dec.i.i
  %51 = ptrtoint ptr %add.ptr37.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr37.i.i, align 4
  %or38.i.i = or i32 %52, %50
  %add.ptr40.i.i = getelementptr i32, ptr %add.ptr34, i32 %dec.i.i
  %53 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr40.i.i, align 4
  %or41.i.i = or i32 %or38.i.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or41.i.i)
  %tobool42.not.i.i = icmp eq i32 %or41.i.i, 0
  br i1 %tobool42.not.i.i, label %while.body.i.i.while.cond.backedge.i.i_crit_edge, label %if.end44.i.i

while.body.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end49.i.i.while.cond.backedge.i.i_crit_edge, %while.body.i.i.while.cond.backedge.i.i_crit_edge
  %tobool33.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool33.not.i.i, label %while.cond.backedge.i.i.max_select_fd.exit.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.cond.backedge.i.i.max_select_fd.exit.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_select_fd.exit.i

if.end44.i.i:                                     ; preds = %while.body.i.i
  %55 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %incdec.ptr.i.i, align 4
  %neg45.i.i = xor i32 %56, -1
  %and46.i.i = and i32 %or41.i.i, %neg45.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end49.i.i, label %if.end44.i.i.max_select_fd.exit.i_crit_edge

if.end44.i.i.max_select_fd.exit.i_crit_edge:      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_select_fd.exit.i

if.end49.i.i:                                     ; preds = %if.end44.i.i
  br i1 %tobool50.not.i.i, label %if.end49.i.i.get_max.i.i_crit_edge, label %if.end49.i.i.while.cond.backedge.i.i_crit_edge

if.end49.i.i.while.cond.backedge.i.i_crit_edge:   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.i.i

if.end49.i.i.get_max.i.i_crit_edge:               ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_max.i.i

get_max.i.i:                                      ; preds = %if.end49.i.i.get_max.i.i_crit_edge, %if.then25.i.i.get_max.i.i_crit_edge
  %open_fds.1.i.i = phi ptr [ %add.ptr.i.i, %if.then25.i.i.get_max.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end49.i.i.get_max.i.i_crit_edge ]
  %set.0.i.i = phi i32 [ %and23.i.i, %if.then25.i.i.get_max.i.i_crit_edge ], [ %or41.i.i, %if.end49.i.i.get_max.i.i_crit_edge ]
  %n.addr.1.i.i = phi i32 [ %div88.i.i, %if.then25.i.i.get_max.i.i_crit_edge ], [ %dec.i.i, %if.end49.i.i.get_max.i.i_crit_edge ]
  br label %do.body53.i.i

do.body53.i.i:                                    ; preds = %do.body53.i.i.do.body53.i.i_crit_edge, %get_max.i.i
  %set.1.i.i = phi i32 [ %set.0.i.i, %get_max.i.i ], [ %shr.i.i, %do.body53.i.i.do.body53.i.i_crit_edge ]
  %max.2.i.i = phi i32 [ 0, %get_max.i.i ], [ %inc.i.i, %do.body53.i.i.do.body53.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %max.2.i.i, 1
  %shr.i.i = lshr i32 %set.1.i.i, 1
  %tobool55.not.i.i = icmp ult i32 %set.1.i.i, 2
  br i1 %tobool55.not.i.i, label %do.end56.i.i, label %do.body53.i.i.do.body53.i.i_crit_edge

do.body53.i.i.do.body53.i.i_crit_edge:            ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53.i.i

do.end56.i.i:                                     ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = shl i32 %n.addr.1.i.i, 5
  %add.i.i = add i32 %inc.i.i, %mul.i.i
  br label %while.cond.preheader.i.i

max_select_fd.exit.i:                             ; preds = %if.end44.i.i.max_select_fd.exit.i_crit_edge, %while.cond.backedge.i.i.max_select_fd.exit.i_crit_edge, %while.cond.preheader.i.i.max_select_fd.exit.i_crit_edge, %if.then25.i.i.max_select_fd.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -9, %if.then25.i.i.max_select_fd.exit.i_crit_edge ], [ %max.0.ph.i.i, %while.cond.preheader.i.i.max_select_fd.exit.i_crit_edge ], [ -9, %if.end44.i.i.max_select_fd.exit.i_crit_edge ], [ %max.0.ph.i.i, %while.cond.backedge.i.i.max_select_fd.exit.i_crit_edge ]
  %call.i252.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i252.i, label %max_select_fd.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i255.i

max_select_fd.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %max_select_fd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i255.i:                             ; preds = %max_select_fd.exit.i
  %call1.i253.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i253.i)
  %tobool.not.i254.i = icmp eq i32 %call1.i253.i, 0
  br i1 %tobool.not.i254.i, label %land.lhs.true.i255.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i257.i

land.lhs.true.i255.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i257.i:                            ; preds = %land.lhs.true.i255.i
  %.b4.i256.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i256.i, label %land.lhs.true2.i257.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i258.i

land.lhs.true2.i257.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i257.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i258.i:                                   ; preds = %land.lhs.true2.i257.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i258.i, %land.lhs.true2.i257.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i255.i.rcu_read_unlock.exit.i_crit_edge, %max_select_fd.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !150
  %57 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i259.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i259.i to ptr
  %preempt_count.i.i.i.i260.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i260.i, align 4
  %sub.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i260.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %do_select.exit.thread, label %if.end.i

do_select.exit.thread:                            ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %table.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expire.i) #9
  br label %out83

if.end.i:                                         ; preds = %rcu_read_unlock.exit.i
  %61 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @__pollwait, ptr %table.i, align 4
  %_key.i.i.i = getelementptr inbounds %struct.poll_table_struct, ptr %table.i, i32 0, i32 1
  %62 = ptrtoint ptr %_key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %_key.i.i.i, align 4
  %63 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i261.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i261.i to ptr
  %task.i262.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i262.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i262.i, align 8
  %polling_task.i.i = getelementptr inbounds %struct.poll_wqueues, ptr %table.i, i32 0, i32 2
  %67 = ptrtoint ptr %polling_task.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %polling_task.i.i, align 4
  %triggered.i.i = getelementptr inbounds %struct.poll_wqueues, ptr %table.i, i32 0, i32 3
  %68 = ptrtoint ptr %triggered.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %triggered.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.poll_wqueues, ptr %table.i, i32 0, i32 4
  %69 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %error.i.i, align 4
  %table.i.i = getelementptr inbounds %struct.poll_wqueues, ptr %table.i, i32 0, i32 1
  %70 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %table.i.i, align 4
  %inline_index.i.i = getelementptr inbounds %struct.poll_wqueues, ptr %table.i, i32 0, i32 5
  %71 = ptrtoint ptr %inline_index.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %inline_index.i.i, align 4
  %tobool.not.i138 = icmp eq ptr %end_time, null
  br i1 %tobool.not.i138, label %if.end.i.if.end13.i_crit_edge, label %land.lhs.true.i139

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

land.lhs.true.i139:                               ; preds = %if.end.i
  %72 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %end_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %tobool3.not.i = icmp eq i64 %73, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i139.if.then11.i_crit_edge

land.lhs.true.i139.if.then11.i_crit_edge:         ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i139
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %end_time, i32 0, i32 1
  %74 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tv_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool5.not.i = icmp eq i32 %75, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %land.lhs.true4.i.if.then11.i_crit_edge

land.lhs.true4.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %table.i, align 4
  br label %if.end13.i

if.then11.i:                                      ; preds = %land.lhs.true4.i.if.then11.i_crit_edge, %land.lhs.true.i139.if.then11.i_crit_edge
  %call12.i = call i64 @select_estimate_accuracy(ptr noundef nonnull %end_time) #9
  %extract.t.i = trunc i64 %call12.i to i32
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then6.i, %if.end.i.if.end13.i_crit_edge
  %timed_out.0289.i = phi i32 [ 0, %if.then11.i ], [ 0, %if.end.i.if.end13.i_crit_edge ], [ 1, %if.then6.i ]
  %slack.0.off0.i = phi i32 [ %extract.t.i, %if.then11.i ], [ 0, %if.end.i.if.end13.i_crit_edge ], [ 0, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp15342.not.i = icmp eq i32 %retval.0.i.i, 0
  %.elt239.i = getelementptr inbounds [2 x i64], ptr %end_time, i32 0, i32 1
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %if.end138.i, %if.end13.i
  %to.0.i.ph = phi ptr [ %to.1.i, %if.end138.i ], [ null, %if.end13.i ]
  %timed_out.1.i.ph = phi i32 [ %spec.select245.i, %if.end138.i ], [ %timed_out.0289.i, %if.end13.i ]
  %busy_flag.0.i.ph = phi i32 [ 0, %if.end138.i ], [ %cond.i, %if.end13.i ]
  %busy_start.0.i.ph = phi i32 [ %busy_start.0.i.ph185, %if.end138.i ], [ 0, %if.end13.i ]
  br label %for.cond.i.outer182

for.cond.i.outer182:                              ; preds = %if.then126.i, %for.cond.i.outer
  %timed_out.1.i.ph183 = phi i32 [ %timed_out.1.i.ph, %for.cond.i.outer ], [ 0, %if.then126.i ]
  %busy_flag.0.i.ph184 = phi i32 [ %busy_flag.0.i.ph, %for.cond.i.outer ], [ %busy_flag.1.lcssa.i, %if.then126.i ]
  %busy_start.0.i.ph185 = phi i32 [ %busy_start.0.i.ph, %for.cond.i.outer ], [ %conv.i.i, %if.then126.i ]
  %tobool125.not.i = icmp eq i32 %busy_start.0.i.ph185, 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %busy_loop_timeout.exit.i.for.cond.i_crit_edge, %for.cond.i.outer182
  %timed_out.1.i = phi i32 [ 0, %busy_loop_timeout.exit.i.for.cond.i_crit_edge ], [ %timed_out.1.i.ph183, %for.cond.i.outer182 ]
  %busy_flag.0.i = phi i32 [ %busy_flag.1.lcssa.i, %busy_loop_timeout.exit.i.for.cond.i_crit_edge ], [ %busy_flag.0.i.ph184, %for.cond.i.outer182 ]
  br i1 %cmp15342.not.i, label %for.cond.i.for.end107.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  br label %for.body.i

for.cond.i.for.end107.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end107.i

for.body.i:                                       ; preds = %cleanup91.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %can_busy_loop.0.off0358.i = phi i1 [ %can_busy_loop.5.off0.i, %cleanup91.i.for.body.i_crit_edge ], [ false, %for.cond.i.for.body.i_crit_edge ]
  %exp.0357.i = phi ptr [ %incdec.ptr23.i, %cleanup91.i.for.body.i_crit_edge ], [ %add.ptr34, %for.cond.i.for.body.i_crit_edge ]
  %outp.0356.i = phi ptr [ %incdec.ptr22.i, %cleanup91.i.for.body.i_crit_edge ], [ %add.ptr, %for.cond.i.for.body.i_crit_edge ]
  %inp.0355.i = phi ptr [ %incdec.ptr.i, %cleanup91.i.for.body.i_crit_edge ], [ %bits.0, %for.cond.i.for.body.i_crit_edge ]
  %rexp.0352.i = phi ptr [ %incdec.ptr106.i, %cleanup91.i.for.body.i_crit_edge ], [ %add.ptr40, %for.cond.i.for.body.i_crit_edge ]
  %routp.0349.i = phi ptr [ %incdec.ptr105.i, %cleanup91.i.for.body.i_crit_edge ], [ %add.ptr38, %for.cond.i.for.body.i_crit_edge ]
  %rinp.0346.i = phi ptr [ %incdec.ptr104.i, %cleanup91.i.for.body.i_crit_edge ], [ %add.ptr36, %for.cond.i.for.body.i_crit_edge ]
  %busy_flag.1345.i = phi i32 [ %busy_flag.6.i, %cleanup91.i.for.body.i_crit_edge ], [ %busy_flag.0.i, %for.cond.i.for.body.i_crit_edge ]
  %i.0344.i = phi i32 [ %i.2.i, %cleanup91.i.for.body.i_crit_edge ], [ 0, %for.cond.i.for.body.i_crit_edge ]
  %retval1.1343.i = phi i32 [ %retval1.8.i, %cleanup91.i.for.body.i_crit_edge ], [ 0, %for.cond.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %inp.0355.i, i32 1
  %77 = ptrtoint ptr %inp.0355.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %inp.0355.i, align 4
  %incdec.ptr22.i = getelementptr i32, ptr %outp.0356.i, i32 1
  %79 = ptrtoint ptr %outp.0356.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %outp.0356.i, align 4
  %incdec.ptr23.i = getelementptr i32, ptr %exp.0357.i, i32 1
  %81 = ptrtoint ptr %exp.0357.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %exp.0357.i, align 4
  %or.i = or i32 %80, %78
  %or24.i = or i32 %or.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or24.i)
  %cmp25.i = icmp eq i32 %or24.i, 0
  br i1 %cmp25.i, label %if.then26.i, label %for.cond28.preheader.i

for.cond28.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0344.i, i32 %retval.0.i.i)
  %cmp31.not323.i = icmp slt i32 %i.0344.i, %retval.0.i.i
  br i1 %cmp31.not323.i, label %for.cond28.preheader.i.if.end33.i_crit_edge, label %for.cond28.preheader.i.if.end88.i_crit_edge

for.cond28.preheader.i.if.end88.i_crit_edge:      ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

for.cond28.preheader.i.if.end33.i_crit_edge:      ; preds = %for.cond28.preheader.i
  br label %if.end33.i

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %i.0344.i, 32
  br label %cleanup91.i

if.end33.i:                                       ; preds = %for.inc.i.if.end33.i_crit_edge, %for.cond28.preheader.i.if.end33.i_crit_edge
  %res_ex21.0335.i = phi i32 [ %res_ex21.2.ph.i, %for.inc.i.if.end33.i_crit_edge ], [ 0, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %res_out20.0334.i = phi i32 [ %res_out20.2.ph.i, %for.inc.i.if.end33.i_crit_edge ], [ 0, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %res_in19.0333.i = phi i32 [ %res_in19.2.ph.i, %for.inc.i.if.end33.i_crit_edge ], [ 0, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %j.0332.i = phi i32 [ %inc78.i, %for.inc.i.if.end33.i_crit_edge ], [ 0, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %bit.0330.i = phi i32 [ %shl.i, %for.inc.i.if.end33.i_crit_edge ], [ 1, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %can_busy_loop.1.off0329.i = phi i1 [ %can_busy_loop.3.off0.ph.i, %for.inc.i.if.end33.i_crit_edge ], [ %can_busy_loop.0.off0358.i, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %busy_flag.2328.i = phi i32 [ %busy_flag.4.ph.i, %for.inc.i.if.end33.i_crit_edge ], [ %busy_flag.1345.i, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %i.1326.i = phi i32 [ %inc79.i, %for.inc.i.if.end33.i_crit_edge ], [ %i.0344.i, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %retval1.2325.i = phi i32 [ %retval1.6.ph.i, %for.inc.i.if.end33.i_crit_edge ], [ %retval1.1343.i, %for.cond28.preheader.i.if.end33.i_crit_edge ]
  %and.i140 = and i32 %bit.0330.i, %or24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool34.not.i = icmp eq i32 %and.i140, 0
  br i1 %tobool34.not.i, label %if.end33.i.for.inc.i_crit_edge, label %if.end36.i

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end36.i:                                       ; preds = %if.end33.i
  %call.i263.i = call i32 @__fdget(i32 noundef %i.1326.i) #9, !noalias !152
  %and.i.i264.i = and i32 %call.i263.i, -4
  %83 = inttoptr i32 %and.i.i264.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i264.i)
  %tobool37.not.i = icmp eq i32 %and.i.i264.i, 0
  %.pre.i = and i32 %bit.0330.i, %78
  br i1 %tobool37.not.i, label %if.end36.if.end41_crit_edge.i, label %if.then38.i

if.end36.if.end41_crit_edge.i:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre365.i = and i32 %bit.0330.i, %80
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool.not.i266.i = icmp eq i32 %.pre.i, 0
  %spec.select.v.i.i = select i1 %tobool.not.i266.i, i32 34, i32 251
  %spec.select.i.i = or i32 %spec.select.v.i.i, %busy_flag.2328.i
  %and3.i.i = and i32 %bit.0330.i, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %or7.i.i = or i32 %spec.select.i.i, 812
  %spec.select12.i.i = select i1 %tobool4.not.i.i, i32 %spec.select.i.i, i32 %or7.i.i
  %84 = ptrtoint ptr %_key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %spec.select12.i.i, ptr %_key.i.i.i, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %83, i32 0, i32 3
  %85 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %f_op.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i267.i = icmp eq ptr %88, null
  br i1 %tobool.not.i267.i, label %if.then38.i.vfs_poll.exit.i_crit_edge, label %if.end.i.i, !prof !155

if.then38.i.vfs_poll.exit.i_crit_edge:            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfs_poll.exit.i

if.end.i.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i268.i = call i32 %88(ptr noundef nonnull %83, ptr noundef nonnull %table.i) #9
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %if.end.i.i, %if.then38.i.vfs_poll.exit.i_crit_edge
  %retval.0.i269.i = phi i32 [ %call.i268.i, %if.end.i.i ], [ 325, %if.then38.i.vfs_poll.exit.i_crit_edge ]
  %and.i270.i = and i32 %call.i263.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270.i)
  %tobool.not.i271.i = icmp eq i32 %and.i270.i, 0
  br i1 %tobool.not.i271.i, label %vfs_poll.exit.i.if.end41.i_crit_edge, label %if.then.i272.i

vfs_poll.exit.i.if.end41.i_crit_edge:             ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then.i272.i:                                   ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %83) #9
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then.i272.i, %vfs_poll.exit.i.if.end41.i_crit_edge, %if.end36.if.end41_crit_edge.i
  %and54.pre-phi.i = phi i32 [ %.pre365.i, %if.end36.if.end41_crit_edge.i ], [ %and3.i.i, %if.then.i272.i ], [ %and3.i.i, %vfs_poll.exit.i.if.end41.i_crit_edge ]
  %mask.0.i = phi i32 [ 32, %if.end36.if.end41_crit_edge.i ], [ %retval.0.i269.i, %if.then.i272.i ], [ %retval.0.i269.i, %vfs_poll.exit.i.if.end41.i_crit_edge ]
  %and42.i = and i32 %mask.0.i, 249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool46.not.i = icmp eq i32 %.pre.i, 0
  %or.cond.i = select i1 %tobool43.not.i, i1 true, i1 %tobool46.not.i
  %not.or.cond.i = xor i1 %or.cond.i, true
  %inc.i = zext i1 %not.or.cond.i to i32
  %retval1.3.i = add i32 %retval1.2325.i, %inc.i
  %or48.i = select i1 %or.cond.i, i32 0, i32 %bit.0330.i
  %res_in19.1.i = or i32 %or48.i, %res_in19.0333.i
  %and51.i = and i32 %mask.0.i, 812
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.pre-phi.i)
  %tobool55.not.i = icmp eq i32 %and54.pre-phi.i, 0
  %or.cond241.i = select i1 %tobool52.not.i, i1 true, i1 %tobool55.not.i
  %not.or.cond241.i = xor i1 %or.cond241.i, true
  %inc58.i = zext i1 %not.or.cond241.i to i32
  %retval1.4.i = add i32 %retval1.3.i, %inc58.i
  %or57.i = select i1 %or.cond241.i, i32 0, i32 %bit.0330.i
  %res_out20.1.i = or i32 %or57.i, %res_out20.0334.i
  %.demorgan.i = and i1 %or.cond.i, %or.cond241.i
  %and61.i = and i32 %mask.0.i, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %and64.i = and i32 %bit.0330.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %or.cond242.i = select i1 %tobool62.not.i, i1 true, i1 %tobool65.not.i
  %not.or.cond242.i = xor i1 %or.cond242.i, true
  %inc68.i = zext i1 %not.or.cond242.i to i32
  %retval1.5.i = add i32 %retval1.4.i, %inc68.i
  %or67.i = select i1 %or.cond242.i, i32 0, i32 %bit.0330.i
  %res_ex21.1.i = or i32 %or67.i, %res_ex21.0335.i
  %.demorgan317.i = and i1 %or.cond242.i, %.demorgan.i
  br i1 %.demorgan317.i, label %if.end41.i._crit_edge, label %89

if.end41.i._crit_edge:                            ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %91

89:                                               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %table.i, align 4
  br label %91

91:                                               ; preds = %89, %if.end41.i._crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.5.i)
  %tobool71.not.i = icmp eq i32 %retval1.5.i, 0
  br i1 %tobool71.not.i, label %if.else.i, label %.for.inc.i_crit_edge

.for.inc.i_crit_edge:                             ; preds = %91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %91
  call void @__sanitizer_cov_trace_pc() #11
  %and73.i = and i32 %mask.0.i, %busy_flag.2328.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp ne i32 %and73.i, 0
  %spec.select.i = select i1 %tobool74.not.i, i1 true, i1 %can_busy_loop.1.off0329.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %.for.inc.i_crit_edge, %if.end33.i.for.inc.i_crit_edge
  %retval1.6.ph.i = phi i32 [ 0, %if.else.i ], [ %retval1.5.i, %.for.inc.i_crit_edge ], [ %retval1.2325.i, %if.end33.i.for.inc.i_crit_edge ]
  %busy_flag.4.ph.i = phi i32 [ %busy_flag.2328.i, %if.else.i ], [ 0, %.for.inc.i_crit_edge ], [ %busy_flag.2328.i, %if.end33.i.for.inc.i_crit_edge ]
  %can_busy_loop.3.off0.ph.i = phi i1 [ %spec.select.i, %if.else.i ], [ false, %.for.inc.i_crit_edge ], [ %can_busy_loop.1.off0329.i, %if.end33.i.for.inc.i_crit_edge ]
  %res_in19.2.ph.i = phi i32 [ %res_in19.1.i, %if.else.i ], [ %res_in19.1.i, %.for.inc.i_crit_edge ], [ %res_in19.0333.i, %if.end33.i.for.inc.i_crit_edge ]
  %res_out20.2.ph.i = phi i32 [ %res_out20.1.i, %if.else.i ], [ %res_out20.1.i, %.for.inc.i_crit_edge ], [ %res_out20.0334.i, %if.end33.i.for.inc.i_crit_edge ]
  %res_ex21.2.ph.i = phi i32 [ %res_ex21.1.i, %if.else.i ], [ %res_ex21.1.i, %.for.inc.i_crit_edge ], [ %res_ex21.0335.i, %if.end33.i.for.inc.i_crit_edge ]
  %inc78.i = add nuw nsw i32 %j.0332.i, 1
  %inc79.i = add nsw i32 %i.1326.i, 1
  %shl.i = shl i32 %bit.0330.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.0332.i)
  %cmp29.i = icmp ult i32 %j.0332.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %inc79.i, i32 %retval.0.i.i)
  %cmp31.not.i = icmp slt i32 %inc79.i, %retval.0.i.i
  %or.cond319.i = select i1 %cmp29.i, i1 %cmp31.not.i, i1 false
  br i1 %or.cond319.i, label %for.inc.i.if.end33.i_crit_edge, label %for.end.i

for.inc.i.if.end33.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res_in19.2.ph.i)
  %tobool80.not.i = icmp eq i32 %res_in19.2.ph.i, 0
  br i1 %tobool80.not.i, label %for.end.i.if.end82.i_crit_edge, label %if.then81.i

for.end.i.if.end82.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

if.then81.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %rinp.0346.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %res_in19.2.ph.i, ptr %rinp.0346.i, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then81.i, %for.end.i.if.end82.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res_out20.2.ph.i)
  %tobool83.not.i = icmp eq i32 %res_out20.2.ph.i, 0
  br i1 %tobool83.not.i, label %if.end82.i.if.end85.i_crit_edge, label %if.then84.i

if.end82.i.if.end85.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then84.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %routp.0349.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %res_out20.2.ph.i, ptr %routp.0349.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then84.i, %if.end82.i.if.end85.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res_ex21.2.ph.i)
  %tobool86.not.i = icmp eq i32 %res_ex21.2.ph.i, 0
  br i1 %tobool86.not.i, label %if.end85.i.if.end88.i_crit_edge, label %if.then87.i

if.end85.i.if.end88.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %rexp.0352.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %res_ex21.2.ph.i, ptr %rexp.0352.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then87.i, %if.end85.i.if.end88.i_crit_edge, %for.cond28.preheader.i.if.end88.i_crit_edge
  %can_busy_loop.1.off0.lcssa377388401.i = phi i1 [ %can_busy_loop.3.off0.ph.i, %if.then87.i ], [ %can_busy_loop.3.off0.ph.i, %if.end85.i.if.end88.i_crit_edge ], [ %can_busy_loop.0.off0358.i, %for.cond28.preheader.i.if.end88.i_crit_edge ]
  %busy_flag.2.lcssa376389400.i = phi i32 [ %busy_flag.4.ph.i, %if.then87.i ], [ %busy_flag.4.ph.i, %if.end85.i.if.end88.i_crit_edge ], [ %busy_flag.1345.i, %for.cond28.preheader.i.if.end88.i_crit_edge ]
  %i.1.lcssa375390399.i = phi i32 [ %inc79.i, %if.then87.i ], [ %inc79.i, %if.end85.i.if.end88.i_crit_edge ], [ %i.0344.i, %for.cond28.preheader.i.if.end88.i_crit_edge ]
  %retval1.2.lcssa374391398.i = phi i32 [ %retval1.6.ph.i, %if.then87.i ], [ %retval1.6.ph.i, %if.end85.i.if.end88.i_crit_edge ], [ %retval1.1343.i, %for.cond28.preheader.i.if.end88.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 576, i32 noundef 0) #9
  %call.i274.i = call i32 @__cond_resched() #9
  br label %cleanup91.i

cleanup91.i:                                      ; preds = %if.end88.i, %if.then26.i
  %retval1.8.i = phi i32 [ %retval1.1343.i, %if.then26.i ], [ %retval1.2.lcssa374391398.i, %if.end88.i ]
  %i.2.i = phi i32 [ %add.i, %if.then26.i ], [ %i.1.lcssa375390399.i, %if.end88.i ]
  %busy_flag.6.i = phi i32 [ %busy_flag.1345.i, %if.then26.i ], [ %busy_flag.2.lcssa376389400.i, %if.end88.i ]
  %can_busy_loop.5.off0.i = phi i1 [ %can_busy_loop.0.off0358.i, %if.then26.i ], [ %can_busy_loop.1.off0.lcssa377388401.i, %if.end88.i ]
  %incdec.ptr104.i = getelementptr i32, ptr %rinp.0346.i, i32 1
  %incdec.ptr105.i = getelementptr i32, ptr %routp.0349.i, i32 1
  %incdec.ptr106.i = getelementptr i32, ptr %rexp.0352.i, i32 1
  %cmp15.i = icmp slt i32 %i.2.i, %retval.0.i.i
  br i1 %cmp15.i, label %cleanup91.i.for.body.i_crit_edge, label %cleanup91.i.for.end107.i_crit_edge

cleanup91.i.for.end107.i_crit_edge:               ; preds = %cleanup91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end107.i

cleanup91.i.for.body.i_crit_edge:                 ; preds = %cleanup91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end107.i:                                     ; preds = %cleanup91.i.for.end107.i_crit_edge, %for.cond.i.for.end107.i_crit_edge
  %retval1.1.lcssa.i = phi i32 [ 0, %for.cond.i.for.end107.i_crit_edge ], [ %retval1.8.i, %cleanup91.i.for.end107.i_crit_edge ]
  %busy_flag.1.lcssa.i = phi i32 [ %busy_flag.0.i, %for.cond.i.for.end107.i_crit_edge ], [ %busy_flag.6.i, %cleanup91.i.for.end107.i_crit_edge ]
  %can_busy_loop.0.off0.lcssa.i = phi i1 [ false, %for.cond.i.for.end107.i_crit_edge ], [ %can_busy_loop.5.off0.i, %cleanup91.i.for.end107.i_crit_edge ]
  %95 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.lcssa.i)
  %tobool109.not.i = icmp eq i32 %retval1.1.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timed_out.1.i)
  %tobool110.not.i = icmp eq i32 %timed_out.1.i, 0
  %or.cond243.i = select i1 %tobool109.not.i, i1 %tobool110.not.i, i1 false
  br i1 %or.cond243.i, label %lor.lhs.false111.i, label %for.end107.i.do_select.exit_crit_edge

for.end107.i.do_select.exit_crit_edge:            ; preds = %for.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_select.exit

lor.lhs.false111.i:                               ; preds = %for.end107.i
  %96 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i275.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i275.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stack.i.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %104 = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i276.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i276.i, label %signal_pending.exit.i, label %lor.lhs.false111.i.if.end60.thread_crit_edge, !prof !156

lor.lhs.false111.i.if.end60.thread_crit_edge:     ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.thread

signal_pending.exit.i:                            ; preds = %lor.lhs.false111.i
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %101, align 4
  %and1.i.i.i.i.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool114.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool114.not.i, label %if.end116.i, label %signal_pending.exit.i.if.end60.thread_crit_edge

signal_pending.exit.i.if.end60.thread_crit_edge:  ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.thread

if.end116.i:                                      ; preds = %signal_pending.exit.i
  %107 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool117.not.i = icmp eq i32 %108, 0
  br i1 %tobool117.not.i, label %if.end120.i, label %if.end116.i.do_select.exit_crit_edge

if.end116.i.do_select.exit_crit_edge:             ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_select.exit

if.end120.i:                                      ; preds = %if.end116.i
  br i1 %can_busy_loop.0.off0.lcssa.i, label %land.lhs.true122.i, label %if.end120.i.if.end132.i_crit_edge

if.end120.i.if.end132.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

land.lhs.true122.i:                               ; preds = %if.end120.i
  %109 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %110, align 16384
  %113 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not.i = icmp eq i32 %113, 0
  br i1 %tobool.i.not.i, label %if.then124.i, label %land.lhs.true122.i.if.end132.i_crit_edge

land.lhs.true122.i.if.end132.i_crit_edge:         ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

if.then124.i:                                     ; preds = %land.lhs.true122.i
  br i1 %tobool125.not.i, label %if.then126.i, label %if.end128.i

if.then126.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i279.i = call i64 @sched_clock() #9
  %shr.i280.i = lshr i64 %call.i.i279.i, 10
  %conv.i.i = trunc i64 %shr.i280.i to i32
  br label %for.cond.i.outer182

if.end128.i:                                      ; preds = %if.then124.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %114 = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i281.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i281.i, label %if.end128.i.if.end132.i_crit_edge, label %busy_loop_timeout.exit.i

if.end128.i.if.end132.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

busy_loop_timeout.exit.i:                         ; preds = %if.end128.i
  %add.i282.i = add i32 %114, %busy_start.0.i.ph185
  %call.i.i.i.i = call i64 @sched_clock() #9
  %shr.i.i.i = lshr i64 %call.i.i.i.i, 10
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i.i = sub i32 %add.i282.i, %conv.i.i.i
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %busy_loop_timeout.exit.i.if.end132.i_crit_edge, label %busy_loop_timeout.exit.i.for.cond.i_crit_edge

busy_loop_timeout.exit.i.for.cond.i_crit_edge:    ; preds = %busy_loop_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

busy_loop_timeout.exit.i.if.end132.i_crit_edge:   ; preds = %busy_loop_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

if.end132.i:                                      ; preds = %busy_loop_timeout.exit.i.if.end132.i_crit_edge, %if.end128.i.if.end132.i_crit_edge, %land.lhs.true122.i.if.end132.i_crit_edge, %if.end120.i.if.end132.i_crit_edge
  %tobool135.not.i = icmp ne ptr %to.0.i.ph, null
  %115 = or i1 %tobool.not.i138, %tobool135.not.i
  br i1 %115, label %if.end132.i.if.end138.i_crit_edge, label %if.then136.i

if.end132.i.if.end138.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.i

if.then136.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %116)
  %.unpack.i = load i64, ptr %end_time, align 8
  %117 = ptrtoint ptr %.elt239.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %.unpack240.i = load i64, ptr %.elt239.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack.i)
  %cmp.i.i.i = icmp sgt i64 %.unpack.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i = lshr i64 %.unpack240.i, 32
  %mul.i.i.i = mul i64 %.unpack.i, 1000000000
  %add.i.i.i141 = add i64 %ts.sroa.2.8.extract.shift.i.i, %mul.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %add.i.i.i141, !prof !155
  %118 = ptrtoint ptr %expire.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %retval.0.i.i.i, ptr %expire.i, align 8
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then136.i, %if.end132.i.if.end138.i_crit_edge
  %to.1.i = phi ptr [ %expire.i, %if.then136.i ], [ %to.0.i.ph, %if.end132.i.if.end138.i_crit_edge ]
  %call139.i = call fastcc i32 @poll_schedule_timeout(ptr noundef nonnull %table.i, i32 noundef 1, ptr noundef %to.1.i, i32 noundef %slack.0.off0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  %spec.select245.i = zext i1 %tobool140.not.i to i32
  br label %for.cond.i.outer

if.end60.thread:                                  ; preds = %signal_pending.exit.i.if.end60.thread_crit_edge, %lor.lhs.false111.i.if.end60.thread_crit_edge
  call void @poll_freewait(ptr noundef nonnull %table.i) #9
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %table.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expire.i) #9
  br label %if.then62

do_select.exit:                                   ; preds = %if.end116.i.do_select.exit_crit_edge, %for.end107.i.do_select.exit_crit_edge
  %retval1.9.ph.i = phi i32 [ %108, %if.end116.i.do_select.exit_crit_edge ], [ %retval1.1.lcssa.i, %for.end107.i.do_select.exit_crit_edge ]
  call void @poll_freewait(ptr noundef nonnull %table.i) #9
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %table.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expire.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.9.ph.i)
  %cmp58 = icmp slt i32 %retval1.9.ph.i, 0
  br i1 %cmp58, label %do_select.exit.out83_crit_edge, label %if.end60

do_select.exit.out83_crit_edge:                   ; preds = %do_select.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

if.end60:                                         ; preds = %do_select.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.9.ph.i)
  %tobool61.not = icmp eq i32 %retval1.9.ph.i, 0
  br i1 %tobool61.not, label %if.end60.if.then62_crit_edge, label %if.end60.if.end69_crit_edge

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end60.if.then62_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.then62:                                        ; preds = %if.end60.if.then62_crit_edge, %if.end60.thread
  %119 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %stack.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %122, align 4
  %125 = and i32 %124, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i142 = icmp eq i32 %125, 0
  br i1 %tobool.not.i142, label %signal_pending.exit, label %if.then62.out83_crit_edge, !prof !156

if.then62.out83_crit_edge:                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

signal_pending.exit:                              ; preds = %if.then62
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %122, align 4
  %and1.i.i.i.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool66.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool66.not, label %signal_pending.exit.if.end69_crit_edge, label %signal_pending.exit.out83_crit_edge

signal_pending.exit.out83_crit_edge:              ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

signal_pending.exit.if.end69_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69:                                         ; preds = %signal_pending.exit.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  %ret.0 = phi i32 [ %retval1.9.ph.i, %if.end60.if.end69_crit_edge ], [ 0, %signal_pending.exit.if.end69_crit_edge ]
  %call71 = call fastcc i32 @set_fd_set(i32 noundef %19, ptr noundef %inp, ptr noundef %add.ptr36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %if.end69.if.then81_crit_edge

if.end69.if.then81_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false73:                                  ; preds = %if.end69
  %call75 = call fastcc i32 @set_fd_set(i32 noundef %19, ptr noundef %outp, ptr noundef %add.ptr38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %lor.lhs.false73.if.then81_crit_edge

lor.lhs.false73.if.then81_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false77:                                  ; preds = %lor.lhs.false73
  %call79 = call fastcc i32 @set_fd_set(i32 noundef %19, ptr noundef %exp, ptr noundef %add.ptr40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %lor.lhs.false77.out83_crit_edge, label %lor.lhs.false77.if.then81_crit_edge

lor.lhs.false77.if.then81_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false77.out83_crit_edge:                  ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #11
  br label %out83

if.then81:                                        ; preds = %lor.lhs.false77.if.then81_crit_edge, %lor.lhs.false73.if.then81_crit_edge, %if.end69.if.then81_crit_edge
  br label %out83

out83:                                            ; preds = %if.then81, %lor.lhs.false77.out83_crit_edge, %signal_pending.exit.out83_crit_edge, %if.then62.out83_crit_edge, %do_select.exit.out83_crit_edge, %do_select.exit.thread, %lor.lhs.false48.out83_crit_edge, %lor.lhs.false44.out83_crit_edge, %if.end32.out83_crit_edge
  %ret.1 = phi i32 [ %call42, %if.end32.out83_crit_edge ], [ %call46, %lor.lhs.false44.out83_crit_edge ], [ %call50, %lor.lhs.false48.out83_crit_edge ], [ %retval1.9.ph.i, %do_select.exit.out83_crit_edge ], [ -14, %if.then81 ], [ %ret.0, %lor.lhs.false77.out83_crit_edge ], [ -514, %signal_pending.exit.out83_crit_edge ], [ %retval.0.i.i, %do_select.exit.thread ], [ -514, %if.then62.out83_crit_edge ]
  %cmp85.not = icmp eq ptr %bits.0, %stack_fds
  br i1 %cmp85.not, label %out83.out_nofds_crit_edge, label %if.then86

out83.out_nofds_crit_edge:                        ; preds = %out83
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_nofds

if.then86:                                        ; preds = %out83
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef %bits.0) #9
  br label %out_nofds

out_nofds:                                        ; preds = %if.then86, %out83.out_nofds_crit_edge, %if.end26.out_nofds_crit_edge, %entry.out_nofds_crit_edge
  %ret.2 = phi i32 [ -22, %entry.out_nofds_crit_edge ], [ %ret.1, %if.then86 ], [ %ret.1, %out83.out_nofds_crit_edge ], [ -12, %if.end26.out_nofds_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %stack_fds) #9
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_fd_set(i32 noundef %nr, ptr noundef %ufdset, ptr noundef %fdset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %nr, 31
  %0 = lshr i32 %sub, 3
  %mul = and i32 %0, 536870908
  %tobool.not = icmp eq ptr %ufdset, null
  br i1 %tobool.not, label %if.end, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %fdset, i32 noundef %mul, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %ufdset, i32 %mul, i32 -1226833920) #13, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fdset, i32 noundef %mul) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !158
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %fdset, ptr noundef nonnull %ufdset, i32 noundef %mul) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.return_crit_edge, label %if.then11.i.i, !prof !156

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdset, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memset(ptr %fdset, i32 0, i32 %mul)
  br label %return

return:                                           ; preds = %if.end, %if.then11.i.i, %if.end.i.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end.i.i.return_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_fd_set(i32 noundef %nr, ptr noundef %ufdset, ptr noundef %fdset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %ufdset, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %sub = add i32 %nr, 31
  %0 = lshr i32 %sub, 3
  %mul = and i32 %0, 536870908
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 143) #9
  %call.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fdset, i32 noundef %mul) #9
  tail call void @__check_object_size(ptr noundef %fdset, i32 noundef %mul, i1 noundef zeroext true) #9
  %call.i8.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %ufdset, ptr noundef %fdset, i32 noundef %mul) #9
  br label %return

return:                                           ; preds = %if.end.i, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call.i8.i, %if.end.i ], [ %mul, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_select(i32 noundef %n, i32 noundef %inp, i32 noundef %outp, i32 noundef %exp, i32 noundef %tvp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %inp to ptr
  %1 = inttoptr i32 %outp to ptr
  %2 = inttoptr i32 %exp to ptr
  %3 = inttoptr i32 %tvp to ptr
  %call.i = tail call fastcc i32 @kern_select(i32 noundef %n, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pselect6(i32 noundef %n, i32 noundef %inp, i32 noundef %outp, i32 noundef %exp, i32 noundef %tsp, i32 noundef %sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %inp to ptr
  %1 = inttoptr i32 %outp to ptr
  %2 = inttoptr i32 %exp to ptr
  %3 = inttoptr i32 %tsp to ptr
  %4 = inttoptr i32 %sig to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sig)
  %tobool.not.i.i = icmp eq i32 %sig, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %if.then.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 8, i32 -1226833920) #13, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then.i.i.__do_sys_pselect6.exit_crit_edge

if.then.i.i.__do_sys_pselect6.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_pselect6.exit

do.body.i.i:                                      ; preds = %if.then.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 785) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !158
  %and.i.i.i = and i32 %8, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %4, i32 -1226833921) #9, !srcloc !162
  %asmresult4.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult4.i.i)
  %tobool8.not.i.i = icmp eq i32 %asmresult4.i.i, 0
  br i1 %tobool8.not.i.i, label %do.body13.i.i, label %do.body.i.i.__do_sys_pselect6.exit_crit_edge, !prof !156

do.body.i.i.__do_sys_pselect6.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_pselect6.exit

do.body13.i.i:                                    ; preds = %do.body.i.i
  %asmresult5.i.i = extractvalue { i32, i32 } %9, 1
  %10 = inttoptr i32 %asmresult5.i.i to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 786) #9
  %size.i.i = getelementptr inbounds %struct.sigset_argpack, ptr %4, i32 0, i32 1
  %11 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i46.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i46.i.i to ptr
  %cpu_domain.i.i47.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i47.i.i) #5, !srcloc !158
  %and.i48.i.i = and i32 %13, -13
  %or.i49.i.i = or i32 %and.i48.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i49.i.i) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %size.i.i, i32 -1226833921) #9, !srcloc !163
  %asmresult23.i.i = extractvalue { i32, i32 } %14, 0
  %asmresult24.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult23.i.i)
  %tobool27.not.i.i = icmp eq i32 %asmresult23.i.i, 0
  br i1 %tobool27.not.i.i, label %do.body13.i.i.if.end.i_crit_edge, label %do.body13.i.i.__do_sys_pselect6.exit_crit_edge, !prof !156

do.body13.i.i.__do_sys_pselect6.exit_crit_edge:   ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_pselect6.exit

do.body13.i.i.if.end.i_crit_edge:                 ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %x.sroa.5.1.ph.i = phi i32 [ %asmresult24.i.i, %do.body13.i.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %x.sroa.0.0.ph.i = phi ptr [ %10, %do.body13.i.i.if.end.i_crit_edge ], [ null, %entry.if.end.i_crit_edge ]
  %call1.i = tail call fastcc i32 @do_pselect(i32 noundef %n, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %x.sroa.0.0.ph.i, i32 noundef %x.sroa.5.1.ph.i, i32 noundef 2) #9
  br label %__do_sys_pselect6.exit

__do_sys_pselect6.exit:                           ; preds = %if.end.i, %do.body13.i.i.__do_sys_pselect6.exit_crit_edge, %do.body.i.i.__do_sys_pselect6.exit_crit_edge, %if.then.i.i.__do_sys_pselect6.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -14, %if.then.i.i.__do_sys_pselect6.exit_crit_edge ], [ -14, %do.body13.i.i.__do_sys_pselect6.exit_crit_edge ], [ -14, %do.body.i.i.__do_sys_pselect6.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pselect6_time32(i32 noundef %n, i32 noundef %inp, i32 noundef %outp, i32 noundef %exp, i32 noundef %tsp, i32 noundef %sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %inp to ptr
  %1 = inttoptr i32 %outp to ptr
  %2 = inttoptr i32 %exp to ptr
  %3 = inttoptr i32 %tsp to ptr
  %4 = inttoptr i32 %sig to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sig)
  %tobool.not.i.i = icmp eq i32 %sig, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %if.then.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 8, i32 -1226833920) #13, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then.i.i.__do_sys_pselect6_time32.exit_crit_edge

if.then.i.i.__do_sys_pselect6_time32.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_pselect6_time32.exit

do.body.i.i:                                      ; preds = %if.then.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 785) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !158
  %and.i.i.i = and i32 %8, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %4, i32 -1226833921) #9, !srcloc !162
  %asmresult4.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult4.i.i)
  %tobool8.not.i.i = icmp eq i32 %asmresult4.i.i, 0
  br i1 %tobool8.not.i.i, label %do.body13.i.i, label %do.body.i.i.__do_sys_pselect6_time32.exit_crit_edge, !prof !156

do.body.i.i.__do_sys_pselect6_time32.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_pselect6_time32.exit

do.body13.i.i:                                    ; preds = %do.body.i.i
  %asmresult5.i.i = extractvalue { i32, i32 } %9, 1
  %10 = inttoptr i32 %asmresult5.i.i to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 786) #9
  %size.i.i = getelementptr inbounds %struct.sigset_argpack, ptr %4, i32 0, i32 1
  %11 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i46.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i46.i.i to ptr
  %cpu_domain.i.i47.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i47.i.i) #5, !srcloc !158
  %and.i48.i.i = and i32 %13, -13
  %or.i49.i.i = or i32 %and.i48.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i49.i.i) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %size.i.i, i32 -1226833921) #9, !srcloc !163
  %asmresult23.i.i = extractvalue { i32, i32 } %14, 0
  %asmresult24.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult23.i.i)
  %tobool27.not.i.i = icmp eq i32 %asmresult23.i.i, 0
  br i1 %tobool27.not.i.i, label %do.body13.i.i.if.end.i_crit_edge, label %do.body13.i.i.__do_sys_pselect6_time32.exit_crit_edge, !prof !156

do.body13.i.i.__do_sys_pselect6_time32.exit_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_pselect6_time32.exit

do.body13.i.i.if.end.i_crit_edge:                 ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %x.sroa.5.1.ph.i = phi i32 [ %asmresult24.i.i, %do.body13.i.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %x.sroa.0.0.ph.i = phi ptr [ %10, %do.body13.i.i.if.end.i_crit_edge ], [ null, %entry.if.end.i_crit_edge ]
  %call1.i = tail call fastcc i32 @do_pselect(i32 noundef %n, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %x.sroa.0.0.ph.i, i32 noundef %x.sroa.5.1.ph.i, i32 noundef 3) #9
  br label %__do_sys_pselect6_time32.exit

__do_sys_pselect6_time32.exit:                    ; preds = %if.end.i, %do.body13.i.i.__do_sys_pselect6_time32.exit_crit_edge, %do.body.i.i.__do_sys_pselect6_time32.exit_crit_edge, %if.then.i.i.__do_sys_pselect6_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -14, %if.then.i.i.__do_sys_pselect6_time32.exit_crit_edge ], [ -14, %do.body13.i.i.__do_sys_pselect6_time32.exit_crit_edge ], [ -14, %do.body.i.i.__do_sys_pselect6_time32.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_select(i32 noundef %arg) #0 align 64 {
entry:
  %a.i = alloca %struct.sel_arg_struct, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %a.i) #9
  %1 = getelementptr inbounds %struct.sel_arg_struct, ptr %a.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sel_arg_struct, ptr %a.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sel_arg_struct, ptr %a.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sel_arg_struct, ptr %a.i, i32 0, i32 4
  %5 = call ptr @memset(ptr %a.i, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %entry.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.then11.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 20, i32 -1226833920) #13, !srcloc !157
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !156

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a.i, i32 noundef 20) #9
  %7 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !158
  %and.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %a.i, ptr noundef %0, i32 noundef 20) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !156

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %entry.if.then11.i.i.i_crit_edge
  %res.0.i.i4.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 20, %entry.if.then11.i.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 20, %res.0.i.i4.i
  %add.ptr.i.i.i = getelementptr i8, ptr %a.i, i32 %sub.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i4.i)
  br label %__do_sys_old_select.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %a.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %a.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %call1.i = call fastcc i32 @kern_select(i32 noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20) #9
  br label %__do_sys_old_select.exit

__do_sys_old_select.exit:                         ; preds = %if.end.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %a.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_poll(i32 noundef %ufds, i32 noundef %nfds, i32 noundef %timeout_msecs) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  %end_time.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ufds to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time.i) #9
  %1 = call ptr @memset(ptr %end_time.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %timeout_msecs)
  %cmp.i = icmp sgt i32 %timeout_msecs, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %div32.i = udiv i32 %timeout_msecs, 1000
  %2 = mul i32 %div32.i, 1000
  %rem33.i.decomposed = sub i32 %timeout_msecs, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %timeout_msecs)
  %3 = icmp ult i32 %timeout_msecs, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem33.i.decomposed)
  %tobool1.not.i.i = icmp eq i32 %rem33.i.decomposed, 0
  %or.cond.i.i = and i1 %3, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec3.i.i = getelementptr inbounds %struct.timespec64, ptr %end_time.i, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tv_nsec3.i.i, align 8
  %5 = ptrtoint ptr %end_time.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %end_time.i, align 8
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nuw nsw i32 %rem33.i.decomposed, 1000000
  %6 = zext i32 %div32.i to i64
  %ts.sroa.6.8.insert.ext.i.i = zext i32 %mul.i to i64
  %ts.sroa.6.8.insert.shift.i.i = shl nuw nsw i64 %ts.sroa.6.8.insert.ext.i.i, 32
  %ts.sroa.6.8.insert.insert.i.i = or i64 %ts.sroa.6.8.insert.shift.i.i, 4294967295
  call void @ktime_get_ts64(ptr noundef nonnull %end_time.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #9
  %7 = ptrtoint ptr %end_time.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack.i.i = load i64, ptr %end_time.i, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack.i.i, 0
  %.elt12.i.i = getelementptr inbounds [2 x i64], ptr %end_time.i, i32 0, i32 1
  %9 = ptrtoint ptr %.elt12.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %.unpack13.i.i = load i64, ptr %.elt12.i.i, align 8
  %10 = insertvalue [2 x i64] %8, i64 %.unpack13.i.i, 1
  %.fca.0.insert.i.i = insertvalue [2 x i64] poison, i64 %6, 0
  %.fca.1.insert.i.i = insertvalue [2 x i64] %.fca.0.insert.i.i, i64 %ts.sroa.6.8.insert.insert.i.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, [2 x i64] %10, [2 x i64] %.fca.1.insert.i.i) #9
  %11 = call ptr @memcpy(ptr %end_time.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then2.i.i, %entry.if.end.i_crit_edge
  %to.0.i = phi ptr [ null, %entry.if.end.i_crit_edge ], [ %end_time.i, %if.then2.i.i ], [ %end_time.i, %if.else.i.i ]
  %call1.i = call fastcc i32 @do_sys_poll(ptr noundef %0, i32 noundef %nfds, ptr noundef %to.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -514, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, -514
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.__do_sys_poll.exit_crit_edge

if.end.i.__do_sys_poll.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_poll.exit

if.then4.i:                                       ; preds = %if.end.i
  %12 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %0, ptr %16, align 8
  %nfds8.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %nfds8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %nfds, ptr %nfds8.i, align 4
  br i1 %cmp.i, label %if.then11.i, label %if.then4.i.if.end16.i_crit_edge

if.then4.i.if.end16.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %end_time.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %end_time.i, align 8
  %conv12.i = trunc i64 %20 to i32
  %tv_sec13.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 3
  %21 = ptrtoint ptr %tv_sec13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv12.i, ptr %tv_sec13.i, align 4
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %end_time.i, i32 0, i32 1
  %22 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec14.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 4
  %24 = ptrtoint ptr %tv_nsec14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tv_nsec14.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %if.then4.i.if.end16.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.then11.i ], [ 0, %if.then4.i.if.end16.i_crit_edge ]
  %25 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %25, align 8
  %fn1.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 1
  %27 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @do_restart_poll, ptr %fn1.i.i, align 4
  br label %__do_sys_poll.exit

__do_sys_poll.exit:                               ; preds = %if.end16.i, %if.end.i.__do_sys_poll.exit_crit_edge
  %ret.0.i = phi i32 [ -516, %if.end16.i ], [ %call1.i, %if.end.i.__do_sys_poll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time.i) #9
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ppoll(i32 noundef %ufds, i32 noundef %nfds, i32 noundef %tsp, i32 noundef %sigmask, i32 noundef %sigsetsize) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %end_time.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ufds to ptr
  %1 = inttoptr i32 %tsp to ptr
  %2 = inttoptr i32 %sigmask to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time.i) #9
  %4 = call ptr @memset(ptr %end_time.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tsp)
  %tobool.not.i = icmp eq i32 %tsp, 0
  br i1 %tobool.not.i, label %entry.if.end7.i_crit_edge, label %if.then.i

entry.if.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.__do_sys_ppoll.exit_crit_edge

if.then.i.__do_sys_ppoll.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_ppoll.exit

if.end.i:                                         ; preds = %if.then.i
  %5 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %ts.sroa.6.8.insert.ext.i.i = zext i32 %8 to i64
  %ts.sroa.6.8.insert.shift.i.i = shl nuw i64 %ts.sroa.6.8.insert.ext.i.i, 32
  %ts.sroa.6.8.insert.insert.i.i = or i64 %ts.sroa.6.8.insert.shift.i.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.i.i.i = icmp sgt i64 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %8)
  %cmp1.i.i.i = icmp ult i32 %8, 1000000000
  %or.cond16.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %or.cond16.i.i, label %if.end.i.i, label %if.end.i.__do_sys_ppoll.exit_crit_edge

if.end.i.__do_sys_ppoll.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_ppoll.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i.i = icmp eq i64 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i.i = icmp eq i32 %8, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec3.i.i = getelementptr inbounds %struct.timespec64, ptr %end_time.i, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tv_nsec3.i.i, align 8
  %10 = ptrtoint ptr %end_time.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %end_time.i, align 8
  br label %if.end7.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ktime_get_ts64(ptr noundef nonnull %end_time.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #9
  %11 = ptrtoint ptr %end_time.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack.i.i = load i64, ptr %end_time.i, align 8
  %12 = insertvalue [2 x i64] undef, i64 %.unpack.i.i, 0
  %.elt12.i.i = getelementptr inbounds [2 x i64], ptr %end_time.i, i32 0, i32 1
  %13 = ptrtoint ptr %.elt12.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack13.i.i = load i64, ptr %.elt12.i.i, align 8
  %14 = insertvalue [2 x i64] %12, i64 %.unpack13.i.i, 1
  %.fca.0.insert.i.i = insertvalue [2 x i64] poison, i64 %6, 0
  %.fca.1.insert.i.i = insertvalue [2 x i64] %.fca.0.insert.i.i, i64 %ts.sroa.6.8.insert.insert.i.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, [2 x i64] %14, [2 x i64] %.fca.1.insert.i.i) #9
  %15 = call ptr @memcpy(ptr %end_time.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i.i, %if.then2.i.i, %entry.if.end7.i_crit_edge
  %to.0.i = phi ptr [ null, %entry.if.end7.i_crit_edge ], [ %end_time.i, %if.else.i.i ], [ %end_time.i, %if.then2.i.i ]
  %call8.i = call i32 @set_user_sigmask(ptr noundef %2, i32 noundef %sigsetsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.__do_sys_ppoll.exit_crit_edge

if.end7.i.__do_sys_ppoll.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_ppoll.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = call fastcc i32 @do_sys_poll(ptr noundef %0, i32 noundef %nfds, ptr noundef %to.0.i) #9
  %call13.i = call fastcc i32 @poll_select_finish(ptr noundef nonnull %end_time.i, ptr noundef %1, i32 noundef 2, i32 noundef %call12.i) #9
  br label %__do_sys_ppoll.exit

__do_sys_ppoll.exit:                              ; preds = %if.end11.i, %if.end7.i.__do_sys_ppoll.exit_crit_edge, %if.end.i.__do_sys_ppoll.exit_crit_edge, %if.then.i.__do_sys_ppoll.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end11.i ], [ -14, %if.then.i.__do_sys_ppoll.exit_crit_edge ], [ %call8.i, %if.end7.i.__do_sys_ppoll.exit_crit_edge ], [ -22, %if.end.i.__do_sys_ppoll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ppoll_time32(i32 noundef %ufds, i32 noundef %nfds, i32 noundef %tsp, i32 noundef %sigmask, i32 noundef %sigsetsize) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %end_time.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ufds to ptr
  %1 = inttoptr i32 %tsp to ptr
  %2 = inttoptr i32 %sigmask to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time.i) #9
  %4 = call ptr @memset(ptr %end_time.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tsp)
  %tobool.not.i = icmp eq i32 %tsp, 0
  br i1 %tobool.not.i, label %entry.if.end7.i_crit_edge, label %if.then.i

entry.if.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.__do_sys_ppoll_time32.exit_crit_edge

if.then.i.__do_sys_ppoll_time32.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_ppoll_time32.exit

if.end.i:                                         ; preds = %if.then.i
  %5 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %ts.sroa.6.8.insert.ext.i.i = zext i32 %8 to i64
  %ts.sroa.6.8.insert.shift.i.i = shl nuw i64 %ts.sroa.6.8.insert.ext.i.i, 32
  %ts.sroa.6.8.insert.insert.i.i = or i64 %ts.sroa.6.8.insert.shift.i.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.i.i.i = icmp sgt i64 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %8)
  %cmp1.i.i.i = icmp ult i32 %8, 1000000000
  %or.cond16.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %or.cond16.i.i, label %if.end.i.i, label %if.end.i.__do_sys_ppoll_time32.exit_crit_edge

if.end.i.__do_sys_ppoll_time32.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_ppoll_time32.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i.i = icmp eq i64 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i.i = icmp eq i32 %8, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec3.i.i = getelementptr inbounds %struct.timespec64, ptr %end_time.i, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tv_nsec3.i.i, align 8
  %10 = ptrtoint ptr %end_time.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %end_time.i, align 8
  br label %if.end7.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ktime_get_ts64(ptr noundef nonnull %end_time.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #9
  %11 = ptrtoint ptr %end_time.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack.i.i = load i64, ptr %end_time.i, align 8
  %12 = insertvalue [2 x i64] undef, i64 %.unpack.i.i, 0
  %.elt12.i.i = getelementptr inbounds [2 x i64], ptr %end_time.i, i32 0, i32 1
  %13 = ptrtoint ptr %.elt12.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack13.i.i = load i64, ptr %.elt12.i.i, align 8
  %14 = insertvalue [2 x i64] %12, i64 %.unpack13.i.i, 1
  %.fca.0.insert.i.i = insertvalue [2 x i64] poison, i64 %6, 0
  %.fca.1.insert.i.i = insertvalue [2 x i64] %.fca.0.insert.i.i, i64 %ts.sroa.6.8.insert.insert.i.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, [2 x i64] %14, [2 x i64] %.fca.1.insert.i.i) #9
  %15 = call ptr @memcpy(ptr %end_time.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i.i, %if.then2.i.i, %entry.if.end7.i_crit_edge
  %to.0.i = phi ptr [ null, %entry.if.end7.i_crit_edge ], [ %end_time.i, %if.else.i.i ], [ %end_time.i, %if.then2.i.i ]
  %call8.i = call i32 @set_user_sigmask(ptr noundef %2, i32 noundef %sigsetsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.__do_sys_ppoll_time32.exit_crit_edge

if.end7.i.__do_sys_ppoll_time32.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_ppoll_time32.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = call fastcc i32 @do_sys_poll(ptr noundef %0, i32 noundef %nfds, ptr noundef %to.0.i) #9
  %call13.i = call fastcc i32 @poll_select_finish(ptr noundef nonnull %end_time.i, ptr noundef %1, i32 noundef 3, i32 noundef %call12.i) #9
  br label %__do_sys_ppoll_time32.exit

__do_sys_ppoll_time32.exit:                       ; preds = %if.end11.i, %if.end7.i.__do_sys_ppoll_time32.exit_crit_edge, %if.end.i.__do_sys_ppoll_time32.exit_crit_edge, %if.then.i.__do_sys_ppoll_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end11.i ], [ -14, %if.then.i.__do_sys_ppoll_time32.exit_crit_edge ], [ %call8.i, %if.end7.i.__do_sys_ppoll_time32.exit_crit_edge ], [ -22, %if.end.i.__do_sys_ppoll_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pollwake(ptr nocapture noundef readonly %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #0 align 64 {
entry:
  %dummy_wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  %key2 = getelementptr i8, ptr %wait, i32 -4
  %1 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key2, align 4
  %and = and i32 %2, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %private.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dummy_wait.i) #9
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %dummy_wait.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %dummy_wait.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %dummy_wait.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %dummy_wait.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %dummy_wait.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dummy_wait.i, align 4
  %polling_task.i = getelementptr inbounds %struct.poll_wqueues, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %polling_task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %polling_task.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %5, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_wake_function, ptr %6, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %7, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  %triggered.i = getelementptr inbounds %struct.poll_wqueues, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %triggered.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %triggered.i, align 4
  %call.i = call i32 @default_wake_function(ptr noundef nonnull %dummy_wait.i, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dummy_wait.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_schedule_timeout(ptr noundef %pwq, i32 noundef %state, ptr noundef %expires, i32 noundef %slack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@poll_schedule_timeout, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  %triggered = getelementptr inbounds %struct.poll_wqueues, ptr %pwq, i32 0, i32 3
  %7 = ptrtoint ptr %triggered to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %triggered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool63.not = icmp eq i32 %8, 0
  br i1 %tobool63.not, label %if.then64, label %__here.__here118_crit_edge

__here.__here118_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here118

if.then64:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %slack to i64
  %call65 = tail call i32 @schedule_hrtimeout_range(ptr noundef %expires, i64 noundef %conv, i32 noundef 0) #9
  br label %__here118

__here118:                                        ; preds = %if.then64, %__here.__here118_crit_edge
  %rc.0 = phi i32 [ -4, %__here.__here118_crit_edge ], [ %call65, %if.then64 ]
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %task_state_change122 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 212
  %11 = ptrtoint ptr %task_state_change122 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 ptrtoint (ptr blockaddress(@poll_schedule_timeout, %__here118) to i32), ptr %task_state_change122, align 4
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %12, align 128
  %14 = ptrtoint ptr %triggered to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %triggered, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !166
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kern_select(i32 noundef %n, ptr noundef %inp, ptr noundef %outp, ptr noundef %exp, ptr noundef %tvp) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %end_time = alloca %struct.timespec64, align 8
  %tv = alloca %struct.__kernel_old_timeval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time) #9
  %0 = call ptr @memset(ptr %end_time, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tv) #9
  %1 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tv, align 4, !annotation !151
  %2 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %tv, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !151
  %tobool.not = icmp eq ptr %tvp, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end59.i.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %tvp, i32 8, i32 -1226833920) #13, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tv, i32 noundef 8) #9
  %5 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !158
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tv, ptr noundef nonnull %tvp, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !156

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i21 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i21
  %add.ptr.i.i = getelementptr i8, ptr %tv, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i21)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %9 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %.frozen = freeze i32 %12
  %div = sdiv i32 %.frozen, 1000000
  %add = add i32 %div, %10
  %conv = sext i32 %add to i64
  %13 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %.frozen, %13
  %mul = mul nsw i32 %rem.decomposed, 1000
  %ts.sroa.6.8.insert.ext.i = zext i32 %mul to i64
  %ts.sroa.6.8.insert.shift.i = shl nuw i64 %ts.sroa.6.8.insert.ext.i, 32
  %ts.sroa.6.8.insert.insert.i = or i64 %ts.sroa.6.8.insert.shift.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp.i.i17 = icmp sgt i32 %add, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %mul)
  %cmp1.i.i18 = icmp ult i32 %mul, 1000000000
  %or.cond16.i = and i1 %cmp.i.i17, %cmp1.i.i18
  br i1 %or.cond16.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %14 = or i32 %add, %rem.decomposed
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec3.i = getelementptr inbounds %struct.timespec64, ptr %end_time, i32 0, i32 1
  %16 = ptrtoint ptr %tv_nsec3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tv_nsec3.i, align 8
  %17 = ptrtoint ptr %end_time to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %end_time, align 8
  br label %if.end8

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ktime_get_ts64(ptr noundef nonnull %end_time) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  %18 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %18)
  %.unpack.i = load i64, ptr %end_time, align 8
  %19 = insertvalue [2 x i64] undef, i64 %.unpack.i, 0
  %.elt12.i = getelementptr inbounds [2 x i64], ptr %end_time, i32 0, i32 1
  %20 = ptrtoint ptr %.elt12.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %.unpack13.i = load i64, ptr %.elt12.i, align 8
  %21 = insertvalue [2 x i64] %19, i64 %.unpack13.i, 1
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %conv, 0
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %ts.sroa.6.8.insert.insert.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, [2 x i64] %21, [2 x i64] %.fca.1.insert.i) #9
  %22 = call ptr @memcpy(ptr %end_time, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  br label %if.end8

if.end8:                                          ; preds = %if.else.i, %if.then2.i, %entry.if.end8_crit_edge
  %to.0 = phi ptr [ null, %entry.if.end8_crit_edge ], [ %end_time, %if.else.i ], [ %end_time, %if.then2.i ]
  %call9 = call i32 @core_sys_select(i32 noundef %n, ptr noundef %inp, ptr noundef %outp, ptr noundef %exp, ptr noundef %to.0)
  %call10 = call fastcc i32 @poll_select_finish(ptr noundef nonnull %end_time, ptr noundef %tvp, i32 noundef 0, i32 noundef %call9)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tv) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_select_finish(ptr nocapture noundef readonly %end_time, ptr noundef %p, i32 noundef %pt_type, i32 noundef %ret) unnamed_addr #0 align 64 {
entry:
  %rts = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  %rtv = alloca %struct.__kernel_old_timeval, align 4
  %rtv22 = alloca %struct.old_timeval32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rts) #9
  %0 = call ptr @memset(ptr %rts, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -514, i32 %ret)
  %cmp = icmp eq i32 %ret, -514
  %1 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  br i1 %cmp, label %if.then.i84, label %if.else.i

if.then.i84:                                      ; preds = %entry
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.then.i84.restore_saved_sigmask_unless.exit_crit_edge, !prof !156

if.then.i84.restore_saved_sigmask_unless.exit_crit_edge: ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore_saved_sigmask_unless.exit

signal_pending.exit.i:                            ; preds = %if.then.i84
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and1.i.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %signal_pending.exit.i.restore_saved_sigmask_unless.exit_crit_edge, !prof !155

signal_pending.exit.i.restore_saved_sigmask_unless.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore_saved_sigmask_unless.exit

do.end.i:                                         ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 519, i32 noundef 9, ptr noundef null) #9
  br label %restore_saved_sigmask_unless.exit

if.else.i:                                        ; preds = %entry
  %call.i.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.restore_saved_sigmask_unless.exit_crit_edge, label %if.then.i.i

if.else.i.restore_saved_sigmask_unless.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore_saved_sigmask_unless.exit

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %saved_sigmask.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 115
  tail call void @__set_current_blocked(ptr noundef %saved_sigmask.i.i) #9
  br label %restore_saved_sigmask_unless.exit

restore_saved_sigmask_unless.exit:                ; preds = %if.then.i.i, %if.else.i.restore_saved_sigmask_unless.exit_crit_edge, %do.end.i, %signal_pending.exit.i.restore_saved_sigmask_unless.exit_crit_edge, %if.then.i84.restore_saved_sigmask_unless.exit_crit_edge
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %restore_saved_sigmask_unless.exit.cleanup53_crit_edge, label %if.end

restore_saved_sigmask_unless.exit.cleanup53_crit_edge: ; preds = %restore_saved_sigmask_unless.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end:                                           ; preds = %restore_saved_sigmask_unless.exit
  %16 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 62
  %20 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %personality, align 32
  %and = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.sticky_crit_edge

if.end.sticky_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sticky

if.end3:                                          ; preds = %if.end
  %22 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool4.not = icmp eq i64 %23, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %end_time, i32 0, i32 1
  %24 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not = icmp eq i32 %25, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup53_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %rts) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %26 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %.unpack = load i64, ptr %end_time, align 8
  %.elt70 = getelementptr inbounds [2 x i64], ptr %end_time, i32 0, i32 1
  %27 = ptrtoint ptr %.elt70 to i32
  call void @__asan_load8_noabort(i32 %27)
  %.unpack71 = load i64, ptr %.elt70, align 8
  %28 = ptrtoint ptr %rts to i32
  call void @__asan_load8_noabort(i32 %28)
  %.fca.0.load = load i64, ptr %rts, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %rts, i32 0, i32 1
  %29 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %29)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack71, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %30 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %.fca.0.load
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i) #9
  %31 = call ptr @memcpy(ptr %rts, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %32 = ptrtoint ptr %rts to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp9 = icmp slt i64 %33, 0
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %.fca.1.gep, align 8
  %35 = ptrtoint ptr %rts to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %rts, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %36 = zext i32 %pt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pt_type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb36
    i32 3, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtv) #9
  %37 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %rtv, i32 0, i32 1
  %38 = ptrtoint ptr %rts to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rts, align 8
  %conv = trunc i64 %39 to i32
  %40 = ptrtoint ptr %rtv to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv, ptr %rtv, align 4
  %41 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %.fca.1.gep, align 8
  %div = sdiv i32 %42, 1000
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div, ptr %37, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit.thread_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %p, i32 8, i32 -1226833920) #13, !srcloc !167
  %asmresult.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb.copy_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtv) #9
  br label %sticky

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rtv, i32 noundef 8) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %p, ptr noundef nonnull %rtv, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool18.not = icmp eq i32 %call.i1.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtv) #9
  br i1 %tobool18.not, label %copy_to_user.exit.cleanup53_crit_edge, label %copy_to_user.exit.sticky_crit_edge

copy_to_user.exit.sticky_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sticky

copy_to_user.exit.cleanup53_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

sw.bb21:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtv22) #9
  %45 = getelementptr inbounds %struct.old_timeval32, ptr %rtv22, i32 0, i32 1
  %46 = ptrtoint ptr %rts to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rts, align 8
  %conv24 = trunc i64 %47 to i32
  %48 = ptrtoint ptr %rtv22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv24, ptr %rtv22, align 4
  %49 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %.fca.1.gep, align 8
  %div27 = sdiv i32 %50, 1000
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div27, ptr %45, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #9
  %call.i.i74 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i74, label %sw.bb21.copy_to_user.exit83.thread_crit_edge, label %if.end.i.i78

sw.bb21.copy_to_user.exit83.thread_crit_edge:     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit83.thread

if.end.i.i78:                                     ; preds = %sw.bb21
  %52 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %p, i32 8, i32 -1226833920) #13, !srcloc !167
  %asmresult.i.i76 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i76)
  %cmp.i1.i77 = icmp eq i32 %asmresult.i.i76, 0
  br i1 %cmp.i1.i77, label %copy_to_user.exit83, label %if.end.i.i78.copy_to_user.exit83.thread_crit_edge

if.end.i.i78.copy_to_user.exit83.thread_crit_edge: ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit83.thread

copy_to_user.exit83.thread:                       ; preds = %if.end.i.i78.copy_to_user.exit83.thread_crit_edge, %sw.bb21.copy_to_user.exit83.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtv22) #9
  br label %sticky

copy_to_user.exit83:                              ; preds = %if.end.i.i78
  %call.i.i.i79 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rtv22, i32 noundef 8) #9
  %call.i1.i.i80 = call i32 @arm_copy_to_user(ptr noundef nonnull %p, ptr noundef nonnull %rtv22, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i80)
  %tobool30.not = icmp eq i32 %call.i1.i.i80, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtv22) #9
  br i1 %tobool30.not, label %copy_to_user.exit83.cleanup53_crit_edge, label %copy_to_user.exit83.sticky_crit_edge

copy_to_user.exit83.sticky_crit_edge:             ; preds = %copy_to_user.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sticky

copy_to_user.exit83.cleanup53_crit_edge:          ; preds = %copy_to_user.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

sw.bb36:                                          ; preds = %if.end13
  %call37 = call i32 @put_timespec64(ptr noundef nonnull %rts, ptr noundef nonnull %p) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %sw.bb36.cleanup53_crit_edge, label %sw.bb36.sticky_crit_edge

sw.bb36.sticky_crit_edge:                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sticky

sw.bb36.cleanup53_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

sw.bb41:                                          ; preds = %if.end13
  %call42 = call i32 @put_old_timespec32(ptr noundef nonnull %rts, ptr noundef nonnull %p) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %sw.bb41.cleanup53_crit_edge, label %sw.bb41.sticky_crit_edge

sw.bb41.sticky_crit_edge:                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sticky

sw.bb41.cleanup53_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/select.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 354, 0\0A.popsection", ""() #9, !srcloc !168
  unreachable

sticky:                                           ; preds = %sw.bb41.sticky_crit_edge, %sw.bb36.sticky_crit_edge, %copy_to_user.exit83.sticky_crit_edge, %copy_to_user.exit83.thread, %copy_to_user.exit.sticky_crit_edge, %copy_to_user.exit.thread, %if.end.sticky_crit_edge
  %spec.store.select = select i1 %cmp, i32 -4, i32 %ret
  br label %cleanup53

cleanup53:                                        ; preds = %sticky, %sw.bb41.cleanup53_crit_edge, %sw.bb36.cleanup53_crit_edge, %copy_to_user.exit83.cleanup53_crit_edge, %copy_to_user.exit.cleanup53_crit_edge, %land.lhs.true.cleanup53_crit_edge, %restore_saved_sigmask_unless.exit.cleanup53_crit_edge
  %retval.2 = phi i32 [ %spec.store.select, %sticky ], [ %ret, %copy_to_user.exit83.cleanup53_crit_edge ], [ %ret, %copy_to_user.exit.cleanup53_crit_edge ], [ %ret, %restore_saved_sigmask_unless.exit.cleanup53_crit_edge ], [ %ret, %land.lhs.true.cleanup53_crit_edge ], [ %ret, %sw.bb36.cleanup53_crit_edge ], [ %ret, %sw.bb41.cleanup53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rts) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_pselect(i32 noundef %n, ptr noundef %inp, ptr noundef %outp, ptr noundef %exp, ptr noundef %tsp, ptr noundef %sigmask, i32 noundef %sigsetsize, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %end_time = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #9
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time) #9
  %1 = call ptr @memset(ptr %end_time, i32 255, i32 16)
  %tobool.not = icmp eq ptr %tsp, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %type, label %do.body [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  %call = call i32 @get_timespec64(ptr noundef nonnull %ts, ptr noundef nonnull %tsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  %call4 = call i32 @get_old_timespec32(ptr noundef nonnull %ts, ptr noundef nonnull %tsp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/select.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #9, !srcloc !169
  unreachable

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec, align 8
  %ts.sroa.6.8.insert.ext.i = zext i32 %6 to i64
  %ts.sroa.6.8.insert.shift.i = shl nuw i64 %ts.sroa.6.8.insert.ext.i, 32
  %ts.sroa.6.8.insert.insert.i = or i64 %ts.sroa.6.8.insert.shift.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.i.i = icmp sgt i64 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 1000000000
  %or.cond16.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond16.i, label %if.end.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec3.i = getelementptr inbounds %struct.timespec64, ptr %end_time, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tv_nsec3.i, align 8
  %8 = ptrtoint ptr %end_time to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %end_time, align 8
  br label %if.end15

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ktime_get_ts64(ptr noundef nonnull %end_time) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  %9 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %.unpack.i = load i64, ptr %end_time, align 8
  %10 = insertvalue [2 x i64] undef, i64 %.unpack.i, 0
  %.elt12.i = getelementptr inbounds [2 x i64], ptr %end_time, i32 0, i32 1
  %11 = ptrtoint ptr %.elt12.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack13.i = load i64, ptr %.elt12.i, align 8
  %12 = insertvalue [2 x i64] %10, i64 %.unpack13.i, 1
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %4, 0
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %ts.sroa.6.8.insert.insert.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, [2 x i64] %12, [2 x i64] %.fca.1.insert.i) #9
  %13 = call ptr @memcpy(ptr %end_time, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else.i, %if.then2.i, %entry.if.end15_crit_edge
  %to.0 = phi ptr [ null, %entry.if.end15_crit_edge ], [ %end_time, %if.else.i ], [ %end_time, %if.then2.i ]
  %call16 = call i32 @set_user_sigmask(ptr noundef %sigmask, i32 noundef %sigsetsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 @core_sys_select(i32 noundef %n, ptr noundef %inp, ptr noundef %outp, ptr noundef %exp, ptr noundef %to.0)
  %call21 = call fastcc i32 @poll_select_finish(ptr noundef nonnull %end_time, ptr noundef %tsp, i32 noundef %type, i32 noundef %call20)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %sw.bb3.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sys_poll(ptr noundef %ufds, i32 noundef %nfds, ptr noundef readonly %end_time) unnamed_addr #0 align 64 {
entry:
  %expire.i = alloca i64, align 8
  %table = alloca %struct.poll_wqueues, align 4
  %stack_pps = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_pps.sroa.gep176 = getelementptr inbounds %struct.poll_list, ptr %stack_pps, i32 0, i32 1
  %stack_pps.sroa.gep173 = getelementptr inbounds %struct.poll_list, ptr %stack_pps, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 540, ptr nonnull %table) #9
  %0 = call ptr @memset(ptr %table, i32 255, i32 540)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %stack_pps) #9
  %1 = call ptr @memset(ptr %stack_pps, i32 255, i32 256)
  %2 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %nfds)
  %cmp = icmp ult i32 %9, %nfds
  br i1 %cmp, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end:                                           ; preds = %entry
  %10 = tail call i32 @llvm.umin.i32(i32 %nfds, i32 31)
  %add.ptr = getelementptr %struct.pollfd, ptr %ufds, i32 %nfds
  br label %for.cond

for.cond:                                         ; preds = %if.end15.for.cond_crit_edge, %if.end
  %todo.0 = phi i32 [ %sub, %if.end15.for.cond_crit_edge ], [ %nfds, %if.end ]
  %walk.0 = phi ptr [ %call9.i, %if.end15.for.cond_crit_edge ], [ %stack_pps, %if.end ]
  %len.0 = phi i32 [ %20, %if.end15.for.cond_crit_edge ], [ %10, %if.end ]
  %11 = ptrtoint ptr %walk.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %walk.0, align 4
  %len2 = getelementptr inbounds %struct.poll_list, ptr %walk.0, i32 0, i32 1
  %12 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len.0, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool.not = icmp eq i32 %len.0, 0
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %if.end4

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end4:                                          ; preds = %for.cond
  %entries = getelementptr inbounds %struct.poll_list, ptr %walk.0, i32 0, i32 2
  %idx.neg = sub i32 0, %todo.0
  %add.ptr6 = getelementptr %struct.pollfd, ptr %add.ptr, i32 %idx.neg
  %mul = shl nuw nsw i32 %len.0, 3
  call void @__check_object_size(ptr noundef %entries, i32 noundef %mul, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end4.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.then11.i.i_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr6, i32 %mul, i32 -1226833920) #13, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef %mul) #9
  %14 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !158
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %entries, ptr noundef %add.ptr6, i32 noundef %mul) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !156

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end4.if.then11.i.i_crit_edge
  %res.0.i.i138 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %mul, %if.end4.if.then11.i.i_crit_edge ], [ %mul, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %mul, %res.0.i.i138
  %add.ptr.i.i = getelementptr i8, ptr %entries, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i138)
  br label %out_fds

if.end11:                                         ; preds = %if.end.i.i
  %18 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len2, align 4
  %sub = sub i32 %todo.0, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool13.not = icmp eq i32 %sub, 0
  br i1 %tobool13.not, label %if.end11.for.end_crit_edge, label %if.end15

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15:                                         ; preds = %if.end11
  %20 = call i32 @llvm.umin.i32(i32 %sub, i32 511)
  %21 = shl nuw nsw i32 %20, 3
  %spec.select.i142 = add nuw nsw i32 %21, 8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i142, i32 noundef 3264) #12
  %22 = ptrtoint ptr %walk.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %walk.0, align 4
  %tobool25.not = icmp eq ptr %call9.i, null
  br i1 %tobool25.not, label %if.end15.out_fds_crit_edge, label %if.end15.for.cond_crit_edge

if.end15.for.cond_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end15.out_fds_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fds

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.cond.for.end_crit_edge
  %23 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @__pollwait, ptr %table, align 4
  %_key.i.i = getelementptr inbounds %struct.poll_table_struct, ptr %table, i32 0, i32 1
  %24 = ptrtoint ptr %_key.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %_key.i.i, align 4
  %25 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i116 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i116 to ptr
  %task.i117 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i117, align 8
  %polling_task.i = getelementptr inbounds %struct.poll_wqueues, ptr %table, i32 0, i32 2
  %29 = ptrtoint ptr %polling_task.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %polling_task.i, align 4
  %triggered.i = getelementptr inbounds %struct.poll_wqueues, ptr %table, i32 0, i32 3
  %30 = ptrtoint ptr %triggered.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %triggered.i, align 4
  %error.i = getelementptr inbounds %struct.poll_wqueues, ptr %table, i32 0, i32 4
  %31 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %error.i, align 4
  %table.i = getelementptr inbounds %struct.poll_wqueues, ptr %table, i32 0, i32 1
  %32 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %table.i, align 4
  %inline_index.i = getelementptr inbounds %struct.poll_wqueues, ptr %table, i32 0, i32 5
  %33 = ptrtoint ptr %inline_index.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %inline_index.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expire.i) #9
  %34 = ptrtoint ptr %expire.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %expire.i, align 8, !annotation !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %35 = load i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i94.not.i = icmp eq i32 %35, 0
  %cond.i = select i1 %tobool.i94.not.i, i32 0, i32 32768
  %tobool.not.i = icmp eq ptr %end_time, null
  br i1 %tobool.not.i, label %for.end.if.end10.i_crit_edge, label %land.lhs.true.i

for.end.if.end10.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %for.end
  %36 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %end_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool2.not.i = icmp eq i64 %37, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.then8.i_crit_edge

land.lhs.true.i.if.then8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %end_time, i32 0, i32 1
  %38 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i, label %if.then.i118, label %land.lhs.true3.i.if.then8.i_crit_edge

land.lhs.true3.i.if.then8.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

if.then.i118:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %table, align 4
  br label %if.end10.i

if.then8.i:                                       ; preds = %land.lhs.true3.i.if.then8.i_crit_edge, %land.lhs.true.i.if.then8.i_crit_edge
  %call9.i119 = call i64 @select_estimate_accuracy(ptr noundef nonnull %end_time) #9
  %extract.t.i = trunc i64 %call9.i119 to i32
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then.i118, %for.end.if.end10.i_crit_edge
  %timed_out.0108.i = phi i32 [ 0, %if.then8.i ], [ 0, %for.end.if.end10.i_crit_edge ], [ 1, %if.then.i118 ]
  %slack.0.off0.i = phi i32 [ %extract.t.i, %if.then8.i ], [ 0, %for.end.if.end10.i_crit_edge ], [ 0, %if.then.i118 ]
  %.elt90.i = getelementptr inbounds [2 x i64], ptr %end_time, i32 0, i32 1
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %if.end52.i, %if.end10.i
  %to.0.i.ph = phi ptr [ %to.1.i, %if.end52.i ], [ null, %if.end10.i ]
  %timed_out.1.i.ph = phi i32 [ %spec.select93.i, %if.end52.i ], [ %timed_out.0108.i, %if.end10.i ]
  %busy_flag.0.i.ph = phi i32 [ 0, %if.end52.i ], [ %cond.i, %if.end10.i ]
  %busy_start.0.i.ph = phi i32 [ %busy_start.0.i.ph196, %if.end52.i ], [ 0, %if.end10.i ]
  br label %for.cond.i.outer193

for.cond.i.outer193:                              ; preds = %if.then40.i, %for.cond.i.outer
  %timed_out.1.i.ph194 = phi i32 [ %timed_out.1.i.ph, %for.cond.i.outer ], [ 0, %if.then40.i ]
  %busy_flag.0.i.ph195 = phi i32 [ %busy_flag.0.i.ph, %for.cond.i.outer ], [ %busy_flag.2.lcssa.i, %if.then40.i ]
  %busy_start.0.i.ph196 = phi i32 [ %busy_start.0.i.ph, %for.cond.i.outer ], [ %conv.i.i, %if.then40.i ]
  %tobool39.not.i = icmp eq i32 %busy_start.0.i.ph196, 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %busy_loop_timeout.exit.i.for.cond.i_crit_edge, %for.cond.i.outer193
  %timed_out.1.i = phi i32 [ 0, %busy_loop_timeout.exit.i.for.cond.i_crit_edge ], [ %timed_out.1.i.ph194, %for.cond.i.outer193 ]
  %busy_flag.0.i = phi i32 [ %busy_flag.2.lcssa.i, %busy_loop_timeout.exit.i.for.cond.i_crit_edge ], [ %busy_flag.0.i.ph195, %for.cond.i.outer193 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.cond.i
  %walk.0152.i = phi ptr [ %61, %for.end.i.for.body.i_crit_edge ], [ %stack_pps, %for.cond.i ]
  %busy_flag.1151.i = phi i32 [ %busy_flag.2.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ %busy_flag.0.i, %for.cond.i ]
  %count.1150.i = phi i32 [ %count.2.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.cond.i ]
  %can_busy_loop.0149.i = phi i8 [ %can_busy_loop.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.cond.i ]
  %walk.0152.i.sroa.phi = phi ptr [ %.sroa.gep, %for.end.i.for.body.i_crit_edge ], [ %stack_pps.sroa.gep173, %for.cond.i ]
  %walk.0152.i.sroa.phi133 = phi ptr [ %.sroa.gep134, %for.end.i.for.body.i_crit_edge ], [ %stack_pps.sroa.gep176, %for.cond.i ]
  %41 = ptrtoint ptr %walk.0152.i.sroa.phi133 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %walk.0152.i.sroa.phi133, align 4
  %add.ptr.i = getelementptr %struct.pollfd, ptr %walk.0152.i.sroa.phi, i32 %42
  %cmp13.not138.i = icmp eq ptr %walk.0152.i.sroa.phi, %add.ptr.i
  br i1 %cmp13.not138.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body14.i_crit_edge

for.body.i.for.body14.i_crit_edge:                ; preds = %for.body.i
  br label %for.body14.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body14.i:                                     ; preds = %for.inc.i.for.body14.i_crit_edge, %for.body.i.for.body14.i_crit_edge
  %pfd.0143.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body14.i_crit_edge ], [ %walk.0152.i.sroa.phi, %for.body.i.for.body14.i_crit_edge ]
  %busy_flag.2142.i = phi i32 [ %busy_flag.3.i, %for.inc.i.for.body14.i_crit_edge ], [ %busy_flag.1151.i, %for.body.i.for.body14.i_crit_edge ]
  %count.2140.i = phi i32 [ %count.3.i, %for.inc.i.for.body14.i_crit_edge ], [ %count.1150.i, %for.body.i.for.body14.i_crit_edge ]
  %can_busy_loop.1139.i = phi i8 [ %can_busy_loop.4.i, %for.inc.i.for.body14.i_crit_edge ], [ %can_busy_loop.0149.i, %for.body.i.for.body14.i_crit_edge ]
  %43 = ptrtoint ptr %pfd.0143.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pfd.0143.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i122 = icmp slt i32 %44, 0
  br i1 %cmp.i.i122, label %do_pollfd.exit.thread.i, label %if.end.i.i126

do_pollfd.exit.thread.i:                          ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  %revents.i112.i = getelementptr inbounds %struct.pollfd, ptr %pfd.0143.i, i32 0, i32 2
  %45 = ptrtoint ptr %revents.i112.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %revents.i112.i, align 2
  br label %for.inc.i

if.end.i.i126:                                    ; preds = %for.body14.i
  %call.i.i.i123 = call i32 @__fdget(i32 noundef %44) #9, !noalias !170
  %and.i.i.i.i124 = and i32 %call.i.i.i123, -4
  %46 = inttoptr i32 %and.i.i.i.i124 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i.i.i124, 0
  br i1 %tobool.not.i.i125, label %do_pollfd.exit.thread114.i, label %if.end3.i.i

do_pollfd.exit.thread114.i:                       ; preds = %if.end.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  %revents.i118.i = getelementptr inbounds %struct.pollfd, ptr %pfd.0143.i, i32 0, i32 2
  %47 = ptrtoint ptr %revents.i118.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 32, ptr %revents.i118.i, align 2
  br label %if.then17.i

if.end3.i.i:                                      ; preds = %if.end.i.i126
  %events.i.i = getelementptr inbounds %struct.pollfd, ptr %pfd.0143.i, i32 0, i32 1
  %48 = ptrtoint ptr %events.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %events.i.i, align 4
  %50 = and i16 %49, 10215
  %51 = or i16 %50, 24
  %or4.i.i = zext i16 %51 to i32
  %or5.i.i = or i32 %busy_flag.2142.i, %or4.i.i
  %52 = ptrtoint ptr %_key.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or5.i.i, ptr %_key.i.i, align 4
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 3
  %53 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %f_op.i.i.i, align 4
  %poll.i.i.i = getelementptr inbounds %struct.file_operations, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %poll.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %poll.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.end3.i.i.vfs_poll.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !155

if.end3.i.i.vfs_poll.exit.i.i_crit_edge:          ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfs_poll.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i23.i.i = call i32 %56(ptr noundef nonnull %46, ptr noundef nonnull %table) #9
  br label %vfs_poll.exit.i.i

vfs_poll.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end3.i.i.vfs_poll.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i23.i.i, %if.end.i.i.i ], [ 325, %if.end3.i.i.vfs_poll.exit.i.i_crit_edge ]
  %and.i.i127 = and i32 %retval.0.i.i.i, %busy_flag.2142.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i127)
  %tobool8.not.i.i = icmp eq i32 %and.i.i127, 0
  %spec.select.i128 = select i1 %tobool8.not.i.i, i8 %can_busy_loop.1139.i, i8 1
  %and11.i.i = and i32 %retval.0.i.i.i, %or4.i.i
  %and.i.i95.i = and i32 %call.i.i.i123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.not.i24.i.i = icmp eq i32 %and.i.i95.i, 0
  br i1 %tobool.not.i24.i.i, label %vfs_poll.exit.i.i.do_pollfd.exit.i_crit_edge, label %if.then.i.i.i129

vfs_poll.exit.i.i.do_pollfd.exit.i_crit_edge:     ; preds = %vfs_poll.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_pollfd.exit.i

if.then.i.i.i129:                                 ; preds = %vfs_poll.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %46) #9
  br label %do_pollfd.exit.i

do_pollfd.exit.i:                                 ; preds = %if.then.i.i.i129, %vfs_poll.exit.i.i.do_pollfd.exit.i_crit_edge
  %57 = trunc i32 %and11.i.i to i16
  %revents.i.i = getelementptr inbounds %struct.pollfd, ptr %pfd.0143.i, i32 0, i32 2
  %58 = ptrtoint ptr %revents.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %revents.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool16.not.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool16.not.i, label %do_pollfd.exit.i.for.inc.i_crit_edge, label %do_pollfd.exit.i.if.then17.i_crit_edge

do_pollfd.exit.i.if.then17.i_crit_edge:           ; preds = %do_pollfd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

do_pollfd.exit.i.for.inc.i_crit_edge:             ; preds = %do_pollfd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then17.i:                                      ; preds = %do_pollfd.exit.i.if.then17.i_crit_edge, %do_pollfd.exit.thread114.i
  %inc.i = add i32 %count.2140.i, 1
  %59 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %table, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %do_pollfd.exit.i.for.inc.i_crit_edge, %do_pollfd.exit.thread.i
  %can_busy_loop.4.i = phi i8 [ %spec.select.i128, %do_pollfd.exit.i.for.inc.i_crit_edge ], [ 0, %if.then17.i ], [ %can_busy_loop.1139.i, %do_pollfd.exit.thread.i ]
  %count.3.i = phi i32 [ %count.2140.i, %do_pollfd.exit.i.for.inc.i_crit_edge ], [ %inc.i, %if.then17.i ], [ %count.2140.i, %do_pollfd.exit.thread.i ]
  %busy_flag.3.i = phi i32 [ %busy_flag.2142.i, %do_pollfd.exit.i.for.inc.i_crit_edge ], [ 0, %if.then17.i ], [ %busy_flag.2142.i, %do_pollfd.exit.thread.i ]
  %incdec.ptr.i = getelementptr %struct.pollfd, ptr %pfd.0143.i, i32 1
  %cmp13.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body14.i_crit_edge

for.inc.i.for.body14.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %can_busy_loop.1.lcssa.i = phi i8 [ %can_busy_loop.0149.i, %for.body.i.for.end.i_crit_edge ], [ %can_busy_loop.4.i, %for.inc.i.for.end.i_crit_edge ]
  %count.2.lcssa.i = phi i32 [ %count.1150.i, %for.body.i.for.end.i_crit_edge ], [ %count.3.i, %for.inc.i.for.end.i_crit_edge ]
  %busy_flag.2.lcssa.i = phi i32 [ %busy_flag.1151.i, %for.body.i.for.end.i_crit_edge ], [ %busy_flag.3.i, %for.inc.i.for.end.i_crit_edge ]
  %60 = ptrtoint ptr %walk.0152.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %walk.0152.i, align 4
  %.sroa.gep134 = getelementptr inbounds %struct.poll_list, ptr %61, i32 0, i32 1
  %.sroa.gep = getelementptr inbounds %struct.poll_list, ptr %61, i32 0, i32 2
  %cmp.not.i = icmp eq ptr %61, null
  br i1 %cmp.not.i, label %for.end21.i, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end21.i:                                      ; preds = %for.end.i
  %62 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2.lcssa.i)
  %tobool23.not.i = icmp eq i32 %count.2.lcssa.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %for.end21.i.do_poll.exit_crit_edge

for.end21.i.do_poll.exit_crit_edge:               ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_poll.exit

if.then24.i:                                      ; preds = %for.end21.i
  %63 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %error.i, align 4
  %65 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i96.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i96.i to ptr
  %task.i130 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i130 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i130, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stack.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %73 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i97.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i97.i, label %signal_pending.exit.i, label %if.then24.i.do_poll.exit_crit_edge, !prof !156

if.then24.i.do_poll.exit_crit_edge:               ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_poll.exit

signal_pending.exit.i:                            ; preds = %if.then24.i
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %70, align 4
  %and1.i.i.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool27.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool27.not.i, label %if.end30.i, label %signal_pending.exit.i.do_poll.exit_crit_edge

signal_pending.exit.i.do_poll.exit_crit_edge:     ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_poll.exit

if.end30.i:                                       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool31.not.i = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timed_out.1.i)
  %tobool32.not.i = icmp eq i32 %timed_out.1.i, 0
  %or.cond.i = select i1 %tobool31.not.i, i1 %tobool32.not.i, i1 false
  br i1 %or.cond.i, label %if.end34.i, label %if.end30.i.do_poll.exit_crit_edge

if.end30.i.do_poll.exit_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_poll.exit

if.end34.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %can_busy_loop.1.lcssa.i)
  %tobool35.not.i = icmp eq i8 %can_busy_loop.1.lcssa.i, 0
  br i1 %tobool35.not.i, label %if.end34.i.if.end46.i_crit_edge, label %land.lhs.true36.i

if.end34.i.if.end46.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

land.lhs.true36.i:                                ; preds = %if.end34.i
  %76 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i131 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i131 to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 16384
  %80 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i = icmp eq i32 %80, 0
  br i1 %tobool.i.not.i, label %if.then38.i, label %land.lhs.true36.i.if.end46.i_crit_edge

land.lhs.true36.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end42.i

if.then40.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i99.i = call i64 @sched_clock() #9
  %shr.i.i = lshr i64 %call.i.i99.i, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %for.cond.i.outer193

if.end42.i:                                       ; preds = %if.then38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %81 = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i100.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i100.i, label %if.end42.i.if.end46.i_crit_edge, label %busy_loop_timeout.exit.i

if.end42.i.if.end46.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

busy_loop_timeout.exit.i:                         ; preds = %if.end42.i
  %add.i.i = add i32 %81, %busy_start.0.i.ph196
  %call.i.i.i.i = call i64 @sched_clock() #9
  %shr.i.i.i = lshr i64 %call.i.i.i.i, 10
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i.i132 = sub i32 %add.i.i, %conv.i.i.i
  %cmp.i101.i = icmp slt i32 %sub.i.i132, 0
  br i1 %cmp.i101.i, label %busy_loop_timeout.exit.i.if.end46.i_crit_edge, label %busy_loop_timeout.exit.i.for.cond.i_crit_edge

busy_loop_timeout.exit.i.for.cond.i_crit_edge:    ; preds = %busy_loop_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

busy_loop_timeout.exit.i.if.end46.i_crit_edge:    ; preds = %busy_loop_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %busy_loop_timeout.exit.i.if.end46.i_crit_edge, %if.end42.i.if.end46.i_crit_edge, %land.lhs.true36.i.if.end46.i_crit_edge, %if.end34.i.if.end46.i_crit_edge
  %tobool49.not.i = icmp ne ptr %to.0.i.ph, null
  %82 = or i1 %tobool.not.i, %tobool49.not.i
  br i1 %82, label %if.end46.i.if.end52.i_crit_edge, label %if.then50.i

if.end46.i.if.end52.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %end_time to i32
  call void @__asan_load8_noabort(i32 %83)
  %.unpack.i = load i64, ptr %end_time, align 8
  %84 = ptrtoint ptr %.elt90.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %.unpack91.i = load i64, ptr %.elt90.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack.i)
  %cmp.i.i.i = icmp sgt i64 %.unpack.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i = lshr i64 %.unpack91.i, 32
  %mul.i.i.i = mul i64 %.unpack.i, 1000000000
  %add.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i, %mul.i.i.i
  %retval.0.i.i103.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %add.i.i.i, !prof !155
  %85 = ptrtoint ptr %expire.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %retval.0.i.i103.i, ptr %expire.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end52.i_crit_edge
  %to.1.i = phi ptr [ %expire.i, %if.then50.i ], [ %to.0.i.ph, %if.end46.i.if.end52.i_crit_edge ]
  %call53.i = call fastcc i32 @poll_schedule_timeout(ptr noundef nonnull %table, i32 noundef 1, ptr noundef %to.1.i, i32 noundef %slack.0.off0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  %spec.select93.i = zext i1 %tobool54.not.i to i32
  br label %for.cond.i.outer

do_poll.exit:                                     ; preds = %if.end30.i.do_poll.exit_crit_edge, %signal_pending.exit.i.do_poll.exit_crit_edge, %if.then24.i.do_poll.exit_crit_edge, %for.end21.i.do_poll.exit_crit_edge
  %count.4126.ph.i = phi i32 [ %64, %if.end30.i.do_poll.exit_crit_edge ], [ -514, %signal_pending.exit.i.do_poll.exit_crit_edge ], [ %count.2.lcssa.i, %for.end21.i.do_poll.exit_crit_edge ], [ -514, %if.then24.i.do_poll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expire.i) #9
  call void @poll_freewait(ptr noundef nonnull %table)
  %mul29 = shl i32 %nfds, 3
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ufds, i32 %mul29, i32 -1226833920) #13, !srcloc !173
  %asmresult = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp32 = icmp eq i32 %asmresult, 0
  br i1 %cmp32, label %do_poll.exit.for.body_crit_edge, label %do_poll.exit.out_fds_crit_edge

do_poll.exit.out_fds_crit_edge:                   ; preds = %do_poll.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fds

do_poll.exit.for.body_crit_edge:                  ; preds = %do_poll.exit
  br label %for.body

for.body:                                         ; preds = %for.inc58.for.body_crit_edge, %do_poll.exit.for.body_crit_edge
  %ufds.addr.0161 = phi ptr [ %ufds.addr.1.lcssa, %for.inc58.for.body_crit_edge ], [ %ufds, %do_poll.exit.for.body_crit_edge ]
  %walk.1160 = phi ptr [ %96, %for.inc58.for.body_crit_edge ], [ %stack_pps, %do_poll.exit.for.body_crit_edge ]
  %walk.1160.sroa.phi = phi ptr [ %.sroa.gep172, %for.inc58.for.body_crit_edge ], [ %stack_pps.sroa.gep173, %do_poll.exit.for.body_crit_edge ]
  %walk.1160.sroa.phi174 = phi ptr [ %.sroa.gep175, %for.inc58.for.body_crit_edge ], [ %stack_pps.sroa.gep176, %do_poll.exit.for.body_crit_edge ]
  %87 = ptrtoint ptr %walk.1160.sroa.phi174 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %walk.1160.sroa.phi174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool41.not156 = icmp eq i32 %88, 0
  br i1 %tobool41.not156, label %for.body.for.inc58_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  br label %do.body

for.body.for.inc58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.body.do.body_crit_edge
  %ufds.addr.1159 = phi ptr [ %incdec.ptr55, %for.inc.do.body_crit_edge ], [ %ufds.addr.0161, %for.body.do.body_crit_edge ]
  %j.0158 = phi i32 [ %dec, %for.inc.do.body_crit_edge ], [ %88, %for.body.do.body_crit_edge ]
  %fds.0157 = phi ptr [ %incdec.ptr, %for.inc.do.body_crit_edge ], [ %walk.1160.sroa.phi, %for.body.do.body_crit_edge ]
  %revents = getelementptr inbounds %struct.pollfd, ptr %ufds.addr.1159, i32 0, i32 2
  %revents44 = getelementptr inbounds %struct.pollfd, ptr %fds.0157, i32 0, i32 2
  %89 = ptrtoint ptr %revents44 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %revents44, align 2
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1026) #9
  %91 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 4
  %93 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !158
  %and.i = and i32 %93, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %94 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %revents, i16 %90, i32 -1226833921) #9, !srcloc !174
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool48.not = icmp eq i32 %94, 0
  br i1 %tobool48.not, label %for.inc, label %do.body.out_fds_crit_edge, !prof !156

do.body.out_fds_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fds

for.inc:                                          ; preds = %do.body
  %incdec.ptr = getelementptr %struct.pollfd, ptr %fds.0157, i32 1
  %incdec.ptr55 = getelementptr %struct.pollfd, ptr %ufds.addr.1159, i32 1
  %dec = add i32 %j.0158, -1
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %for.inc.for.inc58_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.for.inc58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

for.inc58:                                        ; preds = %for.inc.for.inc58_crit_edge, %for.body.for.inc58_crit_edge
  %ufds.addr.1.lcssa = phi ptr [ %ufds.addr.0161, %for.body.for.inc58_crit_edge ], [ %incdec.ptr55, %for.inc.for.inc58_crit_edge ]
  %95 = ptrtoint ptr %walk.1160 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %walk.1160, align 4
  %.sroa.gep175 = getelementptr inbounds %struct.poll_list, ptr %96, i32 0, i32 1
  %.sroa.gep172 = getelementptr inbounds %struct.poll_list, ptr %96, i32 0, i32 2
  %tobool36.not = icmp eq ptr %96, null
  br i1 %tobool36.not, label %for.inc58.out_fds_crit_edge, label %for.inc58.for.body_crit_edge

for.inc58.for.body_crit_edge:                     ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc58.out_fds_crit_edge:                      ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fds

out_fds:                                          ; preds = %for.inc58.out_fds_crit_edge, %do.body.out_fds_crit_edge, %do_poll.exit.out_fds_crit_edge, %if.end15.out_fds_crit_edge, %if.then11.i.i
  %err.0 = phi i32 [ -14, %do_poll.exit.out_fds_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %do.body.out_fds_crit_edge ], [ %count.4126.ph.i, %for.inc58.out_fds_crit_edge ], [ -12, %if.end15.out_fds_crit_edge ]
  %97 = ptrtoint ptr %stack_pps to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %stack_pps, align 4
  %tobool65.not162 = icmp eq ptr %98, null
  br i1 %tobool65.not162, label %out_fds.cleanup70_crit_edge, label %out_fds.while.body_crit_edge

out_fds.while.body_crit_edge:                     ; preds = %out_fds
  br label %while.body

out_fds.cleanup70_crit_edge:                      ; preds = %out_fds
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_fds.while.body_crit_edge
  %walk.2163 = phi ptr [ %100, %while.body.while.body_crit_edge ], [ %98, %out_fds.while.body_crit_edge ]
  %99 = ptrtoint ptr %walk.2163 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %walk.2163, align 4
  call void @kfree(ptr noundef nonnull %walk.2163) #9
  %tobool65.not = icmp eq ptr %100, null
  br i1 %tobool65.not, label %while.body.cleanup70_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup70_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

cleanup70:                                        ; preds = %while.body.cleanup70_crit_edge, %out_fds.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup70_crit_edge ], [ %err.0, %out_fds.cleanup70_crit_edge ], [ %err.0, %while.body.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %stack_pps) #9
  call void @llvm.lifetime.end.p0(i64 540, ptr nonnull %table) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_restart_poll(ptr nocapture noundef %restart_block) #0 align 64 {
entry:
  %end_time = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nfds2 = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %nfds2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nfds2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end_time) #9
  %5 = call ptr @memset(ptr %end_time, i32 255, i32 16)
  %has_timeout = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %has_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tv_sec = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %tv_sec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_sec, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %end_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %end_time, align 8
  %tv_nsec = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2, i32 0, i32 4
  %11 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec, align 8
  %tv_nsec4 = getelementptr inbounds %struct.timespec64, ptr %end_time, i32 0, i32 1
  %13 = ptrtoint ptr %tv_nsec4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tv_nsec4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %to.0 = phi ptr [ %end_time, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call = call fastcc i32 @do_sys_poll(ptr noundef %2, i32 noundef %4, ptr noundef %to.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -514, i32 %call)
  %cmp = icmp eq i32 %call, -514
  br i1 %cmp, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fn1.i = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 1
  %14 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @do_restart_poll, ptr %fn1.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ -516, %if.then6 ], [ %call, %if.end.if.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end_time) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__ksymtab_poll_initwait, !1, !"__ksymtab_poll_initwait", i1 false, i1 false}
!1 = !{!"../fs/select.c", i32 131, i32 1}
!2 = !{ptr @__ksymtab_poll_freewait, !3, !"__ksymtab_poll_freewait", i1 false, i1 false}
!3 = !{!"../fs/select.c", i32 159, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/select.c", i32 642, i32 8}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/select.c", i32 726, i32 1}
!10 = !{ptr @event_enter__select, !9, !"event_enter__select", i1 false, i1 false}
!11 = !{ptr @__event_enter__select, !9, !"__event_enter__select", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @event_exit__select, !9, !"event_exit__select", i1 false, i1 false}
!14 = !{ptr @__event_exit__select, !9, !"__event_exit__select", i1 false, i1 false}
!15 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__syscall_meta__select, !9, !"__syscall_meta__select", i1 false, i1 false}
!17 = !{ptr @__p_syscall_meta__select, !9, !"__p_syscall_meta__select", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/select.c", i32 795, i32 1}
!20 = !{ptr @event_enter__pselect6, !19, !"event_enter__pselect6", i1 false, i1 false}
!21 = !{ptr @__event_enter__pselect6, !19, !"__event_enter__pselect6", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @event_exit__pselect6, !19, !"event_exit__pselect6", i1 false, i1 false}
!24 = !{ptr @__event_exit__pselect6, !19, !"__event_exit__pselect6", i1 false, i1 false}
!25 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__syscall_meta__pselect6, !19, !"__syscall_meta__pselect6", i1 false, i1 false}
!27 = !{ptr @__p_syscall_meta__pselect6, !19, !"__p_syscall_meta__pselect6", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/select.c", i32 809, i32 1}
!30 = !{ptr @event_enter__pselect6_time32, !29, !"event_enter__pselect6_time32", i1 false, i1 false}
!31 = !{ptr @__event_enter__pselect6_time32, !29, !"__event_enter__pselect6_time32", i1 false, i1 false}
!32 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @event_exit__pselect6_time32, !29, !"event_exit__pselect6_time32", i1 false, i1 false}
!34 = !{ptr @__event_exit__pselect6_time32, !29, !"__event_exit__pselect6_time32", i1 false, i1 false}
!35 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__syscall_meta__pselect6_time32, !29, !"__syscall_meta__pselect6_time32", i1 false, i1 false}
!37 = !{ptr @__p_syscall_meta__pselect6_time32, !29, !"__p_syscall_meta__pselect6_time32", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/select.c", i32 830, i32 1}
!40 = !{ptr @event_enter__old_select, !39, !"event_enter__old_select", i1 false, i1 false}
!41 = !{ptr @__event_enter__old_select, !39, !"__event_enter__old_select", i1 false, i1 false}
!42 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @event_exit__old_select, !39, !"event_exit__old_select", i1 false, i1 false}
!44 = !{ptr @__event_exit__old_select, !39, !"__event_exit__old_select", i1 false, i1 false}
!45 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__syscall_meta__old_select, !39, !"__syscall_meta__old_select", i1 false, i1 false}
!47 = !{ptr @__p_syscall_meta__old_select, !39, !"__p_syscall_meta__old_select", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/select.c", i32 1068, i32 1}
!50 = !{ptr @event_enter__poll, !49, !"event_enter__poll", i1 false, i1 false}
!51 = !{ptr @__event_enter__poll, !49, !"__event_enter__poll", i1 false, i1 false}
!52 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @event_exit__poll, !49, !"event_exit__poll", i1 false, i1 false}
!54 = !{ptr @__event_exit__poll, !49, !"__event_exit__poll", i1 false, i1 false}
!55 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__syscall_meta__poll, !49, !"__syscall_meta__poll", i1 false, i1 false}
!57 = !{ptr @__p_syscall_meta__poll, !49, !"__p_syscall_meta__poll", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/select.c", i32 1101, i32 1}
!60 = !{ptr @event_enter__ppoll, !59, !"event_enter__ppoll", i1 false, i1 false}
!61 = !{ptr @__event_enter__ppoll, !59, !"__event_enter__ppoll", i1 false, i1 false}
!62 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @event_exit__ppoll, !59, !"event_exit__ppoll", i1 false, i1 false}
!64 = !{ptr @__event_exit__ppoll, !59, !"__event_exit__ppoll", i1 false, i1 false}
!65 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__syscall_meta__ppoll, !59, !"__syscall_meta__ppoll", i1 false, i1 false}
!67 = !{ptr @__p_syscall_meta__ppoll, !59, !"__p_syscall_meta__ppoll", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/select.c", i32 1127, i32 1}
!70 = !{ptr @event_enter__ppoll_time32, !69, !"event_enter__ppoll_time32", i1 false, i1 false}
!71 = !{ptr @__event_enter__ppoll_time32, !69, !"__event_enter__ppoll_time32", i1 false, i1 false}
!72 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @event_exit__ppoll_time32, !69, !"event_exit__ppoll_time32", i1 false, i1 false}
!74 = !{ptr @__event_exit__ppoll_time32, !69, !"__event_exit__ppoll_time32", i1 false, i1 false}
!75 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__syscall_meta__ppoll_time32, !69, !"__syscall_meta__ppoll_time32", i1 false, i1 false}
!77 = !{ptr @__p_syscall_meta__ppoll_time32, !69, !"__p_syscall_meta__ppoll_time32", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../fs/select.c", i32 430, i32 8}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/select.c", i32 242, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../fs/select.c", i32 245, i32 2}
!98 = !{ptr @.str.30, !9, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.31, !9, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.32, !9, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @types__select, !9, !"types__select", i1 false, i1 false}
!102 = !{ptr @.str.33, !9, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.34, !9, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.35, !9, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.36, !9, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.37, !9, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @args__select, !9, !"args__select", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/sched/signal.h", i32 519, i32 3}
!110 = !{ptr @.str.39, !19, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.40, !19, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @types__pselect6, !19, !"types__pselect6", i1 false, i1 false}
!113 = !{ptr @.str.41, !19, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.42, !19, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @args__pselect6, !19, !"args__pselect6", i1 false, i1 false}
!116 = !{ptr @.str.43, !29, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @types__pselect6_time32, !29, !"types__pselect6_time32", i1 false, i1 false}
!118 = !{ptr @args__pselect6_time32, !29, !"args__pselect6_time32", i1 false, i1 false}
!119 = !{ptr @.str.44, !39, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @types__old_select, !39, !"types__old_select", i1 false, i1 false}
!121 = !{ptr @.str.45, !39, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @args__old_select, !39, !"args__old_select", i1 false, i1 false}
!123 = !{ptr @.str.46, !49, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.47, !49, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @types__poll, !49, !"types__poll", i1 false, i1 false}
!126 = !{ptr @.str.48, !49, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.49, !49, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.50, !49, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @args__poll, !49, !"args__poll", i1 false, i1 false}
!130 = !{ptr @.str.51, !59, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.52, !59, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @types__ppoll, !59, !"types__ppoll", i1 false, i1 false}
!133 = !{ptr @.str.53, !59, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.54, !59, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @args__ppoll, !59, !"args__ppoll", i1 false, i1 false}
!136 = !{ptr @types__ppoll_time32, !69, !"types__ppoll_time32", i1 false, i1 false}
!137 = !{ptr @args__ppoll_time32, !69, !"args__ppoll_time32", i1 false, i1 false}
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
!148 = !{i64 2148265699, i64 2148265725, i64 2148265754, i64 2148265788, i64 2148265819, i64 2148265842}
!149 = !{i64 2149436867}
!150 = !{i64 2149437133}
!151 = !{!"auto-init"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"fdget: %agg.result"}
!154 = distinct !{!154, !"fdget"}
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2152296898, i64 2152296923}
!158 = !{i64 4792453}
!159 = !{i64 4792650}
!160 = !{i64 2152277883}
!161 = !{i64 2157951445, i64 2157951470}
!162 = !{i64 2157980299, i64 2157980609, i64 2157980923, i64 2157981237}
!163 = !{i64 2158012113, i64 2158012423, i64 2158012737, i64 2158013051}
!164 = !{i64 2157896434}
!165 = !{i64 2157903519}
!166 = !{i64 2157910303}
!167 = !{i64 2152297579, i64 2152297604}
!168 = !{i64 2157910584, i64 2157911060, i64 2157910621, i64 2157910677, i64 2157910711, i64 2157910735, i64 2157910776, i64 2157910797, i64 2157910825, i64 2157910859}
!169 = !{i64 2157949798, i64 2157950274, i64 2157949835, i64 2157949891, i64 2157949925, i64 2157949949, i64 2157949990, i64 2157950011, i64 2157950039, i64 2157950073}
!170 = !{!171}
!171 = distinct !{!171, !172, !"fdget: %agg.result"}
!172 = distinct !{!172, !"fdget"}
!173 = !{i64 2158088017, i64 2158088042}
!174 = !{i64 2158106299, i64 2158106609, i64 2158106923, i64 2158107237}
