; ModuleID = '/llk/IR_all_yes/kernel/ptrace.c_pt.bc'
source_filename = "../kernel/ptrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+task_user_regset_view\22, \22a\22\09"
module asm "\09.weak\09__crc_task_user_regset_view\09\09\09\09"
module asm "\09.long\09__crc_task_user_regset_view\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_user_regset_view:\09\09\09\09\09"
module asm "\09.asciz \09\22task_user_regset_view\22\09\09\09\09\09"
module asm "__kstrtabns_task_user_regset_view:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.94, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.94 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.63 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.63 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.ptrace_rseq_configuration = type { i64, i32, i32, i32, i32 }
%struct.ptrace_syscall_info = type { i8, [3 x i8], i32, i64, i64, %union.anon.106 }
%union.anon.106 = type { %struct.anon.109 }
%struct.anon.109 = type { i64, [6 x i64], i32 }
%struct.ptrace_peeksiginfo_args = type { i64, i32, i32 }
%struct.kernel_siginfo = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32, i32, i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, ptr }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@__kstrtab_task_user_regset_view = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_user_regset_view = external dso_local constant [0 x i8], align 1
@__ksymtab_task_user_regset_view = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_user_regset_view to i32), ptr @__kstrtab_task_user_regset_view, ptr @__kstrtabns_task_user_regset_view }, section "___ksymtab_gpl+task_user_regset_view", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/ptrace.c\00", [16 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_ptrace\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__ptrace = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 4, ptr @types__ptrace, ptr @args__ptrace, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ptrace, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ptrace, i64 20) }, ptr @event_enter__ptrace, ptr @event_exit__ptrace }, align 4
@event_enter__ptrace = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__ptrace, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ptrace = internal global ptr @event_enter__ptrace, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_ptrace\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__ptrace = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__ptrace, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ptrace = internal global ptr @event_exit__ptrace, section "_ftrace_events", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_ptrace\00", [21 x i8] zeroinitializer }, align 32
@types__ptrace = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.14, ptr @.str.15, ptr @.str.15], [16 x i8] zeroinitializer }, align 32
@args__ptrace = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ptrace = internal global ptr @__syscall_meta__ptrace, section "__syscalls_metadata", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"denying ptrace access check without PTRACE_MODE_*CREDS\0A\00", [40 x i8] zeroinitializer }, align 32
@__ptrace_may_access.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"request\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [28 x i64] [i64 26, i64 32, i64 1, i64 2, i64 4, i64 5, i64 7, i64 8, i64 9, i64 17, i64 21, i64 24, i64 31, i64 16896, i64 16897, i64 16898, i64 16899, i64 16900, i64 16901, i64 16903, i64 16904, i64 16905, i64 16906, i64 16907, i64 16908, i64 16909, i64 16910, i64 16911]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 133, i64 1797]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 16, i64 16902, i64 16903]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1054, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"event_enter__ptrace\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"event_exit__ptrace\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"types__ptrace\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"args__ptrace\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 253, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 300, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 332, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 230, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 214, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@___asan_gen_.92 = private constant [19 x i8] c"../kernel/ptrace.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1275, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 73, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__event_enter__ptrace, ptr @__event_exit__ptrace, ptr @__ksymtab_task_user_regset_view, ptr @__p_syscall_meta__ptrace, ptr @__syscall_meta__ptrace, ptr @event_enter__ptrace, ptr @event_exit__ptrace, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__ptrace, ptr @args__ptrace, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ptrace to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ptrace to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ptrace to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ptrace to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_ptrace = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_ptrace

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptrace_access_vm(ptr noundef %tsk, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %gup_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_task_mm(ptr noundef %tsk) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptrace = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 4
  %0 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptrace, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %parent = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 72
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.anon.2, ptr %call, i32 0, i32 43
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp5.not = icmp eq i32 %and.i.i, 1
  br i1 %cmp5.not, label %lor.lhs.false3.if.end8_crit_edge, label %land.lhs.true

lor.lhs.false3.if.end8_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %user_ns = getelementptr inbounds %struct.anon.2, ptr %call, i32 0, i32 47
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 8
  %call6 = tail call zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %11) #7
  br i1 %call6, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %lor.lhs.false3.if.end8_crit_edge
  %call9 = tail call i32 @__access_remote_vm(ptr noundef nonnull %call, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %gup_flags) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %land.lhs.true.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call9, %if.end8 ], [ 0, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mmput(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptracer_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__access_remote_vm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ptrace_link(ptr noundef %child, ptr noundef %new_parent, ptr noundef %ptracer_cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptrace_entry = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77
  %0 = ptrtoint ptr %ptrace_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ptrace_entry, align 4
  %cmp.i.not = icmp eq ptr %1, %ptrace_entry
  br i1 %cmp.i.not, label %do.end7, label %do.body4, !prof !59

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ptrace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #7, !srcloc !60
  unreachable

do.end7:                                          ; preds = %entry
  %ptraced = getelementptr inbounds %struct.task_struct, ptr %new_parent, i32 0, i32 76
  %2 = ptrtoint ptr %ptraced to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptraced, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ptrace_entry, ptr noundef %ptraced, ptr noundef %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end7.list_add.exit_crit_edge

do.end7.list_add.exit_crit_edge:                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ptrace_entry, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %ptrace_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %ptrace_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ptraced, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %ptraced to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ptrace_entry, ptr %ptraced, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end7.list_add.exit_crit_edge
  %parent = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 72
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %new_parent, ptr %parent, align 8
  %tobool.not.i = icmp eq ptr %ptracer_cred, null
  br i1 %tobool.not.i, label %list_add.exit.get_cred.exit_crit_edge, label %do.body.i

list_add.exit.get_cred.exit_crit_edge:            ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cred.exit

do.body.i:                                        ; preds = %list_add.exit
  %call.i.i15 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %ptracer_cred) #7
  br i1 %call.i.i15, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !61

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__invalid_creds(ptr noundef nonnull %ptracer_cred, ptr noundef nonnull @.str.4, i32 noundef 253) #7
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %9 = getelementptr inbounds %struct.cred, ptr %ptracer_cred, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ptracer_cred, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %ptracer_cred, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ptracer_cred, ptr nonnull %ptracer_cred, i32 1, ptr nonnull elementtype(i32) %ptracer_cred) #7, !srcloc !62
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %list_add.exit.get_cred.exit_crit_edge
  %ptracer_cred10 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 97
  %12 = ptrtoint ptr %ptracer_cred10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ptracer_cred, ptr %ptracer_cred10, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ptrace_unlink(ptr noundef %child) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptrace = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 4
  %0 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptrace, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !61

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ptrace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !63
  unreachable

do.end9:                                          ; preds = %entry
  %stack = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %2 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack, align 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %3) #7
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 71
  %4 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_parent, align 4
  %parent = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 72
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent, align 8
  %ptrace_entry = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptrace_entry) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end9.list_del_init.exit_crit_edge

do.end9.list_del_init.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %ptrace_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptrace_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end9.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %ptrace_entry to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %ptrace_entry, ptr %ptrace_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ptrace_entry, ptr %prev.i3.i, align 4
  %ptracer_cred = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 97
  %15 = ptrtoint ptr %ptracer_cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptracer_cred, align 8
  store ptr null, ptr %ptracer_cred, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %list_del_init.exit.put_cred.exit_crit_edge, label %do.body.i

list_del_init.exit.put_cred.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cred.exit

do.body.i:                                        ; preds = %list_del_init.exit
  %call.i.i59 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %16) #7
  br i1 %call.i.i59, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !61

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__invalid_creds(ptr noundef nonnull %16, ptr noundef nonnull @.str.4, i32 noundef 286) #7
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #7, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_cred(ptr noundef nonnull %16) #7
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %list_del_init.exit.put_cred.exit_crit_edge
  %sighand = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %18 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock(ptr noundef %19) #7
  %20 = ptrtoint ptr %ptrace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ptrace, align 16
  tail call void @task_clear_jobctl_pending(ptr noundef %child, i32 noundef 1572864) #7
  tail call void @task_clear_jobctl_trapping(ptr noundef %child) #7
  %flags = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true, label %put_cred.exit.if.end26_crit_edge

put_cred.exit.if.end26_crit_edge:                 ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %put_cred.exit
  %signal = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 111
  %23 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal, align 16
  %flags13 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags13, align 8
  %and14 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %land.lhs.true.if.then18_crit_edge

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %land.lhs.true
  %group_stop_count = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %group_stop_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %group_stop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not = icmp eq i32 %28, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %land.lhs.true.if.then18_crit_edge
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 61
  %29 = ptrtoint ptr %jobctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %jobctl, align 4
  %or = or i32 %30, 131072
  store i32 %or, ptr %jobctl, align 4
  %and20 = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %or24 = or i32 %30, 131091
  %31 = ptrtoint ptr %jobctl to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or24, ptr %jobctl, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then18.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge, %put_cred.exit.if.end26_crit_edge
  %jobctl27 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 61
  %32 = ptrtoint ptr %jobctl27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jobctl27, align 4
  %and28 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end33, label %if.end26.if.then35_crit_edge

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

do.end33:                                         ; preds = %if.end26
  %34 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %child, align 128
  %and34 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp.not = icmp eq i32 %and34, 0
  br i1 %cmp.not, label %do.end33.if.end36_crit_edge, label %do.end33.if.then35_crit_edge

do.end33.if.then35_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

do.end33.if.end36_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %do.end33.if.then35_crit_edge, %if.end26.if.then35_crit_edge
  tail call void @signal_wake_up_state(ptr noundef %child, i32 noundef 8) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.end33.if.end36_crit_edge
  %36 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock(ptr noundef %37) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_trapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #7
  %call = tail call fastcc i32 @__ptrace_may_access(ptr noundef %task, i32 noundef %mode)
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ptrace_may_access(ptr noundef %task, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %cred2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred2, align 16
  %and = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 3
  %and3 = lshr i32 %mode, 4
  %and3.lobit = and i32 %and3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %and3.lobit)
  %cmp = icmp eq i32 %and.lobit, %and3.lobit
  br i1 %cmp, label %do.end17, label %if.end30

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end30:                                         ; preds = %entry
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %8 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %7, %9
  br i1 %cmp.i, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end35.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end35.rcu_read_lock.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end35
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end35.rcu_read_lock.exit_crit_edge
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %fsgid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %uid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %caller_uid.sroa.0.0.in = select i1 %tobool.not, ptr %uid, ptr %fsuid
  %caller_gid.sroa.0.0.in = select i1 %tobool.not, ptr %gid, ptr %fsgid
  %12 = ptrtoint ptr %caller_gid.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %caller_gid.sroa.0.0 = load i32, ptr %caller_gid.sroa.0.0.in, align 4
  %13 = ptrtoint ptr %caller_uid.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %caller_uid.sroa.0.0 = load i32, ptr %caller_uid.sroa.0.0.in, align 4
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %14 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %real_cred, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end54_crit_edge

rcu_read_lock.exit.do.end54_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true
  %.b150 = load i1, ptr @__ptrace_may_access.__warned.6, align 1
  br i1 %.b150, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ptrace_may_access.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull @.str.7) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true.do.end54_crit_edge, %rcu_read_lock.exit.do.end54_crit_edge
  %euid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %caller_uid.sroa.0.0, i32 %.unpack)
  %cmp.i151 = icmp eq i32 %caller_uid.sroa.0.0, %.unpack
  br i1 %cmp.i151, label %land.lhs.true58, label %do.end54.if.end81_crit_edge

do.end54.if.end81_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true58:                                  ; preds = %do.end54
  %suid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 6
  %17 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack145 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %caller_uid.sroa.0.0, i32 %.unpack145)
  %cmp.i152 = icmp eq i32 %caller_uid.sroa.0.0, %.unpack145
  br i1 %cmp.i152, label %land.lhs.true62, label %land.lhs.true58.if.end81_crit_edge

land.lhs.true58.if.end81_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %uid63 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %uid63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack146 = load i32, ptr %uid63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %caller_uid.sroa.0.0, i32 %.unpack146)
  %cmp.i153 = icmp eq i32 %caller_uid.sroa.0.0, %.unpack146
  br i1 %cmp.i153, label %land.lhs.true67, label %land.lhs.true62.if.end81_crit_edge

land.lhs.true62.if.end81_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %egid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 9
  %19 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack147 = load i32, ptr %egid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %caller_gid.sroa.0.0, i32 %.unpack147)
  %cmp.i154 = icmp eq i32 %caller_gid.sroa.0.0, %.unpack147
  br i1 %cmp.i154, label %land.lhs.true71, label %land.lhs.true67.if.end81_crit_edge

land.lhs.true67.if.end81_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %sgid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 7
  %20 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack148 = load i32, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %caller_gid.sroa.0.0, i32 %.unpack148)
  %cmp.i155 = icmp eq i32 %caller_gid.sroa.0.0, %.unpack148
  br i1 %cmp.i155, label %land.lhs.true75, label %land.lhs.true71.if.end81_crit_edge

land.lhs.true71.if.end81_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %gid76 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 5
  %21 = ptrtoint ptr %gid76 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack149 = load i32, ptr %gid76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %caller_gid.sroa.0.0, i32 %.unpack149)
  %cmp.i156 = icmp eq i32 %caller_gid.sroa.0.0, %.unpack149
  br i1 %cmp.i156, label %land.lhs.true75.ok_crit_edge, label %land.lhs.true75.if.end81_crit_edge

land.lhs.true75.if.end81_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true75.ok_crit_edge:                     ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %ok

if.end81:                                         ; preds = %land.lhs.true75.if.end81_crit_edge, %land.lhs.true71.if.end81_crit_edge, %land.lhs.true67.if.end81_crit_edge, %land.lhs.true62.if.end81_crit_edge, %land.lhs.true58.if.end81_crit_edge, %do.end54.if.end81_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 25
  %22 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_ns, align 4
  %and.i157 = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %ptrace_has_cap.exit, label %if.then.i160

if.then.i160:                                     ; preds = %if.end81
  %call.i159 = tail call zeroext i1 @ns_capable_noaudit(ptr noundef %23, i32 noundef 19) #7
  br i1 %call.i159, label %if.then.i160.ok_crit_edge, label %if.then.i160.if.end84_crit_edge

if.then.i160.if.end84_crit_edge:                  ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then.i160.ok_crit_edge:                        ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %ok

ptrace_has_cap.exit:                              ; preds = %if.end81
  %call1.i161 = tail call zeroext i1 @ns_capable(ptr noundef %23, i32 noundef 19) #7
  br i1 %call1.i161, label %ptrace_has_cap.exit.ok_crit_edge, label %ptrace_has_cap.exit.if.end84_crit_edge

ptrace_has_cap.exit.if.end84_crit_edge:           ; preds = %ptrace_has_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

ptrace_has_cap.exit.ok_crit_edge:                 ; preds = %ptrace_has_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ok

if.end84:                                         ; preds = %ptrace_has_cap.exit.if.end84_crit_edge, %if.then.i160.if.end84_crit_edge
  %call.i162 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i162, label %if.end84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i165

if.end84.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i165:                               ; preds = %if.end84
  %call1.i163 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i168, %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, %if.end84.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  %24 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i169 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %preempt_count.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i170, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i170, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

ok:                                               ; preds = %ptrace_has_cap.exit.ok_crit_edge, %if.then.i160.ok_crit_edge, %land.lhs.true75.ok_crit_edge
  %call.i171 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i171, label %ok.rcu_read_unlock.exit181_crit_edge, label %land.lhs.true.i174

ok.rcu_read_unlock.exit181_crit_edge:             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit181

land.lhs.true.i174:                               ; preds = %ok
  %call1.i172 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i172)
  %tobool.not.i173 = icmp eq i32 %call1.i172, 0
  br i1 %tobool.not.i173, label %land.lhs.true.i174.rcu_read_unlock.exit181_crit_edge, label %land.lhs.true2.i176

land.lhs.true.i174.rcu_read_unlock.exit181_crit_edge: ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit181

land.lhs.true2.i176:                              ; preds = %land.lhs.true.i174
  %.b4.i175 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i175, label %land.lhs.true2.i176.rcu_read_unlock.exit181_crit_edge, label %if.then.i177

land.lhs.true2.i176.rcu_read_unlock.exit181_crit_edge: ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit181

if.then.i177:                                     ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #7
  br label %rcu_read_unlock.exit181

rcu_read_unlock.exit181:                          ; preds = %if.then.i177, %land.lhs.true2.i176.rcu_read_unlock.exit181_crit_edge, %land.lhs.true.i174.rcu_read_unlock.exit181_crit_edge, %ok.rcu_read_unlock.exit181_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  %28 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i178 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i178 to ptr
  %preempt_count.i.i.i.i179 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i179, align 4
  %sub.i.i.i180 = add i32 %31, -1
  store volatile i32 %sub.i.i.i180, ptr %preempt_count.i.i.i.i179, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  %mm91 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 53
  %32 = ptrtoint ptr %mm91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm91, align 8
  %tobool92.not = icmp eq ptr %33, null
  br i1 %tobool92.not, label %rcu_read_unlock.exit181.if.end100_crit_edge, label %land.lhs.true93

rcu_read_unlock.exit181.if.end100_crit_edge:      ; preds = %rcu_read_unlock.exit181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true93:                                  ; preds = %rcu_read_unlock.exit181
  %flags.i = getelementptr inbounds %struct.anon.2, ptr %33, i32 0, i32 43
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp95.not = icmp eq i32 %and.i.i, 1
  br i1 %cmp95.not, label %land.lhs.true93.if.end100_crit_edge, label %land.lhs.true96

land.lhs.true93.if.end100_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %user_ns97 = getelementptr inbounds %struct.anon.2, ptr %33, i32 0, i32 47
  %36 = ptrtoint ptr %user_ns97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user_ns97, align 8
  %and.i182 = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182)
  %tobool.not.i183 = icmp eq i32 %and.i182, 0
  br i1 %tobool.not.i183, label %ptrace_has_cap.exit189, label %if.then.i185

if.then.i185:                                     ; preds = %land.lhs.true96
  %call.i184 = tail call zeroext i1 @ns_capable_noaudit(ptr noundef %37, i32 noundef 19) #7
  br i1 %call.i184, label %if.then.i185.if.end100_crit_edge, label %if.then.i185.cleanup_crit_edge

if.then.i185.cleanup_crit_edge:                   ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i185.if.end100_crit_edge:                 ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

ptrace_has_cap.exit189:                           ; preds = %land.lhs.true96
  %call1.i186 = tail call zeroext i1 @ns_capable(ptr noundef %37, i32 noundef 19) #7
  br i1 %call1.i186, label %ptrace_has_cap.exit189.if.end100_crit_edge, label %ptrace_has_cap.exit189.cleanup_crit_edge

ptrace_has_cap.exit189.cleanup_crit_edge:         ; preds = %ptrace_has_cap.exit189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptrace_has_cap.exit189.if.end100_crit_edge:       ; preds = %ptrace_has_cap.exit189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end100:                                        ; preds = %ptrace_has_cap.exit189.if.end100_crit_edge, %if.then.i185.if.end100_crit_edge, %land.lhs.true93.if.end100_crit_edge, %rcu_read_unlock.exit181.if.end100_crit_edge
  %call101 = tail call i32 @security_ptrace_access_check(ptr noundef %task, i32 noundef %mode) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %ptrace_has_cap.exit189.cleanup_crit_edge, %if.then.i185.cleanup_crit_edge, %rcu_read_unlock.exit, %if.end30.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -1, %do.end17 ], [ %call101, %if.end100 ], [ -1, %rcu_read_unlock.exit ], [ 0, %if.end30.cleanup_crit_edge ], [ -1, %ptrace_has_cap.exit189.cleanup_crit_edge ], [ -1, %if.then.i185.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_ptrace(ptr noundef %tracer, ptr noundef %dead) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptraced = getelementptr inbounds %struct.task_struct, ptr %tracer, i32 0, i32 76
  %0 = ptrtoint ptr %ptraced to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptraced, align 64
  %cmp.not30 = icmp eq ptr %1, %ptraced
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in31 = phi ptr [ %.pn34, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %p.032 = getelementptr i8, ptr %.pn.in31, i32 -1352
  %2 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn34 = load ptr, ptr %.pn.in31, align 8
  %ptrace = getelementptr i8, ptr %.pn.in31, i32 -1336
  %3 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ptrace, align 16
  %and = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then, !prof !59

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %p.032) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call10 = tail call fastcc zeroext i1 @__ptrace_detach(ptr noundef %tracer, ptr noundef %p.032)
  br i1 %call10, label %if.then11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %if.end
  %5 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dead, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in31, ptr noundef %dead, ptr noundef %6) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %.pn.in31, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %.pn.in31, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dead, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %.pn.in31, ptr %dead, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then11.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn34, %ptraced
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__ptrace_detach(ptr noundef %tracer, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__ptrace_unlink(ptr noundef %p)
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 57
  %0 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp.not = icmp eq i32 %1, 32
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 59
  %2 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %land.lhs.true, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

land.lhs.true:                                    ; preds = %if.end
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 80
  %4 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %5, %thread_group.i
  br i1 %cmp.i.i.not, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 71
  %6 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_parent, align 4
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %tracer, i32 0, i32 111
  %10 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal1.i, align 16
  %cmp.i31 = icmp eq ptr %9, %11
  br i1 %cmp.i31, label %if.else, label %if.end13

if.else:                                          ; preds = %if.then3
  %sighand = getelementptr inbounds %struct.task_struct, ptr %tracer, i32 0, i32 112
  %12 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock(ptr noundef %13) #7
  %arrayidx.i = getelementptr %struct.sighand_struct, ptr %13, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i32 = icmp eq ptr %15, inttoptr (i32 1 to ptr)
  br i1 %cmp.i32, label %ignoring_children.exit.thread, label %ignoring_children.exit

ignoring_children.exit.thread:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %13) #7
  br label %if.then10

ignoring_children.exit:                           ; preds = %if.else
  %sa_flags.i = getelementptr %struct.sighand_struct, ptr %13, i32 0, i32 3, i32 16, i32 0, i32 1
  %16 = ptrtoint ptr %sa_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sa_flags.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %13) #7
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %ignoring_children.exit.cleanup_crit_edge, label %ignoring_children.exit.if.then10_crit_edge

ignoring_children.exit.if.then10_crit_edge:       ; preds = %ignoring_children.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

ignoring_children.exit.cleanup_crit_edge:         ; preds = %ignoring_children.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %ignoring_children.exit.if.then10_crit_edge, %ignoring_children.exit.thread
  tail call void @__wake_up_parent(ptr noundef %p, ptr noundef %tracer) #7
  br label %if.then15

if.end13:                                         ; preds = %if.then3
  %call6 = tail call zeroext i1 @do_notify_parent(ptr noundef %p, i32 noundef %3) #7
  br i1 %call6, label %if.end13.if.then15_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.then10, %if.end.if.then15_crit_edge
  %19 = ptrtoint ptr %exit_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %exit_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %ignoring_children.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then15 ], [ false, %if.end13.cleanup_crit_edge ], [ false, %ignoring_children.exit.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptrace_readdata(ptr noundef %tsk, i32 noundef %src, ptr noundef %dst, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp58 = icmp sgt i32 %len, 0
  br i1 %cmp58, label %while.body.lr.ph, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

while.body.lr.ph:                                 ; preds = %entry
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 72
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %copied.062 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %len.addr.061 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %dst.addr.060 = phi ptr [ %dst, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %src.addr.059 = phi i32 [ %src, %while.body.lr.ph ], [ %add11, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %1 = call i32 @llvm.umin.i32(i32 %len.addr.061, i32 128)
  %call.i = call ptr @get_task_mm(ptr noundef %tsk) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.if.then_crit_edge, label %if.end.i

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %while.body
  %2 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.ptrace_access_vm.exit.thread30_crit_edge, label %lor.lhs.false.i

if.end.i.ptrace_access_vm.exit.thread30_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread30

lor.lhs.false.i:                                  ; preds = %if.end.i
  %4 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %cmp.not.i = icmp eq ptr %7, %9
  br i1 %cmp.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.ptrace_access_vm.exit.thread30_crit_edge

lor.lhs.false.i.ptrace_access_vm.exit.thread30_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread30

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 43
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp5.not.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp5.not.i, label %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %user_ns.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 47
  %12 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i, align 8
  %call6.i = call zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %13) #7
  br i1 %call6.i, label %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i.ptrace_access_vm.exit.thread30_crit_edge

land.lhs.true.i.ptrace_access_vm.exit.thread30_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread30

land.lhs.true.i.ptrace_access_vm.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

ptrace_access_vm.exit.thread30:                   ; preds = %land.lhs.true.i.ptrace_access_vm.exit.thread30_crit_edge, %lor.lhs.false.i.ptrace_access_vm.exit.thread30_crit_edge, %if.end.i.ptrace_access_vm.exit.thread30_crit_edge
  call void @mmput(ptr noundef nonnull %call.i) #7
  br label %if.then

ptrace_access_vm.exit:                            ; preds = %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge
  %call9.i = call i32 @__access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %src.addr.059, ptr noundef nonnull %buf, i32 noundef %1, i32 noundef 16) #7
  call void @mmput(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %ptrace_access_vm.exit.if.then_crit_edge, label %if.end5

ptrace_access_vm.exit.if.then_crit_edge:          ; preds = %ptrace_access_vm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %ptrace_access_vm.exit.if.then_crit_edge, %ptrace_access_vm.exit.thread30, %while.body.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.062)
  %tobool3.not = icmp eq i32 %copied.062, 0
  br i1 %tobool3.not, label %if.then.cleanup.thread_crit_edge, label %cleanup.thread42

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread42:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #7
  br label %cleanup14

if.end5:                                          ; preds = %ptrace_access_vm.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call9.i)
  %cmp1.i.i = icmp ugt i32 %call9.i, 128
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !61

if.then3.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 128, i32 noundef %call9.i) #7
  br label %cleanup.thread

if.then.i.i.i:                                    ; preds = %if.end5
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %call9.i, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.cleanup.thread_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup.thread_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst.addr.060, i32 %call9.i, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef %call9.i) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %dst.addr.060, ptr noundef nonnull %buf, i32 noundef %call9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool8.not, label %cleanup, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_user.exit.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %if.then.i.i.i.cleanup.thread_crit_edge, %if.then3.i.i, %if.then.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -14, %if.then3.i.i ], [ -5, %if.then.cleanup.thread_crit_edge ], [ -14, %if.end.i.i.cleanup.thread_crit_edge ], [ -14, %if.then.i.i.i.cleanup.thread_crit_edge ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #7
  br label %cleanup14

cleanup:                                          ; preds = %copy_to_user.exit
  %add = add i32 %call9.i, %copied.062
  %add11 = add i32 %call9.i, %src.addr.059
  %add.ptr = getelementptr i8, ptr %dst.addr.060, i32 %call9.i
  %sub = sub nsw i32 %len.addr.061, %call9.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #7
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup14_crit_edge

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %cleanup.thread, %cleanup.thread42, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %copied.062, %cleanup.thread42 ], [ 0, %entry.cleanup14_crit_edge ], [ %add, %cleanup.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptrace_writedata(ptr noundef %tsk, ptr noundef %src, i32 noundef %dst, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp57 = icmp sgt i32 %len, 0
  br i1 %cmp57, label %while.body.lr.ph, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

while.body.lr.ph:                                 ; preds = %entry
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 72
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %copied.061 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %len.addr.060 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %dst.addr.059 = phi i32 [ %dst, %while.body.lr.ph ], [ %add11, %cleanup.while.body_crit_edge ]
  %src.addr.058 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %1 = call i32 @llvm.umin.i32(i32 %len.addr.060, i32 128)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src.addr.058, i32 %1, i32 -1226833920) #10, !srcloc !71
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !59

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #7
  %3 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !72
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %src.addr.058, i32 noundef %1) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !59

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i29 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %1, %while.body.if.then11.i.i_crit_edge ], [ %1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %1, %res.0.i.i29
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i29)
  br label %cleanup.thread

if.end:                                           ; preds = %if.end.i.i
  %call.i = call ptr @get_task_mm(ptr noundef %tsk) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %if.end.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.ptrace_access_vm.exit.thread34_crit_edge, label %lor.lhs.false.i

if.end.i.ptrace_access_vm.exit.thread34_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread34

lor.lhs.false.i:                                  ; preds = %if.end.i
  %9 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %cmp.not.i = icmp eq ptr %12, %14
  br i1 %cmp.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.ptrace_access_vm.exit.thread34_crit_edge

lor.lhs.false.i.ptrace_access_vm.exit.thread34_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread34

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 43
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp5.not.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp5.not.i, label %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %user_ns.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 47
  %17 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns.i, align 8
  %call6.i = call zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %18) #7
  br i1 %call6.i, label %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i.ptrace_access_vm.exit.thread34_crit_edge

land.lhs.true.i.ptrace_access_vm.exit.thread34_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread34

land.lhs.true.i.ptrace_access_vm.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

ptrace_access_vm.exit.thread34:                   ; preds = %land.lhs.true.i.ptrace_access_vm.exit.thread34_crit_edge, %lor.lhs.false.i.ptrace_access_vm.exit.thread34_crit_edge, %if.end.i.ptrace_access_vm.exit.thread34_crit_edge
  call void @mmput(ptr noundef nonnull %call.i) #7
  br label %if.then6

ptrace_access_vm.exit:                            ; preds = %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge
  %call9.i = call i32 @__access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %dst.addr.059, ptr noundef nonnull %buf, i32 noundef %1, i32 noundef 17) #7
  call void @mmput(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool5.not = icmp eq i32 %call9.i, 0
  br i1 %tobool5.not, label %ptrace_access_vm.exit.if.then6_crit_edge, label %cleanup

ptrace_access_vm.exit.if.then6_crit_edge:         ; preds = %ptrace_access_vm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %ptrace_access_vm.exit.if.then6_crit_edge, %ptrace_access_vm.exit.thread34, %if.end.if.then6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.061)
  %tobool7.not = icmp eq i32 %copied.061, 0
  br i1 %tobool7.not, label %if.then6.cleanup.thread_crit_edge, label %cleanup.thread43

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread43:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #7
  br label %cleanup14

cleanup.thread:                                   ; preds = %if.then6.cleanup.thread_crit_edge, %if.then11.i.i
  %retval.1.ph = phi i32 [ -14, %if.then11.i.i ], [ -5, %if.then6.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #7
  br label %cleanup14

cleanup:                                          ; preds = %ptrace_access_vm.exit
  %add = add i32 %call9.i, %copied.061
  %add.ptr = getelementptr i8, ptr %src.addr.058, i32 %call9.i
  %add11 = add i32 %call9.i, %dst.addr.059
  %sub = sub i32 %len.addr.060, %call9.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #7
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup14_crit_edge

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %cleanup.thread, %cleanup.thread43, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %copied.061, %cleanup.thread43 ], [ 0, %entry.cleanup14_crit_edge ], [ %add, %cleanup.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_user_regset_view(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptrace_request(ptr noundef %child, i32 noundef %request, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %conf.i = alloca %struct.ptrace_rseq_configuration, align 8
  %info.i334 = alloca %struct.ptrace_syscall_info, align 8
  %flags.i = alloca i32, align 4
  %arg.i = alloca %struct.ptrace_peeksiginfo_args, align 8
  %info.i = alloca %struct.kernel_siginfo, align 4
  %siginfo = alloca %struct.kernel_siginfo, align 4
  %flags = alloca i32, align 4
  %new_set = alloca %struct.sigset_t, align 8
  %kiov = alloca %struct.iovec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptrace = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 4
  %0 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptrace, align 16
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %siginfo) #7
  %2 = inttoptr i32 %data to ptr
  %3 = call ptr @memset(ptr %siginfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !75
  %5 = zext i32 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %request, label %entry.cleanup198_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge430
    i32 4, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge431
    i32 21, label %entry.sw.bb3_crit_edge
    i32 16896, label %entry.sw.bb3_crit_edge432
    i32 16897, label %sw.bb5
    i32 16905, label %sw.bb8
    i32 16898, label %sw.bb10
    i32 16899, label %sw.bb14
    i32 16906, label %sw.bb20
    i32 16907, label %sw.bb31
    i32 16903, label %sw.bb43
    i32 16904, label %sw.bb63
    i32 17, label %sw.bb95
    i32 31, label %sw.bb97
    i32 9, label %entry.sw.bb123_crit_edge
    i32 24, label %entry.sw.bb123_crit_edge433
    i32 7, label %entry.sw.bb123_crit_edge434
    i32 8, label %sw.bb125
    i32 16900, label %entry.sw.bb130_crit_edge
    i32 16901, label %entry.sw.bb130_crit_edge435
    i32 16910, label %sw.bb188
    i32 16908, label %sw.bb190
    i32 16909, label %sw.bb192
    i32 16911, label %sw.bb194
  ]

entry.sw.bb130_crit_edge435:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb130

entry.sw.bb130_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb130

entry.sw.bb123_crit_edge434:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

entry.sw.bb123_crit_edge433:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

entry.sw.bb123_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

entry.sw.bb3_crit_edge432:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb1_crit_edge431:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge430:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup198_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge430
  %call = tail call i32 @generic_ptrace_peekdata(ptr noundef %child, i32 noundef %addr, i32 noundef %data)
  br label %cleanup198

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge431
  %call2 = tail call i32 @generic_ptrace_pokedata(ptr noundef %child, i32 noundef %addr, i32 noundef %data)
  br label %cleanup198

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge432
  %and.i307 = and i32 %data, -3145984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i307)
  %tobool.not.i = icmp eq i32 %and.i307, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.cleanup198_crit_edge

sw.bb3.cleanup198_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end.i:                                         ; preds = %sw.bb3
  %and1.i = and i32 %data, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then5.i, !prof !59

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i, label %if.end7.i, label %if.then5.i.cleanup198_crit_edge

if.then5.i.cleanup198_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end7.i:                                        ; preds = %if.then5.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %seccomp.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 123
  %10 = ptrtoint ptr %seccomp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seccomp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end7.i.cleanup198_crit_edge

if.end7.i.cleanup198_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptrace.i, align 16
  %and12.i = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.cleanup198_crit_edge

lor.lhs.false.i.cleanup198_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %lor.lhs.false.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %14 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptrace, align 16
  %and18.i = and i32 %15, -25167865
  %shl.i = shl nuw nsw i32 %data, 3
  %or.i308 = or i32 %and18.i, %shl.i
  store i32 %or.i308, ptr %ptrace, align 16
  br label %cleanup198

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ptrace_message = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 153
  %16 = ptrtoint ptr %ptrace_message to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptrace_message, align 32
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1054) #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !72
  %and.i = and i32 %20, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %17, i32 -1226833921) #7, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  br label %cleanup198

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arg.i) #7
  %22 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, ptr %arg.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, ptr %arg.i, i32 0, i32 2
  %24 = inttoptr i32 %addr to ptr
  %25 = call ptr @memset(ptr %arg.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i.i309 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i309, label %sw.bb8.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb8.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb8
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 16, i32 -1226833920) #10, !srcloc !71
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !59

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg.i, i32 noundef 16) #7
  %27 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !72
  %and.i.i.i.i.i = and i32 %29, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg.i, ptr noundef %24, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i310, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !59

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb8.if.then11.i.i.i_crit_edge
  %res.0.i.i83.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb8.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i83.i
  %add.ptr.i.i.i = getelementptr i8, ptr %arg.i, i32 %sub.i.i.i
  %30 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i83.i)
  br label %ptrace_peek_siginfo.exit

if.end.i310:                                      ; preds = %if.end.i.i.i
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %tobool1.not.i = icmp ult i32 %32, 2
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i310.ptrace_peek_siginfo.exit_crit_edge

if.end.i310.ptrace_peek_siginfo.exit_crit_edge:   ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_peek_siginfo.exit

if.end3.i:                                        ; preds = %if.end.i310
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp slt i32 %34, 0
  br i1 %cmp.i, label %if.end3.i.ptrace_peek_siginfo.exit_crit_edge, label %if.end5.i

if.end3.i.ptrace_peek_siginfo.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_peek_siginfo.exit

if.end5.i:                                        ; preds = %if.end3.i
  %35 = ptrtoint ptr %arg.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %36)
  %cmp6.i = icmp ugt i64 %36, 4294967295
  br i1 %cmp6.i, label %if.end5.i.ptrace_peek_siginfo.exit_crit_edge, label %if.end8.i

if.end5.i.ptrace_peek_siginfo.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_peek_siginfo.exit

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not.i = icmp eq i32 %32, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 111
  %37 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %signal.i, align 16
  %shared_pending.i = getelementptr inbounds %struct.signal_struct, ptr %38, i32 0, i32 6
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %pending13.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 116
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then12.i
  %pending.0.i = phi ptr [ %shared_pending.i, %if.then12.i ], [ %pending13.i, %if.else.i ]
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp16.i377 = icmp sgt i32 %40, 0
  br i1 %cmp16.i377, label %if.end14.i.for.body.i_crit_edge, label %if.end14.i.ptrace_peek_siginfo.exit_crit_edge

if.end14.i.ptrace_peek_siginfo.exit_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_peek_siginfo.exit

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup52.i.for.body.i_crit_edge, %if.end14.i.for.body.i_crit_edge
  %data.addr.0.i379 = phi i32 [ %add44.i, %cleanup52.i.for.body.i_crit_edge ], [ %data, %if.end14.i.for.body.i_crit_edge ]
  %i.0.i378 = phi i32 [ %inc.i, %cleanup52.i.for.body.i_crit_edge ], [ 0, %if.end14.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #7
  %41 = call ptr @memset(ptr %info.i, i32 255, i32 32)
  %42 = ptrtoint ptr %arg.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arg.i, align 8
  %44 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sighand.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %45) #7
  %46 = ptrtoint ptr %pending.0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %q.0100.i = load ptr, ptr %pending.0.i, align 4
  %cmp23.not101.i = icmp eq ptr %q.0100.i, %pending.0.i
  br i1 %cmp23.not101.i, label %for.body.i.if.then38.critedge.i_crit_edge, label %for.body25.preheader.i

for.body.i.if.then38.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.critedge.i

for.body25.preheader.i:                           ; preds = %for.body.i
  %47 = trunc i64 %43 to i32
  %conv19.i = add i32 %i.0.i378, %47
  br label %for.body25.i

for.cond20.i:                                     ; preds = %for.body25.i
  %dec.i = add i32 %off17.0102.i, -1
  %48 = ptrtoint ptr %q.0103.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %q.0.i = load ptr, ptr %q.0103.i, align 4
  %cmp23.not.i = icmp eq ptr %q.0.i, %pending.0.i
  br i1 %cmp23.not.i, label %for.cond20.i.if.then38.critedge.i_crit_edge, label %for.cond20.i.for.body25.i_crit_edge

for.cond20.i.for.body25.i_crit_edge:              ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.i

for.cond20.i.if.then38.critedge.i_crit_edge:      ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.critedge.i

for.body25.i:                                     ; preds = %for.cond20.i.for.body25.i_crit_edge, %for.body25.preheader.i
  %q.0103.i = phi ptr [ %q.0.i, %for.cond20.i.for.body25.i_crit_edge ], [ %q.0100.i, %for.body25.preheader.i ]
  %off17.0102.i = phi i32 [ %dec.i, %for.cond20.i.for.body25.i_crit_edge ], [ %conv19.i, %for.body25.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off17.0102.i)
  %tobool26.not.i = icmp eq i32 %off17.0102.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %for.cond20.i

if.then27.i:                                      ; preds = %for.body25.i
  %info28.i = getelementptr inbounds %struct.sigqueue, ptr %q.0103.i, i32 0, i32 2
  %49 = call ptr @memcpy(ptr %info.i, ptr %info28.i, i32 32)
  %50 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sighand.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %51) #7
  %52 = inttoptr i32 %data.addr.0.i379 to ptr
  %call40.i = call i32 @copy_siginfo_to_user(ptr noundef %52, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %cleanup.cont.i, label %cleanup52.thread120.i

cleanup52.thread120.i:                            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #7
  br label %for.end57.i

if.then38.critedge.i:                             ; preds = %for.cond20.i.if.then38.critedge.i_crit_edge, %for.body.i.if.then38.critedge.i_crit_edge
  %53 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sighand.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %54) #7
  br label %cleanup52.thread.i

cleanup.cont.i:                                   ; preds = %if.then27.i
  %add44.i = add i32 %data.addr.0.i379, 128
  %inc.i = add nuw nsw i32 %i.0.i378, 1
  %55 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i311 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i311 to ptr
  %task.i312 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i312 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i312, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stack.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %cleanup.cont.i.cleanup52.thread.i_crit_edge, !prof !59

cleanup.cont.i.cleanup52.thread.i_crit_edge:      ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52.thread.i

signal_pending.exit.i:                            ; preds = %cleanup.cont.i
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %60, align 4
  %and1.i.i.i.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool47.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool47.not.i, label %cleanup52.i, label %signal_pending.exit.i.cleanup52.thread.i_crit_edge

signal_pending.exit.i.cleanup52.thread.i_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52.thread.i

cleanup52.thread.i:                               ; preds = %signal_pending.exit.i.cleanup52.thread.i_crit_edge, %cleanup.cont.i.cleanup52.thread.i_crit_edge, %if.then38.critedge.i
  %i.1.ph.i = phi i32 [ %i.0.i378, %if.then38.critedge.i ], [ %inc.i, %cleanup.cont.i.cleanup52.thread.i_crit_edge ], [ %inc.i, %signal_pending.exit.i.cleanup52.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #7
  br label %for.end57.i

cleanup52.i:                                      ; preds = %signal_pending.exit.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 788, i32 noundef 0) #7
  %call.i.i313 = call i32 @__cond_resched() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #7
  %66 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %23, align 4
  %cmp16.i = icmp slt i32 %inc.i, %67
  br i1 %cmp16.i, label %cleanup52.i.for.body.i_crit_edge, label %cleanup52.i.for.end57.i.thread_crit_edge

cleanup52.i.for.end57.i.thread_crit_edge:         ; preds = %cleanup52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57.i.thread

cleanup52.i.for.body.i_crit_edge:                 ; preds = %cleanup52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end57.i:                                      ; preds = %cleanup52.thread.i, %cleanup52.thread120.i
  %i.2.i = phi i32 [ %i.1.ph.i, %cleanup52.thread.i ], [ %i.0.i378, %cleanup52.thread120.i ]
  %ret.3.i = phi i32 [ 0, %cleanup52.thread.i ], [ -14, %cleanup52.thread120.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2.i)
  %cmp58.i = icmp sgt i32 %i.2.i, 0
  br i1 %cmp58.i, label %for.end57.i.for.end57.i.thread_crit_edge, label %for.end57.i.ptrace_peek_siginfo.exit_crit_edge

for.end57.i.ptrace_peek_siginfo.exit_crit_edge:   ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_peek_siginfo.exit

for.end57.i.for.end57.i.thread_crit_edge:         ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57.i.thread

for.end57.i.thread:                               ; preds = %for.end57.i.for.end57.i.thread_crit_edge, %cleanup52.i.for.end57.i.thread_crit_edge
  %i.2.i391 = phi i32 [ %i.2.i, %for.end57.i.for.end57.i.thread_crit_edge ], [ %inc.i, %cleanup52.i.for.end57.i.thread_crit_edge ]
  br label %ptrace_peek_siginfo.exit

ptrace_peek_siginfo.exit:                         ; preds = %for.end57.i.thread, %for.end57.i.ptrace_peek_siginfo.exit_crit_edge, %if.end14.i.ptrace_peek_siginfo.exit_crit_edge, %if.end5.i.ptrace_peek_siginfo.exit_crit_edge, %if.end3.i.ptrace_peek_siginfo.exit_crit_edge, %if.end.i310.ptrace_peek_siginfo.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i314 = phi i32 [ -22, %if.end.i310.ptrace_peek_siginfo.exit_crit_edge ], [ -22, %if.end3.i.ptrace_peek_siginfo.exit_crit_edge ], [ 0, %if.end5.i.ptrace_peek_siginfo.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ %i.2.i391, %for.end57.i.thread ], [ %ret.3.i, %for.end57.i.ptrace_peek_siginfo.exit_crit_edge ], [ 0, %if.end14.i.ptrace_peek_siginfo.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arg.i) #7
  br label %cleanup198

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #7
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %flags.i, align 4, !annotation !75
  %call.i.i315 = call ptr @__lock_task_sighand(ptr noundef %child, ptr noundef nonnull %flags.i) #7
  %tobool.not.i316 = icmp eq ptr %call.i.i315, null
  br i1 %tobool.not.i316, label %ptrace_getsiginfo.exit.thread, label %if.then.i

ptrace_getsiginfo.exit.thread:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  br label %cleanup198

if.then.i:                                        ; preds = %sw.bb10
  %last_siginfo.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 154
  %69 = ptrtoint ptr %last_siginfo.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %last_siginfo.i, align 4
  %cmp.not.i317 = icmp eq ptr %70, null
  br i1 %cmp.not.i317, label %ptrace_getsiginfo.exit.thread396, label %if.then, !prof !61

ptrace_getsiginfo.exit.thread396:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sighand.i.i398 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %71 = ptrtoint ptr %sighand.i.i398 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sighand.i.i398, align 4
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %74) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  br label %cleanup198

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = call ptr @memcpy(ptr %siginfo, ptr %70, i32 32)
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %76 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sighand.i.i, align 4
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %77, i32 noundef %79) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  %call13 = call i32 @copy_siginfo_to_user(ptr noundef %2, ptr noundef nonnull %siginfo) #7
  br label %cleanup198

sw.bb14:                                          ; preds = %entry
  %call15 = call i32 @copy_siginfo_from_user(ptr noundef nonnull %siginfo, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %sw.bb14.cleanup198_crit_edge

sw.bb14.cleanup198_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call fastcc i32 @ptrace_setsiginfo(ptr noundef %child, ptr noundef nonnull %siginfo)
  br label %cleanup198

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %addr)
  %cmp.not = icmp eq i32 %addr, 8
  br i1 %cmp.not, label %if.end22, label %sw.bb20.cleanup198_crit_edge

sw.bb20.cleanup198_crit_edge:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end22:                                         ; preds = %sw.bb20
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %80 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %stack.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %84 = and i32 %83, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not = icmp eq i32 %84, 0
  %saved_sigmask = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 115
  %blocked = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 113
  %mask.0 = select i1 %tobool.i.not, ptr %blocked, ptr %saved_sigmask
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end22.cleanup198_crit_edge, label %if.end.i.i

if.end22.cleanup198_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end.i.i:                                       ; preds = %if.end22
  %85 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i = extractvalue { i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup198_crit_edge

if.end.i.i.cleanup198_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mask.0, i32 noundef 8) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %mask.0, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool27.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool27.not, i32 0, i32 -14
  br label %cleanup198

sw.bb31:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_set) #7
  %86 = ptrtoint ptr %new_set to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %new_set, align 8, !annotation !75
  %87 = getelementptr inbounds [2 x i32], ptr %new_set, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %87, align 4, !annotation !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %addr)
  %cmp32.not = icmp eq i32 %addr, 8
  br i1 %cmp32.not, label %if.end8.i.i284, label %sw.bb31.cleanup42_crit_edge

sw.bb31.cleanup42_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end8.i.i284:                                   ; preds = %sw.bb31
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i285 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i285, label %if.end8.i.i284.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i284.if.then11.i.i_crit_edge:           ; preds = %if.end8.i.i284
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i284
  %89 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #10, !srcloc !71
  %asmresult.i.i286 = extractvalue { i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i286)
  %cmp.i6.i287 = icmp eq i32 %asmresult.i.i286, 0
  br i1 %cmp.i6.i287, label %if.end.i.i289, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !59

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i289:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i288 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_set, i32 noundef 8) #7
  %90 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 4
  %92 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !72
  %and.i.i.i.i = and i32 %92, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_set, ptr noundef %2, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end38, label %if.end.i.i289.if.then11.i.i_crit_edge, !prof !59

if.end.i.i289.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i289.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i284.if.then11.i.i_crit_edge
  %res.0.i.i365 = phi i32 [ %call1.i.i.i, %if.end.i.i289.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i284.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i365
  %add.ptr.i.i = getelementptr i8, ptr %new_set, i32 %sub.i.i
  %93 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i365)
  br label %cleanup42

if.end38:                                         ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %new_set to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %new_set, align 8
  %and.i320 = and i32 %95, -262401
  store i32 %and.i320, ptr %new_set, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %96 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sighand, align 4
  call void @_raw_spin_lock_irq(ptr noundef %97) #7
  %blocked39 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 113
  %98 = ptrtoint ptr %new_set to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %new_set, align 8
  %100 = ptrtoint ptr %blocked39 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %blocked39, align 8
  %101 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sighand, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %102) #7
  %stack.i.i321 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %103 = ptrtoint ptr %stack.i.i321 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %stack.i.i321, align 4
  call void @_clear_bit(i32 noundef 20, ptr noundef %104) #7
  br label %cleanup42

cleanup42:                                        ; preds = %if.end38, %if.then11.i.i, %sw.bb31.cleanup42_crit_edge
  %ret.2 = phi i32 [ 0, %if.end38 ], [ -22, %sw.bb31.cleanup42_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_set) #7
  br label %cleanup198

sw.bb43:                                          ; preds = %entry
  br i1 %tobool.not, label %sw.bb43.cleanup198_crit_edge, label %lor.rhs, !prof !61

sw.bb43.cleanup198_crit_edge:                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

lor.rhs:                                          ; preds = %sw.bb43
  %call.i322 = call ptr @__lock_task_sighand(ptr noundef %child, ptr noundef nonnull %flags) #7
  %tobool46.not = icmp eq ptr %call.i322, null
  br i1 %tobool46.not, label %lor.rhs.cleanup198_crit_edge, label %if.end51, !prof !61

lor.rhs.cleanup198_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end51:                                         ; preds = %lor.rhs
  %call52 = call zeroext i1 @task_set_jobctl_pending(ptr noundef %child, i32 noundef 524288) #7
  br i1 %call52, label %if.then59, label %if.end51.if.end62_crit_edge, !prof !59

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 61
  %105 = ptrtoint ptr %jobctl to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %jobctl, align 4
  %and60 = lshr i32 %106, 19
  %107 = and i32 %and60, 8
  call void @signal_wake_up_state(ptr noundef %child, i32 noundef %107) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end51.if.end62_crit_edge
  %sighand.i323 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %108 = ptrtoint ptr %sighand.i323 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sighand.i323, align 4
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %111) #7
  br label %cleanup198

sw.bb63:                                          ; preds = %entry
  br i1 %tobool.not, label %sw.bb63.cleanup198_crit_edge, label %lor.rhs65, !prof !61

sw.bb63.cleanup198_crit_edge:                     ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

lor.rhs65:                                        ; preds = %sw.bb63
  %call.i324 = call ptr @__lock_task_sighand(ptr noundef %child, ptr noundef nonnull %flags) #7
  %tobool67.not = icmp eq ptr %call.i324, null
  br i1 %tobool67.not, label %lor.rhs65.cleanup198_crit_edge, label %if.end78, !prof !61

lor.rhs65.cleanup198_crit_edge:                   ; preds = %lor.rhs65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end78:                                         ; preds = %lor.rhs65
  %last_siginfo = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 154
  %112 = ptrtoint ptr %last_siginfo to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %last_siginfo, align 4
  %tobool79.not = icmp eq ptr %113, null
  br i1 %tobool79.not, label %if.end78.if.end94_crit_edge, label %land.rhs, !prof !61

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.rhs:                                         ; preds = %if.end78
  %si_code = getelementptr inbounds %struct.anon.80, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %si_code to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %si_code, align 4
  %shr.mask = and i32 %115, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %shr.mask)
  %cmp80 = icmp eq i32 %shr.mask, 32768
  br i1 %cmp80, label %if.then87, label %land.rhs.if.end94_crit_edge, !prof !59

land.rhs.if.end94_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then87:                                        ; preds = %land.rhs
  %jobctl88 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 61
  %116 = ptrtoint ptr %jobctl88 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %jobctl88, align 4
  %or = or i32 %117, 4194304
  store i32 %or, ptr %jobctl88, align 4
  %and90 = and i32 %117, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then87.if.end94_crit_edge, label %if.then92

if.then87.if.end94_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  call void @signal_wake_up_state(ptr noundef %child, i32 noundef 8) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then87.if.end94_crit_edge, %land.rhs.if.end94_crit_edge, %if.end78.if.end94_crit_edge
  %ret.3 = phi i32 [ -5, %land.rhs.if.end94_crit_edge ], [ 0, %if.then92 ], [ 0, %if.then87.if.end94_crit_edge ], [ -5, %if.end78.if.end94_crit_edge ]
  %sighand.i325 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %118 = ptrtoint ptr %sighand.i325 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sighand.i325, align 4
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %119, i32 noundef %121) #7
  br label %cleanup198

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %data)
  %cmp.i.i326 = icmp ugt i32 %data, 64
  br i1 %cmp.i.i326, label %sw.bb95.cleanup198_crit_edge, label %if.end.i329

sw.bb95.cleanup198_crit_edge:                     ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end.i329:                                      ; preds = %sw.bb95
  tail call void @ptrace_disable(ptr noundef %child) #7
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #7
  %122 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ptrace, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool1.not.i328 = icmp eq i32 %123, 0
  br i1 %tobool1.not.i328, label %if.end.i329.do.end.i_crit_edge, label %lor.rhs.i

if.end.i329.do.end.i_crit_edge:                   ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.end.i329
  %exit_state.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 57
  %124 = ptrtoint ptr %exit_state.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %exit_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool2.not.i330 = icmp eq i32 %125, 0
  br i1 %tobool2.not.i330, label %lor.rhs.i.if.end17.i_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !59

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i.if.end17.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.end.i329.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 571, i32 noundef 9, ptr noundef null) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %lor.rhs.i.if.end17.i_crit_edge
  %exit_code.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 58
  %126 = ptrtoint ptr %exit_code.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %data, ptr %exit_code.i, align 16
  %127 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i331 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i331 to ptr
  %task.i332 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task.i332 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task.i332, align 8
  %call25.i = tail call fastcc zeroext i1 @__ptrace_detach(ptr noundef %130, ptr noundef %child) #7
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #7
  tail call void @proc_ptrace_connector(ptr noundef %child, i32 noundef 17) #7
  br label %cleanup198

sw.bb97:                                          ; preds = %entry
  %call98 = tail call ptr @get_task_mm(ptr noundef %child) #7
  %tobool100.not = icmp eq ptr %call98, null
  br i1 %tobool100.not, label %sw.bb97.cleanup198_crit_edge, label %if.end102

sw.bb97.cleanup198_crit_edge:                     ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end102:                                        ; preds = %sw.bb97
  %131 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %addr, label %if.end102.sw.epilog_crit_edge [
    i32 0, label %sw.bb103
    i32 1, label %sw.bb104
  ]

if.end102.sw.epilog_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %exec_fdpic_loadmap = getelementptr inbounds %struct.anon.2, ptr %call98, i32 0, i32 42, i32 4
  %132 = ptrtoint ptr %exec_fdpic_loadmap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %exec_fdpic_loadmap, align 4
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %interp_fdpic_loadmap = getelementptr inbounds %struct.anon.2, ptr %call98, i32 0, i32 42, i32 5
  %134 = ptrtoint ptr %interp_fdpic_loadmap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %interp_fdpic_loadmap, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb104, %sw.bb103, %if.end102.sw.epilog_crit_edge
  %tmp99.0 = phi i32 [ 0, %if.end102.sw.epilog_crit_edge ], [ %135, %sw.bb104 ], [ %133, %sw.bb103 ]
  tail call void @mmput(ptr noundef nonnull %call98) #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1202) #7
  %136 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i291 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i291 to ptr
  %cpu_domain.i.i292 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 4
  %138 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i292) #3, !srcloc !72
  %and.i293 = and i32 %138, -13
  %or.i294 = or i32 %and.i293, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i294) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %139 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %tmp99.0, i32 -1226833921) #7, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  br label %cleanup198

sw.bb123:                                         ; preds = %entry.sw.bb123_crit_edge, %entry.sw.bb123_crit_edge433, %entry.sw.bb123_crit_edge434
  %call124 = tail call fastcc i32 @ptrace_resume(ptr noundef %child, i32 noundef %request, i32 noundef %data)
  br label %cleanup198

sw.bb125:                                         ; preds = %entry
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 57
  %140 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool126.not = icmp eq i32 %141, 0
  br i1 %tobool126.not, label %if.end128, label %sw.bb125.cleanup198_crit_edge

sw.bb125.cleanup198_crit_edge:                    ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

if.end128:                                        ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #9
  %call129 = tail call fastcc i32 @ptrace_resume(ptr noundef %child, i32 noundef 8, i32 noundef 9)
  br label %cleanup198

sw.bb130:                                         ; preds = %entry.sw.bb130_crit_edge, %entry.sw.bb130_crit_edge435
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kiov) #7
  %142 = getelementptr inbounds %struct.iovec, ptr %kiov, i32 0, i32 1
  %143 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #10, !srcloc !78
  %asmresult = extractvalue { i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp133 = icmp eq i32 %asmresult, 0
  br i1 %cmp133, label %if.end135, label %sw.bb130.cleanup186.thread_crit_edge

sw.bb130.cleanup186.thread_crit_edge:             ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.thread

if.end135:                                        ; preds = %sw.bb130
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1235) #7
  %144 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i295 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i295 to ptr
  %cpu_domain.i.i296 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 4
  %146 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i296) #3, !srcloc !72
  %and.i297 = and i32 %146, -13
  %or.i298 = or i32 %and.i297, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i298) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %147 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #7, !srcloc !79
  %asmresult144 = extractvalue { i32, i32 } %147, 0
  %asmresult145 = extractvalue { i32, i32 } %147, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %148 = inttoptr i32 %asmresult145 to ptr
  %149 = ptrtoint ptr %kiov to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %kiov, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult144)
  %tobool148.not = icmp eq i32 %asmresult144, 0
  br i1 %tobool148.not, label %lor.lhs.false, label %if.end135.cleanup186.thread_crit_edge

if.end135.cleanup186.thread_crit_edge:            ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.thread

lor.lhs.false:                                    ; preds = %if.end135
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1236) #7
  %iov_len = getelementptr inbounds %struct.iovec, ptr %2, i32 0, i32 1
  %150 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i299 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i299 to ptr
  %cpu_domain.i.i300 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 4
  %152 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i300) #3, !srcloc !72
  %and.i301 = and i32 %152, -13
  %or.i302 = or i32 %and.i301, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i302) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %153 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %iov_len, i32 -1226833921) #7, !srcloc !80
  %asmresult158 = extractvalue { i32, i32 } %153, 0
  %asmresult159 = extractvalue { i32, i32 } %153, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %154 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %asmresult159, ptr %142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult158)
  %tobool162.not = icmp eq i32 %asmresult158, 0
  br i1 %tobool162.not, label %if.end164, label %lor.lhs.false.cleanup186.thread_crit_edge

lor.lhs.false.cleanup186.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.thread

if.end164:                                        ; preds = %lor.lhs.false
  %call165 = call fastcc i32 @ptrace_regset(ptr noundef %child, i32 noundef %request, i32 noundef %addr, ptr noundef nonnull %kiov)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then167, label %if.end164.cleanup186_crit_edge

if.end164.cleanup186_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %142, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1241) #7
  %157 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i303 = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i303 to ptr
  %cpu_domain.i.i304 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 4
  %159 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i304) #3, !srcloc !72
  %and.i305 = and i32 %159, -13
  %or.i306 = or i32 %and.i305, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i306) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %160 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %iov_len, i32 %156, i32 -1226833921) #7, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  br label %cleanup186

cleanup186.thread:                                ; preds = %lor.lhs.false.cleanup186.thread_crit_edge, %if.end135.cleanup186.thread_crit_edge, %sw.bb130.cleanup186.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kiov) #7
  br label %cleanup198

cleanup186:                                       ; preds = %if.then167, %if.end164.cleanup186_crit_edge
  %ret.6 = phi i32 [ %call165, %if.end164.cleanup186_crit_edge ], [ %160, %if.then167 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kiov) #7
  br label %cleanup198

sw.bb188:                                         ; preds = %entry
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %161 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %stack.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %162, i32 16304
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info.i334) #7
  %163 = call ptr @memset(ptr %info.i334, i32 0, i32 88)
  %arch.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 2
  %164 = ptrtoint ptr %arch.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1073741864, ptr %arch.i, align 4
  %instruction_pointer.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 3
  %arrayidx.i = getelementptr i8, ptr %162, i32 16364
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %166 to i64
  %167 = ptrtoint ptr %instruction_pointer.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv.i, ptr %instruction_pointer.i, align 8
  %stack_pointer.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 4
  %arrayidx.i.i = getelementptr i8, ptr %162, i32 16356
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i.i, align 4
  %conv3.i = zext i32 %169 to i64
  %170 = ptrtoint ptr %stack_pointer.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %conv3.i, ptr %stack_pointer.i, align 8
  %last_siginfo.i335 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 154
  %171 = ptrtoint ptr %last_siginfo.i335 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %last_siginfo.i335, align 4
  %tobool.not.i336 = icmp eq ptr %172, null
  br i1 %tobool.not.i336, label %sw.bb188.if.end8.i.i.i_crit_edge, label %cond.end.i

sw.bb188.if.end8.i.i.i_crit_edge:                 ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

cond.end.i:                                       ; preds = %sw.bb188
  %si_code.i = getelementptr inbounds %struct.anon.80, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %si_code.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %si_code.i, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %174, label %cond.end.i.if.end8.i.i.i_crit_edge [
    i32 133, label %sw.bb.i
    i32 1797, label %sw.bb9.i
  ]

cond.end.i.if.end8.i.i.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

sw.bb.i:                                          ; preds = %cond.end.i
  %ptrace_message.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 153
  %176 = ptrtoint ptr %ptrace_message.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ptrace_message.i, align 32
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %177, label %sw.bb.i.if.end8.i.i.i_crit_edge [
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb7.i
  ]

sw.bb.i.if.end8.i.i.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

sw.bb5.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %info.i334 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %info.i334, align 8
  %abi_syscall.i.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 6
  %180 = ptrtoint ptr %abi_syscall.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %abi_syscall.i.i.i, align 4
  %and.i.i.i337 = and i32 %181, 1048575
  %182 = zext i32 %and.i.i.i337 to i64
  %183 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %182, ptr %183, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %162, i32 16372
  %185 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i338 = getelementptr i8, ptr %162, i32 16308
  %187 = ptrtoint ptr %add.ptr.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %187)
  %args.sroa.5.4.copyload.i.i = load i32, ptr %add.ptr.i.i.i338, align 4
  %args.sroa.8.4.add.ptr.i.sroa_idx.i.i = getelementptr i8, ptr %162, i32 16312
  %188 = ptrtoint ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %args.sroa.8.4.copyload.i.i = load i32, ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i.i, align 4
  %args.sroa.10.4.add.ptr.i.sroa_idx.i.i = getelementptr i8, ptr %162, i32 16316
  %189 = ptrtoint ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %args.sroa.10.4.copyload.i.i = load i32, ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i.i, align 4
  %args.sroa.12.4.add.ptr.i.sroa_idx.i.i = getelementptr i8, ptr %162, i32 16320
  %190 = ptrtoint ptr %args.sroa.12.4.add.ptr.i.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %args.sroa.12.4.copyload.i.i = load i32, ptr %args.sroa.12.4.add.ptr.i.sroa_idx.i.i, align 4
  %args.sroa.14.4.add.ptr.i.sroa_idx.i.i = getelementptr i8, ptr %162, i32 16324
  %191 = ptrtoint ptr %args.sroa.14.4.add.ptr.i.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %args.sroa.14.4.copyload.i.i = load i32, ptr %args.sroa.14.4.add.ptr.i.sroa_idx.i.i, align 4
  %conv2.i.i = zext i32 %186 to i64
  %arrayidx4.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 0
  %192 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %conv2.i.i, ptr %arrayidx4.i.i, align 8
  %conv2.1.i.i = zext i32 %args.sroa.5.4.copyload.i.i to i64
  %arrayidx4.1.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 1
  %193 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %conv2.1.i.i, ptr %arrayidx4.1.i.i, align 8
  %conv2.2.i.i = zext i32 %args.sroa.8.4.copyload.i.i to i64
  %arrayidx4.2.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 2
  %194 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %conv2.2.i.i, ptr %arrayidx4.2.i.i, align 8
  %conv2.3.i.i = zext i32 %args.sroa.10.4.copyload.i.i to i64
  %arrayidx4.3.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 3
  %195 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv2.3.i.i, ptr %arrayidx4.3.i.i, align 8
  %conv2.4.i.i = zext i32 %args.sroa.12.4.copyload.i.i to i64
  %arrayidx4.4.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 4
  %196 = ptrtoint ptr %arrayidx4.4.i.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %conv2.4.i.i, ptr %arrayidx4.4.i.i, align 8
  %conv2.5.i.i = zext i32 %args.sroa.14.4.copyload.i.i to i64
  %arrayidx4.5.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 5
  %197 = ptrtoint ptr %arrayidx4.5.i.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %conv2.5.i.i, ptr %arrayidx4.5.i.i, align 8
  br label %if.end8.i.i.i

sw.bb7.i:                                         ; preds = %sw.bb.i
  %198 = ptrtoint ptr %info.i334 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 2, ptr %info.i334, align 8
  %199 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %200)
  %cmp.i.i37.i = icmp ugt i32 %200, -4096
  br i1 %cmp.i.i37.i, label %cond.true.i.i.i, label %sw.bb7.i.syscall_get_error.exit.i.i_crit_edge, !prof !61

sw.bb7.i.syscall_get_error.exit.i.i_crit_edge:    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %syscall_get_error.exit.i.i

cond.true.i.i.i:                                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %syscall_get_error.exit.i.i

syscall_get_error.exit.i.i:                       ; preds = %cond.true.i.i.i, %sw.bb7.i.syscall_get_error.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %200, %cond.true.i.i.i ], [ 0, %sw.bb7.i.syscall_get_error.exit.i.i_crit_edge ]
  %conv.i.i = sext i32 %cond.i.i.i to i64
  %201 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %conv.i.i, ptr %201, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i.i)
  %tobool.i.i = icmp ne i32 %cond.i.i.i, 0
  %conv3.i.i = zext i1 %tobool.i.i to i8
  %is_error.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1
  %203 = ptrtoint ptr %is_error.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv3.i.i, ptr %is_error.i.i, align 8
  br i1 %tobool.i.i, label %syscall_get_error.exit.i.i.if.end8.i.i.i_crit_edge, label %if.then.i38.i

syscall_get_error.exit.i.i.if.end8.i.i.i_crit_edge: ; preds = %syscall_get_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.then.i38.i:                                    ; preds = %syscall_get_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %add.ptr1.i, align 4
  %conv7.i.i = sext i32 %205 to i64
  %206 = ptrtoint ptr %201 to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %conv7.i.i, ptr %201, align 8
  br label %if.end8.i.i.i

sw.bb9.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %info.i334 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %info.i334, align 8
  %abi_syscall.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 6
  %208 = ptrtoint ptr %abi_syscall.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %abi_syscall.i.i.i.i, align 4
  %and.i.i.i.i339 = and i32 %209, 1048575
  %210 = zext i32 %and.i.i.i.i339 to i64
  %211 = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %210, ptr %211, align 8
  %arrayidx.i.i.i.i = getelementptr i8, ptr %162, i32 16372
  %213 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %162, i32 16308
  %215 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %args.sroa.5.4.copyload.i.i.i = load i32, ptr %add.ptr.i.i.i.i, align 4
  %args.sroa.8.4.add.ptr.i.sroa_idx.i.i.i = getelementptr i8, ptr %162, i32 16312
  %216 = ptrtoint ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %args.sroa.8.4.copyload.i.i.i = load i32, ptr %args.sroa.8.4.add.ptr.i.sroa_idx.i.i.i, align 4
  %args.sroa.10.4.add.ptr.i.sroa_idx.i.i.i = getelementptr i8, ptr %162, i32 16316
  %217 = ptrtoint ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %args.sroa.10.4.copyload.i.i.i = load i32, ptr %args.sroa.10.4.add.ptr.i.sroa_idx.i.i.i, align 4
  %args.sroa.12.4.add.ptr.i.sroa_idx.i.i.i = getelementptr i8, ptr %162, i32 16320
  %218 = ptrtoint ptr %args.sroa.12.4.add.ptr.i.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %args.sroa.12.4.copyload.i.i.i = load i32, ptr %args.sroa.12.4.add.ptr.i.sroa_idx.i.i.i, align 4
  %args.sroa.14.4.add.ptr.i.sroa_idx.i.i.i = getelementptr i8, ptr %162, i32 16324
  %219 = ptrtoint ptr %args.sroa.14.4.add.ptr.i.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %args.sroa.14.4.copyload.i.i.i = load i32, ptr %args.sroa.14.4.add.ptr.i.sroa_idx.i.i.i, align 4
  %conv2.i.i.i = zext i32 %214 to i64
  %arrayidx4.i.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 0
  %220 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %conv2.i.i.i, ptr %arrayidx4.i.i.i, align 8
  %conv2.1.i.i.i = zext i32 %args.sroa.5.4.copyload.i.i.i to i64
  %arrayidx4.1.i.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %arrayidx4.1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %conv2.1.i.i.i, ptr %arrayidx4.1.i.i.i, align 8
  %conv2.2.i.i.i = zext i32 %args.sroa.8.4.copyload.i.i.i to i64
  %arrayidx4.2.i.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 2
  %222 = ptrtoint ptr %arrayidx4.2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %conv2.2.i.i.i, ptr %arrayidx4.2.i.i.i, align 8
  %conv2.3.i.i.i = zext i32 %args.sroa.10.4.copyload.i.i.i to i64
  %arrayidx4.3.i.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 3
  %223 = ptrtoint ptr %arrayidx4.3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %conv2.3.i.i.i, ptr %arrayidx4.3.i.i.i, align 8
  %conv2.4.i.i.i = zext i32 %args.sroa.12.4.copyload.i.i.i to i64
  %arrayidx4.4.i.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 4
  %224 = ptrtoint ptr %arrayidx4.4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv2.4.i.i.i, ptr %arrayidx4.4.i.i.i, align 8
  %conv2.5.i.i.i = zext i32 %args.sroa.14.4.copyload.i.i.i to i64
  %arrayidx4.5.i.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 1, i32 5
  %225 = ptrtoint ptr %arrayidx4.5.i.i.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %conv2.5.i.i.i, ptr %arrayidx4.5.i.i.i, align 8
  store i8 3, ptr %info.i334, align 8
  %ptrace_message.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 153
  %226 = ptrtoint ptr %ptrace_message.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ptrace_message.i.i, align 32
  %ret_data.i.i = getelementptr inbounds %struct.ptrace_syscall_info, ptr %info.i334, i32 0, i32 5, i32 0, i32 2
  %228 = ptrtoint ptr %ret_data.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %ret_data.i.i, align 8
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %sw.bb9.i, %if.then.i38.i, %syscall_get_error.exit.i.i.if.end8.i.i.i_crit_edge, %sw.bb5.i, %sw.bb.i.if.end8.i.i.i_crit_edge, %cond.end.i.if.end8.i.i.i_crit_edge, %sw.bb188.if.end8.i.i.i_crit_edge
  %actual_size.0.i = phi i32 [ 24, %cond.end.i.if.end8.i.i.i_crit_edge ], [ 84, %sw.bb9.i ], [ 24, %sw.bb.i.if.end8.i.i.i_crit_edge ], [ 80, %sw.bb5.i ], [ 33, %syscall_get_error.exit.i.i.if.end8.i.i.i_crit_edge ], [ 33, %if.then.i38.i ], [ 24, %sw.bb188.if.end8.i.i.i_crit_edge ]
  %229 = tail call i32 @llvm.umin.i32(i32 %actual_size.0.i, i32 %addr) #7
  call void @__check_object_size(ptr noundef nonnull %info.i334, i32 noundef %229, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i.i340 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i340, label %if.end8.i.i.i.ptrace_get_syscall_info.exit_crit_edge, label %if.end.i.i.i344

if.end8.i.i.i.ptrace_get_syscall_info.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_get_syscall_info.exit

if.end.i.i.i344:                                  ; preds = %if.end8.i.i.i
  %230 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %229, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i.i342 = extractvalue { i32, i32 } %230, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i342)
  %cmp.i6.i.i343 = icmp eq i32 %asmresult.i.i.i342, 0
  br i1 %cmp.i6.i.i343, label %if.then2.i.i.i, label %if.end.i.i.i344.ptrace_get_syscall_info.exit_crit_edge

if.end.i.i.i344.ptrace_get_syscall_info.exit_crit_edge: ; preds = %if.end.i.i.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_get_syscall_info.exit

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i344
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i345 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i334, i32 noundef %229) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %info.i334, i32 noundef %229) #7
  br label %ptrace_get_syscall_info.exit

ptrace_get_syscall_info.exit:                     ; preds = %if.then2.i.i.i, %if.end.i.i.i344.ptrace_get_syscall_info.exit_crit_edge, %if.end8.i.i.i.ptrace_get_syscall_info.exit_crit_edge
  %n.addr.0.i.i = phi i32 [ %229, %if.end8.i.i.i.ptrace_get_syscall_info.exit_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %229, %if.end.i.i.i344.ptrace_get_syscall_info.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool18.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %cond22.i = select i1 %tobool18.not.i, i32 %actual_size.0.i, i32 -14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info.i334) #7
  br label %cleanup198

sw.bb190:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

sw.bb192:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup198

sw.bb194:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %conf.i) #7
  %231 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %conf.i, i32 0, i32 1
  %232 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %conf.i, i32 0, i32 2
  %233 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %conf.i, i32 0, i32 3
  %234 = getelementptr inbounds %struct.ptrace_rseq_configuration, ptr %conf.i, i32 0, i32 4
  %rseq.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 174
  %235 = ptrtoint ptr %rseq.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rseq.i, align 8
  %237 = ptrtoint ptr %236 to i32
  %conv.i346 = zext i32 %237 to i64
  %238 = ptrtoint ptr %conf.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %conv.i346, ptr %conf.i, align 8
  %239 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 32, ptr %231, align 8
  %rseq_sig.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 175
  %240 = ptrtoint ptr %rseq_sig.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %rseq_sig.i, align 4
  %242 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %232, align 4
  %243 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %233, align 8
  %244 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %234, align 4
  %245 = tail call i32 @llvm.umin.i32(i32 %addr, i32 24) #7
  call void @__check_object_size(ptr noundef nonnull %conf.i, i32 noundef %245, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i.i348 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i348, label %sw.bb194.ptrace_get_rseq_configuration.exit_crit_edge, label %if.end.i.i.i352

sw.bb194.ptrace_get_rseq_configuration.exit_crit_edge: ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_get_rseq_configuration.exit

if.end.i.i.i352:                                  ; preds = %sw.bb194
  %246 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %245, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i.i350 = extractvalue { i32, i32 } %246, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i350)
  %cmp.i6.i.i351 = icmp eq i32 %asmresult.i.i.i350, 0
  br i1 %cmp.i6.i.i351, label %if.then2.i.i.i355, label %if.end.i.i.i352.ptrace_get_rseq_configuration.exit_crit_edge

if.end.i.i.i352.ptrace_get_rseq_configuration.exit_crit_edge: ; preds = %if.end.i.i.i352
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_get_rseq_configuration.exit

if.then2.i.i.i355:                                ; preds = %if.end.i.i.i352
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i353 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %conf.i, i32 noundef %245) #7
  %call.i12.i.i.i354 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %conf.i, i32 noundef %245) #7
  br label %ptrace_get_rseq_configuration.exit

ptrace_get_rseq_configuration.exit:               ; preds = %if.then2.i.i.i355, %if.end.i.i.i352.ptrace_get_rseq_configuration.exit_crit_edge, %sw.bb194.ptrace_get_rseq_configuration.exit_crit_edge
  %n.addr.0.i.i356 = phi i32 [ %245, %sw.bb194.ptrace_get_rseq_configuration.exit_crit_edge ], [ %call.i12.i.i.i354, %if.then2.i.i.i355 ], [ %245, %if.end.i.i.i352.ptrace_get_rseq_configuration.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i356)
  %tobool.not.i357 = icmp eq i32 %n.addr.0.i.i356, 0
  %retval.0.i358 = select i1 %tobool.not.i357, i32 24, i32 -14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf.i) #7
  br label %cleanup198

cleanup198:                                       ; preds = %ptrace_get_rseq_configuration.exit, %sw.bb192, %sw.bb190, %ptrace_get_syscall_info.exit, %cleanup186, %cleanup186.thread, %if.end128, %sw.bb125.cleanup198_crit_edge, %sw.bb123, %sw.epilog, %sw.bb97.cleanup198_crit_edge, %if.end17.i, %sw.bb95.cleanup198_crit_edge, %if.end94, %lor.rhs65.cleanup198_crit_edge, %sw.bb63.cleanup198_crit_edge, %if.end62, %lor.rhs.cleanup198_crit_edge, %sw.bb43.cleanup198_crit_edge, %cleanup42, %copy_to_user.exit, %if.end.i.i.cleanup198_crit_edge, %if.end22.cleanup198_crit_edge, %sw.bb20.cleanup198_crit_edge, %if.then17, %sw.bb14.cleanup198_crit_edge, %if.then, %ptrace_getsiginfo.exit.thread396, %ptrace_getsiginfo.exit.thread, %ptrace_peek_siginfo.exit, %sw.bb5, %if.end16.i, %lor.lhs.false.i.cleanup198_crit_edge, %if.end7.i.cleanup198_crit_edge, %if.then5.i.cleanup198_crit_edge, %sw.bb3.cleanup198_crit_edge, %sw.bb1, %sw.bb, %entry.cleanup198_crit_edge
  %retval.1 = phi i32 [ %call129, %if.end128 ], [ %call124, %sw.bb123 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %sw.bb125.cleanup198_crit_edge ], [ -14, %cleanup186.thread ], [ -5, %entry.cleanup198_crit_edge ], [ %retval.0.i358, %ptrace_get_rseq_configuration.exit ], [ -22, %sw.bb192 ], [ -22, %sw.bb190 ], [ %cond22.i, %ptrace_get_syscall_info.exit ], [ %ret.6, %cleanup186 ], [ -5, %lor.rhs65.cleanup198_crit_edge ], [ %ret.3, %if.end94 ], [ -5, %lor.rhs.cleanup198_crit_edge ], [ 0, %if.end62 ], [ %ret.2, %cleanup42 ], [ %call15, %sw.bb14.cleanup198_crit_edge ], [ %call18, %if.then17 ], [ %call13, %if.then ], [ %retval.0.i314, %ptrace_peek_siginfo.exit ], [ %21, %sw.bb5 ], [ -22, %sw.bb20.cleanup198_crit_edge ], [ %139, %sw.epilog ], [ -3, %sw.bb97.cleanup198_crit_edge ], [ -5, %sw.bb43.cleanup198_crit_edge ], [ -5, %sw.bb63.cleanup198_crit_edge ], [ 0, %if.end16.i ], [ -22, %sw.bb3.cleanup198_crit_edge ], [ -1, %if.then5.i.cleanup198_crit_edge ], [ -1, %lor.lhs.false.i.cleanup198_crit_edge ], [ -1, %if.end7.i.cleanup198_crit_edge ], [ -3, %ptrace_getsiginfo.exit.thread ], [ 0, %if.end17.i ], [ -5, %sw.bb95.cleanup198_crit_edge ], [ -14, %if.end22.cleanup198_crit_edge ], [ -14, %if.end.i.i.cleanup198_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ -22, %ptrace_getsiginfo.exit.thread396 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %siginfo) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_ptrace_peekdata(ptr noundef %tsk, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !75
  %call.i = tail call ptr @get_task_mm(ptr noundef %tsk) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 4
  %1 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %if.end.i.ptrace_access_vm.exit.thread8_crit_edge, label %lor.lhs.false.i

if.end.i.ptrace_access_vm.exit.thread8_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread8

lor.lhs.false.i:                                  ; preds = %if.end.i
  %3 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 72
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %cmp.not.i = icmp eq ptr %6, %8
  br i1 %cmp.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.ptrace_access_vm.exit.thread8_crit_edge

lor.lhs.false.i.ptrace_access_vm.exit.thread8_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread8

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 43
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i5 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i5)
  %cmp5.not.i = icmp eq i32 %and.i.i.i5, 1
  br i1 %cmp5.not.i, label %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %user_ns.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 47
  %11 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i, align 8
  %call6.i = tail call zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %12) #7
  br i1 %call6.i, label %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i.ptrace_access_vm.exit.thread8_crit_edge

land.lhs.true.i.ptrace_access_vm.exit.thread8_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread8

land.lhs.true.i.ptrace_access_vm.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

ptrace_access_vm.exit.thread8:                    ; preds = %land.lhs.true.i.ptrace_access_vm.exit.thread8_crit_edge, %lor.lhs.false.i.ptrace_access_vm.exit.thread8_crit_edge, %if.end.i.ptrace_access_vm.exit.thread8_crit_edge
  tail call void @mmput(ptr noundef nonnull %call.i) #7
  br label %cleanup

ptrace_access_vm.exit:                            ; preds = %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge
  %call9.i = call i32 @__access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %addr, ptr noundef nonnull %tmp, i32 noundef 4, i32 noundef 16) #7
  call void @mmput(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9.i)
  %cmp.not = icmp eq i32 %call9.i, 4
  br i1 %cmp.not, label %if.end, label %ptrace_access_vm.exit.cleanup_crit_edge

ptrace_access_vm.exit.cleanup_crit_edge:          ; preds = %ptrace_access_vm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ptrace_access_vm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = inttoptr i32 %data to ptr
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tmp, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1329) #7
  %16 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !72
  %and.i = and i32 %18, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %19 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %15, i32 -1226833921) #7, !srcloc !82
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #7, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ptrace_access_vm.exit.cleanup_crit_edge, %ptrace_access_vm.exit.thread8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end ], [ -5, %ptrace_access_vm.exit.cleanup_crit_edge ], [ -5, %ptrace_access_vm.exit.thread8 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_ptrace_pokedata(ptr noundef %tsk, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %data.addr, align 4
  %call.i = tail call ptr @get_task_mm(ptr noundef %tsk) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ptrace_access_vm.exit.thread_crit_edge, label %if.end.i

entry.ptrace_access_vm.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread

if.end.i:                                         ; preds = %entry
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 4
  %1 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %if.end.i.ptrace_access_vm.exit.thread3_crit_edge, label %lor.lhs.false.i

if.end.i.ptrace_access_vm.exit.thread3_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread3

lor.lhs.false.i:                                  ; preds = %if.end.i
  %3 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 72
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %cmp.not.i = icmp eq ptr %6, %8
  br i1 %cmp.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.ptrace_access_vm.exit.thread3_crit_edge

lor.lhs.false.i.ptrace_access_vm.exit.thread3_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread3

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 43
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp5.not.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp5.not.i, label %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false3.i
  %user_ns.i = getelementptr inbounds %struct.anon.2, ptr %call.i, i32 0, i32 47
  %11 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i, align 8
  %call6.i = tail call zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %12) #7
  br i1 %call6.i, label %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, label %land.lhs.true.i.ptrace_access_vm.exit.thread3_crit_edge

land.lhs.true.i.ptrace_access_vm.exit.thread3_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit.thread3

land.lhs.true.i.ptrace_access_vm.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_access_vm.exit

ptrace_access_vm.exit.thread3:                    ; preds = %land.lhs.true.i.ptrace_access_vm.exit.thread3_crit_edge, %lor.lhs.false.i.ptrace_access_vm.exit.thread3_crit_edge, %if.end.i.ptrace_access_vm.exit.thread3_crit_edge
  tail call void @mmput(ptr noundef nonnull %call.i) #7
  br label %ptrace_access_vm.exit.thread

ptrace_access_vm.exit:                            ; preds = %land.lhs.true.i.ptrace_access_vm.exit_crit_edge, %lor.lhs.false3.i.ptrace_access_vm.exit_crit_edge
  %call9.i = call i32 @__access_remote_vm(ptr noundef nonnull %call.i, i32 noundef %addr, ptr noundef nonnull %data.addr, i32 noundef 4, i32 noundef 17) #7
  call void @mmput(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9.i)
  %cmp = icmp eq i32 %call9.i, 4
  %spec.select = select i1 %cmp, i32 0, i32 -5
  br label %ptrace_access_vm.exit.thread

ptrace_access_vm.exit.thread:                     ; preds = %ptrace_access_vm.exit, %ptrace_access_vm.exit.thread3, %entry.ptrace_access_vm.exit.thread_crit_edge
  %13 = phi i32 [ -5, %ptrace_access_vm.exit.thread3 ], [ -5, %entry.ptrace_access_vm.exit.thread_crit_edge ], [ %spec.select, %ptrace_access_vm.exit ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_to_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_from_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_setsiginfo(ptr noundef %child, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !75
  %call.i = call ptr @__lock_task_sighand(ptr noundef %child, ptr noundef nonnull %flags) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %last_siginfo = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 154
  %1 = ptrtoint ptr %last_siginfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %last_siginfo, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3, !prof !61

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memcpy(ptr %2, ptr %info, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %error.0 = phi i32 [ 0, %if.then3 ], [ -22, %if.then.if.end_crit_edge ]
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %4 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand.i, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %7) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %error.1 = phi i32 [ %error.0, %if.end ], [ -3, %entry.if.end5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @task_set_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_resume(ptr noundef %child, i32 noundef %request, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %data)
  %cmp.i = icmp ugt i32 %data, 64
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %request)
  %cmp = icmp eq i32 %request, 24
  %stack = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack, align 4
  br i1 %cmp, label %if.end3.thread, label %if.end3

if.end3.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %1) #7
  br label %if.else6

if.end3:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %request)
  %cmp4 = icmp eq i32 %request, 9
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end3.if.else6_crit_edge

if.end3.if.else6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else6:                                         ; preds = %if.end3.if.else6_crit_edge, %if.end3.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool8.not = icmp eq i32 %data, 0
  br i1 %tobool8.not, label %if.else6.if.end20.critedge_crit_edge, label %land.rhs

if.else6.if.end20.critedge_crit_edge:             ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.critedge

land.rhs:                                         ; preds = %if.else6
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 80
  %6 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %7, %thread_group.i
  br i1 %cmp.i.i.not, label %land.rhs.if.end20.critedge_crit_edge, label %if.then13

land.rhs.if.end20.critedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.critedge

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %sighand = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 112
  %8 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #7
  %exit_code.c = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 58
  %10 = ptrtoint ptr %exit_code.c to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %data, ptr %exit_code.c, align 16
  %call15.c = tail call i32 @wake_up_state(ptr noundef %child, i32 noundef 8) #7
  %11 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %12) #7
  br label %cleanup

if.end20.critedge:                                ; preds = %land.rhs.if.end20.critedge_crit_edge, %if.else6.if.end20.critedge_crit_edge
  %exit_code.c31 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 58
  %13 = ptrtoint ptr %exit_code.c31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %data, ptr %exit_code.c31, align 16
  %call15.c32 = tail call i32 @wake_up_state(ptr noundef %child, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20.critedge, %if.then13, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ 0, %if.end20.critedge ], [ 0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_regset(ptr noundef %task, i32 noundef %req, i32 noundef %type, ptr nocapture noundef %kiov) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @task_user_regset_view(ptr noundef %task) #7
  %n1.i = getelementptr inbounds %struct.user_regset_view, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %n1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not.i = icmp eq i32 %1, 0
  br i1 %cmp9.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %regsets.i = getelementptr inbounds %struct.user_regset_view, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regsets.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %core_note_type.i = getelementptr %struct.user_regset, ptr %3, i32 %n.010.i, i32 8
  %4 = ptrtoint ptr %core_note_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_note_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp2.i = icmp eq i32 %5, %type
  br i1 %cmp2.i, label %find_regset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %n.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

find_regset.exit:                                 ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.user_regset, ptr %3, i32 %n.010.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %find_regset.exit.cleanup_crit_edge, label %lor.lhs.false

find_regset.exit.cleanup_crit_edge:               ; preds = %find_regset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %find_regset.exit
  %iov_len = getelementptr inbounds %struct.iovec, ptr %kiov, i32 0, i32 1
  %6 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len, align 4
  %size = getelementptr %struct.user_regset, ptr %3, i32 %n.010.i, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %rem = urem i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regsets.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %n = getelementptr %struct.user_regset, ptr %3, i32 %n.010.i, i32 4
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %mul = mul i32 %13, %9
  %14 = tail call i32 @llvm.umin.i32(i32 %7, i32 %mul)
  %15 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16900, i32 %req)
  %cmp6 = icmp eq i32 %req, 16900
  %16 = ptrtoint ptr %kiov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kiov, align 4
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @copy_regset_to_user(ptr noundef %task, ptr noundef %call, i32 noundef %sub.ptr.div, i32 noundef 0, i32 noundef %14, ptr noundef %17) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %18 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regsets.i, align 4
  %arrayidx.i = getelementptr %struct.user_regset, ptr %19, i32 %sub.ptr.div
  %set.i = getelementptr %struct.user_regset, ptr %19, i32 %sub.ptr.div, i32 1
  %20 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %14, i32 -1226833920) #10, !srcloc !83
  %asmresult.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %21(ptr noundef %task, ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef %14, ptr noundef null, ptr noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7, %lor.lhs.false.cleanup_crit_edge, %find_regset.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %find_regset.exit.cleanup_crit_edge ], [ %call.i, %if.end3.i ], [ -95, %if.else.cleanup_crit_edge ], [ -14, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ptrace(i32 noundef %request, i32 noundef %pid, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request)
  %cmp.i = icmp eq i32 %request, 0
  br i1 %cmp.i, label %if.then.i, label %if.end2.i

if.then.i:                                        ; preds = %entry
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptrace.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.ptrace_traceme.exit.i_crit_edge

if.then.i.ptrace_traceme.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_traceme.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %parent.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 72
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %call3.i.i = tail call i32 @security_ptrace_traceme(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %if.then.i.i.ptrace_traceme.exit.i_crit_edge

if.then.i.i.ptrace_traceme.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_traceme.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %real_parent.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 71
  %10 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %real_parent.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.ptrace_traceme.exit.i_crit_edge

land.lhs.true.i.i.ptrace_traceme.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_traceme.exit.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ptrace11.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %ptrace11.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ptrace11.i.i, align 16
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %real_parent16.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 71
  %17 = ptrtoint ptr %real_parent16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %real_parent16.i.i, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %cred.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred.i.i.i, align 16
  tail call void @__ptrace_link(ptr noundef %16, ptr noundef %18, ptr noundef %24) #7
  br label %ptrace_traceme.exit.i

ptrace_traceme.exit.i:                            ; preds = %if.then8.i.i, %land.lhs.true.i.i.ptrace_traceme.exit.i_crit_edge, %if.then.i.i.ptrace_traceme.exit.i_crit_edge, %if.then.i.ptrace_traceme.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ -1, %if.then.i.ptrace_traceme.exit.i_crit_edge ], [ %call3.i.i, %if.then.i.i.ptrace_traceme.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.ptrace_traceme.exit.i_crit_edge ], [ 0, %if.then8.i.i ]
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #7
  br label %__do_sys_ptrace.exit

if.end2.i:                                        ; preds = %entry
  %call3.i = tail call ptr @find_get_task_by_vpid(i32 noundef %pid) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end2.i.__do_sys_ptrace.exit_crit_edge, label %if.end6.i

if.end2.i.__do_sys_ptrace.exit_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_ptrace.exit

if.end6.i:                                        ; preds = %if.end2.i
  %25 = zext i32 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %request, label %lor.rhs.i [
    i32 16, label %if.end6.i.if.then9.i_crit_edge
    i32 16902, label %if.end6.i.if.then9.i_crit_edge1
    i32 8, label %if.end6.i.lor.end.i_crit_edge
    i32 16903, label %if.end6.i.lor.end.i_crit_edge2
  ]

if.end6.i.lor.end.i_crit_edge2:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

if.end6.i.lor.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

if.end6.i.if.then9.i_crit_edge1:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end6.i.if.then9.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i.if.then9.i_crit_edge, %if.end6.i.if.then9.i_crit_edge1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16902, i32 %request)
  %cmp.i.i = icmp eq i32 %request, 16902
  br i1 %cmp.i.i, label %if.then.i49.i, label %if.then9.i.if.end7.i.i_crit_edge

if.then9.i.if.end7.i.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then.i49.i:                                    ; preds = %if.then9.i
  %and.i48.i = and i32 %data, -3145984
  %26 = or i32 %and.i48.i, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %if.end6.i.i, label %if.then.i49.i.out_put_task_struct.i_crit_edge

if.then.i49.i.out_put_task_struct.i_crit_edge:    ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.end6.i.i:                                      ; preds = %if.then.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw nsw i32 %data, 3
  %or.i.i = or i32 %shl.i.i, 65537
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end6.i.i, %if.then9.i.if.end7.i.i_crit_edge
  %flags.addr.0.i.i = phi i32 [ %or.i.i, %if.end6.i.i ], [ 1, %if.then9.i.if.end7.i.i_crit_edge ]
  %flags8.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 3
  %28 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags8.i.i, align 4
  %and9.i.i = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end14.i.i, label %if.end7.i.i.out_put_task_struct.i_crit_edge, !prof !59

if.end7.i.i.out_put_task_struct.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i50.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i50.i to ptr
  %task15.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task15.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task15.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 111
  %34 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %signal.i.i.i, align 16
  %signal1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 111
  %36 = ptrtoint ptr %signal1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %signal1.i.i.i, align 16
  %cmp.i.i.i = icmp eq ptr %35, %37
  br i1 %cmp.i.i.i, label %if.end14.i.i.out_put_task_struct.i_crit_edge, label %if.end18.i.i

if.end14.i.i.out_put_task_struct.i_crit_edge:     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %cred_guard_mutex.i.i = getelementptr inbounds %struct.signal_struct, ptr %35, i32 0, i32 60
  %call19.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cred_guard_mutex.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end18.i.i.out_put_task_struct.i_crit_edge

if.end18.i.i.out_put_task_struct.i_crit_edge:     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.end22.i.i:                                     ; preds = %if.end18.i.i
  %alloc_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i.i) #7
  %call23.i.i = tail call fastcc i32 @__ptrace_may_access(ptr noundef nonnull %call3.i, i32 noundef 18) #7
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %if.end22.i.i.out.i.i_crit_edge

if.end22.i.i.out.i.i_crit_edge:                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #7
  %exit_state.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 57
  %38 = ptrtoint ptr %exit_state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %exit_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool27.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool27.not.i.i, label %if.end35.i.i, label %if.end26.i.i.unlock_tasklist.i.i_crit_edge, !prof !59

if.end26.i.i.unlock_tasklist.i.i_crit_edge:       ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_tasklist.i.i

if.end35.i.i:                                     ; preds = %if.end26.i.i
  %ptrace.i51.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 4
  %40 = ptrtoint ptr %ptrace.i51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptrace.i51.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool36.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.end35.i.i.unlock_tasklist.i.i_crit_edge

if.end35.i.i.unlock_tasklist.i.i_crit_edge:       ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_tasklist.i.i

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %42 = ptrtoint ptr %ptrace.i51.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %flags.addr.0.i.i, ptr %ptrace.i51.i, align 16
  %43 = ptrtoint ptr %task15.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task15.i.i, align 8
  %45 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i52.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i52.i to ptr
  %task.i.i53.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i53.i, align 8
  %cred.i.i54.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 99
  %49 = ptrtoint ptr %cred.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cred.i.i54.i, align 16
  tail call void @__ptrace_link(ptr noundef nonnull %call3.i, ptr noundef %44, ptr noundef %50) #7
  br i1 %cmp.i.i, label %if.end38.i.i.if.end45.i.i_crit_edge, label %if.then43.i.i

if.end38.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i.i = tail call i32 @send_sig_info(i32 noundef 19, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %call3.i) #7
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.end38.i.i.if.end45.i.i_crit_edge
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 112
  %51 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sighand.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %52) #7
  %53 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %call3.i, align 128
  %and46.i.i = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %cmp47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %cmp47.not.i.i, label %if.end45.i.i.if.end50.i.i_crit_edge, label %land.lhs.true.i55.i

if.end45.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

land.lhs.true.i55.i:                              ; preds = %if.end45.i.i
  %call48.i.i = tail call zeroext i1 @task_set_jobctl_pending(ptr noundef nonnull %call3.i, i32 noundef 2621440) #7
  br i1 %call48.i.i, label %if.then49.i.i, label %land.lhs.true.i55.i.if.end50.i.i_crit_edge

land.lhs.true.i55.i.if.end50.i.i_crit_edge:       ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

if.then49.i.i:                                    ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @signal_wake_up_state(ptr noundef nonnull %call3.i, i32 noundef 4) #7
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then49.i.i, %land.lhs.true.i55.i.if.end50.i.i_crit_edge, %if.end45.i.i.if.end50.i.i_crit_edge
  %55 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sighand.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %56) #7
  br label %unlock_tasklist.i.i

unlock_tasklist.i.i:                              ; preds = %if.end50.i.i, %if.end35.i.i.unlock_tasklist.i.i_crit_edge, %if.end26.i.i.unlock_tasklist.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ -1, %if.end26.i.i.unlock_tasklist.i.i_crit_edge ], [ -1, %if.end35.i.i.unlock_tasklist.i.i_crit_edge ], [ 0, %if.end50.i.i ]
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #7
  br label %out.i.i

out.i.i:                                          ; preds = %unlock_tasklist.i.i, %if.end22.i.i.out.i.i_crit_edge
  %retval1.1.i.i = phi i32 [ %call23.i.i, %if.end22.i.i.out.i.i_crit_edge ], [ %retval1.0.i.i, %unlock_tasklist.i.i ]
  %57 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %signal.i.i.i, align 16
  %cred_guard_mutex54.i.i = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 60
  tail call void @mutex_unlock(ptr noundef %cred_guard_mutex54.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.i.i)
  %tobool55.not.i.i = icmp eq i32 %retval1.1.i.i, 0
  br i1 %tobool55.not.i.i, label %if.then56.i.i, label %out.i.i.out_put_task_struct.i_crit_edge

out.i.i.out_put_task_struct.i_crit_edge:          ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.then56.i.i:                                    ; preds = %out.i.i
  %jobctl.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 61
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 73) #7
  %59 = ptrtoint ptr %jobctl.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %jobctl.i.i, align 4
  %61 = and i32 %60, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i, label %if.then56.i.i.wait_on_bit.exit.i.i_crit_edge, label %if.end.i.i.i

if.then56.i.i.wait_on_bit.exit.i.i_crit_edge:     ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_on_bit.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %jobctl.i.i, i32 noundef 21, ptr noundef nonnull @bit_wait, i32 noundef 258) #7
  br label %wait_on_bit.exit.i.i

wait_on_bit.exit.i.i:                             ; preds = %if.end.i.i.i, %if.then56.i.i.wait_on_bit.exit.i.i_crit_edge
  tail call void @proc_ptrace_connector(ptr noundef nonnull %call3.i, i32 noundef 16) #7
  br label %out_put_task_struct.i

lor.rhs.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end6.i.lor.end.i_crit_edge, %if.end6.i.lor.end.i_crit_edge2
  %62 = phi i1 [ false, %lor.rhs.i ], [ true, %if.end6.i.lor.end.i_crit_edge ], [ true, %if.end6.i.lor.end.i_crit_edge2 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  %ptrace.i56.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 4
  %63 = ptrtoint ptr %ptrace.i56.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ptrace.i56.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i57.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i57.i, label %lor.end.i..thread.i.i_crit_edge, label %land.lhs.true.i62.i

lor.end.i..thread.i.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread.i.i

land.lhs.true.i62.i:                              ; preds = %lor.end.i
  %parent.i58.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 72
  %65 = ptrtoint ptr %parent.i58.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent.i58.i, align 8
  %67 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i59.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i59.i to ptr
  %task.i60.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i60.i, align 8
  %cmp.i61.i = icmp eq ptr %66, %70
  br i1 %cmp.i61.i, label %if.then.i63.i, label %land.lhs.true.i62.i..thread.i.i_crit_edge

land.lhs.true.i62.i..thread.i.i_crit_edge:        ; preds = %land.lhs.true.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread.i.i

if.then.i63.i:                                    ; preds = %land.lhs.true.i62.i
  %71 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %call3.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %72)
  %cmp1.i.i = icmp eq i32 %72, 8
  br i1 %cmp1.i.i, label %do.end13.i.i, label %if.then.i63.i.if.end.i.i_crit_edge, !prof !61

if.then.i63.i.if.end.i.i_crit_edge:               ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end13.i.i:                                     ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end13.i.i, %if.then.i63.i.if.end.i.i_crit_edge
  br i1 %62, label %.thread96.i.i, label %lor.lhs.false.i.i

.thread96.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  br label %if.end23.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %jobctl.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 61
  %73 = ptrtoint ptr %jobctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %jobctl.i.i.i, align 4
  %and.i85.i.i = and i32 %74, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i.i)
  %tobool.not.i.i64.i = icmp eq i32 %and.i85.i.i, 0
  br i1 %tobool.not.i.i64.i, label %if.end.i.i65.i, label %lor.lhs.false.i.i..thread.i.i_crit_edge

lor.lhs.false.i.i..thread.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread.i.i

if.end.i.i65.i:                                   ; preds = %lor.lhs.false.i.i
  %sighand.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 112
  %75 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sighand.i.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %76) #7
  %77 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call3.i, align 128
  %and2.i.i.i = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i65.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i65.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge: ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_freeze_traced.exit.thread87.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i65.i
  %exit_code.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 58
  %79 = ptrtoint ptr %exit_code.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %exit_code.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %80)
  %cmp.not.i.i.i.i = icmp eq i32 %80, 1029
  br i1 %cmp.not.i.i.i.i, label %looks_like_a_spurious_pid.exit.i.i.i, label %land.lhs.true.i.i.i.land.lhs.true3.i.i.i_crit_edge

land.lhs.true.i.i.i.land.lhs.true3.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true3.i.i.i

looks_like_a_spurious_pid.exit.i.i.i:             ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %call3.i, i32 noundef 0, ptr noundef null) #7
  %ptrace_message.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 153
  %81 = ptrtoint ptr %ptrace_message.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ptrace_message.i.i.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i.i, i32 %82)
  %cmp1.i.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, %82
  br i1 %cmp1.i.not.i.i.i, label %looks_like_a_spurious_pid.exit.i.i.i.land.lhs.true3.i.i.i_crit_edge, label %looks_like_a_spurious_pid.exit.i.i.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge

looks_like_a_spurious_pid.exit.i.i.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge: ; preds = %looks_like_a_spurious_pid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_freeze_traced.exit.thread87.i.i

looks_like_a_spurious_pid.exit.i.i.i.land.lhs.true3.i.i.i_crit_edge: ; preds = %looks_like_a_spurious_pid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true3.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %looks_like_a_spurious_pid.exit.i.i.i.land.lhs.true3.i.i.i_crit_edge, %land.lhs.true.i.i.i.land.lhs.true3.i.i.i_crit_edge
  %signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 116, i32 1
  %83 = ptrtoint ptr %signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %signal.i.i.i.i, align 4
  %85 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool5.not.i.i.i = icmp eq i32 %85, 0
  br i1 %tobool5.not.i.i.i, label %if.then34.i.i, label %land.lhs.true3.i.i.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge

land.lhs.true3.i.i.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ptrace_freeze_traced.exit.thread87.i.i

ptrace_freeze_traced.exit.thread87.i.i:           ; preds = %land.lhs.true3.i.i.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge, %looks_like_a_spurious_pid.exit.i.i.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge, %if.end.i.i65.i.ptrace_freeze_traced.exit.thread87.i.i_crit_edge
  %86 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sighand.i.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %87) #7
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %ptrace_freeze_traced.exit.thread87.i.i, %lor.lhs.false.i.i..thread.i.i_crit_edge, %land.lhs.true.i62.i..thread.i.i_crit_edge, %lor.end.i..thread.i.i_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  br label %out_put_task_struct.i

if.then34.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  %88 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 8, ptr %call3.i, align 128
  %89 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sighand.i.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %90) #7
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  %call35.i.i = tail call i32 @wait_task_inactive(ptr noundef nonnull %call3.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i66.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i66.i, label %if.then37.i.i, label %if.then34.i.i.if.end23.i_crit_edge

if.then34.i.i.if.end23.i_crit_edge:               ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then37.i.i:                                    ; preds = %if.then34.i.i
  %91 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %call3.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %92)
  %cmp44.i.i = icmp eq i32 %92, 8
  br i1 %cmp44.i.i, label %do.end60.i.i, label %if.then37.i.i.out_put_task_struct.i_crit_edge, !prof !61

if.then37.i.i.out_put_task_struct.i_crit_edge:    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

do.end60.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #7
  br label %out_put_task_struct.i

if.end23.i:                                       ; preds = %if.then34.i.i.if.end23.i_crit_edge, %.thread96.i.i
  %call24.i = tail call i32 @arch_ptrace(ptr noundef nonnull %call3.i, i32 noundef %request, i32 noundef %addr, i32 noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %request)
  %cmp27.not.i = icmp eq i32 %request, 17
  %or.cond.i = and i1 %cmp27.not.i, %tobool25.not.i
  br i1 %or.cond.i, label %if.end23.i.out_put_task_struct.i_crit_edge, label %if.then28.i

if.end23.i.out_put_task_struct.i_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.then28.i:                                      ; preds = %if.end23.i
  %93 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %call3.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %94)
  %cmp.not.i.i = icmp eq i32 %94, 8
  br i1 %cmp.not.i.i, label %if.end.i69.i, label %if.then28.i.out_put_task_struct.i_crit_edge

if.then28.i.out_put_task_struct.i_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_task_struct.i

if.end.i69.i:                                     ; preds = %if.then28.i
  %95 = ptrtoint ptr %ptrace.i56.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ptrace.i56.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i68.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i68.i, label %if.end.i69.i.do.end13.i72.i_crit_edge, label %lor.rhs.i.i

if.end.i69.i.do.end13.i72.i_crit_edge:            ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i72.i

lor.rhs.i.i:                                      ; preds = %if.end.i69.i
  %97 = ptrtoint ptr %parent.i58.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parent.i58.i, align 8
  %99 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i71.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i71.i to ptr
  %task1.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task1.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task1.i.i, align 8
  %cmp2.not.i.i = icmp eq ptr %98, %102
  br i1 %cmp2.not.i.i, label %lor.rhs.i.i.if.end19.i.i_crit_edge, label %lor.rhs.i.i.do.end13.i72.i_crit_edge, !prof !59

lor.rhs.i.i.do.end13.i72.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i72.i

lor.rhs.i.i.if.end19.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

do.end13.i72.i:                                   ; preds = %lor.rhs.i.i.do.end13.i72.i_crit_edge, %if.end.i69.i.do.end13.i72.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #7
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %do.end13.i72.i, %lor.rhs.i.i.if.end19.i.i_crit_edge
  %sighand.i73.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 112
  %103 = ptrtoint ptr %sighand.i73.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sighand.i73.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %104) #7
  %105 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %call3.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %106)
  %cmp32.i.i = icmp eq i32 %106, 8
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.end19.i.i.if.end49.i.i_crit_edge

if.end19.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i.i

if.then33.i.i:                                    ; preds = %if.end19.i.i
  %signal.i.i74.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 116, i32 1
  %107 = ptrtoint ptr %signal.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %signal.i.i74.i, align 4
  %109 = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool35.not.i.i = icmp eq i32 %109, 0
  br i1 %tobool35.not.i.i, label %do.body42.i.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i.i = tail call i32 @wake_up_state(ptr noundef nonnull %call3.i, i32 noundef 8) #7
  br label %if.end49.i.i

do.body42.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 264, ptr %call3.i, align 128
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %do.body42.i.i, %if.then36.i.i, %if.end19.i.i.if.end49.i.i_crit_edge
  %111 = ptrtoint ptr %sighand.i73.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sighand.i73.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %112) #7
  br label %out_put_task_struct.i

out_put_task_struct.i:                            ; preds = %if.end49.i.i, %if.then28.i.out_put_task_struct.i_crit_edge, %if.end23.i.out_put_task_struct.i_crit_edge, %do.end60.i.i, %if.then37.i.i.out_put_task_struct.i_crit_edge, %.thread.i.i, %wait_on_bit.exit.i.i, %out.i.i.out_put_task_struct.i_crit_edge, %if.end18.i.i.out_put_task_struct.i_crit_edge, %if.end14.i.i.out_put_task_struct.i_crit_edge, %if.end7.i.i.out_put_task_struct.i_crit_edge, %if.then.i49.i.out_put_task_struct.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end23.i.out_put_task_struct.i_crit_edge ], [ 0, %wait_on_bit.exit.i.i ], [ %retval1.1.i.i, %out.i.i.out_put_task_struct.i_crit_edge ], [ -513, %if.end18.i.i.out_put_task_struct.i_crit_edge ], [ -1, %if.end14.i.i.out_put_task_struct.i_crit_edge ], [ -1, %if.end7.i.i.out_put_task_struct.i_crit_edge ], [ -5, %if.then.i49.i.out_put_task_struct.i_crit_edge ], [ %call24.i, %if.then28.i.out_put_task_struct.i_crit_edge ], [ %call24.i, %if.end49.i.i ], [ -3, %do.end60.i.i ], [ -3, %if.then37.i.i.out_put_task_struct.i_crit_edge ], [ -3, %.thread.i.i ]
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #7
  %113 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #7, !srcloc !85
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i75.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out_put_task_struct.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__do_sys_ptrace.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.__do_sys_ptrace.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_ptrace.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #7
  br label %__do_sys_ptrace.exit

if.then.i75.i:                                    ; preds = %out_put_task_struct.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @__put_task_struct(ptr noundef nonnull %call3.i) #7
  br label %__do_sys_ptrace.exit

__do_sys_ptrace.exit:                             ; preds = %if.then.i75.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__do_sys_ptrace.exit_crit_edge, %if.end2.i.__do_sys_ptrace.exit_crit_edge, %ptrace_traceme.exit.i
  %ret.1.i = phi i32 [ %ret.0.i.i, %ptrace_traceme.exit.i ], [ -3, %if.end2.i.__do_sys_ptrace.exit_crit_edge ], [ %ret.0.i, %if.end5.i.i.i.i.i.__do_sys_ptrace.exit_crit_edge ], [ %ret.0.i, %if.then10.i.i.i.i.i ], [ %ret.0.i, %if.then.i75.i ]
  ret i32 %ret.1.i
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ptrace_access_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @do_notify_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_ptrace_connector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_regset_to_user(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_ptrace(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ptrace_traceme(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_task_user_regset_view, !1, !"__ksymtab_task_user_regset_view", i1 false, i1 false}
!1 = !{!"../kernel/ptrace.c", i32 933, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/ptrace.c", i32 1054, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/ptrace.c", i32 1275, i32 1}
!6 = !{ptr @event_enter__ptrace, !5, !"event_enter__ptrace", i1 false, i1 false}
!7 = !{ptr @__event_enter__ptrace, !5, !"__event_enter__ptrace", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__ptrace, !5, !"event_exit__ptrace", i1 false, i1 false}
!10 = !{ptr @__event_exit__ptrace, !5, !"__event_exit__ptrace", i1 false, i1 false}
!11 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__ptrace, !5, !"__syscall_meta__ptrace", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__ptrace, !5, !"__p_syscall_meta__ptrace", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/cred.h", i32 253, i32 2}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../kernel/ptrace.c", i32 294, i32 28}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/ptrace.c", i32 300, i32 3}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../kernel/ptrace.c", i32 332, i32 10}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!37 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @types__ptrace, !5, !"types__ptrace", i1 false, i1 false}
!40 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @args__ptrace, !5, !"args__ptrace", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../kernel/ptrace.c", i32 85, i32 35}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2155462466, i64 2155462945, i64 2155462503, i64 2155462559, i64 2155462593, i64 2155462617, i64 2155462658, i64 2155462679, i64 2155462707, i64 2155462741}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2148494145, i64 2148494171, i64 2148494200, i64 2148494234, i64 2148494265, i64 2148494288}
!63 = !{i64 2155464876, i64 2155465356, i64 2155464913, i64 2155464969, i64 2155465003, i64 2155465027, i64 2155465068, i64 2155465089, i64 2155465117, i64 2155465151}
!64 = !{i64 2148582597}
!65 = !{i64 2148497330, i64 2148497362, i64 2148497391, i64 2148497425, i64 2148497456, i64 2148497479}
!66 = !{i64 2148582826}
!67 = !{i64 2149321659}
!68 = !{i64 2149321925}
!69 = !{i64 2155497920}
!70 = !{i64 2151881392, i64 2151881417}
!71 = !{i64 2151880711, i64 2151880736}
!72 = !{i64 4376266}
!73 = !{i64 4376463}
!74 = !{i64 2151861696}
!75 = !{!"auto-init"}
!76 = !{i64 2155532426, i64 2155532706, i64 2155533040, i64 2155533374}
!77 = !{i64 2155541744, i64 2155542024, i64 2155542358, i64 2155542692}
!78 = !{i64 2155544852, i64 2155544877}
!79 = !{i64 2155554156, i64 2155554436, i64 2155554770, i64 2155555104}
!80 = !{i64 2155566464, i64 2155566744, i64 2155567078, i64 2155567412}
!81 = !{i64 2155576032, i64 2155576312, i64 2155576646, i64 2155576980}
!82 = !{i64 2155601099, i64 2155601379, i64 2155601713, i64 2155602047}
!83 = !{i64 2155357806, i64 2155357831}
!84 = !{i64 2148583676}
!85 = !{i64 2148498140, i64 2148498172, i64 2148498201, i64 2148498235, i64 2148498266, i64 2148498289}
!86 = !{i64 2149629646}
